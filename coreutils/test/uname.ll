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
@uname_long_options = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !49
@optind = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cannot get system name\00", align 1
@print_element.printed = internal unnamed_addr global i1 false, align 1, !dbg !74
@main.unknown = internal constant [8 x i8] c"unknown\00", align 1, !dbg !11
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
@uname_mode = dso_local local_unnamed_addr global i32 1, align 4, !dbg !75
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), align 8, !dbg !80
@.str.47 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !85
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !90
@.str.50 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.51 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.52 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !92
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !98
@.str.59 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.63, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.65, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.66, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.68, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.71, i32 0, i32 0), i8* null], align 16, !dbg !104
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !149
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !155
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !165
@.str.11.72 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.73 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.75 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.76 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.77 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.78 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !172
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !179
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !167
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !181
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !187
@.str.1.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.132 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !633 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !637, metadata !DIExpression()), !dbg !638
  %3 = icmp eq i32 %0, 0, !dbg !639
  br i1 %3, label %9, label %4, !dbg !641

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !642, !tbaa !644
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #24, !dbg !642
  %7 = load i8*, i8** @program_name, align 8, !dbg !642, !tbaa !644
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #24, !dbg !642
  br label %69, !dbg !642

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #24, !dbg !648
  %11 = load i8*, i8** @program_name, align 8, !dbg !648, !tbaa !644
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #24, !dbg !648
  %13 = load i32, i32* @uname_mode, align 4, !dbg !650, !tbaa !652
  %14 = icmp eq i32 %13, 1, !dbg !654
  br i1 %14, label %15, label %19, !dbg !655

15:                                               ; preds = %9
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @.str.2, i64 0, i64 0), i32 5) #24, !dbg !656
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656, !tbaa !644
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !656
  br label %19, !dbg !658

19:                                               ; preds = %9, %15
  %20 = phi i8* [ getelementptr inbounds ([303 x i8], [303 x i8]* @.str.3, i64 0, i64 0), %15 ], [ getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %9 ]
  %21 = tail call i8* @dcgettext(i8* null, i8* %20, i32 5) #24, !dbg !659
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !644
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !659
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 5) #24, !dbg !660
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !644
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !660
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 5) #24, !dbg !661
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !644
  %29 = tail call i32 @fputs_unlocked(i8* %27, %struct._IO_FILE* %28), !dbg !661
  %30 = load i32, i32* @uname_mode, align 4, !dbg !662, !tbaa !652
  %31 = icmp eq i32 %30, 1, !dbg !662
  %32 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !662
  call void @llvm.dbg.value(metadata i8* %32, metadata !663, metadata !DIExpression()) #24, !dbg !680
  %33 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !682
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %33) #24, !dbg !682
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !667, metadata !DIExpression()) #24, !dbg !683
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %33, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #24, !dbg !683
  call void @llvm.dbg.value(metadata i8* %32, metadata !676, metadata !DIExpression()) #24, !dbg !680
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !677, metadata !DIExpression()) #24, !dbg !680
  %34 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !684
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !677, metadata !DIExpression()) #24, !dbg !680
  br label %35, !dbg !685

35:                                               ; preds = %40, %19
  %36 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %19 ]
  %37 = phi %struct.infomap* [ %41, %40 ], [ %34, %19 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !677, metadata !DIExpression()) #24, !dbg !680
  %38 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %32, i8* nonnull %36) #25, !dbg !686
  %39 = icmp eq i32 %38, 0, !dbg !686
  br i1 %39, label %45, label %40, !dbg !685

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 1, !dbg !687
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !677, metadata !DIExpression()) #24, !dbg !680
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 0, !dbg !688
  %43 = load i8*, i8** %42, align 8, !dbg !688, !tbaa !689
  %44 = icmp eq i8* %43, null, !dbg !691
  br i1 %44, label %45, label %35, !dbg !692, !llvm.loop !693

45:                                               ; preds = %40, %35
  %46 = phi %struct.infomap* [ %37, %35 ], [ %41, %40 ]
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 1, !dbg !695
  %48 = load i8*, i8** %47, align 8, !dbg !695, !tbaa !697
  %49 = icmp eq i8* %48, null, !dbg !698
  %50 = select i1 %49, i8* %32, i8* %48, !dbg !699
  call void @llvm.dbg.value(metadata i8* %50, metadata !676, metadata !DIExpression()) #24, !dbg !680
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #24, !dbg !700
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #24, !dbg !700
  %53 = tail call i8* @setlocale(i32 5, i8* null) #24, !dbg !701
  call void @llvm.dbg.value(metadata i8* %53, metadata !679, metadata !DIExpression()) #24, !dbg !680
  %54 = icmp eq i8* %53, null, !dbg !702
  br i1 %54, label %62, label %55, !dbg !704

55:                                               ; preds = %45
  %56 = tail call i32 @strncmp(i8* nonnull %53, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #25, !dbg !705
  %57 = icmp eq i32 %56, 0, !dbg !705
  br i1 %57, label %62, label %58, !dbg !706

58:                                               ; preds = %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), i32 5) #24, !dbg !707
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !707, !tbaa !644
  %61 = tail call i32 @fputs_unlocked(i8* %59, %struct._IO_FILE* %60) #24, !dbg !707
  br label %62, !dbg !709

62:                                               ; preds = %45, %55, %58
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32 5) #24, !dbg !710
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* %32) #24, !dbg !710
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #24, !dbg !711
  %66 = icmp eq i8* %50, %32, !dbg !711
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !711
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %50, i8* %67) #24, !dbg !711
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #24, !dbg !712
  br label %69

69:                                               ; preds = %62, %4
  tail call void @exit(i32 %0) #26, !dbg !713
  unreachable, !dbg !713
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !714 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !718 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !774 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !13 {
  %3 = alloca %struct.utsname, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i8** %1, metadata !20, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !778
  %4 = load i8*, i8** %1, align 8, !dbg !779, !tbaa !644
  tail call void @set_program_name(i8* %4) #24, !dbg !780
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #24, !dbg !781
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #24, !dbg !782
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #24, !dbg !783
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #24, !dbg !784
  call void @llvm.dbg.value(metadata i32 %0, metadata !785, metadata !DIExpression()) #24, !dbg !791
  call void @llvm.dbg.value(metadata i8** %1, metadata !788, metadata !DIExpression()) #24, !dbg !791
  call void @llvm.dbg.value(metadata i32 0, metadata !790, metadata !DIExpression()) #24, !dbg !791
  %9 = load i32, i32* @uname_mode, align 4, !dbg !793, !tbaa !652
  %10 = icmp eq i32 %9, 2, !dbg !795
  br i1 %10, label %11, label %21, !dbg !796

11:                                               ; preds = %2
  %12 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @arch_long_options, i64 0, i64 0), i32* null) #24, !dbg !797
  call void @llvm.dbg.value(metadata i32 %12, metadata !789, metadata !DIExpression()) #24, !dbg !791
  switch i32 %12, label %20 [
    i32 -1, label %50
    i32 -130, label %13
    i32 -131, label %14
  ], !dbg !799

13:                                               ; preds = %11
  tail call void @usage(i32 0) #26, !dbg !800
  unreachable, !dbg !800

14:                                               ; preds = %11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !803, !tbaa !644
  %16 = load i32, i32* @uname_mode, align 4, !dbg !803, !tbaa !652
  %17 = icmp eq i32 %16, 1, !dbg !803
  %18 = select i1 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !803
  %19 = load i8*, i8** @Version, align 8, !dbg !803, !tbaa !644
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %15, i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i8* null) #24, !dbg !803
  tail call void @exit(i32 0) #26, !dbg !803
  unreachable, !dbg !803

20:                                               ; preds = %11
  tail call void @usage(i32 1) #26, !dbg !804
  unreachable, !dbg !804

21:                                               ; preds = %2, %40
  %22 = phi i32 [ %41, %40 ], [ 0, %2 ], !dbg !791
  call void @llvm.dbg.value(metadata i32 %22, metadata !790, metadata !DIExpression()) #24, !dbg !791
  %23 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @uname_long_options, i64 0, i64 0), i32* null) #24, !dbg !805
  call void @llvm.dbg.value(metadata i32 %23, metadata !789, metadata !DIExpression()) #24, !dbg !791
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
  ], !dbg !807

24:                                               ; preds = %21
  %25 = or i32 %22, 1, !dbg !808
  call void @llvm.dbg.value(metadata i32 %25, metadata !790, metadata !DIExpression()) #24, !dbg !791
  br label %40, !dbg !811

26:                                               ; preds = %21
  %27 = or i32 %22, 2, !dbg !812
  call void @llvm.dbg.value(metadata i32 %27, metadata !790, metadata !DIExpression()) #24, !dbg !791
  br label %40, !dbg !813

28:                                               ; preds = %21
  %29 = or i32 %22, 4, !dbg !814
  call void @llvm.dbg.value(metadata i32 %29, metadata !790, metadata !DIExpression()) #24, !dbg !791
  br label %40, !dbg !815

30:                                               ; preds = %21
  %31 = or i32 %22, 8, !dbg !816
  call void @llvm.dbg.value(metadata i32 %31, metadata !790, metadata !DIExpression()) #24, !dbg !791
  br label %40, !dbg !817

32:                                               ; preds = %21
  %33 = or i32 %22, 16, !dbg !818
  call void @llvm.dbg.value(metadata i32 %33, metadata !790, metadata !DIExpression()) #24, !dbg !791
  br label %40, !dbg !819

34:                                               ; preds = %21
  %35 = or i32 %22, 32, !dbg !820
  call void @llvm.dbg.value(metadata i32 %35, metadata !790, metadata !DIExpression()) #24, !dbg !791
  br label %40, !dbg !821

36:                                               ; preds = %21
  %37 = or i32 %22, 64, !dbg !822
  call void @llvm.dbg.value(metadata i32 %37, metadata !790, metadata !DIExpression()) #24, !dbg !791
  br label %40, !dbg !823

38:                                               ; preds = %21
  %39 = or i32 %22, 128, !dbg !824
  call void @llvm.dbg.value(metadata i32 %39, metadata !790, metadata !DIExpression()) #24, !dbg !791
  br label %40, !dbg !825

40:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %21
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ -1, %21 ]
  br label %21, !dbg !791, !llvm.loop !826

42:                                               ; preds = %21
  tail call void @usage(i32 0) #26, !dbg !828
  unreachable, !dbg !828

43:                                               ; preds = %21
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !829, !tbaa !644
  %45 = load i32, i32* @uname_mode, align 4, !dbg !829, !tbaa !652
  %46 = icmp eq i32 %45, 1, !dbg !829
  %47 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !829
  %48 = load i8*, i8** @Version, align 8, !dbg !829, !tbaa !644
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %44, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i8* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* null) #24, !dbg !829
  tail call void @exit(i32 0) #26, !dbg !829
  unreachable, !dbg !829

49:                                               ; preds = %21
  tail call void @usage(i32 1) #26, !dbg !830
  unreachable, !dbg !830

50:                                               ; preds = %21, %11
  %51 = phi i32 [ 16, %11 ], [ %22, %21 ], !dbg !791
  call void @llvm.dbg.value(metadata i32 %51, metadata !790, metadata !DIExpression()) #24, !dbg !791
  %52 = load i32, i32* @optind, align 4, !dbg !831, !tbaa !652
  %53 = icmp eq i32 %52, %0, !dbg !833
  br i1 %53, label %61, label %54, !dbg !834

54:                                               ; preds = %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i32 5) #24, !dbg !835
  %56 = load i32, i32* @optind, align 4, !dbg !837, !tbaa !652
  %57 = sext i32 %56 to i64, !dbg !838
  %58 = getelementptr inbounds i8*, i8** %1, i64 %57, !dbg !838
  %59 = load i8*, i8** %58, align 8, !dbg !838, !tbaa !644
  %60 = tail call i8* @quote(i8* %59) #24, !dbg !839
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %55, i8* %60) #24, !dbg !840
  tail call void @usage(i32 1) #26, !dbg !841
  unreachable, !dbg !841

61:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 %51, metadata !21, metadata !DIExpression()), !dbg !778
  %62 = icmp eq i32 %51, 0, !dbg !842
  %63 = select i1 %62, i32 1, i32 %51, !dbg !844
  call void @llvm.dbg.value(metadata i32 %63, metadata !21, metadata !DIExpression()), !dbg !778
  %64 = and i32 %63, 31, !dbg !845
  %65 = icmp eq i32 %64, 0, !dbg !845
  br i1 %65, label %174, label %66, !dbg !846

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 0, i64 0, !dbg !847
  call void @llvm.lifetime.start.p0i8(i64 390, i8* nonnull %67) #24, !dbg !847
  call void @llvm.dbg.declare(metadata %struct.utsname* %3, metadata !23, metadata !DIExpression()), !dbg !848
  %68 = call i32 @uname(%struct.utsname* nonnull %3) #24, !dbg !849
  %69 = icmp eq i32 %68, -1, !dbg !851
  br i1 %69, label %70, label %74, !dbg !852

70:                                               ; preds = %66
  %71 = tail call i32* @__errno_location() #27, !dbg !853
  %72 = load i32, i32* %71, align 4, !dbg !853, !tbaa !652
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 5) #24, !dbg !853
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %72, i8* %73) #24, !dbg !853
  unreachable, !dbg !853

74:                                               ; preds = %66
  %75 = and i32 %63, 1, !dbg !854
  %76 = icmp eq i32 %75, 0, !dbg !854
  br i1 %76, label %93, label %77, !dbg !856

77:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i8* %67, metadata !69, metadata !DIExpression()) #24, !dbg !857
  %78 = load i1, i1* @print_element.printed, align 1, !dbg !859
  br i1 %78, label %79, label %90, !dbg !861

79:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i32 32, metadata !862, metadata !DIExpression()) #24, !dbg !868
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !870, !tbaa !644
  %81 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %80, i64 0, i32 5, !dbg !870
  %82 = load i8*, i8** %81, align 8, !dbg !870, !tbaa !871
  %83 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %80, i64 0, i32 6, !dbg !870
  %84 = load i8*, i8** %83, align 8, !dbg !870, !tbaa !875
  %85 = icmp ult i8* %82, %84, !dbg !870
  br i1 %85, label %88, label %86, !dbg !870, !prof !876

86:                                               ; preds = %79
  %87 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %80, i32 32) #24, !dbg !870
  br label %90, !dbg !870

88:                                               ; preds = %79
  %89 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !870
  store i8* %89, i8** %81, align 8, !dbg !870, !tbaa !871
  store i8 32, i8* %82, align 1, !dbg !870, !tbaa !877
  br label %90, !dbg !870

90:                                               ; preds = %77, %86, %88
  store i1 true, i1* @print_element.printed, align 1, !dbg !878
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !879, !tbaa !644
  %92 = call i32 @fputs_unlocked(i8* nonnull %67, %struct._IO_FILE* %91) #24, !dbg !879
  br label %93, !dbg !880

93:                                               ; preds = %90, %74
  %94 = and i32 %63, 2, !dbg !881
  %95 = icmp eq i32 %94, 0, !dbg !881
  br i1 %95, label %113, label %96, !dbg !883

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 1, i64 0, !dbg !884
  call void @llvm.dbg.value(metadata i8* %97, metadata !69, metadata !DIExpression()) #24, !dbg !885
  %98 = load i1, i1* @print_element.printed, align 1, !dbg !887
  br i1 %98, label %99, label %110, !dbg !888

99:                                               ; preds = %96
  call void @llvm.dbg.value(metadata i32 32, metadata !862, metadata !DIExpression()) #24, !dbg !889
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !891, !tbaa !644
  %101 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 5, !dbg !891
  %102 = load i8*, i8** %101, align 8, !dbg !891, !tbaa !871
  %103 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %100, i64 0, i32 6, !dbg !891
  %104 = load i8*, i8** %103, align 8, !dbg !891, !tbaa !875
  %105 = icmp ult i8* %102, %104, !dbg !891
  br i1 %105, label %108, label %106, !dbg !891, !prof !876

106:                                              ; preds = %99
  %107 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %100, i32 32) #24, !dbg !891
  br label %110, !dbg !891

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !891
  store i8* %109, i8** %101, align 8, !dbg !891, !tbaa !871
  store i8 32, i8* %102, align 1, !dbg !891, !tbaa !877
  br label %110, !dbg !891

110:                                              ; preds = %96, %106, %108
  store i1 true, i1* @print_element.printed, align 1, !dbg !892
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !893, !tbaa !644
  %112 = call i32 @fputs_unlocked(i8* nonnull %97, %struct._IO_FILE* %111) #24, !dbg !893
  br label %113, !dbg !894

113:                                              ; preds = %110, %93
  %114 = and i32 %63, 4, !dbg !895
  %115 = icmp eq i32 %114, 0, !dbg !895
  br i1 %115, label %133, label %116, !dbg !897

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 2, i64 0, !dbg !898
  call void @llvm.dbg.value(metadata i8* %117, metadata !69, metadata !DIExpression()) #24, !dbg !899
  %118 = load i1, i1* @print_element.printed, align 1, !dbg !901
  br i1 %118, label %119, label %130, !dbg !902

119:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i32 32, metadata !862, metadata !DIExpression()) #24, !dbg !903
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !905, !tbaa !644
  %121 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 5, !dbg !905
  %122 = load i8*, i8** %121, align 8, !dbg !905, !tbaa !871
  %123 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %120, i64 0, i32 6, !dbg !905
  %124 = load i8*, i8** %123, align 8, !dbg !905, !tbaa !875
  %125 = icmp ult i8* %122, %124, !dbg !905
  br i1 %125, label %128, label %126, !dbg !905, !prof !876

126:                                              ; preds = %119
  %127 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %120, i32 32) #24, !dbg !905
  br label %130, !dbg !905

128:                                              ; preds = %119
  %129 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !905
  store i8* %129, i8** %121, align 8, !dbg !905, !tbaa !871
  store i8 32, i8* %122, align 1, !dbg !905, !tbaa !877
  br label %130, !dbg !905

130:                                              ; preds = %116, %126, %128
  store i1 true, i1* @print_element.printed, align 1, !dbg !906
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !907, !tbaa !644
  %132 = call i32 @fputs_unlocked(i8* nonnull %117, %struct._IO_FILE* %131) #24, !dbg !907
  br label %133, !dbg !908

133:                                              ; preds = %130, %113
  %134 = and i32 %63, 8, !dbg !909
  %135 = icmp eq i32 %134, 0, !dbg !909
  br i1 %135, label %153, label %136, !dbg !911

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 3, i64 0, !dbg !912
  call void @llvm.dbg.value(metadata i8* %137, metadata !69, metadata !DIExpression()) #24, !dbg !913
  %138 = load i1, i1* @print_element.printed, align 1, !dbg !915
  br i1 %138, label %139, label %150, !dbg !916

139:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i32 32, metadata !862, metadata !DIExpression()) #24, !dbg !917
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !919, !tbaa !644
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 5, !dbg !919
  %142 = load i8*, i8** %141, align 8, !dbg !919, !tbaa !871
  %143 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %140, i64 0, i32 6, !dbg !919
  %144 = load i8*, i8** %143, align 8, !dbg !919, !tbaa !875
  %145 = icmp ult i8* %142, %144, !dbg !919
  br i1 %145, label %148, label %146, !dbg !919, !prof !876

146:                                              ; preds = %139
  %147 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %140, i32 32) #24, !dbg !919
  br label %150, !dbg !919

148:                                              ; preds = %139
  %149 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !919
  store i8* %149, i8** %141, align 8, !dbg !919, !tbaa !871
  store i8 32, i8* %142, align 1, !dbg !919, !tbaa !877
  br label %150, !dbg !919

150:                                              ; preds = %136, %146, %148
  store i1 true, i1* @print_element.printed, align 1, !dbg !920
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !921, !tbaa !644
  %152 = call i32 @fputs_unlocked(i8* nonnull %137, %struct._IO_FILE* %151) #24, !dbg !921
  br label %153, !dbg !922

153:                                              ; preds = %150, %133
  %154 = and i32 %63, 16, !dbg !923
  %155 = icmp eq i32 %154, 0, !dbg !923
  br i1 %155, label %173, label %156, !dbg !925

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.utsname, %struct.utsname* %3, i64 0, i32 4, i64 0, !dbg !926
  call void @llvm.dbg.value(metadata i8* %157, metadata !69, metadata !DIExpression()) #24, !dbg !927
  %158 = load i1, i1* @print_element.printed, align 1, !dbg !929
  br i1 %158, label %159, label %170, !dbg !930

159:                                              ; preds = %156
  call void @llvm.dbg.value(metadata i32 32, metadata !862, metadata !DIExpression()) #24, !dbg !931
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !933, !tbaa !644
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 5, !dbg !933
  %162 = load i8*, i8** %161, align 8, !dbg !933, !tbaa !871
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 6, !dbg !933
  %164 = load i8*, i8** %163, align 8, !dbg !933, !tbaa !875
  %165 = icmp ult i8* %162, %164, !dbg !933
  br i1 %165, label %168, label %166, !dbg !933, !prof !876

166:                                              ; preds = %159
  %167 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %160, i32 32) #24, !dbg !933
  br label %170, !dbg !933

168:                                              ; preds = %159
  %169 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !933
  store i8* %169, i8** %161, align 8, !dbg !933, !tbaa !871
  store i8 32, i8* %162, align 1, !dbg !933, !tbaa !877
  br label %170, !dbg !933

170:                                              ; preds = %156, %166, %168
  store i1 true, i1* @print_element.printed, align 1, !dbg !934
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !935, !tbaa !644
  %172 = call i32 @fputs_unlocked(i8* nonnull %157, %struct._IO_FILE* %171) #24, !dbg !935
  br label %173, !dbg !936

173:                                              ; preds = %170, %153
  call void @llvm.lifetime.end.p0i8(i64 390, i8* nonnull %67) #24, !dbg !937
  br label %174, !dbg !938

174:                                              ; preds = %173, %61
  %175 = and i32 %63, 32, !dbg !939
  %176 = icmp eq i32 %175, 0, !dbg !939
  %177 = icmp eq i32 %63, -1
  %178 = or i1 %177, %176, !dbg !940
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !38, metadata !DIExpression()), !dbg !941
  br i1 %178, label %195, label %179, !dbg !940

179:                                              ; preds = %174
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !69, metadata !DIExpression()) #24, !dbg !942
  %180 = load i1, i1* @print_element.printed, align 1, !dbg !945
  br i1 %180, label %181, label %192, !dbg !946

181:                                              ; preds = %179
  call void @llvm.dbg.value(metadata i32 32, metadata !862, metadata !DIExpression()) #24, !dbg !947
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !949, !tbaa !644
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5, !dbg !949
  %184 = load i8*, i8** %183, align 8, !dbg !949, !tbaa !871
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6, !dbg !949
  %186 = load i8*, i8** %185, align 8, !dbg !949, !tbaa !875
  %187 = icmp ult i8* %184, %186, !dbg !949
  br i1 %187, label %190, label %188, !dbg !949, !prof !876

188:                                              ; preds = %181
  %189 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %182, i32 32) #24, !dbg !949
  br label %192, !dbg !949

190:                                              ; preds = %181
  %191 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !949
  store i8* %191, i8** %183, align 8, !dbg !949, !tbaa !871
  store i8 32, i8* %184, align 1, !dbg !949, !tbaa !877
  br label %192, !dbg !949

192:                                              ; preds = %179, %188, %190
  store i1 true, i1* @print_element.printed, align 1, !dbg !950
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !951, !tbaa !644
  %194 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %193) #24, !dbg !951
  br label %195, !dbg !952

195:                                              ; preds = %192, %174
  %196 = and i32 %63, 64, !dbg !953
  %197 = icmp eq i32 %196, 0, !dbg !953
  %198 = or i1 %177, %197, !dbg !954
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !43, metadata !DIExpression()), !dbg !955
  br i1 %198, label %215, label %199, !dbg !954

199:                                              ; preds = %195
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), metadata !69, metadata !DIExpression()) #24, !dbg !956
  %200 = load i1, i1* @print_element.printed, align 1, !dbg !959
  br i1 %200, label %201, label %212, !dbg !960

201:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i32 32, metadata !862, metadata !DIExpression()) #24, !dbg !961
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !963, !tbaa !644
  %203 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 5, !dbg !963
  %204 = load i8*, i8** %203, align 8, !dbg !963, !tbaa !871
  %205 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %202, i64 0, i32 6, !dbg !963
  %206 = load i8*, i8** %205, align 8, !dbg !963, !tbaa !875
  %207 = icmp ult i8* %204, %206, !dbg !963
  br i1 %207, label %210, label %208, !dbg !963, !prof !876

208:                                              ; preds = %201
  %209 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %202, i32 32) #24, !dbg !963
  br label %212, !dbg !963

210:                                              ; preds = %201
  %211 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !963
  store i8* %211, i8** %203, align 8, !dbg !963, !tbaa !871
  store i8 32, i8* %204, align 1, !dbg !963, !tbaa !877
  br label %212, !dbg !963

212:                                              ; preds = %199, %208, %210
  store i1 true, i1* @print_element.printed, align 1, !dbg !964
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !965, !tbaa !644
  %214 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @main.unknown, i64 0, i64 0), %struct._IO_FILE* %213) #24, !dbg !965
  br label %215, !dbg !966

215:                                              ; preds = %212, %195
  %216 = trunc i32 %63 to i8, !dbg !967
  %217 = icmp sgt i8 %216, -1, !dbg !967
  br i1 %217, label %234, label %218, !dbg !969

218:                                              ; preds = %215
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), metadata !69, metadata !DIExpression()) #24, !dbg !970
  %219 = load i1, i1* @print_element.printed, align 1, !dbg !972
  br i1 %219, label %220, label %231, !dbg !973

220:                                              ; preds = %218
  call void @llvm.dbg.value(metadata i32 32, metadata !862, metadata !DIExpression()) #24, !dbg !974
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !976, !tbaa !644
  %222 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 5, !dbg !976
  %223 = load i8*, i8** %222, align 8, !dbg !976, !tbaa !871
  %224 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %221, i64 0, i32 6, !dbg !976
  %225 = load i8*, i8** %224, align 8, !dbg !976, !tbaa !875
  %226 = icmp ult i8* %223, %225, !dbg !976
  br i1 %226, label %229, label %227, !dbg !976, !prof !876

227:                                              ; preds = %220
  %228 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %221, i32 32) #24, !dbg !976
  br label %231, !dbg !976

229:                                              ; preds = %220
  %230 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !976
  store i8* %230, i8** %222, align 8, !dbg !976, !tbaa !871
  store i8 32, i8* %223, align 1, !dbg !976, !tbaa !877
  br label %231, !dbg !976

231:                                              ; preds = %218, %227, %229
  store i1 true, i1* @print_element.printed, align 1, !dbg !977
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !978, !tbaa !644
  %233 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %232) #24, !dbg !978
  br label %234, !dbg !979

234:                                              ; preds = %231, %215
  call void @llvm.dbg.value(metadata i32 10, metadata !862, metadata !DIExpression()) #24, !dbg !980
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !982, !tbaa !644
  %236 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %235, i64 0, i32 5, !dbg !982
  %237 = load i8*, i8** %236, align 8, !dbg !982, !tbaa !871
  %238 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %235, i64 0, i32 6, !dbg !982
  %239 = load i8*, i8** %238, align 8, !dbg !982, !tbaa !875
  %240 = icmp ult i8* %237, %239, !dbg !982
  br i1 %240, label %243, label %241, !dbg !982, !prof !876

241:                                              ; preds = %234
  %242 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %235, i32 10) #24, !dbg !982
  br label %245, !dbg !982

243:                                              ; preds = %234
  %244 = getelementptr inbounds i8, i8* %237, i64 1, !dbg !982
  store i8* %244, i8** %236, align 8, !dbg !982, !tbaa !871
  store i8 10, i8* %237, align 1, !dbg !982, !tbaa !877
  br label %245, !dbg !982

245:                                              ; preds = %241, %243
  ret i32 0, !dbg !983
}

; Function Attrs: nounwind
declare !dbg !984 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !987 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !990 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !997 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1003 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1007 noundef i32 @uname(%struct.utsname* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1011 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1013, metadata !DIExpression()), !dbg !1014
  store i8* %0, i8** @file_name, align 8, !dbg !1015, !tbaa !644
  ret void, !dbg !1016
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1017 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1021, metadata !DIExpression()), !dbg !1022
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1023, !tbaa !1024
  ret void, !dbg !1026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1027 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1032, !tbaa !644
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #24, !dbg !1033
  %3 = icmp eq i32 %2, 0, !dbg !1034
  br i1 %3, label %22, label %4, !dbg !1035

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1036, !tbaa !1024, !range !1037
  %6 = icmp eq i8 %5, 0, !dbg !1036
  br i1 %6, label %11, label %7, !dbg !1038

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #27, !dbg !1039
  %9 = load i32, i32* %8, align 4, !dbg !1039, !tbaa !652
  %10 = icmp eq i32 %9, 32, !dbg !1040
  br i1 %10, label %22, label %11, !dbg !1041

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i64 0, i64 0), i32 5) #24, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %12, metadata !1029, metadata !DIExpression()), !dbg !1043
  %13 = load i8*, i8** @file_name, align 8, !dbg !1044, !tbaa !644
  %14 = icmp eq i8* %13, null, !dbg !1044
  %15 = tail call i32* @__errno_location() #27, !dbg !1046
  %16 = load i32, i32* %15, align 4, !dbg !1046, !tbaa !652
  br i1 %14, label %19, label %17, !dbg !1047

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #24, !dbg !1048
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.51, i64 0, i64 0), i8* %18, i8* %12) #24, !dbg !1049
  br label %20, !dbg !1049

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.52, i64 0, i64 0), i8* %12) #24, !dbg !1050
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1051, !tbaa !652
  tail call void @_exit(i32 %21) #26, !dbg !1052
  unreachable, !dbg !1052

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1053, !tbaa !644
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #24, !dbg !1055
  %25 = icmp eq i32 %24, 0, !dbg !1056
  br i1 %25, label %28, label %26, !dbg !1057

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1058, !tbaa !652
  tail call void @_exit(i32 %27) #26, !dbg !1059
  unreachable, !dbg !1059

28:                                               ; preds = %22
  ret void, !dbg !1060
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1061 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1063, metadata !DIExpression()), !dbg !1066
  %2 = icmp eq i8* %0, null, !dbg !1067
  br i1 %2, label %3, label %6, !dbg !1069

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1070, !tbaa !644
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #28, !dbg !1072
  tail call void @abort() #26, !dbg !1073
  unreachable, !dbg !1073

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #25, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %7, metadata !1064, metadata !DIExpression()), !dbg !1066
  %8 = icmp eq i8* %7, null, !dbg !1075
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1076
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1076
  call void @llvm.dbg.value(metadata i8* %10, metadata !1065, metadata !DIExpression()), !dbg !1066
  %11 = ptrtoint i8* %10 to i64, !dbg !1077
  %12 = ptrtoint i8* %0 to i64, !dbg !1077
  %13 = sub i64 %11, %12, !dbg !1077
  %14 = icmp sgt i64 %13, 6, !dbg !1079
  br i1 %14, label %15, label %24, !dbg !1080

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1081
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.60, i64 0, i64 0), i64 7) #25, !dbg !1082
  %18 = icmp eq i32 %17, 0, !dbg !1083
  br i1 %18, label %19, label %24, !dbg !1084

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1063, metadata !DIExpression()), !dbg !1066
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.61, i64 0, i64 0), i64 3) #25, !dbg !1085
  %21 = icmp eq i32 %20, 0, !dbg !1088
  br i1 %21, label %22, label %24, !dbg !1089

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1090
  call void @llvm.dbg.value(metadata i8* %23, metadata !1063, metadata !DIExpression()), !dbg !1066
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1092, !tbaa !644
  br label %24, !dbg !1093

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1063, metadata !DIExpression()), !dbg !1066
  store i8* %25, i8** @program_name, align 8, !dbg !1094, !tbaa !644
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1095, !tbaa !644
  ret void, !dbg !1096
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1097 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1102, metadata !DIExpression()), !dbg !1105
  %2 = tail call i32* @__errno_location() #27, !dbg !1106
  %3 = load i32, i32* %2, align 4, !dbg !1106, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %3, metadata !1103, metadata !DIExpression()), !dbg !1105
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1107
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1107
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1107
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #24, !dbg !1108
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1108
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i32 %3, i32* %2, align 4, !dbg !1109, !tbaa !652
  ret %struct.quoting_options* %8, !dbg !1110
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1111 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1117, metadata !DIExpression()), !dbg !1118
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1119
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1119
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1120
  %5 = load i32, i32* %4, align 8, !dbg !1120, !tbaa !1121
  ret i32 %5, !dbg !1123
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1124 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1128, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i32 %1, metadata !1129, metadata !DIExpression()), !dbg !1130
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1131
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1131
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1132
  store i32 %1, i32* %5, align 8, !dbg !1133, !tbaa !1121
  ret void, !dbg !1134
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #14 !dbg !1135 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1139, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i8 %1, metadata !1140, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i32 %2, metadata !1141, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i8 %1, metadata !1142, metadata !DIExpression()), !dbg !1147
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1148
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1148
  %6 = lshr i8 %1, 5, !dbg !1149
  %7 = zext i8 %6 to i64, !dbg !1149
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1150
  call void @llvm.dbg.value(metadata i32* %8, metadata !1143, metadata !DIExpression()), !dbg !1147
  %9 = and i8 %1, 31, !dbg !1151
  %10 = zext i8 %9 to i32, !dbg !1151
  call void @llvm.dbg.value(metadata i32 %10, metadata !1145, metadata !DIExpression()), !dbg !1147
  %11 = load i32, i32* %8, align 4, !dbg !1152, !tbaa !652
  %12 = lshr i32 %11, %10, !dbg !1153
  %13 = and i32 %12, 1, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %13, metadata !1146, metadata !DIExpression()), !dbg !1147
  %14 = and i32 %2, 1, !dbg !1155
  %15 = xor i32 %13, %14, !dbg !1156
  %16 = shl i32 %15, %10, !dbg !1157
  %17 = xor i32 %16, %11, !dbg !1158
  store i32 %17, i32* %8, align 4, !dbg !1158, !tbaa !652
  ret i32 %13, !dbg !1159
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1160 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1164, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %1, metadata !1165, metadata !DIExpression()), !dbg !1167
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1168
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1170
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1164, metadata !DIExpression()), !dbg !1167
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1171
  %6 = load i32, i32* %5, align 4, !dbg !1171, !tbaa !1172
  call void @llvm.dbg.value(metadata i32 %6, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i32 %1, i32* %5, align 4, !dbg !1173, !tbaa !1172
  ret i32 %6, !dbg !1174
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1175 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1179, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %1, metadata !1180, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8* %2, metadata !1181, metadata !DIExpression()), !dbg !1182
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1183
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1185
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1179, metadata !DIExpression()), !dbg !1182
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1186
  store i32 10, i32* %6, align 8, !dbg !1187, !tbaa !1121
  %7 = icmp ne i8* %1, null, !dbg !1188
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1190
  br i1 %9, label %11, label %10, !dbg !1190

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !1191
  unreachable, !dbg !1191

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1192
  store i8* %1, i8** %12, align 8, !dbg !1193, !tbaa !1194
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1195
  store i8* %2, i8** %13, align 8, !dbg !1196, !tbaa !1197
  ret void, !dbg !1198
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1203, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %1, metadata !1204, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8* %2, metadata !1205, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %3, metadata !1206, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1207, metadata !DIExpression()), !dbg !1211
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1212
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1208, metadata !DIExpression()), !dbg !1211
  %8 = tail call i32* @__errno_location() #27, !dbg !1213
  %9 = load i32, i32* %8, align 4, !dbg !1213, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %9, metadata !1209, metadata !DIExpression()), !dbg !1211
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1214
  %11 = load i32, i32* %10, align 8, !dbg !1214, !tbaa !1121
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1215
  %13 = load i32, i32* %12, align 4, !dbg !1215, !tbaa !1172
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1216
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1217
  %16 = load i8*, i8** %15, align 8, !dbg !1217, !tbaa !1194
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1218
  %18 = load i8*, i8** %17, align 8, !dbg !1218, !tbaa !1197
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %19, metadata !1210, metadata !DIExpression()), !dbg !1211
  store i32 %9, i32* %8, align 4, !dbg !1220, !tbaa !652
  ret i64 %19, !dbg !1221
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1222 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1228, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %1, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %2, metadata !1230, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %3, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %4, metadata !1232, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %5, metadata !1233, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32* %6, metadata !1234, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %7, metadata !1235, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %8, metadata !1236, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, metadata !1239, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* null, metadata !1240, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, metadata !1241, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1242, metadata !DIExpression()), !dbg !1298
  %13 = tail call i64 @__ctype_get_mb_cur_max() #24, !dbg !1299
  %14 = icmp eq i64 %13, 1, !dbg !1300
  call void @llvm.dbg.value(metadata i1 %14, metadata !1243, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1298
  %15 = lshr i32 %5, 1, !dbg !1301
  %16 = trunc i32 %15 to i8, !dbg !1301
  %17 = and i8 %16, 1, !dbg !1301
  call void @llvm.dbg.value(metadata i8 %17, metadata !1244, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !1247, metadata !DIExpression()), !dbg !1298
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1302

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1303
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1304
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1305
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1306
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1298
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1307
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1308
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1309
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %38, metadata !1247, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %37, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %36, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %35, metadata !1244, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %34, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %33, metadata !1242, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %32, metadata !1241, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %31, metadata !1240, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %30, metadata !1239, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %29, metadata !1236, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %28, metadata !1235, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %27, metadata !1232, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.label(metadata !1292), !dbg !1310
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
  ], !dbg !1311

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1244, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 5, metadata !1232, metadata !DIExpression()), !dbg !1298
  br label %92, !dbg !1312

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1244, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 5, metadata !1232, metadata !DIExpression()), !dbg !1298
  %42 = and i8 %35, 1, !dbg !1314
  %43 = icmp eq i8 %42, 0, !dbg !1314
  br i1 %43, label %44, label %92, !dbg !1312

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1316
  br i1 %45, label %92, label %46, !dbg !1319

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1316, !tbaa !877
  br label %92, !dbg !1316

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.72, i64 0, i64 0), i32 %27), !dbg !1320
  call void @llvm.dbg.value(metadata i8* %48, metadata !1235, metadata !DIExpression()), !dbg !1298
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), i32 %27), !dbg !1324
  call void @llvm.dbg.value(metadata i8* %49, metadata !1236, metadata !DIExpression()), !dbg !1298
  br label %50, !dbg !1325

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1236, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %51, metadata !1235, metadata !DIExpression()), !dbg !1298
  %53 = and i8 %35, 1, !dbg !1326
  %54 = icmp eq i8 %53, 0, !dbg !1326
  br i1 %54, label %55, label %70, !dbg !1328

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1240, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, metadata !1238, metadata !DIExpression()), !dbg !1298
  %56 = load i8, i8* %51, align 1, !dbg !1329, !tbaa !877
  %57 = icmp eq i8 %56, 0, !dbg !1332
  br i1 %57, label %70, label %58, !dbg !1332

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1240, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %61, metadata !1238, metadata !DIExpression()), !dbg !1298
  %62 = icmp ult i64 %61, %39, !dbg !1333
  br i1 %62, label %63, label %65, !dbg !1336

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1333
  store i8 %59, i8* %64, align 1, !dbg !1333, !tbaa !877
  br label %65, !dbg !1333

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %66, metadata !1238, metadata !DIExpression()), !dbg !1298
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %67, metadata !1240, metadata !DIExpression()), !dbg !1298
  %68 = load i8, i8* %67, align 1, !dbg !1329, !tbaa !877
  %69 = icmp eq i8 %68, 0, !dbg !1332
  br i1 %69, label %70, label %58, !dbg !1332, !llvm.loop !1338

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1340
  call void @llvm.dbg.value(metadata i64 %71, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !1242, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %52, metadata !1240, metadata !DIExpression()), !dbg !1298
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #25, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %72, metadata !1241, metadata !DIExpression()), !dbg !1298
  br label %92, !dbg !1342

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1242, metadata !DIExpression()), !dbg !1298
  br label %74, !dbg !1343

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %75, metadata !1242, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !1244, metadata !DIExpression()), !dbg !1298
  br label %76, !dbg !1344

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1306
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %78, metadata !1244, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %77, metadata !1242, metadata !DIExpression()), !dbg !1298
  %79 = and i8 %78, 1, !dbg !1345
  %80 = icmp eq i8 %79, 0, !dbg !1345
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1347
  br label %82, !dbg !1347

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1298
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8 %84, metadata !1244, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %83, metadata !1242, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 2, metadata !1232, metadata !DIExpression()), !dbg !1298
  %85 = and i8 %84, 1, !dbg !1348
  %86 = icmp eq i8 %85, 0, !dbg !1348
  br i1 %86, label %87, label %92, !dbg !1350

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1351
  br i1 %88, label %92, label %89, !dbg !1354

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1351, !tbaa !877
  br label %92, !dbg !1351

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1244, metadata !DIExpression()), !dbg !1298
  br label %92, !dbg !1355

91:                                               ; preds = %26
  call void @abort() #26, !dbg !1356
  unreachable, !dbg !1356

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1340
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), %40 ], !dbg !1298
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1298
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1298
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %100, metadata !1244, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %99, metadata !1242, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %98, metadata !1241, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %97, metadata !1240, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %96, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %95, metadata !1236, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8* %94, metadata !1235, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %93, metadata !1232, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 0, metadata !1237, metadata !DIExpression()), !dbg !1298
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
  br label %121, !dbg !1357

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1358
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1340
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1303
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1307
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1308
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1309
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %128, metadata !1247, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %127, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %126, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %125, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %124, metadata !1239, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %123, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %122, metadata !1237, metadata !DIExpression()), !dbg !1298
  %130 = icmp eq i64 %125, -1, !dbg !1359
  br i1 %130, label %131, label %135, !dbg !1360

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1361
  %133 = load i8, i8* %132, align 1, !dbg !1361, !tbaa !877
  %134 = icmp eq i8 %133, 0, !dbg !1362
  br i1 %134, label %587, label %137, !dbg !1363

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1364
  br i1 %136, label %587, label %137, !dbg !1363

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1253, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 0, metadata !1254, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 0, metadata !1255, metadata !DIExpression()), !dbg !1365
  br i1 %106, label %138, label %153, !dbg !1366

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1368
  %140 = and i1 %107, %130, !dbg !1369
  br i1 %140, label %141, label %143, !dbg !1369

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %142, metadata !1231, metadata !DIExpression()), !dbg !1298
  br label %143, !dbg !1371

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1371
  call void @llvm.dbg.value(metadata i64 %144, metadata !1231, metadata !DIExpression()), !dbg !1298
  %145 = icmp ugt i64 %139, %144, !dbg !1372
  br i1 %145, label %153, label %146, !dbg !1373

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1374
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1375
  %149 = icmp ne i32 %148, 0, !dbg !1376
  %150 = or i1 %149, %109, !dbg !1377
  %151 = xor i1 %149, true, !dbg !1377
  %152 = zext i1 %151 to i8, !dbg !1377
  br i1 %150, label %153, label %646, !dbg !1377

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1365
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1365
  call void @llvm.dbg.value(metadata i8 %156, metadata !1253, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %154, metadata !1231, metadata !DIExpression()), !dbg !1298
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1378
  %158 = load i8, i8* %157, align 1, !dbg !1378, !tbaa !877
  call void @llvm.dbg.value(metadata i8 %158, metadata !1248, metadata !DIExpression()), !dbg !1365
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
  ], !dbg !1379

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1380

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1381

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1254, metadata !DIExpression()), !dbg !1365
  %162 = and i8 %126, 1, !dbg !1385
  %163 = icmp eq i8 %162, 0, !dbg !1385
  %164 = and i1 %110, %163, !dbg !1385
  br i1 %164, label %165, label %181, !dbg !1385

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1387
  br i1 %166, label %167, label %169, !dbg !1391

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1387
  store i8 39, i8* %168, align 1, !dbg !1387, !tbaa !877
  br label %169, !dbg !1387

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %170, metadata !1238, metadata !DIExpression()), !dbg !1298
  %171 = icmp ult i64 %170, %129, !dbg !1392
  br i1 %171, label %172, label %174, !dbg !1395

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1392
  store i8 36, i8* %173, align 1, !dbg !1392, !tbaa !877
  br label %174, !dbg !1392

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %175, metadata !1238, metadata !DIExpression()), !dbg !1298
  %176 = icmp ult i64 %175, %129, !dbg !1396
  br i1 %176, label %177, label %179, !dbg !1399

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1396
  store i8 39, i8* %178, align 1, !dbg !1396, !tbaa !877
  br label %179, !dbg !1396

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %180, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !1245, metadata !DIExpression()), !dbg !1298
  br label %181, !dbg !1400

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1298
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %183, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %182, metadata !1238, metadata !DIExpression()), !dbg !1298
  %184 = icmp ult i64 %182, %129, !dbg !1401
  br i1 %184, label %185, label %187, !dbg !1404

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1401
  store i8 92, i8* %186, align 1, !dbg !1401, !tbaa !877
  br label %187, !dbg !1401

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i64 %188, metadata !1238, metadata !DIExpression()), !dbg !1298
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1405
  br i1 %191, label %192, label %473, !dbg !1405

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1407
  %194 = load i8, i8* %193, align 1, !dbg !1407, !tbaa !877
  %195 = add i8 %194, -48, !dbg !1408
  %196 = icmp ult i8 %195, 10, !dbg !1408
  br i1 %196, label %197, label %473, !dbg !1408

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1409
  br i1 %198, label %199, label %201, !dbg !1413

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1409
  store i8 48, i8* %200, align 1, !dbg !1409, !tbaa !877
  br label %201, !dbg !1409

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %202, metadata !1238, metadata !DIExpression()), !dbg !1298
  %203 = icmp ult i64 %202, %129, !dbg !1414
  br i1 %203, label %204, label %206, !dbg !1417

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1414
  store i8 48, i8* %205, align 1, !dbg !1414, !tbaa !877
  br label %206, !dbg !1414

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %207, metadata !1238, metadata !DIExpression()), !dbg !1298
  br label %473, !dbg !1418

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1419

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1420

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1421

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1423
  br i1 %214, label %215, label %473, !dbg !1423

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1425
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1426
  %218 = load i8, i8* %217, align 1, !dbg !1426, !tbaa !877
  %219 = icmp eq i8 %218, 63, !dbg !1427
  br i1 %219, label %220, label %473, !dbg !1428

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1429
  %222 = load i8, i8* %221, align 1, !dbg !1429, !tbaa !877
  %223 = sext i8 %222 to i32, !dbg !1429
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
  ], !dbg !1430

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1431

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i64 undef, metadata !1237, metadata !DIExpression()), !dbg !1298
  %226 = icmp ult i64 %123, %129, !dbg !1433
  br i1 %226, label %227, label %229, !dbg !1436

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1433
  store i8 63, i8* %228, align 1, !dbg !1433, !tbaa !877
  br label %229, !dbg !1433

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %230, metadata !1238, metadata !DIExpression()), !dbg !1298
  %231 = icmp ult i64 %230, %129, !dbg !1437
  br i1 %231, label %232, label %234, !dbg !1440

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1437
  store i8 34, i8* %233, align 1, !dbg !1437, !tbaa !877
  br label %234, !dbg !1437

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %235, metadata !1238, metadata !DIExpression()), !dbg !1298
  %236 = icmp ult i64 %235, %129, !dbg !1441
  br i1 %236, label %237, label %239, !dbg !1444

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1441
  store i8 34, i8* %238, align 1, !dbg !1441, !tbaa !877
  br label %239, !dbg !1441

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %240, metadata !1238, metadata !DIExpression()), !dbg !1298
  %241 = icmp ult i64 %240, %129, !dbg !1445
  br i1 %241, label %242, label %244, !dbg !1448

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1445
  store i8 63, i8* %243, align 1, !dbg !1445, !tbaa !877
  br label %244, !dbg !1445

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %245, metadata !1238, metadata !DIExpression()), !dbg !1298
  br label %473, !dbg !1449

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1252, metadata !DIExpression()), !dbg !1365
  br label %256, !dbg !1450

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1252, metadata !DIExpression()), !dbg !1365
  br label %256, !dbg !1451

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1252, metadata !DIExpression()), !dbg !1365
  br label %254, !dbg !1452

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1252, metadata !DIExpression()), !dbg !1365
  br label %254, !dbg !1453

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1252, metadata !DIExpression()), !dbg !1365
  br label %256, !dbg !1454

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1252, metadata !DIExpression()), !dbg !1365
  br i1 %110, label %252, label %253, !dbg !1455

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1456

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1459

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %255, metadata !1252, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.label(metadata !1293), !dbg !1462
  br i1 %111, label %256, label %631, !dbg !1463

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1461
  call void @llvm.dbg.value(metadata i8 %257, metadata !1252, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.label(metadata !1294), !dbg !1465
  br i1 %102, label %495, label %473, !dbg !1466

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1467

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1468, !tbaa !877
  %261 = icmp eq i8 %260, 0, !dbg !1470
  br i1 %261, label %262, label %473, !dbg !1471

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1472
  br i1 %263, label %264, label %473, !dbg !1474

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1255, metadata !DIExpression()), !dbg !1365
  br label %265, !dbg !1475

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1365
  call void @llvm.dbg.value(metadata i8 %266, metadata !1255, metadata !DIExpression()), !dbg !1365
  br i1 %111, label %473, label %631, !dbg !1476

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !1255, metadata !DIExpression()), !dbg !1365
  br i1 %110, label %268, label %473, !dbg !1478

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1479

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1482
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1484
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1484
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %274, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %273, metadata !1239, metadata !DIExpression()), !dbg !1298
  %275 = icmp ult i64 %123, %274, !dbg !1485
  br i1 %275, label %276, label %278, !dbg !1488

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1485
  store i8 39, i8* %277, align 1, !dbg !1485, !tbaa !877
  br label %278, !dbg !1485

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %279, metadata !1238, metadata !DIExpression()), !dbg !1298
  %280 = icmp ult i64 %279, %274, !dbg !1489
  br i1 %280, label %281, label %283, !dbg !1492

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1489
  store i8 92, i8* %282, align 1, !dbg !1489, !tbaa !877
  br label %283, !dbg !1489

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %284, metadata !1238, metadata !DIExpression()), !dbg !1298
  %285 = icmp ult i64 %284, %274, !dbg !1493
  br i1 %285, label %286, label %288, !dbg !1496

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1493
  store i8 39, i8* %287, align 1, !dbg !1493, !tbaa !877
  br label %288, !dbg !1493

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %289, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1245, metadata !DIExpression()), !dbg !1298
  br label %473, !dbg !1497

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1498

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1256, metadata !DIExpression()), !dbg !1499
  %292 = tail call i16** @__ctype_b_loc() #27, !dbg !1500
  %293 = load i16*, i16** %292, align 8, !dbg !1500, !tbaa !644
  %294 = zext i8 %158 to i64, !dbg !1500
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1500
  %296 = load i16, i16* %295, align 2, !dbg !1500, !tbaa !1502
  %297 = lshr i16 %296, 14, !dbg !1503
  %298 = trunc i16 %297 to i8, !dbg !1503
  %299 = and i8 %298, 1, !dbg !1503
  call void @llvm.dbg.value(metadata i8 %354, metadata !1259, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %355, metadata !1256, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %306, metadata !1231, metadata !DIExpression()), !dbg !1298
  %300 = icmp eq i8 %299, 0, !dbg !1504
  call void @llvm.dbg.value(metadata i1 %357, metadata !1255, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1365
  br label %359, !dbg !1505

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1506
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1260, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8* %23, metadata !1508, metadata !DIExpression()) #24, !dbg !1516
  call void @llvm.dbg.value(metadata i32 0, metadata !1514, metadata !DIExpression()) #24, !dbg !1516
  call void @llvm.dbg.value(metadata i64 8, metadata !1515, metadata !DIExpression()) #24, !dbg !1516
  store i64 0, i64* %10, align 8, !dbg !1518
  call void @llvm.dbg.value(metadata i64 0, metadata !1256, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i8 1, metadata !1259, metadata !DIExpression()), !dbg !1499
  %302 = icmp eq i64 %154, -1, !dbg !1519
  br i1 %302, label %303, label %305, !dbg !1521

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #25, !dbg !1522
  call void @llvm.dbg.value(metadata i64 %304, metadata !1231, metadata !DIExpression()), !dbg !1298
  br label %305, !dbg !1523

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1365
  call void @llvm.dbg.value(metadata i64 %306, metadata !1231, metadata !DIExpression()), !dbg !1298
  br label %307, !dbg !1524

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1525
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1526
  call void @llvm.dbg.value(metadata i8 %309, metadata !1259, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %308, metadata !1256, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1527
  %310 = add i64 %308, %122, !dbg !1528
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1529
  %312 = sub i64 %306, %310, !dbg !1530
  call void @llvm.dbg.value(metadata i32* %12, metadata !1278, metadata !DIExpression(DW_OP_deref)), !dbg !1531
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #24, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %313, metadata !1281, metadata !DIExpression()), !dbg !1531
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1533

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1256, metadata !DIExpression()), !dbg !1499
  %315 = icmp ugt i64 %306, %310, !dbg !1534
  br i1 %315, label %316, label %341, !dbg !1536

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1537
  br label %318, !dbg !1537

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1256, metadata !DIExpression()), !dbg !1499
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1538
  %322 = load i8, i8* %321, align 1, !dbg !1538, !tbaa !877
  %323 = icmp eq i8 %322, 0, !dbg !1536
  br i1 %323, label %341, label %324, !dbg !1537

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %325, metadata !1256, metadata !DIExpression()), !dbg !1499
  %326 = add i64 %325, %122, !dbg !1540
  %327 = icmp ult i64 %326, %306, !dbg !1534
  br i1 %327, label %318, label %341, !dbg !1536, !llvm.loop !1541

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1542
  call void @llvm.dbg.value(metadata i64 1, metadata !1282, metadata !DIExpression()), !dbg !1543
  br i1 %330, label %331, label %344, !dbg !1542

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1282, metadata !DIExpression()), !dbg !1543
  %333 = add i64 %332, %310, !dbg !1544
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1547
  %335 = load i8, i8* %334, align 1, !dbg !1547, !tbaa !877
  %336 = sext i8 %335 to i32, !dbg !1547
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1548

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1549
  call void @llvm.dbg.value(metadata i64 %338, metadata !1282, metadata !DIExpression()), !dbg !1543
  %339 = icmp eq i64 %338, %313, !dbg !1550
  br i1 %339, label %344, label %331, !dbg !1551, !llvm.loop !1552

340:                                              ; preds = %307
  br label %341, !dbg !1554

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1259, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 undef, metadata !1256, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1554
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1555, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %345, metadata !1278, metadata !DIExpression()), !dbg !1531
  %346 = call i32 @iswprint(i32 %345) #24, !dbg !1557
  %347 = icmp eq i32 %346, 0, !dbg !1557
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1558
  call void @llvm.dbg.value(metadata i8 %348, metadata !1259, metadata !DIExpression()), !dbg !1499
  %349 = add i64 %313, %308, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %349, metadata !1256, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1554
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #25, !dbg !1560
  %351 = icmp eq i32 %350, 0, !dbg !1561
  br i1 %351, label %307, label %353, !dbg !1562, !llvm.loop !1563

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1259, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 undef, metadata !1256, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #24, !dbg !1554
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1565
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #24, !dbg !1565
  call void @llvm.dbg.value(metadata i8 %354, metadata !1259, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %355, metadata !1256, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %306, metadata !1231, metadata !DIExpression()), !dbg !1298
  %356 = and i8 %354, 1, !dbg !1504
  %357 = icmp eq i8 %356, 0, !dbg !1504
  call void @llvm.dbg.value(metadata i1 %357, metadata !1255, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1365
  %358 = icmp ugt i64 %355, 1, !dbg !1566
  br i1 %358, label %367, label %359, !dbg !1505

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1567
  br i1 %364, label %367, label %365, !dbg !1567

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i8 %472, metadata !1255, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %441, metadata !1254, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %440, metadata !1253, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %439, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %438, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %371, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %437, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %375, metadata !1237, metadata !DIExpression()), !dbg !1298
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %372, metadata !1289, metadata !DIExpression()), !dbg !1569
  %373 = and i1 %102, %368
  br label %374, !dbg !1570

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1358
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1298
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1307
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1365
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1365
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1571
  call void @llvm.dbg.value(metadata i8 %380, metadata !1254, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %379, metadata !1253, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %378, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %377, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %376, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %375, metadata !1237, metadata !DIExpression()), !dbg !1298
  br i1 %373, label %381, label %427, !dbg !1572

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1577

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1254, metadata !DIExpression()), !dbg !1365
  %383 = and i8 %377, 1, !dbg !1580
  %384 = icmp eq i8 %383, 0, !dbg !1580
  %385 = and i1 %110, %384, !dbg !1580
  br i1 %385, label %386, label %402, !dbg !1580

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1582
  br i1 %387, label %388, label %390, !dbg !1586

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1582
  store i8 39, i8* %389, align 1, !dbg !1582, !tbaa !877
  br label %390, !dbg !1582

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %391, metadata !1238, metadata !DIExpression()), !dbg !1298
  %392 = icmp ult i64 %391, %129, !dbg !1587
  br i1 %392, label %393, label %395, !dbg !1590

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1587
  store i8 36, i8* %394, align 1, !dbg !1587, !tbaa !877
  br label %395, !dbg !1587

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %396, metadata !1238, metadata !DIExpression()), !dbg !1298
  %397 = icmp ult i64 %396, %129, !dbg !1591
  br i1 %397, label %398, label %400, !dbg !1594

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1591
  store i8 39, i8* %399, align 1, !dbg !1591, !tbaa !877
  br label %400, !dbg !1591

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %401, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !1245, metadata !DIExpression()), !dbg !1298
  br label %402, !dbg !1595

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1298
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %404, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %403, metadata !1238, metadata !DIExpression()), !dbg !1298
  %405 = icmp ult i64 %403, %129, !dbg !1596
  br i1 %405, label %406, label %408, !dbg !1599

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1596
  store i8 92, i8* %407, align 1, !dbg !1596, !tbaa !877
  br label %408, !dbg !1596

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %409, metadata !1238, metadata !DIExpression()), !dbg !1298
  %410 = icmp ult i64 %409, %129, !dbg !1600
  br i1 %410, label %411, label %415, !dbg !1603

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1600
  %413 = or i8 %412, 48, !dbg !1600
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1600
  store i8 %413, i8* %414, align 1, !dbg !1600, !tbaa !877
  br label %415, !dbg !1600

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %416, metadata !1238, metadata !DIExpression()), !dbg !1298
  %417 = icmp ult i64 %416, %129, !dbg !1604
  br i1 %417, label %418, label %423, !dbg !1607

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1604
  %420 = and i8 %419, 7, !dbg !1604
  %421 = or i8 %420, 48, !dbg !1604
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1604
  store i8 %421, i8* %422, align 1, !dbg !1604, !tbaa !877
  br label %423, !dbg !1604

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %424, metadata !1238, metadata !DIExpression()), !dbg !1298
  %425 = and i8 %378, 7, !dbg !1608
  %426 = or i8 %425, 48, !dbg !1609
  call void @llvm.dbg.value(metadata i8 %426, metadata !1248, metadata !DIExpression()), !dbg !1365
  br label %436, !dbg !1610

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1611
  %429 = icmp eq i8 %428, 0, !dbg !1611
  br i1 %429, label %436, label %430, !dbg !1613

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1614
  br i1 %431, label %432, label %434, !dbg !1618

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1614
  store i8 92, i8* %433, align 1, !dbg !1614, !tbaa !877
  br label %434, !dbg !1614

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %435, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1253, metadata !DIExpression()), !dbg !1365
  br label %436, !dbg !1619

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1298
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1307
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1365
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1365
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1365
  call void @llvm.dbg.value(metadata i8 %441, metadata !1254, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %440, metadata !1253, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %439, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %438, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %437, metadata !1238, metadata !DIExpression()), !dbg !1298
  %442 = add i64 %375, 1, !dbg !1620
  %443 = icmp ugt i64 %372, %442, !dbg !1622
  br i1 %443, label %444, label %471, !dbg !1623

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1624
  %446 = icmp ne i8 %445, 0, !dbg !1624
  %447 = and i8 %441, 1, !dbg !1624
  %448 = icmp eq i8 %447, 0, !dbg !1624
  %449 = and i1 %446, %448, !dbg !1624
  br i1 %449, label %450, label %461, !dbg !1624

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1627
  br i1 %451, label %452, label %454, !dbg !1631

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1627
  store i8 39, i8* %453, align 1, !dbg !1627, !tbaa !877
  br label %454, !dbg !1627

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %455, metadata !1238, metadata !DIExpression()), !dbg !1298
  %456 = icmp ult i64 %455, %129, !dbg !1632
  br i1 %456, label %457, label %459, !dbg !1635

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1632
  store i8 39, i8* %458, align 1, !dbg !1632, !tbaa !877
  br label %459, !dbg !1632

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %460, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1245, metadata !DIExpression()), !dbg !1298
  br label %461, !dbg !1636

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1637
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %463, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %462, metadata !1238, metadata !DIExpression()), !dbg !1298
  %464 = icmp ult i64 %462, %129, !dbg !1638
  br i1 %464, label %465, label %467, !dbg !1641

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1638
  store i8 %439, i8* %466, align 1, !dbg !1638, !tbaa !877
  br label %467, !dbg !1638

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %468, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %442, metadata !1237, metadata !DIExpression()), !dbg !1298
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1642
  %470 = load i8, i8* %469, align 1, !dbg !1642, !tbaa !877
  call void @llvm.dbg.value(metadata i8 %470, metadata !1248, metadata !DIExpression()), !dbg !1365
  br label %374, !dbg !1643, !llvm.loop !1644

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i8 %472, metadata !1255, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %441, metadata !1254, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %440, metadata !1253, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %439, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %438, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %371, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %437, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %375, metadata !1237, metadata !DIExpression()), !dbg !1298
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1358
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1298
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1303
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1647
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1298
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1298
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1365
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1365
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1365
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %482, metadata !1255, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %481, metadata !1254, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %156, metadata !1253, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %480, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %479, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %478, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %477, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %476, metadata !1239, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %475, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %474, metadata !1237, metadata !DIExpression()), !dbg !1298
  br i1 %116, label %494, label %484, !dbg !1648

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1650
  %486 = zext i8 %485 to i64, !dbg !1650
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1651
  %488 = load i32, i32* %487, align 4, !dbg !1651, !tbaa !652
  %489 = and i8 %480, 31, !dbg !1652
  %490 = zext i8 %489 to i32, !dbg !1652
  %491 = shl nuw i32 1, %490, !dbg !1653
  %492 = and i32 %488, %491, !dbg !1653
  %493 = icmp eq i32 %492, 0, !dbg !1653
  br i1 %493, label %494, label %495, !dbg !1654

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1655

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1656
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1298
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1303
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1647
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1307
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1308
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1365
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1365
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %503, metadata !1255, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %502, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %501, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %500, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %499, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %498, metadata !1239, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %497, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %496, metadata !1237, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.label(metadata !1295), !dbg !1657
  br i1 %109, label %505, label %635, !dbg !1658

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1254, metadata !DIExpression()), !dbg !1365
  %506 = and i8 %500, 1, !dbg !1660
  %507 = icmp eq i8 %506, 0, !dbg !1660
  %508 = and i1 %110, %507, !dbg !1660
  br i1 %508, label %509, label %525, !dbg !1660

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1662
  br i1 %510, label %511, label %513, !dbg !1666

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1662
  store i8 39, i8* %512, align 1, !dbg !1662, !tbaa !877
  br label %513, !dbg !1662

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i64 %514, metadata !1238, metadata !DIExpression()), !dbg !1298
  %515 = icmp ult i64 %514, %504, !dbg !1667
  br i1 %515, label %516, label %518, !dbg !1670

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1667
  store i8 36, i8* %517, align 1, !dbg !1667, !tbaa !877
  br label %518, !dbg !1667

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %519, metadata !1238, metadata !DIExpression()), !dbg !1298
  %520 = icmp ult i64 %519, %504, !dbg !1671
  br i1 %520, label %521, label %523, !dbg !1674

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1671
  store i8 39, i8* %522, align 1, !dbg !1671, !tbaa !877
  br label %523, !dbg !1671

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %524, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 1, metadata !1245, metadata !DIExpression()), !dbg !1298
  br label %525, !dbg !1675

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1365
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %527, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %526, metadata !1238, metadata !DIExpression()), !dbg !1298
  %528 = icmp ult i64 %526, %504, !dbg !1676
  br i1 %528, label %529, label %531, !dbg !1679

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1676
  store i8 92, i8* %530, align 1, !dbg !1676, !tbaa !877
  br label %531, !dbg !1676

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %543, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %542, metadata !1255, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %541, metadata !1254, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %540, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %539, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %538, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %537, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %536, metadata !1239, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %535, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %534, metadata !1237, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.label(metadata !1296), !dbg !1680
  br label %560, !dbg !1681

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1656
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1298
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1303
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1647
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1307
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1308
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1684
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1365
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1365
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %542, metadata !1255, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %541, metadata !1254, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %540, metadata !1248, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 %539, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %538, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %537, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %536, metadata !1239, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %535, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %534, metadata !1237, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.label(metadata !1296), !dbg !1680
  %544 = and i8 %538, 1, !dbg !1681
  %545 = icmp ne i8 %544, 0, !dbg !1681
  %546 = and i8 %541, 1, !dbg !1681
  %547 = icmp eq i8 %546, 0, !dbg !1681
  %548 = and i1 %545, %547, !dbg !1681
  br i1 %548, label %549, label %560, !dbg !1681

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1685
  br i1 %550, label %551, label %553, !dbg !1689

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1685
  store i8 39, i8* %552, align 1, !dbg !1685, !tbaa !877
  br label %553, !dbg !1685

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %554, metadata !1238, metadata !DIExpression()), !dbg !1298
  %555 = icmp ult i64 %554, %543, !dbg !1690
  br i1 %555, label %556, label %558, !dbg !1693

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1690
  store i8 39, i8* %557, align 1, !dbg !1690, !tbaa !877
  br label %558, !dbg !1690

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1693
  call void @llvm.dbg.value(metadata i64 %559, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 0, metadata !1245, metadata !DIExpression()), !dbg !1298
  br label %560, !dbg !1694

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1365
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1298
  call void @llvm.dbg.value(metadata i8 %569, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %568, metadata !1238, metadata !DIExpression()), !dbg !1298
  %570 = icmp ult i64 %568, %561, !dbg !1695
  br i1 %570, label %571, label %573, !dbg !1698

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1695
  store i8 %563, i8* %572, align 1, !dbg !1695, !tbaa !877
  br label %573, !dbg !1695

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %574, metadata !1238, metadata !DIExpression()), !dbg !1298
  %575 = icmp eq i8 %562, 0, !dbg !1699
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1701
  call void @llvm.dbg.value(metadata i8 %576, metadata !1247, metadata !DIExpression()), !dbg !1298
  br label %577, !dbg !1702

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1656
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1298
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1303
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1647
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1307
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1298
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1309
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %584, metadata !1247, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %583, metadata !1246, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i8 %582, metadata !1245, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %581, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %580, metadata !1239, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %579, metadata !1238, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %578, metadata !1237, metadata !DIExpression()), !dbg !1298
  %586 = add i64 %578, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %586, metadata !1237, metadata !DIExpression()), !dbg !1298
  br label %121, !dbg !1704, !llvm.loop !1705

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1707
  %590 = and i1 %110, %589, !dbg !1709
  %591 = xor i1 %590, true, !dbg !1709
  %592 = or i1 %109, %591, !dbg !1709
  br i1 %592, label %593, label %635, !dbg !1709

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1710
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1710
  br i1 %597, label %598, label %607, !dbg !1710

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1712
  %600 = icmp eq i8 %599, 0, !dbg !1712
  br i1 %600, label %603, label %601, !dbg !1715

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1716
  br label %652, !dbg !1717

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1718
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1720
  br i1 %606, label %26, label %607, !dbg !1720

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1721
  %610 = and i1 %609, %608, !dbg !1723
  br i1 %610, label %611, label %626, !dbg !1723

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1240, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %123, metadata !1238, metadata !DIExpression()), !dbg !1298
  %612 = load i8, i8* %97, align 1, !dbg !1724, !tbaa !877
  %613 = icmp eq i8 %612, 0, !dbg !1727
  br i1 %613, label %626, label %614, !dbg !1727

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1240, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %617, metadata !1238, metadata !DIExpression()), !dbg !1298
  %618 = icmp ult i64 %617, %129, !dbg !1728
  br i1 %618, label %619, label %621, !dbg !1731

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1728
  store i8 %615, i8* %620, align 1, !dbg !1728, !tbaa !877
  br label %621, !dbg !1728

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %622, metadata !1238, metadata !DIExpression()), !dbg !1298
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1732
  call void @llvm.dbg.value(metadata i8* %623, metadata !1240, metadata !DIExpression()), !dbg !1298
  %624 = load i8, i8* %623, align 1, !dbg !1724, !tbaa !877
  %625 = icmp eq i8 %624, 0, !dbg !1727
  br i1 %625, label %626, label %614, !dbg !1727, !llvm.loop !1733

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1340
  call void @llvm.dbg.value(metadata i64 %627, metadata !1238, metadata !DIExpression()), !dbg !1298
  %628 = icmp ult i64 %627, %129, !dbg !1735
  br i1 %628, label %629, label %652, !dbg !1737

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1738
  store i8 0, i8* %630, align 1, !dbg !1739, !tbaa !877
  br label %652, !dbg !1738

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %637, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.label(metadata !1297), !dbg !1740
  %633 = icmp eq i8 %101, 0, !dbg !1741
  %634 = select i1 %633, i32 2, i32 4, !dbg !1741
  br label %642, !dbg !1741

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1229, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %637, metadata !1231, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.label(metadata !1297), !dbg !1740
  %639 = icmp eq i32 %93, 2, !dbg !1743
  %640 = icmp eq i8 %636, 0, !dbg !1741
  %641 = select i1 %640, i32 2, i32 4, !dbg !1741
  br i1 %639, label %642, label %646, !dbg !1741

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1741

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1232, metadata !DIExpression()), !dbg !1298
  %650 = and i32 %5, -3, !dbg !1744
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1745
  br label %652, !dbg !1746

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1747
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1748 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1752, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i32 %1, metadata !1753, metadata !DIExpression()), !dbg !1756
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #24, !dbg !1757
  call void @llvm.dbg.value(metadata i8* %3, metadata !1754, metadata !DIExpression()), !dbg !1756
  %4 = icmp eq i8* %3, %0, !dbg !1758
  br i1 %4, label %5, label %72, !dbg !1760

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #24, !dbg !1761
  call void @llvm.dbg.value(metadata i8* %6, metadata !1755, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8* %6, metadata !1762, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* undef, metadata !1768, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 85, metadata !1769, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 84, metadata !1770, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 70, metadata !1771, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 45, metadata !1772, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 56, metadata !1773, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1778
  %7 = load i8, i8* %6, align 1, !dbg !1781, !tbaa !877
  %8 = and i8 %7, -33, !dbg !1781
  %9 = sext i8 %8 to i32, !dbg !1781
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1781

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1783, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8* undef, metadata !1788, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 84, metadata !1789, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 70, metadata !1790, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 45, metadata !1791, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 56, metadata !1792, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, metadata !1793, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, metadata !1794, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, metadata !1795, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 0, metadata !1796, metadata !DIExpression()), !dbg !1797
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1801
  %12 = load i8, i8* %11, align 1, !dbg !1801, !tbaa !877
  %13 = and i8 %12, -33, !dbg !1801
  %14 = icmp eq i8 %13, 84, !dbg !1801
  br i1 %14, label %15, label %69, !dbg !1801

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1803, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8* undef, metadata !1808, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 70, metadata !1809, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 45, metadata !1810, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 56, metadata !1811, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1816
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1820
  %17 = load i8, i8* %16, align 1, !dbg !1820, !tbaa !877
  %18 = and i8 %17, -33, !dbg !1820
  %19 = icmp eq i8 %18, 70, !dbg !1820
  br i1 %19, label %20, label %69, !dbg !1820

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1822, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8* undef, metadata !1827, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 45, metadata !1828, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 56, metadata !1829, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 0, metadata !1831, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 0, metadata !1832, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 0, metadata !1833, metadata !DIExpression()), !dbg !1834
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1838
  %22 = load i8, i8* %21, align 1, !dbg !1838, !tbaa !877
  %23 = icmp eq i8 %22, 45, !dbg !1838
  br i1 %23, label %24, label %69, !dbg !1840

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1841, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8* undef, metadata !1846, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 56, metadata !1847, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, metadata !1848, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, metadata !1849, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1852
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1856
  %26 = load i8, i8* %25, align 1, !dbg !1856, !tbaa !877
  %27 = icmp eq i8 %26, 56, !dbg !1856
  br i1 %27, label %28, label %69, !dbg !1858

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1859, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8* undef, metadata !1864, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, metadata !1865, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, metadata !1866, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, metadata !1867, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8 0, metadata !1868, metadata !DIExpression()), !dbg !1869
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1873
  %30 = load i8, i8* %29, align 1, !dbg !1873, !tbaa !877
  %31 = icmp eq i8 %30, 0, !dbg !1873
  br i1 %31, label %32, label %69, !dbg !1875

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !1876, !tbaa !877
  %34 = icmp eq i8 %33, 96, !dbg !1877
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.75, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.76, i64 0, i64 0), !dbg !1876
  br label %72, !dbg !1878

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1783, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8* undef, metadata !1788, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 66, metadata !1789, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 49, metadata !1790, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 56, metadata !1791, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 48, metadata !1792, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 51, metadata !1793, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 48, metadata !1794, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 0, metadata !1795, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 0, metadata !1796, metadata !DIExpression()), !dbg !1879
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1883
  %38 = load i8, i8* %37, align 1, !dbg !1883, !tbaa !877
  %39 = and i8 %38, -33, !dbg !1883
  %40 = icmp eq i8 %39, 66, !dbg !1883
  br i1 %40, label %41, label %69, !dbg !1883

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1803, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8* undef, metadata !1808, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 49, metadata !1809, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 56, metadata !1810, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 48, metadata !1811, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 51, metadata !1812, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 48, metadata !1813, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1884
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1886
  %43 = load i8, i8* %42, align 1, !dbg !1886, !tbaa !877
  %44 = icmp eq i8 %43, 49, !dbg !1886
  br i1 %44, label %45, label %69, !dbg !1887

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1822, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8* undef, metadata !1827, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 56, metadata !1828, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 48, metadata !1829, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 51, metadata !1830, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 48, metadata !1831, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 0, metadata !1832, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 0, metadata !1833, metadata !DIExpression()), !dbg !1888
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1890
  %47 = load i8, i8* %46, align 1, !dbg !1890, !tbaa !877
  %48 = icmp eq i8 %47, 56, !dbg !1890
  br i1 %48, label %49, label %69, !dbg !1891

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1841, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8* undef, metadata !1846, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 48, metadata !1847, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 51, metadata !1848, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 48, metadata !1849, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1892
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1894
  %51 = load i8, i8* %50, align 1, !dbg !1894, !tbaa !877
  %52 = icmp eq i8 %51, 48, !dbg !1894
  br i1 %52, label %53, label %69, !dbg !1895

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1859, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* undef, metadata !1864, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 51, metadata !1865, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 48, metadata !1866, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 0, metadata !1867, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 0, metadata !1868, metadata !DIExpression()), !dbg !1896
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1898
  %55 = load i8, i8* %54, align 1, !dbg !1898, !tbaa !877
  %56 = icmp eq i8 %55, 51, !dbg !1898
  br i1 %56, label %57, label %69, !dbg !1899

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !1900, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8* undef, metadata !1905, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 48, metadata !1906, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 0, metadata !1907, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 0, metadata !1908, metadata !DIExpression()), !dbg !1909
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1913
  %59 = load i8, i8* %58, align 1, !dbg !1913, !tbaa !877
  %60 = icmp eq i8 %59, 48, !dbg !1913
  br i1 %60, label %61, label %69, !dbg !1915

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !1916, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8* undef, metadata !1921, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i8 0, metadata !1923, metadata !DIExpression()), !dbg !1924
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1928
  %63 = load i8, i8* %62, align 1, !dbg !1928, !tbaa !877
  %64 = icmp eq i8 %63, 0, !dbg !1928
  br i1 %64, label %65, label %69, !dbg !1930

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !1931, !tbaa !877
  %67 = icmp eq i8 %66, 96, !dbg !1932
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.78, i64 0, i64 0), !dbg !1931
  br label %72, !dbg !1933

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !1934
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.73, i64 0, i64 0), !dbg !1935
  br label %72, !dbg !1936

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1756
  ret i8* %73, !dbg !1937
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #15

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1938 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !1942 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !1948 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1952, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i64 %1, metadata !1953, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1954, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8* %0, metadata !1956, metadata !DIExpression()) #24, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %1, metadata !1961, metadata !DIExpression()) #24, !dbg !1969
  call void @llvm.dbg.value(metadata i64* null, metadata !1962, metadata !DIExpression()) #24, !dbg !1969
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1963, metadata !DIExpression()) #24, !dbg !1969
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1971
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1971
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1964, metadata !DIExpression()) #24, !dbg !1969
  %6 = tail call i32* @__errno_location() #27, !dbg !1972
  %7 = load i32, i32* %6, align 4, !dbg !1972, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %7, metadata !1965, metadata !DIExpression()) #24, !dbg !1969
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1973
  %9 = load i32, i32* %8, align 4, !dbg !1973, !tbaa !1172
  %10 = or i32 %9, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %10, metadata !1966, metadata !DIExpression()) #24, !dbg !1969
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1975
  %12 = load i32, i32* %11, align 8, !dbg !1975, !tbaa !1121
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1976
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1977
  %15 = load i8*, i8** %14, align 8, !dbg !1977, !tbaa !1194
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1978
  %17 = load i8*, i8** %16, align 8, !dbg !1978, !tbaa !1197
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #24, !dbg !1979
  %19 = add i64 %18, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %19, metadata !1967, metadata !DIExpression()) #24, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %19, metadata !1981, metadata !DIExpression()) #24, !dbg !1986
  %20 = tail call noalias i8* @xmalloc(i64 %19) #24, !dbg !1988
  call void @llvm.dbg.value(metadata i8* %20, metadata !1968, metadata !DIExpression()) #24, !dbg !1969
  %21 = load i32, i32* %11, align 8, !dbg !1989, !tbaa !1121
  %22 = load i8*, i8** %14, align 8, !dbg !1990, !tbaa !1194
  %23 = load i8*, i8** %16, align 8, !dbg !1991, !tbaa !1197
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #24, !dbg !1992
  store i32 %7, i32* %6, align 4, !dbg !1993, !tbaa !652
  ret i8* %20, !dbg !1994
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !1957 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1956, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64 %1, metadata !1961, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64* %2, metadata !1962, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1963, metadata !DIExpression()), !dbg !1995
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1996
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1996
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1964, metadata !DIExpression()), !dbg !1995
  %7 = tail call i32* @__errno_location() #27, !dbg !1997
  %8 = load i32, i32* %7, align 4, !dbg !1997, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %8, metadata !1965, metadata !DIExpression()), !dbg !1995
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1998
  %10 = load i32, i32* %9, align 4, !dbg !1998, !tbaa !1172
  %11 = icmp eq i64* %2, null, !dbg !1999
  %12 = zext i1 %11 to i32, !dbg !1999
  %13 = or i32 %10, %12, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %13, metadata !1966, metadata !DIExpression()), !dbg !1995
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2001
  %15 = load i32, i32* %14, align 8, !dbg !2001, !tbaa !1121
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2002
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2003
  %18 = load i8*, i8** %17, align 8, !dbg !2003, !tbaa !1194
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2004
  %20 = load i8*, i8** %19, align 8, !dbg !2004, !tbaa !1197
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2005
  %22 = add i64 %21, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %22, metadata !1967, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i64 %22, metadata !1981, metadata !DIExpression()) #24, !dbg !2007
  %23 = tail call noalias i8* @xmalloc(i64 %22) #24, !dbg !2009
  call void @llvm.dbg.value(metadata i8* %23, metadata !1968, metadata !DIExpression()), !dbg !1995
  %24 = load i32, i32* %14, align 8, !dbg !2010, !tbaa !1121
  %25 = load i8*, i8** %17, align 8, !dbg !2011, !tbaa !1194
  %26 = load i8*, i8** %19, align 8, !dbg !2012, !tbaa !1197
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2013
  store i32 %8, i32* %7, align 4, !dbg !2014, !tbaa !652
  br i1 %11, label %29, label %28, !dbg !2015

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2016, !tbaa !2018
  br label %29, !dbg !2019

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2020
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2021 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2025, !tbaa !644
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i32 1, metadata !2024, metadata !DIExpression()), !dbg !2026
  %2 = load i32, i32* @nslots, align 4, !dbg !2027, !tbaa !652
  %3 = icmp sgt i32 %2, 1, !dbg !2030
  br i1 %3, label %4, label %12, !dbg !2031

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2030
  br label %6, !dbg !2031

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2024, metadata !DIExpression()), !dbg !2026
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2032
  %9 = load i8*, i8** %8, align 8, !dbg !2032, !tbaa !2033
  tail call void @free(i8* %9) #24, !dbg !2035
  %10 = add nuw nsw i64 %7, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %10, metadata !2024, metadata !DIExpression()), !dbg !2026
  %11 = icmp eq i64 %10, %5, !dbg !2030
  br i1 %11, label %12, label %6, !dbg !2031, !llvm.loop !2037

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2039
  %14 = load i8*, i8** %13, align 8, !dbg !2039, !tbaa !2033
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2041
  br i1 %15, label %17, label %16, !dbg !2042

16:                                               ; preds = %12
  tail call void @free(i8* %14) #24, !dbg !2043
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2045, !tbaa !2046
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2047, !tbaa !2033
  br label %17, !dbg !2048

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2049
  br i1 %18, label %21, label %19, !dbg !2051

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2052
  tail call void @free(i8* %20) #24, !dbg !2054
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2055, !tbaa !644
  br label %21, !dbg !2056

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2057, !tbaa !652
  ret void, !dbg !2058
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2059 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8* %1, metadata !2062, metadata !DIExpression()), !dbg !2063
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2064
  ret i8* %3, !dbg !2065
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2066 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2070, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8* %1, metadata !2071, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i64 %2, metadata !2072, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2073, metadata !DIExpression()), !dbg !2085
  %5 = tail call i32* @__errno_location() #27, !dbg !2086
  %6 = load i32, i32* %5, align 4, !dbg !2086, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %6, metadata !2074, metadata !DIExpression()), !dbg !2085
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2087, !tbaa !644
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2075, metadata !DIExpression()), !dbg !2085
  %8 = icmp slt i32 %0, 0, !dbg !2088
  br i1 %8, label %9, label %10, !dbg !2090

9:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2091
  unreachable, !dbg !2091

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2092, !tbaa !652
  %12 = icmp sgt i32 %11, %0, !dbg !2093
  br i1 %12, label %34, label %13, !dbg !2094

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2095
  call void @llvm.dbg.value(metadata i1 %14, metadata !2076, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2096
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2079, metadata !DIExpression()), !dbg !2096
  %15 = icmp eq i32 %0, 2147483647, !dbg !2097
  br i1 %15, label %16, label %17, !dbg !2099

16:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2100
  unreachable, !dbg !2100

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2101
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2101
  %20 = add nuw nsw i32 %0, 1, !dbg !2102
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2103
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #24, !dbg !2104
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2104
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2075, metadata !DIExpression()), !dbg !2085
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2105, !tbaa !644
  br i1 %14, label %25, label %26, !dbg !2106

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2107, !tbaa.struct !2109
  br label %26, !dbg !2110

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2111, !tbaa !652
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2112
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2113
  %31 = sub nsw i32 %20, %27, !dbg !2114
  %32 = sext i32 %31 to i64, !dbg !2115
  %33 = shl nsw i64 %32, 4, !dbg !2116
  call void @llvm.dbg.value(metadata i8* %30, metadata !1508, metadata !DIExpression()) #24, !dbg !2117
  call void @llvm.dbg.value(metadata i32 0, metadata !1514, metadata !DIExpression()) #24, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %33, metadata !1515, metadata !DIExpression()) #24, !dbg !2117
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #24, !dbg !2119
  store i32 %20, i32* @nslots, align 4, !dbg !2120, !tbaa !652
  br label %34, !dbg !2121

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2085
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2075, metadata !DIExpression()), !dbg !2085
  %36 = zext i32 %0 to i64, !dbg !2122
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2123
  %38 = load i64, i64* %37, align 8, !dbg !2123, !tbaa !2046
  call void @llvm.dbg.value(metadata i64 %38, metadata !2080, metadata !DIExpression()), !dbg !2124
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2125
  %40 = load i8*, i8** %39, align 8, !dbg !2125, !tbaa !2033
  call void @llvm.dbg.value(metadata i8* %40, metadata !2082, metadata !DIExpression()), !dbg !2124
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2126
  %42 = load i32, i32* %41, align 4, !dbg !2126, !tbaa !1172
  %43 = or i32 %42, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %43, metadata !2083, metadata !DIExpression()), !dbg !2124
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2128
  %45 = load i32, i32* %44, align 8, !dbg !2128, !tbaa !1121
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2129
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2130
  %48 = load i8*, i8** %47, align 8, !dbg !2130, !tbaa !1194
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2131
  %50 = load i8*, i8** %49, align 8, !dbg !2131, !tbaa !1197
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2132
  call void @llvm.dbg.value(metadata i64 %51, metadata !2084, metadata !DIExpression()), !dbg !2124
  %52 = icmp ugt i64 %38, %51, !dbg !2133
  br i1 %52, label %63, label %53, !dbg !2135

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %54, metadata !2080, metadata !DIExpression()), !dbg !2124
  store i64 %54, i64* %37, align 8, !dbg !2138, !tbaa !2046
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2139
  br i1 %55, label %57, label %56, !dbg !2141

56:                                               ; preds = %53
  tail call void @free(i8* %40) #24, !dbg !2142
  br label %57, !dbg !2142

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !1981, metadata !DIExpression()) #24, !dbg !2143
  %58 = tail call noalias i8* @xmalloc(i64 %54) #24, !dbg !2145
  call void @llvm.dbg.value(metadata i8* %58, metadata !2082, metadata !DIExpression()), !dbg !2124
  store i8* %58, i8** %39, align 8, !dbg !2146, !tbaa !2033
  %59 = load i32, i32* %44, align 8, !dbg !2147, !tbaa !1121
  %60 = load i8*, i8** %47, align 8, !dbg !2148, !tbaa !1194
  %61 = load i8*, i8** %49, align 8, !dbg !2149, !tbaa !1197
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2150
  br label %63, !dbg !2151

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2124
  call void @llvm.dbg.value(metadata i8* %64, metadata !2082, metadata !DIExpression()), !dbg !2124
  store i32 %6, i32* %5, align 4, !dbg !2152, !tbaa !652
  ret i8* %64, !dbg !2153
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2154 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2158, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i8* %1, metadata !2159, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %2, metadata !2160, metadata !DIExpression()), !dbg !2161
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2162
  ret i8* %4, !dbg !2163
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2164 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2166, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i32 0, metadata !2061, metadata !DIExpression()) #24, !dbg !2168
  call void @llvm.dbg.value(metadata i8* %0, metadata !2062, metadata !DIExpression()) #24, !dbg !2168
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2170
  ret i8* %2, !dbg !2171
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2176, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %1, metadata !2177, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 0, metadata !2158, metadata !DIExpression()) #24, !dbg !2179
  call void @llvm.dbg.value(metadata i8* %0, metadata !2159, metadata !DIExpression()) #24, !dbg !2179
  call void @llvm.dbg.value(metadata i64 %1, metadata !2160, metadata !DIExpression()) #24, !dbg !2179
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #24, !dbg !2181
  ret i8* %3, !dbg !2182
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2183 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2187, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1, metadata !2188, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i8* %2, metadata !2189, metadata !DIExpression()), !dbg !2191
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2192
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2192
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2190, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2194), !dbg !2197
  call void @llvm.dbg.value(metadata i32 %1, metadata !2198, metadata !DIExpression()) #24, !dbg !2204
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2203, metadata !DIExpression()) #24, !dbg !2206
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2206, !alias.scope !2194
  %6 = icmp eq i32 %1, 10, !dbg !2207
  br i1 %6, label %7, label %8, !dbg !2209

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2210, !noalias !2194
  unreachable, !dbg !2210

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2211
  store i32 %1, i32* %9, align 8, !dbg !2212, !tbaa !1121, !alias.scope !2194
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2213
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2214
  ret i8* %10, !dbg !2215
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2216 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2220, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %1, metadata !2221, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8* %2, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i64 %3, metadata !2223, metadata !DIExpression()), !dbg !2225
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2226
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2226
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2224, metadata !DIExpression()), !dbg !2227
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2228), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %1, metadata !2198, metadata !DIExpression()) #24, !dbg !2232
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2203, metadata !DIExpression()) #24, !dbg !2234
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #24, !dbg !2234, !alias.scope !2228
  %7 = icmp eq i32 %1, 10, !dbg !2235
  br i1 %7, label %8, label %9, !dbg !2236

8:                                                ; preds = %4
  tail call void @abort() #26, !dbg !2237, !noalias !2228
  unreachable, !dbg !2237

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2238
  store i32 %1, i32* %10, align 8, !dbg !2239, !tbaa !1121, !alias.scope !2228
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2241
  ret i8* %11, !dbg !2242
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2243 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8* %1, metadata !2248, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i32 0, metadata !2187, metadata !DIExpression()) #24, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %0, metadata !2188, metadata !DIExpression()) #24, !dbg !2250
  call void @llvm.dbg.value(metadata i8* %1, metadata !2189, metadata !DIExpression()) #24, !dbg !2250
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2252
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2252
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2190, metadata !DIExpression()) #24, !dbg !2253
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2254) #24, !dbg !2257
  call void @llvm.dbg.value(metadata i32 %0, metadata !2198, metadata !DIExpression()) #24, !dbg !2258
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2203, metadata !DIExpression()) #24, !dbg !2260
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #24, !dbg !2260, !alias.scope !2254
  %5 = icmp eq i32 %0, 10, !dbg !2261
  br i1 %5, label %6, label %7, !dbg !2262

6:                                                ; preds = %2
  tail call void @abort() #26, !dbg !2263, !noalias !2254
  unreachable, !dbg !2263

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2264
  store i32 %0, i32* %8, align 8, !dbg !2265, !tbaa !1121, !alias.scope !2254
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2266
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2267
  ret i8* %9, !dbg !2268
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2269 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i64 %2, metadata !2275, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 0, metadata !2220, metadata !DIExpression()) #24, !dbg !2277
  call void @llvm.dbg.value(metadata i32 %0, metadata !2221, metadata !DIExpression()) #24, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %1, metadata !2222, metadata !DIExpression()) #24, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %2, metadata !2223, metadata !DIExpression()) #24, !dbg !2277
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2279
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2279
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2224, metadata !DIExpression()) #24, !dbg !2280
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2281) #24, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %0, metadata !2198, metadata !DIExpression()) #24, !dbg !2285
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2203, metadata !DIExpression()) #24, !dbg !2287
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #24, !dbg !2287, !alias.scope !2281
  %6 = icmp eq i32 %0, 10, !dbg !2288
  br i1 %6, label %7, label %8, !dbg !2289

7:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2290, !noalias !2281
  unreachable, !dbg !2290

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2291
  store i32 %0, i32* %9, align 8, !dbg !2292, !tbaa !1121, !alias.scope !2281
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #24, !dbg !2293
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2294
  ret i8* %10, !dbg !2295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2296 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i64 %1, metadata !2301, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8 %2, metadata !2302, metadata !DIExpression()), !dbg !2304
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2305
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2305
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2303, metadata !DIExpression()), !dbg !2306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2307, !tbaa.struct !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1139, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %2, metadata !1140, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 1, metadata !1141, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8 %2, metadata !1142, metadata !DIExpression()), !dbg !2309
  %6 = lshr i8 %2, 5, !dbg !2311
  %7 = zext i8 %6 to i64, !dbg !2311
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2312
  call void @llvm.dbg.value(metadata i32* %8, metadata !1143, metadata !DIExpression()), !dbg !2309
  %9 = and i8 %2, 31, !dbg !2313
  %10 = zext i8 %9 to i32, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %10, metadata !1145, metadata !DIExpression()), !dbg !2309
  %11 = load i32, i32* %8, align 4, !dbg !2314, !tbaa !652
  %12 = lshr i32 %11, %10, !dbg !2315
  %13 = and i32 %12, 1, !dbg !2316
  call void @llvm.dbg.value(metadata i32 %13, metadata !1146, metadata !DIExpression()), !dbg !2309
  %14 = xor i32 %13, 1, !dbg !2317
  %15 = shl i32 %14, %10, !dbg !2318
  %16 = xor i32 %15, %11, !dbg !2319
  store i32 %16, i32* %8, align 4, !dbg !2319, !tbaa !652
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2320
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2321
  ret i8* %17, !dbg !2322
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2323 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2327, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8 %1, metadata !2328, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()) #24, !dbg !2330
  call void @llvm.dbg.value(metadata i64 -1, metadata !2301, metadata !DIExpression()) #24, !dbg !2330
  call void @llvm.dbg.value(metadata i8 %1, metadata !2302, metadata !DIExpression()) #24, !dbg !2330
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2332
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2332
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2303, metadata !DIExpression()) #24, !dbg !2333
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2334, !tbaa.struct !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1139, metadata !DIExpression()) #24, !dbg !2335
  call void @llvm.dbg.value(metadata i8 %1, metadata !1140, metadata !DIExpression()) #24, !dbg !2335
  call void @llvm.dbg.value(metadata i32 1, metadata !1141, metadata !DIExpression()) #24, !dbg !2335
  call void @llvm.dbg.value(metadata i8 %1, metadata !1142, metadata !DIExpression()) #24, !dbg !2335
  %5 = lshr i8 %1, 5, !dbg !2337
  %6 = zext i8 %5 to i64, !dbg !2337
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2338
  call void @llvm.dbg.value(metadata i32* %7, metadata !1143, metadata !DIExpression()) #24, !dbg !2335
  %8 = and i8 %1, 31, !dbg !2339
  %9 = zext i8 %8 to i32, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %9, metadata !1145, metadata !DIExpression()) #24, !dbg !2335
  %10 = load i32, i32* %7, align 4, !dbg !2340, !tbaa !652
  %11 = lshr i32 %10, %9, !dbg !2341
  %12 = and i32 %11, 1, !dbg !2342
  call void @llvm.dbg.value(metadata i32 %12, metadata !1146, metadata !DIExpression()) #24, !dbg !2335
  %13 = xor i32 %12, 1, !dbg !2343
  %14 = shl i32 %13, %9, !dbg !2344
  %15 = xor i32 %14, %10, !dbg !2345
  store i32 %15, i32* %7, align 4, !dbg !2345, !tbaa !652
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #24, !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2347
  ret i8* %16, !dbg !2348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2349 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %0, metadata !2327, metadata !DIExpression()) #24, !dbg !2353
  call void @llvm.dbg.value(metadata i8 58, metadata !2328, metadata !DIExpression()) #24, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()) #24, !dbg !2355
  call void @llvm.dbg.value(metadata i64 -1, metadata !2301, metadata !DIExpression()) #24, !dbg !2355
  call void @llvm.dbg.value(metadata i8 58, metadata !2302, metadata !DIExpression()) #24, !dbg !2355
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2357
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2357
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2303, metadata !DIExpression()) #24, !dbg !2358
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2359, !tbaa.struct !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1139, metadata !DIExpression()) #24, !dbg !2360
  call void @llvm.dbg.value(metadata i8 58, metadata !1140, metadata !DIExpression()) #24, !dbg !2360
  call void @llvm.dbg.value(metadata i32 1, metadata !1141, metadata !DIExpression()) #24, !dbg !2360
  call void @llvm.dbg.value(metadata i8 58, metadata !1142, metadata !DIExpression()) #24, !dbg !2360
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2362
  call void @llvm.dbg.value(metadata i32* %4, metadata !1143, metadata !DIExpression()) #24, !dbg !2360
  call void @llvm.dbg.value(metadata i32 26, metadata !1145, metadata !DIExpression()) #24, !dbg !2360
  %5 = load i32, i32* %4, align 4, !dbg !2363, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %5, metadata !1146, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2360
  %6 = or i32 %5, 67108864, !dbg !2364
  store i32 %6, i32* %4, align 4, !dbg !2364, !tbaa !652
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #24, !dbg !2365
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #24, !dbg !2366
  ret i8* %7, !dbg !2367
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2368 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2370, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i64 %1, metadata !2371, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()) #24, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %1, metadata !2301, metadata !DIExpression()) #24, !dbg !2373
  call void @llvm.dbg.value(metadata i8 58, metadata !2302, metadata !DIExpression()) #24, !dbg !2373
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2375
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2375
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2303, metadata !DIExpression()) #24, !dbg !2376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #24, !dbg !2377, !tbaa.struct !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1139, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.value(metadata i8 58, metadata !1140, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.value(metadata i32 1, metadata !1141, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.value(metadata i8 58, metadata !1142, metadata !DIExpression()) #24, !dbg !2378
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2380
  call void @llvm.dbg.value(metadata i32* %5, metadata !1143, metadata !DIExpression()) #24, !dbg !2378
  call void @llvm.dbg.value(metadata i32 26, metadata !1145, metadata !DIExpression()) #24, !dbg !2378
  %6 = load i32, i32* %5, align 4, !dbg !2381, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %6, metadata !1146, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #24, !dbg !2378
  %7 = or i32 %6, 67108864, !dbg !2382
  store i32 %7, i32* %5, align 4, !dbg !2382, !tbaa !652
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #24, !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #24, !dbg !2384
  ret i8* %8, !dbg !2385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2386 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2203, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %0, metadata !2388, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %1, metadata !2389, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %2, metadata !2390, metadata !DIExpression()), !dbg !2394
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2395
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2395
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2391, metadata !DIExpression()), !dbg !2396
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2397
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2398), !dbg !2397
  call void @llvm.dbg.value(metadata i32 %1, metadata !2198, metadata !DIExpression()) #24, !dbg !2401
  call void @llvm.dbg.value(metadata i32 0, metadata !2203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2401
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2392, !alias.scope !2398
  %8 = icmp eq i32 %1, 10, !dbg !2402
  br i1 %8, label %9, label %10, !dbg !2403

9:                                                ; preds = %3
  tail call void @abort() #26, !dbg !2404, !noalias !2398
  unreachable, !dbg !2404

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2401
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2397
  store i32 %1, i32* %11, align 8, !dbg !2397, !tbaa.struct !2308
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2397
  %13 = bitcast i32* %12 to i8*, !dbg !2397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2397, !tbaa.struct !2405
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2397
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1139, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 58, metadata !1140, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 1, metadata !1141, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8 58, metadata !1142, metadata !DIExpression()), !dbg !2406
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2408
  call void @llvm.dbg.value(metadata i32* %14, metadata !1143, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 26, metadata !1145, metadata !DIExpression()), !dbg !2406
  %15 = load i32, i32* %14, align 4, !dbg !2409, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %15, metadata !1146, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2406
  %16 = or i32 %15, 67108864, !dbg !2410
  store i32 %16, i32* %14, align 4, !dbg !2410, !tbaa !652
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2412
  ret i8* %17, !dbg !2413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2414 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %1, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %2, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %3, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()) #24, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()) #24, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()) #24, !dbg !2433
  call void @llvm.dbg.value(metadata i8* %3, metadata !2430, metadata !DIExpression()) #24, !dbg !2433
  call void @llvm.dbg.value(metadata i64 -1, metadata !2431, metadata !DIExpression()) #24, !dbg !2433
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2435
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2435
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression()) #24, !dbg !2436
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2437, !tbaa.struct !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1179, metadata !DIExpression()) #24, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %1, metadata !1180, metadata !DIExpression()) #24, !dbg !2438
  call void @llvm.dbg.value(metadata i8* %2, metadata !1181, metadata !DIExpression()) #24, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1179, metadata !DIExpression()) #24, !dbg !2438
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2440
  store i32 10, i32* %7, align 8, !dbg !2441, !tbaa !1121
  %8 = icmp ne i8* %1, null, !dbg !2442
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2443
  br i1 %10, label %12, label %11, !dbg !2443

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2444
  unreachable, !dbg !2444

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2445
  store i8* %1, i8** %13, align 8, !dbg !2446, !tbaa !1194
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2447
  store i8* %2, i8** %14, align 8, !dbg !2448, !tbaa !1197
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #24, !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2450
  ret i8* %15, !dbg !2451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2424 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %3, metadata !2430, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i64 %4, metadata !2431, metadata !DIExpression()), !dbg !2452
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2453
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2453
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2432, metadata !DIExpression()), !dbg !2454
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2455, !tbaa.struct !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1179, metadata !DIExpression()) #24, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %1, metadata !1180, metadata !DIExpression()) #24, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %2, metadata !1181, metadata !DIExpression()) #24, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1179, metadata !DIExpression()) #24, !dbg !2456
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2458
  store i32 10, i32* %8, align 8, !dbg !2459, !tbaa !1121
  %9 = icmp ne i8* %1, null, !dbg !2460
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2461
  br i1 %11, label %13, label %12, !dbg !2461

12:                                               ; preds = %5
  tail call void @abort() #26, !dbg !2462
  unreachable, !dbg !2462

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2463
  store i8* %1, i8** %14, align 8, !dbg !2464, !tbaa !1194
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2465
  store i8* %2, i8** %15, align 8, !dbg !2466, !tbaa !1197
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #24, !dbg !2468
  ret i8* %16, !dbg !2469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2470 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i8* %2, metadata !2476, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()) #24, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %0, metadata !2419, metadata !DIExpression()) #24, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %1, metadata !2420, metadata !DIExpression()) #24, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %2, metadata !2421, metadata !DIExpression()) #24, !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()) #24, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()) #24, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()) #24, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()) #24, !dbg !2480
  call void @llvm.dbg.value(metadata i64 -1, metadata !2431, metadata !DIExpression()) #24, !dbg !2480
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2482
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2482
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression()) #24, !dbg !2483
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2484, !tbaa.struct !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1179, metadata !DIExpression()) #24, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %0, metadata !1180, metadata !DIExpression()) #24, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %1, metadata !1181, metadata !DIExpression()) #24, !dbg !2485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1179, metadata !DIExpression()) #24, !dbg !2485
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2487
  store i32 10, i32* %6, align 8, !dbg !2488, !tbaa !1121
  %7 = icmp ne i8* %0, null, !dbg !2489
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2490
  br i1 %9, label %11, label %10, !dbg !2490

10:                                               ; preds = %3
  tail call void @abort() #26, !dbg !2491
  unreachable, !dbg !2491

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2492
  store i8* %0, i8** %12, align 8, !dbg !2493, !tbaa !1194
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2494
  store i8* %1, i8** %13, align 8, !dbg !2495, !tbaa !1197
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #24, !dbg !2496
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #24, !dbg !2497
  ret i8* %14, !dbg !2498
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2499 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2503, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %1, metadata !2504, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %2, metadata !2505, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %3, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 0, metadata !2423, metadata !DIExpression()) #24, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %0, metadata !2428, metadata !DIExpression()) #24, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()) #24, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()) #24, !dbg !2508
  call void @llvm.dbg.value(metadata i64 %3, metadata !2431, metadata !DIExpression()) #24, !dbg !2508
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2510
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression()) #24, !dbg !2511
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #24, !dbg !2512, !tbaa.struct !2308
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1179, metadata !DIExpression()) #24, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %0, metadata !1180, metadata !DIExpression()) #24, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %1, metadata !1181, metadata !DIExpression()) #24, !dbg !2513
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1179, metadata !DIExpression()) #24, !dbg !2513
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2515
  store i32 10, i32* %7, align 8, !dbg !2516, !tbaa !1121
  %8 = icmp ne i8* %0, null, !dbg !2517
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2518
  br i1 %10, label %12, label %11, !dbg !2518

11:                                               ; preds = %4
  tail call void @abort() #26, !dbg !2519
  unreachable, !dbg !2519

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2520
  store i8* %0, i8** %13, align 8, !dbg !2521, !tbaa !1194
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2522
  store i8* %1, i8** %14, align 8, !dbg !2523, !tbaa !1197
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #24, !dbg !2524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #24, !dbg !2525
  ret i8* %15, !dbg !2526
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 %2, metadata !2533, metadata !DIExpression()), !dbg !2534
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2535
  ret i8* %4, !dbg !2536
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2537 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 0, metadata !2531, metadata !DIExpression()) #24, !dbg !2544
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #24, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %1, metadata !2533, metadata !DIExpression()) #24, !dbg !2544
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2546
  ret i8* %3, !dbg !2547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* %1, metadata !2553, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %0, metadata !2531, metadata !DIExpression()) #24, !dbg !2555
  call void @llvm.dbg.value(metadata i8* %1, metadata !2532, metadata !DIExpression()) #24, !dbg !2555
  call void @llvm.dbg.value(metadata i64 -1, metadata !2533, metadata !DIExpression()) #24, !dbg !2555
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2557
  ret i8* %3, !dbg !2558
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2559 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2552, metadata !DIExpression()) #24, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %0, metadata !2553, metadata !DIExpression()) #24, !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2531, metadata !DIExpression()) #24, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %0, metadata !2532, metadata !DIExpression()) #24, !dbg !2567
  call void @llvm.dbg.value(metadata i64 -1, metadata !2533, metadata !DIExpression()) #24, !dbg !2567
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #24, !dbg !2569
  ret i8* %2, !dbg !2570
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2571 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2611, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %1, metadata !2612, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %2, metadata !2613, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %3, metadata !2614, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8** %4, metadata !2615, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i64 %5, metadata !2616, metadata !DIExpression()), !dbg !2617
  %7 = icmp eq i8* %1, null, !dbg !2618
  br i1 %7, label %10, label %8, !dbg !2620

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #24, !dbg !2621
  br label %12, !dbg !2621

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.84, i64 0, i64 0), i8* %2, i8* %3) #24, !dbg !2622
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.85, i64 0, i64 0), i32 5) #24, !dbg !2623
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #24, !dbg !2623
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2624
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.87, i64 0, i64 0), i32 5) #24, !dbg !2625
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.88, i64 0, i64 0)) #24, !dbg !2625
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2626
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
  ], !dbg !2627

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.89, i64 0, i64 0), i32 5) #24, !dbg !2628
  %21 = load i8*, i8** %4, align 8, !dbg !2628, !tbaa !644
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #24, !dbg !2628
  br label %147, !dbg !2630

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.90, i64 0, i64 0), i32 5) #24, !dbg !2631
  %25 = load i8*, i8** %4, align 8, !dbg !2631, !tbaa !644
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2631
  %27 = load i8*, i8** %26, align 8, !dbg !2631, !tbaa !644
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #24, !dbg !2631
  br label %147, !dbg !2632

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.91, i64 0, i64 0), i32 5) #24, !dbg !2633
  %31 = load i8*, i8** %4, align 8, !dbg !2633, !tbaa !644
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2633
  %33 = load i8*, i8** %32, align 8, !dbg !2633, !tbaa !644
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2633
  %35 = load i8*, i8** %34, align 8, !dbg !2633, !tbaa !644
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #24, !dbg !2633
  br label %147, !dbg !2634

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.92, i64 0, i64 0), i32 5) #24, !dbg !2635
  %39 = load i8*, i8** %4, align 8, !dbg !2635, !tbaa !644
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2635
  %41 = load i8*, i8** %40, align 8, !dbg !2635, !tbaa !644
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2635
  %43 = load i8*, i8** %42, align 8, !dbg !2635, !tbaa !644
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2635
  %45 = load i8*, i8** %44, align 8, !dbg !2635, !tbaa !644
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #24, !dbg !2635
  br label %147, !dbg !2636

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.93, i64 0, i64 0), i32 5) #24, !dbg !2637
  %49 = load i8*, i8** %4, align 8, !dbg !2637, !tbaa !644
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2637
  %51 = load i8*, i8** %50, align 8, !dbg !2637, !tbaa !644
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2637
  %53 = load i8*, i8** %52, align 8, !dbg !2637, !tbaa !644
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2637
  %55 = load i8*, i8** %54, align 8, !dbg !2637, !tbaa !644
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2637
  %57 = load i8*, i8** %56, align 8, !dbg !2637, !tbaa !644
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #24, !dbg !2637
  br label %147, !dbg !2638

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.94, i64 0, i64 0), i32 5) #24, !dbg !2639
  %61 = load i8*, i8** %4, align 8, !dbg !2639, !tbaa !644
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2639
  %63 = load i8*, i8** %62, align 8, !dbg !2639, !tbaa !644
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2639
  %65 = load i8*, i8** %64, align 8, !dbg !2639, !tbaa !644
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2639
  %67 = load i8*, i8** %66, align 8, !dbg !2639, !tbaa !644
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2639
  %69 = load i8*, i8** %68, align 8, !dbg !2639, !tbaa !644
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2639
  %71 = load i8*, i8** %70, align 8, !dbg !2639, !tbaa !644
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #24, !dbg !2639
  br label %147, !dbg !2640

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.95, i64 0, i64 0), i32 5) #24, !dbg !2641
  %75 = load i8*, i8** %4, align 8, !dbg !2641, !tbaa !644
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2641
  %77 = load i8*, i8** %76, align 8, !dbg !2641, !tbaa !644
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2641
  %79 = load i8*, i8** %78, align 8, !dbg !2641, !tbaa !644
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2641
  %81 = load i8*, i8** %80, align 8, !dbg !2641, !tbaa !644
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2641
  %83 = load i8*, i8** %82, align 8, !dbg !2641, !tbaa !644
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2641
  %85 = load i8*, i8** %84, align 8, !dbg !2641, !tbaa !644
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2641
  %87 = load i8*, i8** %86, align 8, !dbg !2641, !tbaa !644
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #24, !dbg !2641
  br label %147, !dbg !2642

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.96, i64 0, i64 0), i32 5) #24, !dbg !2643
  %91 = load i8*, i8** %4, align 8, !dbg !2643, !tbaa !644
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2643
  %93 = load i8*, i8** %92, align 8, !dbg !2643, !tbaa !644
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2643
  %95 = load i8*, i8** %94, align 8, !dbg !2643, !tbaa !644
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2643
  %97 = load i8*, i8** %96, align 8, !dbg !2643, !tbaa !644
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2643
  %99 = load i8*, i8** %98, align 8, !dbg !2643, !tbaa !644
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2643
  %101 = load i8*, i8** %100, align 8, !dbg !2643, !tbaa !644
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2643
  %103 = load i8*, i8** %102, align 8, !dbg !2643, !tbaa !644
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2643
  %105 = load i8*, i8** %104, align 8, !dbg !2643, !tbaa !644
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #24, !dbg !2643
  br label %147, !dbg !2644

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.97, i64 0, i64 0), i32 5) #24, !dbg !2645
  %109 = load i8*, i8** %4, align 8, !dbg !2645, !tbaa !644
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2645
  %111 = load i8*, i8** %110, align 8, !dbg !2645, !tbaa !644
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2645
  %113 = load i8*, i8** %112, align 8, !dbg !2645, !tbaa !644
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2645
  %115 = load i8*, i8** %114, align 8, !dbg !2645, !tbaa !644
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2645
  %117 = load i8*, i8** %116, align 8, !dbg !2645, !tbaa !644
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2645
  %119 = load i8*, i8** %118, align 8, !dbg !2645, !tbaa !644
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2645
  %121 = load i8*, i8** %120, align 8, !dbg !2645, !tbaa !644
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2645
  %123 = load i8*, i8** %122, align 8, !dbg !2645, !tbaa !644
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2645
  %125 = load i8*, i8** %124, align 8, !dbg !2645, !tbaa !644
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #24, !dbg !2645
  br label %147, !dbg !2646

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.98, i64 0, i64 0), i32 5) #24, !dbg !2647
  %129 = load i8*, i8** %4, align 8, !dbg !2647, !tbaa !644
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2647
  %131 = load i8*, i8** %130, align 8, !dbg !2647, !tbaa !644
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2647
  %133 = load i8*, i8** %132, align 8, !dbg !2647, !tbaa !644
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2647
  %135 = load i8*, i8** %134, align 8, !dbg !2647, !tbaa !644
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2647
  %137 = load i8*, i8** %136, align 8, !dbg !2647, !tbaa !644
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2647
  %139 = load i8*, i8** %138, align 8, !dbg !2647, !tbaa !644
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2647
  %141 = load i8*, i8** %140, align 8, !dbg !2647, !tbaa !644
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2647
  %143 = load i8*, i8** %142, align 8, !dbg !2647, !tbaa !644
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2647
  %145 = load i8*, i8** %144, align 8, !dbg !2647, !tbaa !644
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #24, !dbg !2647
  br label %147, !dbg !2648

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2649
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2650 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2654, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !2656, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8* %3, metadata !2657, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i8** %4, metadata !2658, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 0, metadata !2659, metadata !DIExpression()), !dbg !2660
  br label %6, !dbg !2661

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2663
  call void @llvm.dbg.value(metadata i64 %7, metadata !2659, metadata !DIExpression()), !dbg !2660
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2664
  %9 = load i8*, i8** %8, align 8, !dbg !2664, !tbaa !644
  %10 = icmp eq i8* %9, null, !dbg !2666
  %11 = add i64 %7, 1, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %11, metadata !2659, metadata !DIExpression()), !dbg !2660
  br i1 %10, label %12, label %6, !dbg !2666, !llvm.loop !2668

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2670
  ret void, !dbg !2671
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2672 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2683, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %1, metadata !2684, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %2, metadata !2685, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %3, metadata !2686, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2687, metadata !DIExpression()), !dbg !2691
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2692
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2692
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2689, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 0, metadata !2688, metadata !DIExpression()), !dbg !2691
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2688, metadata !DIExpression()), !dbg !2691
  %11 = load i32, i32* %8, align 8, !dbg !2694
  %12 = icmp ult i32 %11, 41, !dbg !2694
  br i1 %12, label %13, label %18, !dbg !2694

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2694
  %15 = zext i32 %11 to i64, !dbg !2694
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2694
  %17 = add nuw nsw i32 %11, 8, !dbg !2694
  store i32 %17, i32* %8, align 8, !dbg !2694
  br label %21, !dbg !2694

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2694
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2694
  store i8* %20, i8** %9, align 8, !dbg !2694
  br label %21, !dbg !2694

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2694
  %25 = load i8*, i8** %24, align 8, !dbg !2694
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2697
  store i8* %25, i8** %26, align 16, !dbg !2698, !tbaa !644
  %27 = icmp eq i8* %25, null, !dbg !2699
  br i1 %27, label %30, label %28, !dbg !2700

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 1, metadata !2688, metadata !DIExpression()), !dbg !2691
  %29 = icmp ult i32 %22, 41, !dbg !2694
  br i1 %29, label %35, label %32, !dbg !2694

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2701
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2702
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #24, !dbg !2703
  ret void, !dbg !2703

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2694
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2694
  store i8* %34, i8** %9, align 8, !dbg !2694
  br label %40, !dbg !2694

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2694
  %37 = zext i32 %22 to i64, !dbg !2694
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2694
  %39 = add nuw nsw i32 %22, 8, !dbg !2694
  store i32 %39, i32* %8, align 8, !dbg !2694
  br label %40, !dbg !2694

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2694
  %44 = load i8*, i8** %43, align 8, !dbg !2694
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2697
  store i8* %44, i8** %45, align 8, !dbg !2698, !tbaa !644
  %46 = icmp eq i8* %44, null, !dbg !2699
  br i1 %46, label %30, label %47, !dbg !2700

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 2, metadata !2688, metadata !DIExpression()), !dbg !2691
  %48 = icmp ult i32 %41, 41, !dbg !2694
  br i1 %48, label %52, label %49, !dbg !2694

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2694
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2694
  store i8* %51, i8** %9, align 8, !dbg !2694
  br label %57, !dbg !2694

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2694
  %54 = zext i32 %41 to i64, !dbg !2694
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2694
  %56 = add nuw nsw i32 %41, 8, !dbg !2694
  store i32 %56, i32* %8, align 8, !dbg !2694
  br label %57, !dbg !2694

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2694
  %61 = load i8*, i8** %60, align 8, !dbg !2694
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2697
  store i8* %61, i8** %62, align 16, !dbg !2698, !tbaa !644
  %63 = icmp eq i8* %61, null, !dbg !2699
  br i1 %63, label %30, label %64, !dbg !2700

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 3, metadata !2688, metadata !DIExpression()), !dbg !2691
  %65 = icmp ult i32 %58, 41, !dbg !2694
  br i1 %65, label %69, label %66, !dbg !2694

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2694
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2694
  store i8* %68, i8** %9, align 8, !dbg !2694
  br label %74, !dbg !2694

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2694
  %71 = zext i32 %58 to i64, !dbg !2694
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2694
  %73 = add nuw nsw i32 %58, 8, !dbg !2694
  store i32 %73, i32* %8, align 8, !dbg !2694
  br label %74, !dbg !2694

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2694
  %78 = load i8*, i8** %77, align 8, !dbg !2694
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2697
  store i8* %78, i8** %79, align 8, !dbg !2698, !tbaa !644
  %80 = icmp eq i8* %78, null, !dbg !2699
  br i1 %80, label %30, label %81, !dbg !2700

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 4, metadata !2688, metadata !DIExpression()), !dbg !2691
  %82 = icmp ult i32 %75, 41, !dbg !2694
  br i1 %82, label %86, label %83, !dbg !2694

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2694
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2694
  store i8* %85, i8** %9, align 8, !dbg !2694
  br label %91, !dbg !2694

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2694
  %88 = zext i32 %75 to i64, !dbg !2694
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2694
  %90 = add nuw nsw i32 %75, 8, !dbg !2694
  store i32 %90, i32* %8, align 8, !dbg !2694
  br label %91, !dbg !2694

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2694
  %95 = load i8*, i8** %94, align 8, !dbg !2694
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2697
  store i8* %95, i8** %96, align 16, !dbg !2698, !tbaa !644
  %97 = icmp eq i8* %95, null, !dbg !2699
  br i1 %97, label %30, label %98, !dbg !2700

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 5, metadata !2688, metadata !DIExpression()), !dbg !2691
  %99 = icmp ult i32 %92, 41, !dbg !2694
  br i1 %99, label %103, label %100, !dbg !2694

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2694
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2694
  store i8* %102, i8** %9, align 8, !dbg !2694
  br label %108, !dbg !2694

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2694
  %105 = zext i32 %92 to i64, !dbg !2694
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2694
  %107 = add nuw nsw i32 %92, 8, !dbg !2694
  store i32 %107, i32* %8, align 8, !dbg !2694
  br label %108, !dbg !2694

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2694
  %111 = load i8*, i8** %110, align 8, !dbg !2694
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2697
  store i8* %111, i8** %112, align 8, !dbg !2698, !tbaa !644
  %113 = icmp eq i8* %111, null, !dbg !2699
  br i1 %113, label %30, label %114, !dbg !2700

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2688, metadata !DIExpression()), !dbg !2691
  %115 = load i8*, i8** %9, align 8, !dbg !2694
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2694
  store i8* %116, i8** %9, align 8, !dbg !2694
  %117 = bitcast i8* %115 to i8**, !dbg !2694
  %118 = load i8*, i8** %117, align 8, !dbg !2694
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2697
  store i8* %118, i8** %119, align 16, !dbg !2698, !tbaa !644
  %120 = icmp eq i8* %118, null, !dbg !2699
  br i1 %120, label %30, label %121, !dbg !2700

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2688, metadata !DIExpression()), !dbg !2691
  %122 = load i8*, i8** %9, align 8, !dbg !2694
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2694
  store i8* %123, i8** %9, align 8, !dbg !2694
  %124 = bitcast i8* %122 to i8**, !dbg !2694
  %125 = load i8*, i8** %124, align 8, !dbg !2694
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2697
  store i8* %125, i8** %126, align 8, !dbg !2698, !tbaa !644
  %127 = icmp eq i8* %125, null, !dbg !2699
  br i1 %127, label %30, label %128, !dbg !2700

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2688, metadata !DIExpression()), !dbg !2691
  %129 = load i8*, i8** %9, align 8, !dbg !2694
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2694
  store i8* %130, i8** %9, align 8, !dbg !2694
  %131 = bitcast i8* %129 to i8**, !dbg !2694
  %132 = load i8*, i8** %131, align 8, !dbg !2694
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2697
  store i8* %132, i8** %133, align 16, !dbg !2698, !tbaa !644
  %134 = icmp eq i8* %132, null, !dbg !2699
  br i1 %134, label %30, label %135, !dbg !2700

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2688, metadata !DIExpression()), !dbg !2691
  %136 = load i8*, i8** %9, align 8, !dbg !2694
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2694
  store i8* %137, i8** %9, align 8, !dbg !2694
  %138 = bitcast i8* %136 to i8**, !dbg !2694
  %139 = load i8*, i8** %138, align 8, !dbg !2694
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2697
  store i8* %139, i8** %140, align 8, !dbg !2698, !tbaa !644
  %141 = icmp eq i8* %139, null, !dbg !2699
  %142 = select i1 %141, i64 9, i64 10, !dbg !2700
  br label %30, !dbg !2700
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2704 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2708, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2709, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %2, metadata !2710, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %3, metadata !2711, metadata !DIExpression()), !dbg !2718
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2719
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2712, metadata !DIExpression()), !dbg !2720
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2721
  call void @llvm.va_start(i8* nonnull %6), !dbg !2721
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2722
  call void @llvm.va_end(i8* nonnull %6), !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #24, !dbg !2724
  ret void, !dbg !2724
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2725 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2726, !tbaa !644
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.86, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2726
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.101, i64 0, i64 0), i32 5) #24, !dbg !2727
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.102, i64 0, i64 0)) #24, !dbg !2727
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.103, i64 0, i64 0), i32 5) #24, !dbg !2728
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.104, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.105, i64 0, i64 0)) #24, !dbg !2728
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.106, i64 0, i64 0), i32 5) #24, !dbg !2729
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.107, i64 0, i64 0)) #24, !dbg !2729
  ret void, !dbg !2730
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !2731 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2736, metadata !DIExpression()), !dbg !2737
  %3 = udiv i64 9223372036854775807, %1, !dbg !2738
  %4 = icmp ult i64 %3, %0, !dbg !2738
  br i1 %4, label %5, label %6, !dbg !2740

5:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2741
  unreachable, !dbg !2741

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %7, metadata !2743, metadata !DIExpression()) #24, !dbg !2749
  %8 = tail call noalias i8* @malloc(i64 %7) #24, !dbg !2751
  call void @llvm.dbg.value(metadata i8* %8, metadata !2748, metadata !DIExpression()) #24, !dbg !2749
  %9 = icmp eq i8* %8, null, !dbg !2752
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2754
  br i1 %11, label %12, label %13, !dbg !2754

12:                                               ; preds = %6
  tail call void @xalloc_die() #26, !dbg !2755
  unreachable, !dbg !2755

13:                                               ; preds = %6
  ret i8* %8, !dbg !2756
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2744 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2743, metadata !DIExpression()), !dbg !2757
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %2, metadata !2748, metadata !DIExpression()), !dbg !2757
  %3 = icmp eq i8* %2, null, !dbg !2759
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2760
  br i1 %5, label %6, label %7, !dbg !2760

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2761
  unreachable, !dbg !2761

7:                                                ; preds = %1
  ret i8* %2, !dbg !2762
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !2763 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2767, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64 %1, metadata !2768, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64 %2, metadata !2769, metadata !DIExpression()), !dbg !2770
  %4 = udiv i64 9223372036854775807, %2, !dbg !2771
  %5 = icmp ult i64 %4, %1, !dbg !2771
  br i1 %5, label %6, label %7, !dbg !2773

6:                                                ; preds = %3
  tail call void @xalloc_die() #26, !dbg !2774
  unreachable, !dbg !2774

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()) #24, !dbg !2782
  call void @llvm.dbg.value(metadata i64 %8, metadata !2781, metadata !DIExpression()) #24, !dbg !2782
  %9 = icmp eq i64 %8, 0, !dbg !2784
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2786
  br i1 %11, label %12, label %13, !dbg !2786

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #24, !dbg !2787
  br label %19, !dbg !2789

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #24, !dbg !2790
  call void @llvm.dbg.value(metadata i8* %14, metadata !2776, metadata !DIExpression()) #24, !dbg !2782
  %15 = icmp eq i8* %14, null, !dbg !2791
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2793
  br i1 %17, label %18, label %19, !dbg !2793

18:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2794
  unreachable, !dbg !2794

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2782
  ret i8* %20, !dbg !2795
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2777 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %1, metadata !2781, metadata !DIExpression()), !dbg !2796
  %3 = icmp eq i64 %1, 0, !dbg !2797
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2798
  br i1 %5, label %6, label %7, !dbg !2798

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #24, !dbg !2799
  br label %13, !dbg !2800

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #24, !dbg !2801
  call void @llvm.dbg.value(metadata i8* %8, metadata !2776, metadata !DIExpression()), !dbg !2796
  %9 = icmp eq i8* %8, null, !dbg !2802
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2803
  br i1 %11, label %12, label %13, !dbg !2803

12:                                               ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2804
  unreachable, !dbg !2804

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2796
  ret i8* %14, !dbg !2805
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !207 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !212, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64* %1, metadata !213, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %2, metadata !214, metadata !DIExpression()), !dbg !2806
  %4 = load i64, i64* %1, align 8, !dbg !2807, !tbaa !2018
  call void @llvm.dbg.value(metadata i64 %4, metadata !215, metadata !DIExpression()), !dbg !2806
  %5 = icmp eq i8* %0, null, !dbg !2808
  br i1 %5, label %6, label %20, !dbg !2810

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2811
  br i1 %7, label %8, label %13, !dbg !2814

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %9, metadata !215, metadata !DIExpression()), !dbg !2806
  %10 = icmp ugt i64 %2, 128, !dbg !2817
  %11 = zext i1 %10 to i64, !dbg !2817
  %12 = add nuw nsw i64 %9, %11, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %12, metadata !215, metadata !DIExpression()), !dbg !2806
  br label %13, !dbg !2819

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2806
  call void @llvm.dbg.value(metadata i64 %14, metadata !215, metadata !DIExpression()), !dbg !2806
  %15 = udiv i64 9223372036854775807, %2, !dbg !2820
  %16 = icmp ult i64 %15, %14, !dbg !2820
  br i1 %16, label %19, label %17, !dbg !2822

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !215, metadata !DIExpression()), !dbg !2806
  store i64 %14, i64* %1, align 8, !dbg !2823, !tbaa !2018
  %18 = mul i64 %14, %2, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()) #24, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %28, metadata !2781, metadata !DIExpression()) #24, !dbg !2825
  br label %31, !dbg !2827

19:                                               ; preds = %13
  tail call void @xalloc_die() #26, !dbg !2828
  unreachable, !dbg !2828

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2829
  %22 = icmp ugt i64 %21, %4, !dbg !2832
  br i1 %22, label %24, label %23, !dbg !2833

23:                                               ; preds = %20
  tail call void @xalloc_die() #26, !dbg !2834
  unreachable, !dbg !2834

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2835
  %26 = add nuw i64 %4, 1, !dbg !2836
  %27 = add i64 %26, %25, !dbg !2837
  call void @llvm.dbg.value(metadata i64 %27, metadata !215, metadata !DIExpression()), !dbg !2806
  store i64 %27, i64* %1, align 8, !dbg !2823, !tbaa !2018
  %28 = mul i64 %27, %2, !dbg !2824
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()) #24, !dbg !2825
  call void @llvm.dbg.value(metadata i64 %28, metadata !2781, metadata !DIExpression()) #24, !dbg !2825
  %29 = icmp eq i64 %28, 0, !dbg !2838
  br i1 %29, label %30, label %31, !dbg !2827

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #24, !dbg !2839
  br label %38, !dbg !2840

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #24, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %33, metadata !2776, metadata !DIExpression()) #24, !dbg !2825
  %34 = icmp eq i8* %33, null, !dbg !2842
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2843
  br i1 %36, label %37, label %38, !dbg !2843

37:                                               ; preds = %31
  tail call void @xalloc_die() #26, !dbg !2844
  unreachable, !dbg !2844

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2825
  ret i8* %39, !dbg !2845
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !2846 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %0, metadata !2743, metadata !DIExpression()) #24, !dbg !2850
  %2 = tail call noalias i8* @malloc(i64 %0) #24, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %2, metadata !2748, metadata !DIExpression()) #24, !dbg !2850
  %3 = icmp eq i8* %2, null, !dbg !2853
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2854
  br i1 %5, label %6, label %7, !dbg !2854

6:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2855
  unreachable, !dbg !2855

7:                                                ; preds = %1
  ret i8* %2, !dbg !2856
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2861, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64* %1, metadata !2862, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %0, metadata !212, metadata !DIExpression()) #24, !dbg !2864
  call void @llvm.dbg.value(metadata i64* %1, metadata !213, metadata !DIExpression()) #24, !dbg !2864
  call void @llvm.dbg.value(metadata i64 1, metadata !214, metadata !DIExpression()) #24, !dbg !2864
  %3 = load i64, i64* %1, align 8, !dbg !2866, !tbaa !2018
  call void @llvm.dbg.value(metadata i64 %3, metadata !215, metadata !DIExpression()) #24, !dbg !2864
  %4 = icmp eq i8* %0, null, !dbg !2867
  br i1 %4, label %5, label %10, !dbg !2868

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2869
  br i1 %6, label %17, label %7, !dbg !2870

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !215, metadata !DIExpression()) #24, !dbg !2864
  %8 = icmp slt i64 %3, 0, !dbg !2871
  br i1 %8, label %9, label %17, !dbg !2872

9:                                                ; preds = %7
  tail call void @xalloc_die() #26, !dbg !2873
  unreachable, !dbg !2873

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !2874
  br i1 %11, label %13, label %12, !dbg !2875

12:                                               ; preds = %10
  tail call void @xalloc_die() #26, !dbg !2876
  unreachable, !dbg !2876

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !2877
  %15 = add nuw nsw i64 %3, 1, !dbg !2878
  %16 = add nuw nsw i64 %15, %14, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %16, metadata !215, metadata !DIExpression()) #24, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %0, metadata !2776, metadata !DIExpression()) #24, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %16, metadata !2781, metadata !DIExpression()) #24, !dbg !2880
  br label %17, !dbg !2882

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !2883
  store i64 %18, i64* %1, align 8, !dbg !2883, !tbaa !2018
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #24, !dbg !2884
  call void @llvm.dbg.value(metadata i8* %19, metadata !2776, metadata !DIExpression()) #24, !dbg !2880
  %20 = icmp eq i8* %19, null, !dbg !2885
  br i1 %20, label %21, label %22, !dbg !2886

21:                                               ; preds = %17
  tail call void @xalloc_die() #26, !dbg !2887
  unreachable, !dbg !2887

22:                                               ; preds = %17
  ret i8* %19, !dbg !2888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !2889 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2891, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()) #24, !dbg !2898
  call void @llvm.dbg.value(metadata i64 1, metadata !2896, metadata !DIExpression()) #24, !dbg !2898
  %2 = icmp slt i64 %0, 0, !dbg !2900
  br i1 %2, label %6, label %3, !dbg !2902

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #24, !dbg !2903
  call void @llvm.dbg.value(metadata i8* %4, metadata !2897, metadata !DIExpression()) #24, !dbg !2898
  %5 = icmp eq i8* %4, null, !dbg !2904
  br i1 %5, label %6, label %7, !dbg !2905

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #26, !dbg !2906
  unreachable, !dbg !2906

7:                                                ; preds = %3
  ret i8* %4, !dbg !2907
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !2894 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2893, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %1, metadata !2896, metadata !DIExpression()), !dbg !2908
  %3 = udiv i64 9223372036854775807, %1, !dbg !2909
  %4 = icmp ult i64 %3, %0, !dbg !2909
  br i1 %4, label %8, label %5, !dbg !2910

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #24, !dbg !2911
  call void @llvm.dbg.value(metadata i8* %6, metadata !2897, metadata !DIExpression()), !dbg !2908
  %7 = icmp eq i8* %6, null, !dbg !2912
  br i1 %7, label %8, label %9, !dbg !2913

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #26, !dbg !2914
  unreachable, !dbg !2914

9:                                                ; preds = %5
  ret i8* %6, !dbg !2915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2916 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2922, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 %1, metadata !2923, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()) #24, !dbg !2925
  %3 = tail call noalias i8* @malloc(i64 %1) #24, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %3, metadata !2748, metadata !DIExpression()) #24, !dbg !2925
  %4 = icmp eq i8* %3, null, !dbg !2928
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !2929
  br i1 %6, label %7, label %8, !dbg !2929

7:                                                ; preds = %2
  tail call void @xalloc_die() #26, !dbg !2930
  unreachable, !dbg !2930

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !2931, metadata !DIExpression()) #24, !dbg !2940
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()) #24, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %1, metadata !2939, metadata !DIExpression()) #24, !dbg !2940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #24, !dbg !2942
  ret i8* %3, !dbg !2943
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !2944 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2946, metadata !DIExpression()), !dbg !2947
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #25, !dbg !2948
  %3 = add i64 %2, 1, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %0, metadata !2922, metadata !DIExpression()) #24, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %3, metadata !2923, metadata !DIExpression()) #24, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %3, metadata !2743, metadata !DIExpression()) #24, !dbg !2952
  %4 = tail call noalias i8* @malloc(i64 %3) #24, !dbg !2954
  call void @llvm.dbg.value(metadata i8* %4, metadata !2748, metadata !DIExpression()) #24, !dbg !2952
  %5 = icmp eq i8* %4, null, !dbg !2955
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !2956
  br i1 %7, label %8, label %9, !dbg !2956

8:                                                ; preds = %1
  tail call void @xalloc_die() #26, !dbg !2957
  unreachable, !dbg !2957

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !2931, metadata !DIExpression()) #24, !dbg !2958
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()) #24, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %3, metadata !2939, metadata !DIExpression()) #24, !dbg !2958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #24, !dbg !2960
  ret i8* %4, !dbg !2961
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !2962 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !2963, !tbaa !652
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.118, i64 0, i64 0), i32 5) #24, !dbg !2964
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i64 0, i64 0), i8* %2) #24, !dbg !2965
  tail call void @abort() #26, !dbg !2966
  unreachable, !dbg !2966
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #23 !dbg !2967 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2969, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()), !dbg !2975
  %3 = icmp eq i64 %0, 0, !dbg !2976
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !2977
  br i1 %5, label %11, label %6, !dbg !2977

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !2972, metadata !DIExpression()), !dbg !2978
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !2979
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !2979
  br i1 %8, label %9, label %11, !dbg !2981

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #27, !dbg !2982
  store i32 12, i32* %10, align 4, !dbg !2984, !tbaa !652
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !2969, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %12, metadata !2970, metadata !DIExpression()), !dbg !2975
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #24, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %14, metadata !2971, metadata !DIExpression()), !dbg !2975
  br label %15, !dbg !2986

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !2975
  ret i8* %16, !dbg !2987
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !2988 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3004, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8* %1, metadata !3005, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i64 %2, metadata !3006, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3007, metadata !DIExpression()), !dbg !3013
  %6 = bitcast i32* %5 to i8*, !dbg !3014
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #24, !dbg !3014
  %7 = icmp eq i32* %0, null, !dbg !3015
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3017
  call void @llvm.dbg.value(metadata i32* %8, metadata !3004, metadata !DIExpression()), !dbg !3013
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #24, !dbg !3018
  call void @llvm.dbg.value(metadata i64 %9, metadata !3008, metadata !DIExpression()), !dbg !3013
  %10 = icmp ugt i64 %9, -3, !dbg !3019
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3020
  br i1 %12, label %13, label %18, !dbg !3020

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #24, !dbg !3021
  br i1 %14, label %18, label %15, !dbg !3022

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3023, !tbaa !877
  call void @llvm.dbg.value(metadata i8 %16, metadata !3010, metadata !DIExpression()), !dbg !3024
  %17 = zext i8 %16 to i32, !dbg !3025
  store i32 %17, i32* %8, align 4, !dbg !3026, !tbaa !652
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3013
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #24, !dbg !3027
  ret i64 %19, !dbg !3027
}

; Function Attrs: nounwind
declare !dbg !3028 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3032 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3070, metadata !DIExpression()), !dbg !3075
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #24, !dbg !3076
  call void @llvm.dbg.value(metadata i1 undef, metadata !3071, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3075
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3077, metadata !DIExpression()), !dbg !3080
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3082
  %4 = load i32, i32* %3, align 8, !dbg !3082, !tbaa !3083
  %5 = and i32 %4, 32, !dbg !3084
  %6 = icmp eq i32 %5, 0, !dbg !3084
  call void @llvm.dbg.value(metadata i1 %6, metadata !3073, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3075
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #24, !dbg !3085
  %8 = icmp eq i32 %7, 0, !dbg !3086
  call void @llvm.dbg.value(metadata i1 %8, metadata !3074, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3075
  br i1 %6, label %9, label %19, !dbg !3087

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3089
  call void @llvm.dbg.value(metadata i1 %10, metadata !3071, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3075
  %11 = or i1 %10, %8, !dbg !3090
  %12 = xor i1 %8, true, !dbg !3090
  %13 = sext i1 %12 to i32, !dbg !3090
  br i1 %11, label %22, label %14, !dbg !3090

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #27, !dbg !3091
  %16 = load i32, i32* %15, align 4, !dbg !3091, !tbaa !652
  %17 = icmp ne i32 %16, 9, !dbg !3092
  %18 = sext i1 %17 to i32, !dbg !3093
  br label %22, !dbg !3093

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3094

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #27, !dbg !3096
  store i32 0, i32* %21, align 4, !dbg !3098, !tbaa !652
  br label %22, !dbg !3096

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3075
  ret i32 %23, !dbg !3099
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3100 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3104, metadata !DIExpression()), !dbg !3109
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3110
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3105, metadata !DIExpression()), !dbg !3111
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #24, !dbg !3112
  %5 = icmp eq i32 %4, 0, !dbg !3112
  br i1 %5, label %6, label %13, !dbg !3114

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3115
  %8 = load i16, i16* %7, align 16, !dbg !3115
  %9 = icmp eq i16 %8, 67, !dbg !3115
  br i1 %9, label %13, label %10, !dbg !3116

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.128, i64 0, i64 0), i64 6), !dbg !3117
  %12 = icmp ne i32 %11, 0, !dbg !3118
  br label %13, !dbg !3116

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3109
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #24, !dbg !3119
  ret i1 %14, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3120 {
  %1 = tail call i8* @nl_langinfo(i32 14) #24, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %1, metadata !3124, metadata !DIExpression()), !dbg !3126
  %2 = icmp eq i8* %1, null, !dbg !3127
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.131, i64 0, i64 0), i8* %1, !dbg !3129
  call void @llvm.dbg.value(metadata i8* %3, metadata !3124, metadata !DIExpression()), !dbg !3126
  %4 = load i8, i8* %3, align 1, !dbg !3130, !tbaa !877
  %5 = icmp eq i8 %4, 0, !dbg !3134
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.132, i64 0, i64 0), i8* %3, !dbg !3135
  call void @llvm.dbg.value(metadata i8* %6, metadata !3124, metadata !DIExpression()), !dbg !3126
  ret i8* %6, !dbg !3136
}

; Function Attrs: nounwind
declare !dbg !3137 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8* %1, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %2, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %0, metadata !3148, metadata !DIExpression()) #24, !dbg !3157
  call void @llvm.dbg.value(metadata i8* %1, metadata !3151, metadata !DIExpression()) #24, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %2, metadata !3152, metadata !DIExpression()) #24, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %0, metadata !3159, metadata !DIExpression()) #24, !dbg !3165
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %4, metadata !3164, metadata !DIExpression()) #24, !dbg !3165
  call void @llvm.dbg.value(metadata i8* %4, metadata !3153, metadata !DIExpression()) #24, !dbg !3157
  %5 = icmp eq i8* %4, null, !dbg !3168
  br i1 %5, label %6, label %9, !dbg !3169

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3170
  br i1 %7, label %19, label %8, !dbg !3173

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3174, !tbaa !877
  br label %19, !dbg !3175

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #25, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %10, metadata !3154, metadata !DIExpression()) #24, !dbg !3177
  %11 = icmp ult i64 %10, %2, !dbg !3178
  br i1 %11, label %12, label %14, !dbg !3180

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %1, metadata !3183, metadata !DIExpression()) #24, !dbg !3188
  call void @llvm.dbg.value(metadata i8* %4, metadata !3186, metadata !DIExpression()) #24, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %13, metadata !3187, metadata !DIExpression()) #24, !dbg !3188
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #24, !dbg !3190
  br label %19, !dbg !3191

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3192
  br i1 %15, label %19, label %16, !dbg !3195

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %1, metadata !3183, metadata !DIExpression()) #24, !dbg !3198
  call void @llvm.dbg.value(metadata i8* %4, metadata !3186, metadata !DIExpression()) #24, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %17, metadata !3187, metadata !DIExpression()) #24, !dbg !3198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #24, !dbg !3200
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3201
  store i8 0, i8* %18, align 1, !dbg !3202, !tbaa !877
  br label %19, !dbg !3203

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3204
  ret i32 %20, !dbg !3205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3208, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i32 %0, metadata !3159, metadata !DIExpression()) #24, !dbg !3210
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #24, !dbg !3212
  call void @llvm.dbg.value(metadata i8* %2, metadata !3164, metadata !DIExpression()) #24, !dbg !3210
  ret i8* %2, !dbg !3213
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3214 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3255, metadata !DIExpression()), !dbg !3256
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %2, metadata !3254, metadata !DIExpression()), !dbg !3256
  %3 = icmp slt i32 %2, 0, !dbg !3258
  br i1 %3, label %4, label %6, !dbg !3260

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3261
  br label %24, !dbg !3262

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3263
  %8 = icmp eq i32 %7, 0, !dbg !3263
  br i1 %8, label %13, label %9, !dbg !3265

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3266
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #24, !dbg !3267
  %12 = icmp eq i64 %11, -1, !dbg !3268
  br i1 %12, label %16, label %13, !dbg !3269

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #24, !dbg !3270
  %15 = icmp eq i32 %14, 0, !dbg !3270
  br i1 %15, label %16, label %18, !dbg !3271

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3253, metadata !DIExpression()), !dbg !3256
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %21, metadata !3255, metadata !DIExpression()), !dbg !3256
  br label %24, !dbg !3273

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #27, !dbg !3274
  %20 = load i32, i32* %19, align 4, !dbg !3274, !tbaa !652
  call void @llvm.dbg.value(metadata i32 %20, metadata !3253, metadata !DIExpression()), !dbg !3256
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %21, metadata !3255, metadata !DIExpression()), !dbg !3256
  %22 = icmp eq i32 %20, 0, !dbg !3275
  br i1 %22, label %24, label %23, !dbg !3273

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3277, !tbaa !652
  call void @llvm.dbg.value(metadata i32 -1, metadata !3255, metadata !DIExpression()), !dbg !3256
  br label %24, !dbg !3279

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3256
  ret i32 %25, !dbg !3280
}

; Function Attrs: nofree nounwind
declare !dbg !3281 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3284 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3285 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3289 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3327, metadata !DIExpression()), !dbg !3328
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3329
  br i1 %2, label %6, label %3, !dbg !3331

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #24, !dbg !3332
  %5 = icmp eq i32 %4, 0, !dbg !3332
  br i1 %5, label %6, label %8, !dbg !3333

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3334
  br label %17, !dbg !3335

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3336, metadata !DIExpression()) #24, !dbg !3341
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3343
  %10 = load i32, i32* %9, align 8, !dbg !3343, !tbaa !3083
  %11 = and i32 %10, 256, !dbg !3345
  %12 = icmp eq i32 %11, 0, !dbg !3345
  br i1 %12, label %15, label %13, !dbg !3346

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #24, !dbg !3347
  br label %15, !dbg !3347

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3348
  br label %17, !dbg !3349

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3328
  ret i32 %18, !dbg !3350
}

; Function Attrs: nofree nounwind
declare !dbg !3351 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3354 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3393, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3394, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i32 %2, metadata !3395, metadata !DIExpression()), !dbg !3399
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3400
  %5 = load i8*, i8** %4, align 8, !dbg !3400, !tbaa !3401
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3402
  %7 = load i8*, i8** %6, align 8, !dbg !3402, !tbaa !3403
  %8 = icmp eq i8* %5, %7, !dbg !3404
  br i1 %8, label %9, label %28, !dbg !3405

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3406
  %11 = load i8*, i8** %10, align 8, !dbg !3406, !tbaa !871
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3407
  %13 = load i8*, i8** %12, align 8, !dbg !3407, !tbaa !3408
  %14 = icmp eq i8* %11, %13, !dbg !3409
  br i1 %14, label %15, label %28, !dbg !3410

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3411
  %17 = load i8*, i8** %16, align 8, !dbg !3411, !tbaa !3412
  %18 = icmp eq i8* %17, null, !dbg !3413
  br i1 %18, label %19, label %28, !dbg !3414

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #24, !dbg !3415
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #24, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %21, metadata !3396, metadata !DIExpression()), !dbg !3417
  %22 = icmp eq i64 %21, -1, !dbg !3418
  br i1 %22, label %30, label %23, !dbg !3420

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3421
  %25 = load i32, i32* %24, align 8, !dbg !3422, !tbaa !3083
  %26 = and i32 %25, -17, !dbg !3422
  store i32 %26, i32* %24, align 8, !dbg !3422, !tbaa !3083
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3423
  store i64 %21, i64* %27, align 8, !dbg !3424, !tbaa !3425
  br label %30, !dbg !3426

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3427
  br label %30, !dbg !3428

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3399
  ret i32 %31, !dbg !3429
}

; Function Attrs: nofree nounwind
declare !dbg !3430 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { noreturn nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #19 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #20 = { nofree nosync nounwind willreturn }
attributes #21 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nounwind }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind readnone willreturn }
attributes #28 = { cold }

!llvm.dbg.cu = !{!2, !77, !82, !87, !94, !100, !106, !195, !189, !202, !219, !221, !223, !226, !228, !230, !619, !621, !623, !625}
!llvm.ident = !{!627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627, !627}
!llvm.module.flags = !{!628, !629, !630, !631, !632}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arch_long_options", scope: !2, file: !3, line: 107, type: !71, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/uname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!11, !0, !49, !63}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "unknown", scope: !13, file: !3, line: 262, type: !46, isLocal: true, isDefinition: true)
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 260, type: !14, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !16, !17}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{!19, !20, !21, !23, !38, !43}
!19 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !3, line: 260, type: !16)
!20 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !3, line: 260, type: !17)
!21 = !DILocalVariable(name: "toprint", scope: !13, file: !3, line: 265, type: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "name", scope: !24, file: !3, line: 284, type: !26)
!24 = distinct !DILexicalBlock(scope: !25, file: !3, line: 283, column: 5)
!25 = distinct !DILexicalBlock(scope: !13, file: !3, line: 280, column: 7)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !27, line: 48, size: 3120, elements: !28)
!27 = !DIFile(filename: "/usr/include/sys/utsname.h", directory: "")
!28 = !{!29, !33, !34, !35, !36, !37}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !26, file: !27, line: 51, baseType: !30, size: 520)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 520, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 65)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !26, file: !27, line: 54, baseType: !30, size: 520, offset: 520)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !26, file: !27, line: 57, baseType: !30, size: 520, offset: 1040)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !26, file: !27, line: 59, baseType: !30, size: 520, offset: 1560)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !26, file: !27, line: 62, baseType: !30, size: 520, offset: 2080)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !26, file: !27, line: 67, baseType: !30, size: 520, offset: 2600)
!38 = !DILocalVariable(name: "element", scope: !39, file: !3, line: 303, type: !41)
!39 = distinct !DILexicalBlock(scope: !40, file: !3, line: 302, column: 5)
!40 = distinct !DILexicalBlock(scope: !13, file: !3, line: 301, column: 7)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!43 = !DILocalVariable(name: "element", scope: !44, file: !3, line: 347, type: !41)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 346, column: 5)
!45 = distinct !DILexicalBlock(scope: !13, file: !3, line: 345, column: 7)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 8)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "uname_long_options", scope: !2, file: !3, line: 89, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3584, elements: !61)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !54, line: 50, size: 256, elements: !55)
!54 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!55 = !{!56, !57, !58, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !54, line: 52, baseType: !41, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !53, file: !54, line: 55, baseType: !16, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !53, file: !54, line: 56, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !54, line: 57, baseType: !16, size: 32, offset: 192)
!61 = !{!62}
!62 = !DISubrange(count: 14)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "printed", scope: !65, file: !3, line: 163, type: !70, isLocal: true, isDefinition: true)
!65 = distinct !DISubprogram(name: "print_element", scope: !3, file: !3, line: 161, type: !66, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !41}
!68 = !{!69}
!69 = !DILocalVariable(name: "element", arg: 1, scope: !65, file: !3, line: 161, type: !41)
!70 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 768, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "uname_mode", scope: !77, file: !78, line: 2, type: !16, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !79, splitDebugInlining: false, nameTableKind: None)
!78 = !DIFile(filename: "src/uname-uname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!79 = !{!75}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "Version", scope: !82, file: !83, line: 2, type: !41, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !84, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!84 = !{!80}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "file_name", scope: !87, file: !88, line: 46, type: !41, isLocal: true, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !89, splitDebugInlining: false, nameTableKind: None)
!88 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!89 = !{!85, !90}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !87, file: !88, line: 56, type: !70, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "exit_failure", scope: !94, file: !95, line: 24, type: !97, isLocal: false, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !96, splitDebugInlining: false, nameTableKind: None)
!95 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!96 = !{!92}
!97 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "program_name", scope: !100, file: !101, line: 33, type: !41, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !103, splitDebugInlining: false, nameTableKind: None)
!101 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!102 = !{!8, !6}
!103 = !{!98}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !106, file: !107, line: 85, type: !183, isLocal: false, isDefinition: true)
!106 = distinct !DICompileUnit(language: DW_LANG_C99, file: !107, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !108, retainedTypes: !143, globals: !148, splitDebugInlining: false, nameTableKind: None)
!107 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!108 = !{!109, !123, !128}
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !110, line: 32, baseType: !22, size: 32, elements: !111)
!110 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!112 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!113 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!114 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!115 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!116 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!117 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!118 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!119 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!120 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!121 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!122 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !110, line: 242, baseType: !22, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!126 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!127 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 46, baseType: !22, size: 32, elements: !130)
!129 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!131 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!132 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!133 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!137 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!140 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!143 = !{!16, !144, !145, !6}
!144 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 46, baseType: !147)
!146 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!147 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!148 = !{!104, !149, !155, !165, !167, !172, !179, !181}
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !106, file: !107, line: 101, type: !151, isLocal: false, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 320, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!153 = !{!154}
!154 = !DISubrange(count: 10)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !106, file: !107, line: 1052, type: !157, isLocal: false, isDefinition: true)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !107, line: 65, size: 448, elements: !158)
!158 = !{!159, !160, !161, !163, !164}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !157, file: !107, line: 68, baseType: !109, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !107, line: 71, baseType: !16, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !157, file: !107, line: 75, baseType: !162, size: 256, offset: 64)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !47)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !157, file: !107, line: 78, baseType: !41, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !157, file: !107, line: 81, baseType: !41, size: 64, offset: 384)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !106, file: !107, line: 116, type: !157, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "slot0", scope: !106, file: !107, line: 842, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 256)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "slotvec", scope: !106, file: !107, line: 845, type: !174, isLocal: true, isDefinition: true)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !107, line: 834, size: 128, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !175, file: !107, line: 836, baseType: !145, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !175, file: !107, line: 837, baseType: !6, size: 64, offset: 64)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "nslots", scope: !106, file: !107, line: 843, type: !16, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "slotvec0", scope: !106, file: !107, line: 844, type: !175, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 704, elements: !185)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!185 = !{!186}
!186 = !DISubrange(count: 11)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !189, file: !190, line: 26, type: !192, isLocal: false, isDefinition: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !191, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = !{!187}
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 376, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 47)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !197, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!196 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!197 = !{!198}
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !196, line: 40, baseType: !22, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!201 = !{!8}
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !204, retainedTypes: !218, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!204 = !{!205}
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !207, file: !206, line: 186, baseType: !22, size: 32, elements: !216)
!206 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = distinct !DISubprogram(name: "x2nrealloc", scope: !206, file: !206, line: 174, type: !208, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !211)
!208 = !DISubroutineType(types: !209)
!209 = !{!8, !8, !210, !145}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!211 = !{!212, !213, !214, !215}
!212 = !DILocalVariable(name: "p", arg: 1, scope: !207, file: !206, line: 174, type: !8)
!213 = !DILocalVariable(name: "pn", arg: 2, scope: !207, file: !206, line: 174, type: !210)
!214 = !DILocalVariable(name: "s", arg: 3, scope: !207, file: !206, line: 174, type: !145)
!215 = !DILocalVariable(name: "n", scope: !207, file: !206, line: 176, type: !145)
!216 = !{!217}
!217 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!218 = !{!145, !6, !8}
!219 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!220 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !224, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !225, splitDebugInlining: false, nameTableKind: None)
!224 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!225 = !{!145}
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!229 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!230 = distinct !DICompileUnit(language: DW_LANG_C99, file: !231, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !232, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!231 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!232 = !{!233}
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !234, line: 41, baseType: !22, size: 32, elements: !235)
!234 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!236 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!237 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!238 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!239 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!240 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!241 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!242 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!243 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!244 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!245 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!246 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!247 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!248 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!249 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!250 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!251 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!252 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!253 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!254 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!261 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!262 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!263 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!264 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!265 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!266 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!273 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!274 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!275 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!276 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!277 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!278 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!279 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!280 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!281 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!282 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!283 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!284 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!285 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!344 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!347 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!348 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!349 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!350 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!351 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!358 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!431 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!504 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!505 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!506 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!507 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!508 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!509 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!510 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!511 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!512 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!513 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!514 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!515 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!516 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!517 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!518 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!520 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!521 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!522 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!523 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!524 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!525 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!551 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!552 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!553 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!554 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!555 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!560 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!561 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!562 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!563 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!619 = distinct !DICompileUnit(language: DW_LANG_C99, file: !620, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!620 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!622 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!623 = distinct !DICompileUnit(language: DW_LANG_C99, file: !624, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!624 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!625 = distinct !DICompileUnit(language: DW_LANG_C99, file: !626, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !201, splitDebugInlining: false, nameTableKind: None)
!626 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!627 = !{!"clang version 12.0.1"}
!628 = !{i32 7, !"Dwarf Version", i32 4}
!629 = !{i32 2, !"Debug Info Version", i32 3}
!630 = !{i32 1, !"wchar_size", i32 4}
!631 = !{i32 7, !"PIC Level", i32 2}
!632 = !{i32 7, !"PIE Level", i32 2}
!633 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 115, type: !634, scopeLine: 116, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !16}
!636 = !{!637}
!637 = !DILocalVariable(name: "status", arg: 1, scope: !633, file: !3, line: 115, type: !16)
!638 = !DILocation(line: 0, scope: !633)
!639 = !DILocation(line: 117, column: 14, scope: !640)
!640 = distinct !DILexicalBlock(scope: !633, file: !3, line: 117, column: 7)
!641 = !DILocation(line: 117, column: 7, scope: !633)
!642 = !DILocation(line: 118, column: 5, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !3, line: 118, column: 5)
!644 = !{!645, !645, i64 0}
!645 = !{!"any pointer", !646, i64 0}
!646 = !{!"omnipotent char", !647, i64 0}
!647 = !{!"Simple C/C++ TBAA"}
!648 = !DILocation(line: 121, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !640, file: !3, line: 120, column: 5)
!650 = !DILocation(line: 123, column: 11, scope: !651)
!651 = distinct !DILexicalBlock(scope: !649, file: !3, line: 123, column: 11)
!652 = !{!653, !653, i64 0}
!653 = !{!"int", !646, i64 0}
!654 = !DILocation(line: 123, column: 22, scope: !651)
!655 = !DILocation(line: 123, column: 11, scope: !649)
!656 = !DILocation(line: 125, column: 11, scope: !657)
!657 = distinct !DILexicalBlock(scope: !651, file: !3, line: 124, column: 9)
!658 = !DILocation(line: 141, column: 9, scope: !657)
!659 = !DILocation(line: 0, scope: !651)
!660 = !DILocation(line: 150, column: 7, scope: !649)
!661 = !DILocation(line: 151, column: 7, scope: !649)
!662 = !DILocation(line: 152, column: 28, scope: !649)
!663 = !DILocalVariable(name: "program", arg: 1, scope: !664, file: !665, line: 634, type: !41)
!664 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !665, file: !665, line: 634, type: !66, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!665 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!666 = !{!663, !667, !676, !677, !679}
!667 = !DILocalVariable(name: "infomap", scope: !664, file: !665, line: 636, type: !668)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !669, size: 896, elements: !674)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !664, file: !665, line: 636, size: 128, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !670, file: !665, line: 636, baseType: !41, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !665, line: 636, baseType: !41, size: 64, offset: 64)
!674 = !{!675}
!675 = !DISubrange(count: 7)
!676 = !DILocalVariable(name: "node", scope: !664, file: !665, line: 646, type: !41)
!677 = !DILocalVariable(name: "map_prog", scope: !664, file: !665, line: 647, type: !678)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!679 = !DILocalVariable(name: "lc_messages", scope: !664, file: !665, line: 659, type: !41)
!680 = !DILocation(line: 0, scope: !664, inlinedAt: !681)
!681 = distinct !DILocation(line: 152, column: 7, scope: !649)
!682 = !DILocation(line: 636, column: 3, scope: !664, inlinedAt: !681)
!683 = !DILocation(line: 636, column: 67, scope: !664, inlinedAt: !681)
!684 = !DILocation(line: 647, column: 36, scope: !664, inlinedAt: !681)
!685 = !DILocation(line: 649, column: 3, scope: !664, inlinedAt: !681)
!686 = !DILocation(line: 649, column: 33, scope: !664, inlinedAt: !681)
!687 = !DILocation(line: 650, column: 13, scope: !664, inlinedAt: !681)
!688 = !DILocation(line: 649, column: 20, scope: !664, inlinedAt: !681)
!689 = !{!690, !645, i64 0}
!690 = !{!"infomap", !645, i64 0, !645, i64 8}
!691 = !DILocation(line: 649, column: 10, scope: !664, inlinedAt: !681)
!692 = !DILocation(line: 649, column: 28, scope: !664, inlinedAt: !681)
!693 = distinct !{!693, !685, !687, !694}
!694 = !{!"llvm.loop.mustprogress"}
!695 = !DILocation(line: 652, column: 17, scope: !696, inlinedAt: !681)
!696 = distinct !DILexicalBlock(scope: !664, file: !665, line: 652, column: 7)
!697 = !{!690, !645, i64 8}
!698 = !DILocation(line: 652, column: 7, scope: !696, inlinedAt: !681)
!699 = !DILocation(line: 652, column: 7, scope: !664, inlinedAt: !681)
!700 = !DILocation(line: 655, column: 3, scope: !664, inlinedAt: !681)
!701 = !DILocation(line: 659, column: 29, scope: !664, inlinedAt: !681)
!702 = !DILocation(line: 660, column: 7, scope: !703, inlinedAt: !681)
!703 = distinct !DILexicalBlock(scope: !664, file: !665, line: 660, column: 7)
!704 = !DILocation(line: 660, column: 19, scope: !703, inlinedAt: !681)
!705 = !DILocation(line: 660, column: 22, scope: !703, inlinedAt: !681)
!706 = !DILocation(line: 660, column: 7, scope: !664, inlinedAt: !681)
!707 = !DILocation(line: 666, column: 7, scope: !708, inlinedAt: !681)
!708 = distinct !DILexicalBlock(scope: !703, file: !665, line: 661, column: 5)
!709 = !DILocation(line: 668, column: 5, scope: !708, inlinedAt: !681)
!710 = !DILocation(line: 669, column: 3, scope: !664, inlinedAt: !681)
!711 = !DILocation(line: 671, column: 3, scope: !664, inlinedAt: !681)
!712 = !DILocation(line: 673, column: 1, scope: !664, inlinedAt: !681)
!713 = !DILocation(line: 154, column: 3, scope: !633)
!714 = !DISubprogram(name: "dcgettext", scope: !715, file: !715, line: 51, type: !716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!715 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!716 = !DISubroutineType(types: !717)
!717 = !{!6, !41, !41, !16}
!718 = !DISubprogram(name: "fputs_unlocked", scope: !719, file: !719, line: 667, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!719 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!720 = !DISubroutineType(types: !721)
!721 = !{!16, !41, !722}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !724, line: 49, size: 1728, elements: !725)
!724 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !741, !742, !743, !744, !748, !749, !751, !755, !758, !760, !763, !766, !767, !768, !769, !770}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !723, file: !724, line: 51, baseType: !16, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !723, file: !724, line: 54, baseType: !6, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !723, file: !724, line: 55, baseType: !6, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !723, file: !724, line: 56, baseType: !6, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !723, file: !724, line: 57, baseType: !6, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !723, file: !724, line: 58, baseType: !6, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !723, file: !724, line: 59, baseType: !6, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !723, file: !724, line: 60, baseType: !6, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !723, file: !724, line: 61, baseType: !6, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !723, file: !724, line: 64, baseType: !6, size: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !723, file: !724, line: 65, baseType: !6, size: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !723, file: !724, line: 66, baseType: !6, size: 64, offset: 704)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !723, file: !724, line: 68, baseType: !739, size: 64, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !724, line: 36, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !723, file: !724, line: 70, baseType: !722, size: 64, offset: 832)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !723, file: !724, line: 72, baseType: !16, size: 32, offset: 896)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !723, file: !724, line: 73, baseType: !16, size: 32, offset: 928)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !723, file: !724, line: 74, baseType: !745, size: 64, offset: 960)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !746, line: 152, baseType: !747)
!746 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!747 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !723, file: !724, line: 77, baseType: !144, size: 16, offset: 1024)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !723, file: !724, line: 78, baseType: !750, size: 8, offset: 1040)
!750 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !723, file: !724, line: 79, baseType: !752, size: 8, offset: 1048)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 1)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !723, file: !724, line: 81, baseType: !756, size: 64, offset: 1088)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !724, line: 43, baseType: null)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !723, file: !724, line: 89, baseType: !759, size: 64, offset: 1152)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !746, line: 153, baseType: !747)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !723, file: !724, line: 91, baseType: !761, size: 64, offset: 1216)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !724, line: 37, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !723, file: !724, line: 92, baseType: !764, size: 64, offset: 1280)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !724, line: 38, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !723, file: !724, line: 93, baseType: !722, size: 64, offset: 1344)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !723, file: !724, line: 94, baseType: !8, size: 64, offset: 1408)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !723, file: !724, line: 95, baseType: !145, size: 64, offset: 1472)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !723, file: !724, line: 96, baseType: !16, size: 32, offset: 1536)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !723, file: !724, line: 98, baseType: !771, size: 160, offset: 1568)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 20)
!774 = !DISubprogram(name: "setlocale", scope: !775, file: !775, line: 122, type: !776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!775 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!776 = !DISubroutineType(types: !777)
!777 = !{!6, !16, !41}
!778 = !DILocation(line: 0, scope: !13)
!779 = !DILocation(line: 268, column: 21, scope: !13)
!780 = !DILocation(line: 268, column: 3, scope: !13)
!781 = !DILocation(line: 269, column: 3, scope: !13)
!782 = !DILocation(line: 270, column: 3, scope: !13)
!783 = !DILocation(line: 271, column: 3, scope: !13)
!784 = !DILocation(line: 273, column: 3, scope: !13)
!785 = !DILocalVariable(name: "argc", arg: 1, scope: !786, file: !3, line: 175, type: !16)
!786 = distinct !DISubprogram(name: "decode_switches", scope: !3, file: !3, line: 175, type: !14, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!787 = !{!785, !788, !789, !790}
!788 = !DILocalVariable(name: "argv", arg: 2, scope: !786, file: !3, line: 175, type: !17)
!789 = !DILocalVariable(name: "c", scope: !786, file: !3, line: 177, type: !16)
!790 = !DILocalVariable(name: "toprint", scope: !786, file: !3, line: 178, type: !22)
!791 = !DILocation(line: 0, scope: !786, inlinedAt: !792)
!792 = distinct !DILocation(line: 275, column: 13, scope: !13)
!793 = !DILocation(line: 180, column: 7, scope: !794, inlinedAt: !792)
!794 = distinct !DILexicalBlock(scope: !786, file: !3, line: 180, column: 7)
!795 = !DILocation(line: 180, column: 18, scope: !794, inlinedAt: !792)
!796 = !DILocation(line: 180, column: 7, scope: !786, inlinedAt: !792)
!797 = !DILocation(line: 182, column: 19, scope: !798, inlinedAt: !792)
!798 = distinct !DILexicalBlock(scope: !794, file: !3, line: 181, column: 5)
!799 = !DILocation(line: 182, column: 7, scope: !798, inlinedAt: !792)
!800 = !DILocation(line: 187, column: 13, scope: !801, inlinedAt: !792)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 186, column: 13)
!802 = distinct !DILexicalBlock(scope: !798, file: !3, line: 184, column: 9)
!803 = !DILocation(line: 189, column: 13, scope: !801, inlinedAt: !792)
!804 = !DILocation(line: 192, column: 15, scope: !801, inlinedAt: !792)
!805 = !DILocation(line: 199, column: 19, scope: !806, inlinedAt: !792)
!806 = distinct !DILexicalBlock(scope: !794, file: !3, line: 198, column: 5)
!807 = !DILocation(line: 199, column: 7, scope: !806, inlinedAt: !792)
!808 = !DILocation(line: 209, column: 23, scope: !809, inlinedAt: !792)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 203, column: 13)
!810 = distinct !DILexicalBlock(scope: !806, file: !3, line: 201, column: 9)
!811 = !DILocation(line: 210, column: 15, scope: !809, inlinedAt: !792)
!812 = !DILocation(line: 213, column: 23, scope: !809, inlinedAt: !792)
!813 = !DILocation(line: 214, column: 15, scope: !809, inlinedAt: !792)
!814 = !DILocation(line: 217, column: 23, scope: !809, inlinedAt: !792)
!815 = !DILocation(line: 218, column: 15, scope: !809, inlinedAt: !792)
!816 = !DILocation(line: 221, column: 23, scope: !809, inlinedAt: !792)
!817 = !DILocation(line: 222, column: 15, scope: !809, inlinedAt: !792)
!818 = !DILocation(line: 225, column: 23, scope: !809, inlinedAt: !792)
!819 = !DILocation(line: 226, column: 15, scope: !809, inlinedAt: !792)
!820 = !DILocation(line: 229, column: 23, scope: !809, inlinedAt: !792)
!821 = !DILocation(line: 230, column: 15, scope: !809, inlinedAt: !792)
!822 = !DILocation(line: 233, column: 23, scope: !809, inlinedAt: !792)
!823 = !DILocation(line: 234, column: 15, scope: !809, inlinedAt: !792)
!824 = !DILocation(line: 237, column: 23, scope: !809, inlinedAt: !792)
!825 = !DILocation(line: 238, column: 15, scope: !809, inlinedAt: !792)
!826 = distinct !{!826, !807, !827, !694}
!827 = !DILocation(line: 247, column: 9, scope: !806, inlinedAt: !792)
!828 = !DILocation(line: 240, column: 13, scope: !809, inlinedAt: !792)
!829 = !DILocation(line: 242, column: 13, scope: !809, inlinedAt: !792)
!830 = !DILocation(line: 245, column: 15, scope: !809, inlinedAt: !792)
!831 = !DILocation(line: 250, column: 15, scope: !832, inlinedAt: !792)
!832 = distinct !DILexicalBlock(scope: !786, file: !3, line: 250, column: 7)
!833 = !DILocation(line: 250, column: 12, scope: !832, inlinedAt: !792)
!834 = !DILocation(line: 250, column: 7, scope: !786, inlinedAt: !792)
!835 = !DILocation(line: 252, column: 20, scope: !836, inlinedAt: !792)
!836 = distinct !DILexicalBlock(scope: !832, file: !3, line: 251, column: 5)
!837 = !DILocation(line: 252, column: 55, scope: !836, inlinedAt: !792)
!838 = !DILocation(line: 252, column: 50, scope: !836, inlinedAt: !792)
!839 = !DILocation(line: 252, column: 43, scope: !836, inlinedAt: !792)
!840 = !DILocation(line: 252, column: 7, scope: !836, inlinedAt: !792)
!841 = !DILocation(line: 253, column: 7, scope: !836, inlinedAt: !792)
!842 = !DILocation(line: 277, column: 15, scope: !843)
!843 = distinct !DILexicalBlock(scope: !13, file: !3, line: 277, column: 7)
!844 = !DILocation(line: 277, column: 7, scope: !13)
!845 = !DILocation(line: 281, column: 8, scope: !25)
!846 = !DILocation(line: 280, column: 7, scope: !13)
!847 = !DILocation(line: 284, column: 7, scope: !24)
!848 = !DILocation(line: 284, column: 22, scope: !24)
!849 = !DILocation(line: 286, column: 11, scope: !850)
!850 = distinct !DILexicalBlock(scope: !24, file: !3, line: 286, column: 11)
!851 = !DILocation(line: 286, column: 25, scope: !850)
!852 = !DILocation(line: 286, column: 11, scope: !24)
!853 = !DILocation(line: 287, column: 9, scope: !850)
!854 = !DILocation(line: 289, column: 19, scope: !855)
!855 = distinct !DILexicalBlock(scope: !24, file: !3, line: 289, column: 11)
!856 = !DILocation(line: 289, column: 11, scope: !24)
!857 = !DILocation(line: 0, scope: !65, inlinedAt: !858)
!858 = distinct !DILocation(line: 290, column: 9, scope: !855)
!859 = !DILocation(line: 164, column: 7, scope: !860, inlinedAt: !858)
!860 = distinct !DILexicalBlock(scope: !65, file: !3, line: 164, column: 7)
!861 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !858)
!862 = !DILocalVariable(name: "__c", arg: 1, scope: !863, file: !864, line: 108, type: !16)
!863 = distinct !DISubprogram(name: "putchar_unlocked", scope: !864, file: !864, line: 108, type: !865, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!864 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!865 = !DISubroutineType(types: !866)
!866 = !{!16, !16}
!867 = !{!862}
!868 = !DILocation(line: 0, scope: !863, inlinedAt: !869)
!869 = distinct !DILocation(line: 165, column: 5, scope: !860, inlinedAt: !858)
!870 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !869)
!871 = !{!872, !645, i64 40}
!872 = !{!"_IO_FILE", !653, i64 0, !645, i64 8, !645, i64 16, !645, i64 24, !645, i64 32, !645, i64 40, !645, i64 48, !645, i64 56, !645, i64 64, !645, i64 72, !645, i64 80, !645, i64 88, !645, i64 96, !645, i64 104, !653, i64 112, !653, i64 116, !873, i64 120, !874, i64 128, !646, i64 130, !646, i64 131, !645, i64 136, !873, i64 144, !645, i64 152, !645, i64 160, !645, i64 168, !645, i64 176, !873, i64 184, !653, i64 192, !646, i64 196}
!873 = !{!"long", !646, i64 0}
!874 = !{!"short", !646, i64 0}
!875 = !{!872, !645, i64 48}
!876 = !{!"branch_weights", i32 2000, i32 1}
!877 = !{!646, !646, i64 0}
!878 = !DILocation(line: 166, column: 11, scope: !65, inlinedAt: !858)
!879 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !858)
!880 = !DILocation(line: 290, column: 9, scope: !855)
!881 = !DILocation(line: 291, column: 19, scope: !882)
!882 = distinct !DILexicalBlock(scope: !24, file: !3, line: 291, column: 11)
!883 = !DILocation(line: 291, column: 11, scope: !24)
!884 = !DILocation(line: 292, column: 24, scope: !882)
!885 = !DILocation(line: 0, scope: !65, inlinedAt: !886)
!886 = distinct !DILocation(line: 292, column: 9, scope: !882)
!887 = !DILocation(line: 164, column: 7, scope: !860, inlinedAt: !886)
!888 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !886)
!889 = !DILocation(line: 0, scope: !863, inlinedAt: !890)
!890 = distinct !DILocation(line: 165, column: 5, scope: !860, inlinedAt: !886)
!891 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !890)
!892 = !DILocation(line: 166, column: 11, scope: !65, inlinedAt: !886)
!893 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !886)
!894 = !DILocation(line: 292, column: 9, scope: !882)
!895 = !DILocation(line: 293, column: 19, scope: !896)
!896 = distinct !DILexicalBlock(scope: !24, file: !3, line: 293, column: 11)
!897 = !DILocation(line: 293, column: 11, scope: !24)
!898 = !DILocation(line: 294, column: 24, scope: !896)
!899 = !DILocation(line: 0, scope: !65, inlinedAt: !900)
!900 = distinct !DILocation(line: 294, column: 9, scope: !896)
!901 = !DILocation(line: 164, column: 7, scope: !860, inlinedAt: !900)
!902 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !900)
!903 = !DILocation(line: 0, scope: !863, inlinedAt: !904)
!904 = distinct !DILocation(line: 165, column: 5, scope: !860, inlinedAt: !900)
!905 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !904)
!906 = !DILocation(line: 166, column: 11, scope: !65, inlinedAt: !900)
!907 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !900)
!908 = !DILocation(line: 294, column: 9, scope: !896)
!909 = !DILocation(line: 295, column: 19, scope: !910)
!910 = distinct !DILexicalBlock(scope: !24, file: !3, line: 295, column: 11)
!911 = !DILocation(line: 295, column: 11, scope: !24)
!912 = !DILocation(line: 296, column: 24, scope: !910)
!913 = !DILocation(line: 0, scope: !65, inlinedAt: !914)
!914 = distinct !DILocation(line: 296, column: 9, scope: !910)
!915 = !DILocation(line: 164, column: 7, scope: !860, inlinedAt: !914)
!916 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !914)
!917 = !DILocation(line: 0, scope: !863, inlinedAt: !918)
!918 = distinct !DILocation(line: 165, column: 5, scope: !860, inlinedAt: !914)
!919 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !918)
!920 = !DILocation(line: 166, column: 11, scope: !65, inlinedAt: !914)
!921 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !914)
!922 = !DILocation(line: 296, column: 9, scope: !910)
!923 = !DILocation(line: 297, column: 19, scope: !924)
!924 = distinct !DILexicalBlock(scope: !24, file: !3, line: 297, column: 11)
!925 = !DILocation(line: 297, column: 11, scope: !24)
!926 = !DILocation(line: 298, column: 24, scope: !924)
!927 = !DILocation(line: 0, scope: !65, inlinedAt: !928)
!928 = distinct !DILocation(line: 298, column: 9, scope: !924)
!929 = !DILocation(line: 164, column: 7, scope: !860, inlinedAt: !928)
!930 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !928)
!931 = !DILocation(line: 0, scope: !863, inlinedAt: !932)
!932 = distinct !DILocation(line: 165, column: 5, scope: !860, inlinedAt: !928)
!933 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !932)
!934 = !DILocation(line: 166, column: 11, scope: !65, inlinedAt: !928)
!935 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !928)
!936 = !DILocation(line: 298, column: 9, scope: !924)
!937 = !DILocation(line: 299, column: 5, scope: !25)
!938 = !DILocation(line: 299, column: 5, scope: !24)
!939 = !DILocation(line: 301, column: 15, scope: !40)
!940 = !DILocation(line: 301, column: 7, scope: !13)
!941 = !DILocation(line: 0, scope: !39)
!942 = !DILocation(line: 0, scope: !65, inlinedAt: !943)
!943 = distinct !DILocation(line: 342, column: 9, scope: !944)
!944 = distinct !DILexicalBlock(scope: !39, file: !3, line: 341, column: 11)
!945 = !DILocation(line: 164, column: 7, scope: !860, inlinedAt: !943)
!946 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !943)
!947 = !DILocation(line: 0, scope: !863, inlinedAt: !948)
!948 = distinct !DILocation(line: 165, column: 5, scope: !860, inlinedAt: !943)
!949 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !948)
!950 = !DILocation(line: 166, column: 11, scope: !65, inlinedAt: !943)
!951 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !943)
!952 = !DILocation(line: 342, column: 9, scope: !944)
!953 = !DILocation(line: 345, column: 15, scope: !45)
!954 = !DILocation(line: 345, column: 7, scope: !13)
!955 = !DILocation(line: 0, scope: !44)
!956 = !DILocation(line: 0, scope: !65, inlinedAt: !957)
!957 = distinct !DILocation(line: 367, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !44, file: !3, line: 366, column: 11)
!959 = !DILocation(line: 164, column: 7, scope: !860, inlinedAt: !957)
!960 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !957)
!961 = !DILocation(line: 0, scope: !863, inlinedAt: !962)
!962 = distinct !DILocation(line: 165, column: 5, scope: !860, inlinedAt: !957)
!963 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !962)
!964 = !DILocation(line: 166, column: 11, scope: !65, inlinedAt: !957)
!965 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !957)
!966 = !DILocation(line: 367, column: 9, scope: !958)
!967 = !DILocation(line: 370, column: 15, scope: !968)
!968 = distinct !DILexicalBlock(scope: !13, file: !3, line: 370, column: 7)
!969 = !DILocation(line: 370, column: 7, scope: !13)
!970 = !DILocation(line: 0, scope: !65, inlinedAt: !971)
!971 = distinct !DILocation(line: 371, column: 5, scope: !968)
!972 = !DILocation(line: 164, column: 7, scope: !860, inlinedAt: !971)
!973 = !DILocation(line: 164, column: 7, scope: !65, inlinedAt: !971)
!974 = !DILocation(line: 0, scope: !863, inlinedAt: !975)
!975 = distinct !DILocation(line: 165, column: 5, scope: !860, inlinedAt: !971)
!976 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !975)
!977 = !DILocation(line: 166, column: 11, scope: !65, inlinedAt: !971)
!978 = !DILocation(line: 167, column: 3, scope: !65, inlinedAt: !971)
!979 = !DILocation(line: 371, column: 5, scope: !968)
!980 = !DILocation(line: 0, scope: !863, inlinedAt: !981)
!981 = distinct !DILocation(line: 373, column: 3, scope: !13)
!982 = !DILocation(line: 110, column: 10, scope: !863, inlinedAt: !981)
!983 = !DILocation(line: 375, column: 3, scope: !13)
!984 = !DISubprogram(name: "bindtextdomain", scope: !715, file: !715, line: 86, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!985 = !DISubroutineType(types: !986)
!986 = !{!6, !41, !41}
!987 = !DISubprogram(name: "textdomain", scope: !715, file: !715, line: 82, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!988 = !DISubroutineType(types: !989)
!989 = !{!6, !41}
!990 = !DISubprogram(name: "atexit", scope: !991, file: !991, line: 595, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!991 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!992 = !DISubroutineType(types: !993)
!993 = !{!16, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{null}
!997 = !DISubprogram(name: "getopt_long", scope: !54, file: !54, line: 66, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!998 = !DISubroutineType(types: !999)
!999 = !{!16, !16, !1000, !41, !1002, !59}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1003 = !DISubprogram(name: "error", scope: !1004, file: !1004, line: 52, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1004 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !16, !16, !41, null}
!1007 = !DISubprogram(name: "uname", scope: !27, file: !27, line: 81, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!16, !1010}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1011 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !88, file: !88, line: 51, type: !66, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !1012)
!1012 = !{!1013}
!1013 = !DILocalVariable(name: "file", arg: 1, scope: !1011, file: !88, line: 51, type: !41)
!1014 = !DILocation(line: 0, scope: !1011)
!1015 = !DILocation(line: 53, column: 13, scope: !1011)
!1016 = !DILocation(line: 54, column: 1, scope: !1011)
!1017 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !88, file: !88, line: 88, type: !1018, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !70}
!1020 = !{!1021}
!1021 = !DILocalVariable(name: "ignore", arg: 1, scope: !1017, file: !88, line: 88, type: !70)
!1022 = !DILocation(line: 0, scope: !1017)
!1023 = !DILocation(line: 90, column: 16, scope: !1017)
!1024 = !{!1025, !1025, i64 0}
!1025 = !{!"_Bool", !646, i64 0}
!1026 = !DILocation(line: 91, column: 1, scope: !1017)
!1027 = distinct !DISubprogram(name: "close_stdout", scope: !88, file: !88, line: 117, type: !995, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !87, retainedNodes: !1028)
!1028 = !{!1029}
!1029 = !DILocalVariable(name: "write_error", scope: !1030, file: !88, line: 122, type: !41)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !88, line: 121, column: 5)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !88, line: 119, column: 7)
!1032 = !DILocation(line: 119, column: 21, scope: !1031)
!1033 = !DILocation(line: 119, column: 7, scope: !1031)
!1034 = !DILocation(line: 119, column: 29, scope: !1031)
!1035 = !DILocation(line: 120, column: 7, scope: !1031)
!1036 = !DILocation(line: 120, column: 12, scope: !1031)
!1037 = !{i8 0, i8 2}
!1038 = !DILocation(line: 120, column: 25, scope: !1031)
!1039 = !DILocation(line: 120, column: 28, scope: !1031)
!1040 = !DILocation(line: 120, column: 34, scope: !1031)
!1041 = !DILocation(line: 119, column: 7, scope: !1027)
!1042 = !DILocation(line: 122, column: 33, scope: !1030)
!1043 = !DILocation(line: 0, scope: !1030)
!1044 = !DILocation(line: 123, column: 11, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1030, file: !88, line: 123, column: 11)
!1046 = !DILocation(line: 0, scope: !1045)
!1047 = !DILocation(line: 123, column: 11, scope: !1030)
!1048 = !DILocation(line: 124, column: 36, scope: !1045)
!1049 = !DILocation(line: 124, column: 9, scope: !1045)
!1050 = !DILocation(line: 127, column: 9, scope: !1045)
!1051 = !DILocation(line: 129, column: 14, scope: !1030)
!1052 = !DILocation(line: 129, column: 7, scope: !1030)
!1053 = !DILocation(line: 134, column: 42, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1027, file: !88, line: 134, column: 7)
!1055 = !DILocation(line: 134, column: 28, scope: !1054)
!1056 = !DILocation(line: 134, column: 50, scope: !1054)
!1057 = !DILocation(line: 134, column: 7, scope: !1027)
!1058 = !DILocation(line: 135, column: 12, scope: !1054)
!1059 = !DILocation(line: 135, column: 5, scope: !1054)
!1060 = !DILocation(line: 136, column: 1, scope: !1027)
!1061 = distinct !DISubprogram(name: "set_program_name", scope: !101, file: !101, line: 39, type: !66, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !100, retainedNodes: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DILocalVariable(name: "argv0", arg: 1, scope: !1061, file: !101, line: 39, type: !41)
!1064 = !DILocalVariable(name: "slash", scope: !1061, file: !101, line: 46, type: !41)
!1065 = !DILocalVariable(name: "base", scope: !1061, file: !101, line: 47, type: !41)
!1066 = !DILocation(line: 0, scope: !1061)
!1067 = !DILocation(line: 51, column: 13, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !101, line: 51, column: 7)
!1069 = !DILocation(line: 51, column: 7, scope: !1061)
!1070 = !DILocation(line: 55, column: 14, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !101, line: 52, column: 5)
!1072 = !DILocation(line: 54, column: 7, scope: !1071)
!1073 = !DILocation(line: 56, column: 7, scope: !1071)
!1074 = !DILocation(line: 59, column: 11, scope: !1061)
!1075 = !DILocation(line: 60, column: 17, scope: !1061)
!1076 = !DILocation(line: 60, column: 11, scope: !1061)
!1077 = !DILocation(line: 61, column: 12, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1061, file: !101, line: 61, column: 7)
!1079 = !DILocation(line: 61, column: 20, scope: !1078)
!1080 = !DILocation(line: 61, column: 25, scope: !1078)
!1081 = !DILocation(line: 61, column: 42, scope: !1078)
!1082 = !DILocation(line: 61, column: 28, scope: !1078)
!1083 = !DILocation(line: 61, column: 61, scope: !1078)
!1084 = !DILocation(line: 61, column: 7, scope: !1061)
!1085 = !DILocation(line: 64, column: 11, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !101, line: 64, column: 11)
!1087 = distinct !DILexicalBlock(scope: !1078, file: !101, line: 62, column: 5)
!1088 = !DILocation(line: 64, column: 36, scope: !1086)
!1089 = !DILocation(line: 64, column: 11, scope: !1087)
!1090 = !DILocation(line: 66, column: 24, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !101, line: 65, column: 9)
!1092 = !DILocation(line: 70, column: 41, scope: !1091)
!1093 = !DILocation(line: 72, column: 9, scope: !1091)
!1094 = !DILocation(line: 84, column: 16, scope: !1061)
!1095 = !DILocation(line: 90, column: 27, scope: !1061)
!1096 = !DILocation(line: 92, column: 1, scope: !1061)
!1097 = distinct !DISubprogram(name: "clone_quoting_options", scope: !107, file: !107, line: 122, type: !1098, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1101)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!1100, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1101 = !{!1102, !1103, !1104}
!1102 = !DILocalVariable(name: "o", arg: 1, scope: !1097, file: !107, line: 122, type: !1100)
!1103 = !DILocalVariable(name: "e", scope: !1097, file: !107, line: 124, type: !16)
!1104 = !DILocalVariable(name: "p", scope: !1097, file: !107, line: 125, type: !1100)
!1105 = !DILocation(line: 0, scope: !1097)
!1106 = !DILocation(line: 124, column: 11, scope: !1097)
!1107 = !DILocation(line: 125, column: 40, scope: !1097)
!1108 = !DILocation(line: 125, column: 31, scope: !1097)
!1109 = !DILocation(line: 127, column: 9, scope: !1097)
!1110 = !DILocation(line: 128, column: 3, scope: !1097)
!1111 = distinct !DISubprogram(name: "get_quoting_style", scope: !107, file: !107, line: 133, type: !1112, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1116)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!109, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!1116 = !{!1117}
!1117 = !DILocalVariable(name: "o", arg: 1, scope: !1111, file: !107, line: 133, type: !1114)
!1118 = !DILocation(line: 0, scope: !1111)
!1119 = !DILocation(line: 135, column: 11, scope: !1111)
!1120 = !DILocation(line: 135, column: 46, scope: !1111)
!1121 = !{!1122, !646, i64 0}
!1122 = !{!"quoting_options", !646, i64 0, !653, i64 4, !646, i64 8, !645, i64 40, !645, i64 48}
!1123 = !DILocation(line: 135, column: 3, scope: !1111)
!1124 = distinct !DISubprogram(name: "set_quoting_style", scope: !107, file: !107, line: 141, type: !1125, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !1100, !109}
!1127 = !{!1128, !1129}
!1128 = !DILocalVariable(name: "o", arg: 1, scope: !1124, file: !107, line: 141, type: !1100)
!1129 = !DILocalVariable(name: "s", arg: 2, scope: !1124, file: !107, line: 141, type: !109)
!1130 = !DILocation(line: 0, scope: !1124)
!1131 = !DILocation(line: 143, column: 4, scope: !1124)
!1132 = !DILocation(line: 143, column: 39, scope: !1124)
!1133 = !DILocation(line: 143, column: 45, scope: !1124)
!1134 = !DILocation(line: 144, column: 1, scope: !1124)
!1135 = distinct !DISubprogram(name: "set_char_quoting", scope: !107, file: !107, line: 152, type: !1136, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1138)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!16, !1100, !7, !16}
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1145, !1146}
!1139 = !DILocalVariable(name: "o", arg: 1, scope: !1135, file: !107, line: 152, type: !1100)
!1140 = !DILocalVariable(name: "c", arg: 2, scope: !1135, file: !107, line: 152, type: !7)
!1141 = !DILocalVariable(name: "i", arg: 3, scope: !1135, file: !107, line: 152, type: !16)
!1142 = !DILocalVariable(name: "uc", scope: !1135, file: !107, line: 154, type: !9)
!1143 = !DILocalVariable(name: "p", scope: !1135, file: !107, line: 155, type: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1145 = !DILocalVariable(name: "shift", scope: !1135, file: !107, line: 157, type: !16)
!1146 = !DILocalVariable(name: "r", scope: !1135, file: !107, line: 158, type: !16)
!1147 = !DILocation(line: 0, scope: !1135)
!1148 = !DILocation(line: 156, column: 6, scope: !1135)
!1149 = !DILocation(line: 156, column: 62, scope: !1135)
!1150 = !DILocation(line: 156, column: 57, scope: !1135)
!1151 = !DILocation(line: 157, column: 15, scope: !1135)
!1152 = !DILocation(line: 158, column: 12, scope: !1135)
!1153 = !DILocation(line: 158, column: 15, scope: !1135)
!1154 = !DILocation(line: 158, column: 25, scope: !1135)
!1155 = !DILocation(line: 159, column: 13, scope: !1135)
!1156 = !DILocation(line: 159, column: 18, scope: !1135)
!1157 = !DILocation(line: 159, column: 23, scope: !1135)
!1158 = !DILocation(line: 159, column: 6, scope: !1135)
!1159 = !DILocation(line: 160, column: 3, scope: !1135)
!1160 = distinct !DISubprogram(name: "set_quoting_flags", scope: !107, file: !107, line: 168, type: !1161, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!16, !1100, !16}
!1163 = !{!1164, !1165, !1166}
!1164 = !DILocalVariable(name: "o", arg: 1, scope: !1160, file: !107, line: 168, type: !1100)
!1165 = !DILocalVariable(name: "i", arg: 2, scope: !1160, file: !107, line: 168, type: !16)
!1166 = !DILocalVariable(name: "r", scope: !1160, file: !107, line: 170, type: !16)
!1167 = !DILocation(line: 0, scope: !1160)
!1168 = !DILocation(line: 171, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1160, file: !107, line: 171, column: 7)
!1170 = !DILocation(line: 171, column: 7, scope: !1160)
!1171 = !DILocation(line: 173, column: 10, scope: !1160)
!1172 = !{!1122, !653, i64 4}
!1173 = !DILocation(line: 174, column: 12, scope: !1160)
!1174 = !DILocation(line: 175, column: 3, scope: !1160)
!1175 = distinct !DISubprogram(name: "set_custom_quoting", scope: !107, file: !107, line: 179, type: !1176, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1100, !41, !41}
!1178 = !{!1179, !1180, !1181}
!1179 = !DILocalVariable(name: "o", arg: 1, scope: !1175, file: !107, line: 179, type: !1100)
!1180 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1175, file: !107, line: 180, type: !41)
!1181 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1175, file: !107, line: 180, type: !41)
!1182 = !DILocation(line: 0, scope: !1175)
!1183 = !DILocation(line: 182, column: 8, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1175, file: !107, line: 182, column: 7)
!1185 = !DILocation(line: 182, column: 7, scope: !1175)
!1186 = !DILocation(line: 184, column: 6, scope: !1175)
!1187 = !DILocation(line: 184, column: 12, scope: !1175)
!1188 = !DILocation(line: 185, column: 8, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1175, file: !107, line: 185, column: 7)
!1190 = !DILocation(line: 185, column: 19, scope: !1189)
!1191 = !DILocation(line: 186, column: 5, scope: !1189)
!1192 = !DILocation(line: 187, column: 6, scope: !1175)
!1193 = !DILocation(line: 187, column: 17, scope: !1175)
!1194 = !{!1122, !645, i64 40}
!1195 = !DILocation(line: 188, column: 6, scope: !1175)
!1196 = !DILocation(line: 188, column: 18, scope: !1175)
!1197 = !{!1122, !645, i64 48}
!1198 = !DILocation(line: 189, column: 1, scope: !1175)
!1199 = distinct !DISubprogram(name: "quotearg_buffer", scope: !107, file: !107, line: 784, type: !1200, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!145, !6, !145, !41, !145, !1114}
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1203 = !DILocalVariable(name: "buffer", arg: 1, scope: !1199, file: !107, line: 784, type: !6)
!1204 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1199, file: !107, line: 784, type: !145)
!1205 = !DILocalVariable(name: "arg", arg: 3, scope: !1199, file: !107, line: 785, type: !41)
!1206 = !DILocalVariable(name: "argsize", arg: 4, scope: !1199, file: !107, line: 785, type: !145)
!1207 = !DILocalVariable(name: "o", arg: 5, scope: !1199, file: !107, line: 786, type: !1114)
!1208 = !DILocalVariable(name: "p", scope: !1199, file: !107, line: 788, type: !1114)
!1209 = !DILocalVariable(name: "e", scope: !1199, file: !107, line: 789, type: !16)
!1210 = !DILocalVariable(name: "r", scope: !1199, file: !107, line: 790, type: !145)
!1211 = !DILocation(line: 0, scope: !1199)
!1212 = !DILocation(line: 788, column: 37, scope: !1199)
!1213 = !DILocation(line: 789, column: 11, scope: !1199)
!1214 = !DILocation(line: 791, column: 43, scope: !1199)
!1215 = !DILocation(line: 791, column: 53, scope: !1199)
!1216 = !DILocation(line: 791, column: 60, scope: !1199)
!1217 = !DILocation(line: 792, column: 43, scope: !1199)
!1218 = !DILocation(line: 792, column: 58, scope: !1199)
!1219 = !DILocation(line: 790, column: 14, scope: !1199)
!1220 = !DILocation(line: 793, column: 9, scope: !1199)
!1221 = !DILocation(line: 794, column: 3, scope: !1199)
!1222 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !107, file: !107, line: 256, type: !1223, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1227)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!145, !6, !145, !41, !145, !109, !16, !1225, !41, !41}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1252, !1253, !1254, !1255, !1256, !1259, !1260, !1278, !1281, !1282, !1289, !1292, !1293, !1294, !1295, !1296, !1297}
!1228 = !DILocalVariable(name: "buffer", arg: 1, scope: !1222, file: !107, line: 256, type: !6)
!1229 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1222, file: !107, line: 256, type: !145)
!1230 = !DILocalVariable(name: "arg", arg: 3, scope: !1222, file: !107, line: 257, type: !41)
!1231 = !DILocalVariable(name: "argsize", arg: 4, scope: !1222, file: !107, line: 257, type: !145)
!1232 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1222, file: !107, line: 258, type: !109)
!1233 = !DILocalVariable(name: "flags", arg: 6, scope: !1222, file: !107, line: 258, type: !16)
!1234 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1222, file: !107, line: 259, type: !1225)
!1235 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1222, file: !107, line: 260, type: !41)
!1236 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1222, file: !107, line: 261, type: !41)
!1237 = !DILocalVariable(name: "i", scope: !1222, file: !107, line: 263, type: !145)
!1238 = !DILocalVariable(name: "len", scope: !1222, file: !107, line: 264, type: !145)
!1239 = !DILocalVariable(name: "orig_buffersize", scope: !1222, file: !107, line: 265, type: !145)
!1240 = !DILocalVariable(name: "quote_string", scope: !1222, file: !107, line: 266, type: !41)
!1241 = !DILocalVariable(name: "quote_string_len", scope: !1222, file: !107, line: 267, type: !145)
!1242 = !DILocalVariable(name: "backslash_escapes", scope: !1222, file: !107, line: 268, type: !70)
!1243 = !DILocalVariable(name: "unibyte_locale", scope: !1222, file: !107, line: 269, type: !70)
!1244 = !DILocalVariable(name: "elide_outer_quotes", scope: !1222, file: !107, line: 270, type: !70)
!1245 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1222, file: !107, line: 271, type: !70)
!1246 = !DILocalVariable(name: "encountered_single_quote", scope: !1222, file: !107, line: 272, type: !70)
!1247 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1222, file: !107, line: 273, type: !70)
!1248 = !DILocalVariable(name: "c", scope: !1249, file: !107, line: 402, type: !9)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !107, line: 401, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !107, line: 400, column: 3)
!1251 = distinct !DILexicalBlock(scope: !1222, file: !107, line: 400, column: 3)
!1252 = !DILocalVariable(name: "esc", scope: !1249, file: !107, line: 403, type: !9)
!1253 = !DILocalVariable(name: "is_right_quote", scope: !1249, file: !107, line: 404, type: !70)
!1254 = !DILocalVariable(name: "escaping", scope: !1249, file: !107, line: 405, type: !70)
!1255 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1249, file: !107, line: 406, type: !70)
!1256 = !DILocalVariable(name: "m", scope: !1257, file: !107, line: 610, type: !145)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 608, column: 11)
!1258 = distinct !DILexicalBlock(scope: !1249, file: !107, line: 426, column: 9)
!1259 = !DILocalVariable(name: "printable", scope: !1257, file: !107, line: 612, type: !70)
!1260 = !DILocalVariable(name: "mbstate", scope: !1261, file: !107, line: 621, type: !1263)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !107, line: 620, column: 15)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !107, line: 614, column: 17)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1264, line: 6, baseType: !1265)
!1264 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1266, line: 21, baseType: !1267)
!1266 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1266, line: 13, size: 64, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1267, file: !1266, line: 15, baseType: !16, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1267, file: !1266, line: 20, baseType: !1271, size: 32, offset: 32)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1266, line: 16, size: 32, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1271, file: !1266, line: 18, baseType: !22, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1271, file: !1266, line: 19, baseType: !1275, size: 32)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1276)
!1276 = !{!1277}
!1277 = !DISubrange(count: 4)
!1278 = !DILocalVariable(name: "w", scope: !1279, file: !107, line: 631, type: !1280)
!1279 = distinct !DILexicalBlock(scope: !1261, file: !107, line: 630, column: 19)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !146, line: 74, baseType: !16)
!1281 = !DILocalVariable(name: "bytes", scope: !1279, file: !107, line: 632, type: !145)
!1282 = !DILocalVariable(name: "j", scope: !1283, file: !107, line: 657, type: !145)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !107, line: 656, column: 27)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !107, line: 654, column: 29)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !107, line: 649, column: 23)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !107, line: 641, column: 30)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !107, line: 636, column: 30)
!1288 = distinct !DILexicalBlock(scope: !1279, file: !107, line: 634, column: 25)
!1289 = !DILocalVariable(name: "ilim", scope: !1290, file: !107, line: 684, type: !145)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !107, line: 681, column: 15)
!1291 = distinct !DILexicalBlock(scope: !1257, file: !107, line: 680, column: 17)
!1292 = !DILabel(scope: !1222, name: "process_input", file: !107, line: 314)
!1293 = !DILabel(scope: !1258, name: "c_and_shell_escape", file: !107, line: 512)
!1294 = !DILabel(scope: !1258, name: "c_escape", file: !107, line: 517)
!1295 = !DILabel(scope: !1249, name: "store_escape", file: !107, line: 719)
!1296 = !DILabel(scope: !1249, name: "store_c", file: !107, line: 722)
!1297 = !DILabel(scope: !1222, name: "force_outer_quoting_style", file: !107, line: 763)
!1298 = !DILocation(line: 0, scope: !1222)
!1299 = !DILocation(line: 269, column: 25, scope: !1222)
!1300 = !DILocation(line: 269, column: 36, scope: !1222)
!1301 = !DILocation(line: 270, column: 8, scope: !1222)
!1302 = !DILocation(line: 273, column: 3, scope: !1222)
!1303 = !DILocation(line: 265, column: 10, scope: !1222)
!1304 = !DILocation(line: 266, column: 15, scope: !1222)
!1305 = !DILocation(line: 267, column: 10, scope: !1222)
!1306 = !DILocation(line: 268, column: 8, scope: !1222)
!1307 = !DILocation(line: 271, column: 8, scope: !1222)
!1308 = !DILocation(line: 272, column: 8, scope: !1222)
!1309 = !DILocation(line: 273, column: 8, scope: !1222)
!1310 = !DILocation(line: 314, column: 2, scope: !1222)
!1311 = !DILocation(line: 316, column: 3, scope: !1222)
!1312 = !DILocation(line: 323, column: 11, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1222, file: !107, line: 317, column: 5)
!1314 = !DILocation(line: 323, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1313, file: !107, line: 323, column: 11)
!1316 = !DILocation(line: 324, column: 9, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !107, line: 324, column: 9)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !107, line: 324, column: 9)
!1319 = !DILocation(line: 324, column: 9, scope: !1318)
!1320 = !DILocation(line: 362, column: 26, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !107, line: 340, column: 11)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !107, line: 339, column: 13)
!1323 = distinct !DILexicalBlock(scope: !1313, file: !107, line: 338, column: 7)
!1324 = !DILocation(line: 363, column: 27, scope: !1321)
!1325 = !DILocation(line: 364, column: 11, scope: !1321)
!1326 = !DILocation(line: 365, column: 14, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !107, line: 365, column: 13)
!1328 = !DILocation(line: 365, column: 13, scope: !1323)
!1329 = !DILocation(line: 366, column: 43, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !107, line: 366, column: 11)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !107, line: 366, column: 11)
!1332 = !DILocation(line: 366, column: 11, scope: !1331)
!1333 = !DILocation(line: 367, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !107, line: 367, column: 13)
!1335 = distinct !DILexicalBlock(scope: !1330, file: !107, line: 367, column: 13)
!1336 = !DILocation(line: 367, column: 13, scope: !1335)
!1337 = !DILocation(line: 366, column: 70, scope: !1330)
!1338 = distinct !{!1338, !1332, !1339, !694}
!1339 = !DILocation(line: 367, column: 13, scope: !1331)
!1340 = !DILocation(line: 264, column: 10, scope: !1222)
!1341 = !DILocation(line: 370, column: 28, scope: !1323)
!1342 = !DILocation(line: 372, column: 7, scope: !1313)
!1343 = !DILocation(line: 376, column: 7, scope: !1313)
!1344 = !DILocation(line: 379, column: 7, scope: !1313)
!1345 = !DILocation(line: 381, column: 12, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1313, file: !107, line: 381, column: 11)
!1347 = !DILocation(line: 381, column: 11, scope: !1313)
!1348 = !DILocation(line: 386, column: 12, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1313, file: !107, line: 386, column: 11)
!1350 = !DILocation(line: 386, column: 11, scope: !1313)
!1351 = !DILocation(line: 387, column: 9, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !107, line: 387, column: 9)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !107, line: 387, column: 9)
!1354 = !DILocation(line: 387, column: 9, scope: !1353)
!1355 = !DILocation(line: 394, column: 7, scope: !1313)
!1356 = !DILocation(line: 397, column: 7, scope: !1313)
!1357 = !DILocation(line: 400, column: 8, scope: !1251)
!1358 = !DILocation(line: 0, scope: !1251)
!1359 = !DILocation(line: 400, column: 27, scope: !1250)
!1360 = !DILocation(line: 400, column: 19, scope: !1250)
!1361 = !DILocation(line: 400, column: 41, scope: !1250)
!1362 = !DILocation(line: 400, column: 48, scope: !1250)
!1363 = !DILocation(line: 400, column: 3, scope: !1251)
!1364 = !DILocation(line: 400, column: 60, scope: !1250)
!1365 = !DILocation(line: 0, scope: !1249)
!1366 = !DILocation(line: 409, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1249, file: !107, line: 408, column: 11)
!1368 = !DILocation(line: 411, column: 17, scope: !1367)
!1369 = !DILocation(line: 412, column: 39, scope: !1367)
!1370 = !DILocation(line: 416, column: 32, scope: !1367)
!1371 = !DILocation(line: 412, column: 19, scope: !1367)
!1372 = !DILocation(line: 412, column: 15, scope: !1367)
!1373 = !DILocation(line: 417, column: 11, scope: !1367)
!1374 = !DILocation(line: 417, column: 26, scope: !1367)
!1375 = !DILocation(line: 417, column: 14, scope: !1367)
!1376 = !DILocation(line: 417, column: 63, scope: !1367)
!1377 = !DILocation(line: 408, column: 11, scope: !1249)
!1378 = !DILocation(line: 424, column: 11, scope: !1249)
!1379 = !DILocation(line: 425, column: 7, scope: !1249)
!1380 = !DILocation(line: 428, column: 15, scope: !1258)
!1381 = !DILocation(line: 430, column: 15, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !107, line: 430, column: 15)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !107, line: 429, column: 13)
!1384 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 428, column: 15)
!1385 = !DILocation(line: 430, column: 15, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !107, line: 430, column: 15)
!1387 = !DILocation(line: 430, column: 15, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !107, line: 430, column: 15)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !107, line: 430, column: 15)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !107, line: 430, column: 15)
!1391 = !DILocation(line: 430, column: 15, scope: !1389)
!1392 = !DILocation(line: 430, column: 15, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !107, line: 430, column: 15)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !107, line: 430, column: 15)
!1395 = !DILocation(line: 430, column: 15, scope: !1394)
!1396 = !DILocation(line: 430, column: 15, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !107, line: 430, column: 15)
!1398 = distinct !DILexicalBlock(scope: !1390, file: !107, line: 430, column: 15)
!1399 = !DILocation(line: 430, column: 15, scope: !1398)
!1400 = !DILocation(line: 430, column: 15, scope: !1390)
!1401 = !DILocation(line: 430, column: 15, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !107, line: 430, column: 15)
!1403 = distinct !DILexicalBlock(scope: !1382, file: !107, line: 430, column: 15)
!1404 = !DILocation(line: 430, column: 15, scope: !1403)
!1405 = !DILocation(line: 438, column: 19, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1383, file: !107, line: 437, column: 19)
!1407 = !DILocation(line: 438, column: 48, scope: !1406)
!1408 = !DILocation(line: 438, column: 59, scope: !1406)
!1409 = !DILocation(line: 440, column: 19, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !107, line: 440, column: 19)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !107, line: 440, column: 19)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !107, line: 439, column: 17)
!1413 = !DILocation(line: 440, column: 19, scope: !1411)
!1414 = !DILocation(line: 441, column: 19, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !107, line: 441, column: 19)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !107, line: 441, column: 19)
!1417 = !DILocation(line: 441, column: 19, scope: !1416)
!1418 = !DILocation(line: 442, column: 17, scope: !1412)
!1419 = !DILocation(line: 449, column: 20, scope: !1384)
!1420 = !DILocation(line: 454, column: 11, scope: !1258)
!1421 = !DILocation(line: 457, column: 19, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 455, column: 13)
!1423 = !DILocation(line: 463, column: 19, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1422, file: !107, line: 462, column: 19)
!1425 = !DILocation(line: 463, column: 47, scope: !1424)
!1426 = !DILocation(line: 463, column: 41, scope: !1424)
!1427 = !DILocation(line: 463, column: 52, scope: !1424)
!1428 = !DILocation(line: 462, column: 19, scope: !1422)
!1429 = !DILocation(line: 464, column: 25, scope: !1424)
!1430 = !DILocation(line: 464, column: 17, scope: !1424)
!1431 = !DILocation(line: 471, column: 25, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1424, file: !107, line: 465, column: 19)
!1433 = !DILocation(line: 475, column: 21, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !107, line: 475, column: 21)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !107, line: 475, column: 21)
!1436 = !DILocation(line: 475, column: 21, scope: !1435)
!1437 = !DILocation(line: 476, column: 21, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !107, line: 476, column: 21)
!1439 = distinct !DILexicalBlock(scope: !1432, file: !107, line: 476, column: 21)
!1440 = !DILocation(line: 476, column: 21, scope: !1439)
!1441 = !DILocation(line: 477, column: 21, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !107, line: 477, column: 21)
!1443 = distinct !DILexicalBlock(scope: !1432, file: !107, line: 477, column: 21)
!1444 = !DILocation(line: 477, column: 21, scope: !1443)
!1445 = !DILocation(line: 478, column: 21, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !107, line: 478, column: 21)
!1447 = distinct !DILexicalBlock(scope: !1432, file: !107, line: 478, column: 21)
!1448 = !DILocation(line: 478, column: 21, scope: !1447)
!1449 = !DILocation(line: 479, column: 21, scope: !1432)
!1450 = !DILocation(line: 492, column: 31, scope: !1258)
!1451 = !DILocation(line: 493, column: 31, scope: !1258)
!1452 = !DILocation(line: 495, column: 31, scope: !1258)
!1453 = !DILocation(line: 496, column: 31, scope: !1258)
!1454 = !DILocation(line: 497, column: 31, scope: !1258)
!1455 = !DILocation(line: 500, column: 15, scope: !1258)
!1456 = !DILocation(line: 502, column: 19, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !107, line: 501, column: 13)
!1458 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 500, column: 15)
!1459 = !DILocation(line: 509, column: 33, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 509, column: 15)
!1461 = !DILocation(line: 0, scope: !1258)
!1462 = !DILocation(line: 512, column: 9, scope: !1258)
!1463 = !DILocation(line: 514, column: 15, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 513, column: 15)
!1465 = !DILocation(line: 517, column: 9, scope: !1258)
!1466 = !DILocation(line: 518, column: 15, scope: !1258)
!1467 = !DILocation(line: 526, column: 15, scope: !1258)
!1468 = !DILocation(line: 526, column: 40, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 526, column: 15)
!1470 = !DILocation(line: 526, column: 47, scope: !1469)
!1471 = !DILocation(line: 526, column: 18, scope: !1469)
!1472 = !DILocation(line: 530, column: 17, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 530, column: 15)
!1474 = !DILocation(line: 530, column: 15, scope: !1258)
!1475 = !DILocation(line: 535, column: 11, scope: !1258)
!1476 = !DILocation(line: 549, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 548, column: 15)
!1478 = !DILocation(line: 556, column: 15, scope: !1258)
!1479 = !DILocation(line: 558, column: 19, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !107, line: 557, column: 13)
!1481 = distinct !DILexicalBlock(scope: !1258, file: !107, line: 556, column: 15)
!1482 = !DILocation(line: 561, column: 19, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !107, line: 561, column: 19)
!1484 = !DILocation(line: 561, column: 30, scope: !1483)
!1485 = !DILocation(line: 570, column: 15, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !107, line: 570, column: 15)
!1487 = distinct !DILexicalBlock(scope: !1480, file: !107, line: 570, column: 15)
!1488 = !DILocation(line: 570, column: 15, scope: !1487)
!1489 = !DILocation(line: 571, column: 15, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !107, line: 571, column: 15)
!1491 = distinct !DILexicalBlock(scope: !1480, file: !107, line: 571, column: 15)
!1492 = !DILocation(line: 571, column: 15, scope: !1491)
!1493 = !DILocation(line: 572, column: 15, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !107, line: 572, column: 15)
!1495 = distinct !DILexicalBlock(scope: !1480, file: !107, line: 572, column: 15)
!1496 = !DILocation(line: 572, column: 15, scope: !1495)
!1497 = !DILocation(line: 574, column: 13, scope: !1480)
!1498 = !DILocation(line: 614, column: 17, scope: !1257)
!1499 = !DILocation(line: 0, scope: !1257)
!1500 = !DILocation(line: 617, column: 29, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1262, file: !107, line: 615, column: 15)
!1502 = !{!874, !874, i64 0}
!1503 = !DILocation(line: 617, column: 27, scope: !1501)
!1504 = !DILocation(line: 678, column: 40, scope: !1257)
!1505 = !DILocation(line: 680, column: 23, scope: !1291)
!1506 = !DILocation(line: 621, column: 17, scope: !1261)
!1507 = !DILocation(line: 621, column: 27, scope: !1261)
!1508 = !DILocalVariable(name: "__dest", arg: 1, scope: !1509, file: !1510, line: 57, type: !8)
!1509 = distinct !DISubprogram(name: "memset", scope: !1510, file: !1510, line: 57, type: !1511, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1513)
!1510 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!8, !8, !16, !145}
!1513 = !{!1508, !1514, !1515}
!1514 = !DILocalVariable(name: "__ch", arg: 2, scope: !1509, file: !1510, line: 57, type: !16)
!1515 = !DILocalVariable(name: "__len", arg: 3, scope: !1509, file: !1510, line: 57, type: !145)
!1516 = !DILocation(line: 0, scope: !1509, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 622, column: 17, scope: !1261)
!1518 = !DILocation(line: 59, column: 10, scope: !1509, inlinedAt: !1517)
!1519 = !DILocation(line: 626, column: 29, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1261, file: !107, line: 626, column: 21)
!1521 = !DILocation(line: 626, column: 21, scope: !1261)
!1522 = !DILocation(line: 627, column: 29, scope: !1520)
!1523 = !DILocation(line: 627, column: 19, scope: !1520)
!1524 = !DILocation(line: 629, column: 17, scope: !1261)
!1525 = !DILocation(line: 624, column: 19, scope: !1261)
!1526 = !DILocation(line: 625, column: 27, scope: !1261)
!1527 = !DILocation(line: 631, column: 21, scope: !1279)
!1528 = !DILocation(line: 632, column: 56, scope: !1279)
!1529 = !DILocation(line: 632, column: 50, scope: !1279)
!1530 = !DILocation(line: 633, column: 53, scope: !1279)
!1531 = !DILocation(line: 0, scope: !1279)
!1532 = !DILocation(line: 632, column: 36, scope: !1279)
!1533 = !DILocation(line: 634, column: 25, scope: !1279)
!1534 = !DILocation(line: 644, column: 38, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1286, file: !107, line: 642, column: 23)
!1536 = !DILocation(line: 644, column: 48, scope: !1535)
!1537 = !DILocation(line: 644, column: 25, scope: !1535)
!1538 = !DILocation(line: 644, column: 51, scope: !1535)
!1539 = !DILocation(line: 645, column: 28, scope: !1535)
!1540 = !DILocation(line: 644, column: 34, scope: !1535)
!1541 = distinct !{!1541, !1537, !1539, !694}
!1542 = !DILocation(line: 655, column: 29, scope: !1284)
!1543 = !DILocation(line: 0, scope: !1283)
!1544 = !DILocation(line: 659, column: 49, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !107, line: 658, column: 29)
!1546 = distinct !DILexicalBlock(scope: !1283, file: !107, line: 658, column: 29)
!1547 = !DILocation(line: 659, column: 39, scope: !1545)
!1548 = !DILocation(line: 659, column: 31, scope: !1545)
!1549 = !DILocation(line: 658, column: 53, scope: !1545)
!1550 = !DILocation(line: 658, column: 43, scope: !1545)
!1551 = !DILocation(line: 658, column: 29, scope: !1546)
!1552 = distinct !{!1552, !1551, !1553, !694}
!1553 = !DILocation(line: 667, column: 33, scope: !1546)
!1554 = !DILocation(line: 674, column: 19, scope: !1261)
!1555 = !DILocation(line: 670, column: 41, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1285, file: !107, line: 670, column: 29)
!1557 = !DILocation(line: 670, column: 31, scope: !1556)
!1558 = !DILocation(line: 670, column: 29, scope: !1285)
!1559 = !DILocation(line: 672, column: 27, scope: !1285)
!1560 = !DILocation(line: 675, column: 26, scope: !1261)
!1561 = !DILocation(line: 675, column: 24, scope: !1261)
!1562 = !DILocation(line: 674, column: 19, scope: !1279)
!1563 = distinct !{!1563, !1524, !1564, !694}
!1564 = !DILocation(line: 675, column: 44, scope: !1261)
!1565 = !DILocation(line: 676, column: 15, scope: !1262)
!1566 = !DILocation(line: 680, column: 19, scope: !1291)
!1567 = !DILocation(line: 680, column: 45, scope: !1291)
!1568 = !DILocation(line: 684, column: 33, scope: !1290)
!1569 = !DILocation(line: 0, scope: !1290)
!1570 = !DILocation(line: 686, column: 17, scope: !1290)
!1571 = !DILocation(line: 405, column: 12, scope: !1249)
!1572 = !DILocation(line: 688, column: 43, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !107, line: 688, column: 25)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !107, line: 687, column: 19)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !107, line: 686, column: 17)
!1576 = distinct !DILexicalBlock(scope: !1290, file: !107, line: 686, column: 17)
!1577 = !DILocation(line: 690, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !107, line: 690, column: 25)
!1579 = distinct !DILexicalBlock(scope: !1573, file: !107, line: 689, column: 23)
!1580 = !DILocation(line: 690, column: 25, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !107, line: 690, column: 25)
!1582 = !DILocation(line: 690, column: 25, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !107, line: 690, column: 25)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !107, line: 690, column: 25)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !107, line: 690, column: 25)
!1586 = !DILocation(line: 690, column: 25, scope: !1584)
!1587 = !DILocation(line: 690, column: 25, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !107, line: 690, column: 25)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !107, line: 690, column: 25)
!1590 = !DILocation(line: 690, column: 25, scope: !1589)
!1591 = !DILocation(line: 690, column: 25, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !107, line: 690, column: 25)
!1593 = distinct !DILexicalBlock(scope: !1585, file: !107, line: 690, column: 25)
!1594 = !DILocation(line: 690, column: 25, scope: !1593)
!1595 = !DILocation(line: 690, column: 25, scope: !1585)
!1596 = !DILocation(line: 690, column: 25, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !107, line: 690, column: 25)
!1598 = distinct !DILexicalBlock(scope: !1578, file: !107, line: 690, column: 25)
!1599 = !DILocation(line: 690, column: 25, scope: !1598)
!1600 = !DILocation(line: 691, column: 25, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !107, line: 691, column: 25)
!1602 = distinct !DILexicalBlock(scope: !1579, file: !107, line: 691, column: 25)
!1603 = !DILocation(line: 691, column: 25, scope: !1602)
!1604 = !DILocation(line: 692, column: 25, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !107, line: 692, column: 25)
!1606 = distinct !DILexicalBlock(scope: !1579, file: !107, line: 692, column: 25)
!1607 = !DILocation(line: 692, column: 25, scope: !1606)
!1608 = !DILocation(line: 693, column: 38, scope: !1579)
!1609 = !DILocation(line: 693, column: 33, scope: !1579)
!1610 = !DILocation(line: 694, column: 23, scope: !1579)
!1611 = !DILocation(line: 695, column: 30, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1573, file: !107, line: 695, column: 30)
!1613 = !DILocation(line: 695, column: 30, scope: !1573)
!1614 = !DILocation(line: 697, column: 25, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !107, line: 697, column: 25)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !107, line: 697, column: 25)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !107, line: 696, column: 23)
!1618 = !DILocation(line: 697, column: 25, scope: !1616)
!1619 = !DILocation(line: 699, column: 23, scope: !1617)
!1620 = !DILocation(line: 700, column: 35, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1574, file: !107, line: 700, column: 25)
!1622 = !DILocation(line: 700, column: 30, scope: !1621)
!1623 = !DILocation(line: 700, column: 25, scope: !1574)
!1624 = !DILocation(line: 702, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !107, line: 702, column: 21)
!1626 = distinct !DILexicalBlock(scope: !1574, file: !107, line: 702, column: 21)
!1627 = !DILocation(line: 702, column: 21, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !107, line: 702, column: 21)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !107, line: 702, column: 21)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !107, line: 702, column: 21)
!1631 = !DILocation(line: 702, column: 21, scope: !1629)
!1632 = !DILocation(line: 702, column: 21, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !107, line: 702, column: 21)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !107, line: 702, column: 21)
!1635 = !DILocation(line: 702, column: 21, scope: !1634)
!1636 = !DILocation(line: 702, column: 21, scope: !1630)
!1637 = !DILocation(line: 0, scope: !1574)
!1638 = !DILocation(line: 703, column: 21, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !107, line: 703, column: 21)
!1640 = distinct !DILexicalBlock(scope: !1574, file: !107, line: 703, column: 21)
!1641 = !DILocation(line: 703, column: 21, scope: !1640)
!1642 = !DILocation(line: 704, column: 25, scope: !1574)
!1643 = !DILocation(line: 686, column: 17, scope: !1575)
!1644 = distinct !{!1644, !1645, !1646}
!1645 = !DILocation(line: 686, column: 17, scope: !1576)
!1646 = !DILocation(line: 705, column: 19, scope: !1576)
!1647 = !DILocation(line: 416, column: 30, scope: !1367)
!1648 = !DILocation(line: 712, column: 34, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1249, file: !107, line: 712, column: 11)
!1650 = !DILocation(line: 715, column: 35, scope: !1649)
!1651 = !DILocation(line: 715, column: 17, scope: !1649)
!1652 = !DILocation(line: 715, column: 47, scope: !1649)
!1653 = !DILocation(line: 715, column: 65, scope: !1649)
!1654 = !DILocation(line: 716, column: 11, scope: !1649)
!1655 = !DILocation(line: 712, column: 11, scope: !1249)
!1656 = !DILocation(line: 400, column: 10, scope: !1251)
!1657 = !DILocation(line: 719, column: 5, scope: !1249)
!1658 = !DILocation(line: 720, column: 7, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1249, file: !107, line: 720, column: 7)
!1660 = !DILocation(line: 720, column: 7, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1659, file: !107, line: 720, column: 7)
!1662 = !DILocation(line: 720, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !107, line: 720, column: 7)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !107, line: 720, column: 7)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !107, line: 720, column: 7)
!1666 = !DILocation(line: 720, column: 7, scope: !1664)
!1667 = !DILocation(line: 720, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !107, line: 720, column: 7)
!1669 = distinct !DILexicalBlock(scope: !1665, file: !107, line: 720, column: 7)
!1670 = !DILocation(line: 720, column: 7, scope: !1669)
!1671 = !DILocation(line: 720, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !107, line: 720, column: 7)
!1673 = distinct !DILexicalBlock(scope: !1665, file: !107, line: 720, column: 7)
!1674 = !DILocation(line: 720, column: 7, scope: !1673)
!1675 = !DILocation(line: 720, column: 7, scope: !1665)
!1676 = !DILocation(line: 720, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !107, line: 720, column: 7)
!1678 = distinct !DILexicalBlock(scope: !1659, file: !107, line: 720, column: 7)
!1679 = !DILocation(line: 720, column: 7, scope: !1678)
!1680 = !DILocation(line: 722, column: 5, scope: !1249)
!1681 = !DILocation(line: 723, column: 7, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !107, line: 723, column: 7)
!1683 = distinct !DILexicalBlock(scope: !1249, file: !107, line: 723, column: 7)
!1684 = !DILocation(line: 424, column: 9, scope: !1249)
!1685 = !DILocation(line: 723, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !107, line: 723, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !107, line: 723, column: 7)
!1688 = distinct !DILexicalBlock(scope: !1682, file: !107, line: 723, column: 7)
!1689 = !DILocation(line: 723, column: 7, scope: !1687)
!1690 = !DILocation(line: 723, column: 7, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !107, line: 723, column: 7)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !107, line: 723, column: 7)
!1693 = !DILocation(line: 723, column: 7, scope: !1692)
!1694 = !DILocation(line: 723, column: 7, scope: !1688)
!1695 = !DILocation(line: 724, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !107, line: 724, column: 7)
!1697 = distinct !DILexicalBlock(scope: !1249, file: !107, line: 724, column: 7)
!1698 = !DILocation(line: 724, column: 7, scope: !1697)
!1699 = !DILocation(line: 726, column: 13, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1249, file: !107, line: 726, column: 11)
!1701 = !DILocation(line: 726, column: 11, scope: !1249)
!1702 = !DILocation(line: 728, column: 5, scope: !1250)
!1703 = !DILocation(line: 400, column: 75, scope: !1250)
!1704 = !DILocation(line: 400, column: 3, scope: !1250)
!1705 = distinct !{!1705, !1363, !1706, !694}
!1706 = !DILocation(line: 728, column: 5, scope: !1251)
!1707 = !DILocation(line: 730, column: 11, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1222, file: !107, line: 730, column: 7)
!1709 = !DILocation(line: 730, column: 16, scope: !1708)
!1710 = !DILocation(line: 738, column: 51, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1222, file: !107, line: 738, column: 7)
!1712 = !DILocation(line: 741, column: 11, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !107, line: 741, column: 11)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !107, line: 740, column: 5)
!1715 = !DILocation(line: 741, column: 11, scope: !1714)
!1716 = !DILocation(line: 742, column: 16, scope: !1713)
!1717 = !DILocation(line: 742, column: 9, scope: !1713)
!1718 = !DILocation(line: 746, column: 18, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !107, line: 746, column: 16)
!1720 = !DILocation(line: 746, column: 29, scope: !1719)
!1721 = !DILocation(line: 755, column: 7, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1222, file: !107, line: 755, column: 7)
!1723 = !DILocation(line: 755, column: 20, scope: !1722)
!1724 = !DILocation(line: 756, column: 12, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !107, line: 756, column: 5)
!1726 = distinct !DILexicalBlock(scope: !1722, file: !107, line: 756, column: 5)
!1727 = !DILocation(line: 756, column: 5, scope: !1726)
!1728 = !DILocation(line: 757, column: 7, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !107, line: 757, column: 7)
!1730 = distinct !DILexicalBlock(scope: !1725, file: !107, line: 757, column: 7)
!1731 = !DILocation(line: 757, column: 7, scope: !1730)
!1732 = !DILocation(line: 756, column: 39, scope: !1725)
!1733 = distinct !{!1733, !1727, !1734, !694}
!1734 = !DILocation(line: 757, column: 7, scope: !1726)
!1735 = !DILocation(line: 759, column: 11, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1222, file: !107, line: 759, column: 7)
!1737 = !DILocation(line: 759, column: 7, scope: !1222)
!1738 = !DILocation(line: 760, column: 5, scope: !1736)
!1739 = !DILocation(line: 760, column: 17, scope: !1736)
!1740 = !DILocation(line: 763, column: 2, scope: !1222)
!1741 = !DILocation(line: 766, column: 51, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1222, file: !107, line: 766, column: 7)
!1743 = !DILocation(line: 766, column: 21, scope: !1742)
!1744 = !DILocation(line: 770, column: 42, scope: !1222)
!1745 = !DILocation(line: 768, column: 10, scope: !1222)
!1746 = !DILocation(line: 768, column: 3, scope: !1222)
!1747 = !DILocation(line: 772, column: 1, scope: !1222)
!1748 = distinct !DISubprogram(name: "gettext_quote", scope: !107, file: !107, line: 207, type: !1749, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!41, !41, !109}
!1751 = !{!1752, !1753, !1754, !1755}
!1752 = !DILocalVariable(name: "msgid", arg: 1, scope: !1748, file: !107, line: 207, type: !41)
!1753 = !DILocalVariable(name: "s", arg: 2, scope: !1748, file: !107, line: 207, type: !109)
!1754 = !DILocalVariable(name: "translation", scope: !1748, file: !107, line: 209, type: !41)
!1755 = !DILocalVariable(name: "locale_code", scope: !1748, file: !107, line: 210, type: !41)
!1756 = !DILocation(line: 0, scope: !1748)
!1757 = !DILocation(line: 209, column: 29, scope: !1748)
!1758 = !DILocation(line: 212, column: 19, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1748, file: !107, line: 212, column: 7)
!1760 = !DILocation(line: 212, column: 7, scope: !1748)
!1761 = !DILocation(line: 233, column: 17, scope: !1748)
!1762 = !DILocalVariable(name: "s1", arg: 1, scope: !1763, file: !1764, line: 160, type: !41)
!1763 = distinct !DISubprogram(name: "strcaseeq0", scope: !1764, file: !1764, line: 160, type: !1765, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1767)
!1764 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!16, !41, !41, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1767 = !{!1762, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1768 = !DILocalVariable(name: "s2", arg: 2, scope: !1763, file: !1764, line: 160, type: !41)
!1769 = !DILocalVariable(name: "s20", arg: 3, scope: !1763, file: !1764, line: 160, type: !7)
!1770 = !DILocalVariable(name: "s21", arg: 4, scope: !1763, file: !1764, line: 160, type: !7)
!1771 = !DILocalVariable(name: "s22", arg: 5, scope: !1763, file: !1764, line: 160, type: !7)
!1772 = !DILocalVariable(name: "s23", arg: 6, scope: !1763, file: !1764, line: 160, type: !7)
!1773 = !DILocalVariable(name: "s24", arg: 7, scope: !1763, file: !1764, line: 160, type: !7)
!1774 = !DILocalVariable(name: "s25", arg: 8, scope: !1763, file: !1764, line: 160, type: !7)
!1775 = !DILocalVariable(name: "s26", arg: 9, scope: !1763, file: !1764, line: 160, type: !7)
!1776 = !DILocalVariable(name: "s27", arg: 10, scope: !1763, file: !1764, line: 160, type: !7)
!1777 = !DILocalVariable(name: "s28", arg: 11, scope: !1763, file: !1764, line: 160, type: !7)
!1778 = !DILocation(line: 0, scope: !1763, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 234, column: 7, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1748, file: !107, line: 234, column: 7)
!1781 = !DILocation(line: 162, column: 7, scope: !1782, inlinedAt: !1779)
!1782 = distinct !DILexicalBlock(scope: !1763, file: !1764, line: 162, column: 7)
!1783 = !DILocalVariable(name: "s1", arg: 1, scope: !1784, file: !1764, line: 146, type: !41)
!1784 = distinct !DISubprogram(name: "strcaseeq1", scope: !1764, file: !1764, line: 146, type: !1785, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!16, !41, !41, !7, !7, !7, !7, !7, !7, !7, !7}
!1787 = !{!1783, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1788 = !DILocalVariable(name: "s2", arg: 2, scope: !1784, file: !1764, line: 146, type: !41)
!1789 = !DILocalVariable(name: "s21", arg: 3, scope: !1784, file: !1764, line: 146, type: !7)
!1790 = !DILocalVariable(name: "s22", arg: 4, scope: !1784, file: !1764, line: 146, type: !7)
!1791 = !DILocalVariable(name: "s23", arg: 5, scope: !1784, file: !1764, line: 146, type: !7)
!1792 = !DILocalVariable(name: "s24", arg: 6, scope: !1784, file: !1764, line: 146, type: !7)
!1793 = !DILocalVariable(name: "s25", arg: 7, scope: !1784, file: !1764, line: 146, type: !7)
!1794 = !DILocalVariable(name: "s26", arg: 8, scope: !1784, file: !1764, line: 146, type: !7)
!1795 = !DILocalVariable(name: "s27", arg: 9, scope: !1784, file: !1764, line: 146, type: !7)
!1796 = !DILocalVariable(name: "s28", arg: 10, scope: !1784, file: !1764, line: 146, type: !7)
!1797 = !DILocation(line: 0, scope: !1784, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 167, column: 16, scope: !1799, inlinedAt: !1779)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !1764, line: 164, column: 11)
!1800 = distinct !DILexicalBlock(scope: !1782, file: !1764, line: 163, column: 5)
!1801 = !DILocation(line: 148, column: 7, scope: !1802, inlinedAt: !1798)
!1802 = distinct !DILexicalBlock(scope: !1784, file: !1764, line: 148, column: 7)
!1803 = !DILocalVariable(name: "s1", arg: 1, scope: !1804, file: !1764, line: 132, type: !41)
!1804 = distinct !DISubprogram(name: "strcaseeq2", scope: !1764, file: !1764, line: 132, type: !1805, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!16, !41, !41, !7, !7, !7, !7, !7, !7, !7}
!1807 = !{!1803, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1808 = !DILocalVariable(name: "s2", arg: 2, scope: !1804, file: !1764, line: 132, type: !41)
!1809 = !DILocalVariable(name: "s22", arg: 3, scope: !1804, file: !1764, line: 132, type: !7)
!1810 = !DILocalVariable(name: "s23", arg: 4, scope: !1804, file: !1764, line: 132, type: !7)
!1811 = !DILocalVariable(name: "s24", arg: 5, scope: !1804, file: !1764, line: 132, type: !7)
!1812 = !DILocalVariable(name: "s25", arg: 6, scope: !1804, file: !1764, line: 132, type: !7)
!1813 = !DILocalVariable(name: "s26", arg: 7, scope: !1804, file: !1764, line: 132, type: !7)
!1814 = !DILocalVariable(name: "s27", arg: 8, scope: !1804, file: !1764, line: 132, type: !7)
!1815 = !DILocalVariable(name: "s28", arg: 9, scope: !1804, file: !1764, line: 132, type: !7)
!1816 = !DILocation(line: 0, scope: !1804, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 153, column: 16, scope: !1818, inlinedAt: !1798)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !1764, line: 150, column: 11)
!1819 = distinct !DILexicalBlock(scope: !1802, file: !1764, line: 149, column: 5)
!1820 = !DILocation(line: 134, column: 7, scope: !1821, inlinedAt: !1817)
!1821 = distinct !DILexicalBlock(scope: !1804, file: !1764, line: 134, column: 7)
!1822 = !DILocalVariable(name: "s1", arg: 1, scope: !1823, file: !1764, line: 118, type: !41)
!1823 = distinct !DISubprogram(name: "strcaseeq3", scope: !1764, file: !1764, line: 118, type: !1824, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1826)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!16, !41, !41, !7, !7, !7, !7, !7, !7}
!1826 = !{!1822, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1827 = !DILocalVariable(name: "s2", arg: 2, scope: !1823, file: !1764, line: 118, type: !41)
!1828 = !DILocalVariable(name: "s23", arg: 3, scope: !1823, file: !1764, line: 118, type: !7)
!1829 = !DILocalVariable(name: "s24", arg: 4, scope: !1823, file: !1764, line: 118, type: !7)
!1830 = !DILocalVariable(name: "s25", arg: 5, scope: !1823, file: !1764, line: 118, type: !7)
!1831 = !DILocalVariable(name: "s26", arg: 6, scope: !1823, file: !1764, line: 118, type: !7)
!1832 = !DILocalVariable(name: "s27", arg: 7, scope: !1823, file: !1764, line: 118, type: !7)
!1833 = !DILocalVariable(name: "s28", arg: 8, scope: !1823, file: !1764, line: 118, type: !7)
!1834 = !DILocation(line: 0, scope: !1823, inlinedAt: !1835)
!1835 = distinct !DILocation(line: 139, column: 16, scope: !1836, inlinedAt: !1817)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !1764, line: 136, column: 11)
!1837 = distinct !DILexicalBlock(scope: !1821, file: !1764, line: 135, column: 5)
!1838 = !DILocation(line: 120, column: 7, scope: !1839, inlinedAt: !1835)
!1839 = distinct !DILexicalBlock(scope: !1823, file: !1764, line: 120, column: 7)
!1840 = !DILocation(line: 120, column: 7, scope: !1823, inlinedAt: !1835)
!1841 = !DILocalVariable(name: "s1", arg: 1, scope: !1842, file: !1764, line: 104, type: !41)
!1842 = distinct !DISubprogram(name: "strcaseeq4", scope: !1764, file: !1764, line: 104, type: !1843, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!16, !41, !41, !7, !7, !7, !7, !7}
!1845 = !{!1841, !1846, !1847, !1848, !1849, !1850, !1851}
!1846 = !DILocalVariable(name: "s2", arg: 2, scope: !1842, file: !1764, line: 104, type: !41)
!1847 = !DILocalVariable(name: "s24", arg: 3, scope: !1842, file: !1764, line: 104, type: !7)
!1848 = !DILocalVariable(name: "s25", arg: 4, scope: !1842, file: !1764, line: 104, type: !7)
!1849 = !DILocalVariable(name: "s26", arg: 5, scope: !1842, file: !1764, line: 104, type: !7)
!1850 = !DILocalVariable(name: "s27", arg: 6, scope: !1842, file: !1764, line: 104, type: !7)
!1851 = !DILocalVariable(name: "s28", arg: 7, scope: !1842, file: !1764, line: 104, type: !7)
!1852 = !DILocation(line: 0, scope: !1842, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 125, column: 16, scope: !1854, inlinedAt: !1835)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1764, line: 122, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1839, file: !1764, line: 121, column: 5)
!1856 = !DILocation(line: 106, column: 7, scope: !1857, inlinedAt: !1853)
!1857 = distinct !DILexicalBlock(scope: !1842, file: !1764, line: 106, column: 7)
!1858 = !DILocation(line: 106, column: 7, scope: !1842, inlinedAt: !1853)
!1859 = !DILocalVariable(name: "s1", arg: 1, scope: !1860, file: !1764, line: 90, type: !41)
!1860 = distinct !DISubprogram(name: "strcaseeq5", scope: !1764, file: !1764, line: 90, type: !1861, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!16, !41, !41, !7, !7, !7, !7}
!1863 = !{!1859, !1864, !1865, !1866, !1867, !1868}
!1864 = !DILocalVariable(name: "s2", arg: 2, scope: !1860, file: !1764, line: 90, type: !41)
!1865 = !DILocalVariable(name: "s25", arg: 3, scope: !1860, file: !1764, line: 90, type: !7)
!1866 = !DILocalVariable(name: "s26", arg: 4, scope: !1860, file: !1764, line: 90, type: !7)
!1867 = !DILocalVariable(name: "s27", arg: 5, scope: !1860, file: !1764, line: 90, type: !7)
!1868 = !DILocalVariable(name: "s28", arg: 6, scope: !1860, file: !1764, line: 90, type: !7)
!1869 = !DILocation(line: 0, scope: !1860, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 111, column: 16, scope: !1871, inlinedAt: !1853)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !1764, line: 108, column: 11)
!1872 = distinct !DILexicalBlock(scope: !1857, file: !1764, line: 107, column: 5)
!1873 = !DILocation(line: 92, column: 7, scope: !1874, inlinedAt: !1870)
!1874 = distinct !DILexicalBlock(scope: !1860, file: !1764, line: 92, column: 7)
!1875 = !DILocation(line: 92, column: 7, scope: !1860, inlinedAt: !1870)
!1876 = !DILocation(line: 235, column: 12, scope: !1780)
!1877 = !DILocation(line: 235, column: 21, scope: !1780)
!1878 = !DILocation(line: 235, column: 5, scope: !1780)
!1879 = !DILocation(line: 0, scope: !1784, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 167, column: 16, scope: !1799, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 236, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1748, file: !107, line: 236, column: 7)
!1883 = !DILocation(line: 148, column: 7, scope: !1802, inlinedAt: !1880)
!1884 = !DILocation(line: 0, scope: !1804, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 153, column: 16, scope: !1818, inlinedAt: !1880)
!1886 = !DILocation(line: 134, column: 7, scope: !1821, inlinedAt: !1885)
!1887 = !DILocation(line: 134, column: 7, scope: !1804, inlinedAt: !1885)
!1888 = !DILocation(line: 0, scope: !1823, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 139, column: 16, scope: !1836, inlinedAt: !1885)
!1890 = !DILocation(line: 120, column: 7, scope: !1839, inlinedAt: !1889)
!1891 = !DILocation(line: 120, column: 7, scope: !1823, inlinedAt: !1889)
!1892 = !DILocation(line: 0, scope: !1842, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 125, column: 16, scope: !1854, inlinedAt: !1889)
!1894 = !DILocation(line: 106, column: 7, scope: !1857, inlinedAt: !1893)
!1895 = !DILocation(line: 106, column: 7, scope: !1842, inlinedAt: !1893)
!1896 = !DILocation(line: 0, scope: !1860, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 111, column: 16, scope: !1871, inlinedAt: !1893)
!1898 = !DILocation(line: 92, column: 7, scope: !1874, inlinedAt: !1897)
!1899 = !DILocation(line: 92, column: 7, scope: !1860, inlinedAt: !1897)
!1900 = !DILocalVariable(name: "s1", arg: 1, scope: !1901, file: !1764, line: 76, type: !41)
!1901 = distinct !DISubprogram(name: "strcaseeq6", scope: !1764, file: !1764, line: 76, type: !1902, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!16, !41, !41, !7, !7, !7}
!1904 = !{!1900, !1905, !1906, !1907, !1908}
!1905 = !DILocalVariable(name: "s2", arg: 2, scope: !1901, file: !1764, line: 76, type: !41)
!1906 = !DILocalVariable(name: "s26", arg: 3, scope: !1901, file: !1764, line: 76, type: !7)
!1907 = !DILocalVariable(name: "s27", arg: 4, scope: !1901, file: !1764, line: 76, type: !7)
!1908 = !DILocalVariable(name: "s28", arg: 5, scope: !1901, file: !1764, line: 76, type: !7)
!1909 = !DILocation(line: 0, scope: !1901, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 97, column: 16, scope: !1911, inlinedAt: !1897)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !1764, line: 94, column: 11)
!1912 = distinct !DILexicalBlock(scope: !1874, file: !1764, line: 93, column: 5)
!1913 = !DILocation(line: 78, column: 7, scope: !1914, inlinedAt: !1910)
!1914 = distinct !DILexicalBlock(scope: !1901, file: !1764, line: 78, column: 7)
!1915 = !DILocation(line: 78, column: 7, scope: !1901, inlinedAt: !1910)
!1916 = !DILocalVariable(name: "s1", arg: 1, scope: !1917, file: !1764, line: 62, type: !41)
!1917 = distinct !DISubprogram(name: "strcaseeq7", scope: !1764, file: !1764, line: 62, type: !1918, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!16, !41, !41, !7, !7}
!1920 = !{!1916, !1921, !1922, !1923}
!1921 = !DILocalVariable(name: "s2", arg: 2, scope: !1917, file: !1764, line: 62, type: !41)
!1922 = !DILocalVariable(name: "s27", arg: 3, scope: !1917, file: !1764, line: 62, type: !7)
!1923 = !DILocalVariable(name: "s28", arg: 4, scope: !1917, file: !1764, line: 62, type: !7)
!1924 = !DILocation(line: 0, scope: !1917, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 83, column: 16, scope: !1926, inlinedAt: !1910)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !1764, line: 80, column: 11)
!1927 = distinct !DILexicalBlock(scope: !1914, file: !1764, line: 79, column: 5)
!1928 = !DILocation(line: 64, column: 7, scope: !1929, inlinedAt: !1925)
!1929 = distinct !DILexicalBlock(scope: !1917, file: !1764, line: 64, column: 7)
!1930 = !DILocation(line: 236, column: 7, scope: !1748)
!1931 = !DILocation(line: 237, column: 12, scope: !1882)
!1932 = !DILocation(line: 237, column: 21, scope: !1882)
!1933 = !DILocation(line: 237, column: 5, scope: !1882)
!1934 = !DILocation(line: 239, column: 13, scope: !1748)
!1935 = !DILocation(line: 239, column: 11, scope: !1748)
!1936 = !DILocation(line: 239, column: 3, scope: !1748)
!1937 = !DILocation(line: 240, column: 1, scope: !1748)
!1938 = !DISubprogram(name: "iswprint", scope: !1939, file: !1939, line: 120, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1939 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!16, !22}
!1942 = !DISubprogram(name: "mbsinit", scope: !1943, file: !1943, line: 292, type: !1944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1943 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!16, !1946}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1948 = distinct !DISubprogram(name: "quotearg_alloc", scope: !107, file: !107, line: 799, type: !1949, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!6, !41, !145, !1114}
!1951 = !{!1952, !1953, !1954}
!1952 = !DILocalVariable(name: "arg", arg: 1, scope: !1948, file: !107, line: 799, type: !41)
!1953 = !DILocalVariable(name: "argsize", arg: 2, scope: !1948, file: !107, line: 799, type: !145)
!1954 = !DILocalVariable(name: "o", arg: 3, scope: !1948, file: !107, line: 800, type: !1114)
!1955 = !DILocation(line: 0, scope: !1948)
!1956 = !DILocalVariable(name: "arg", arg: 1, scope: !1957, file: !107, line: 812, type: !41)
!1957 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !107, file: !107, line: 812, type: !1958, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1960)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!6, !41, !145, !210, !1114}
!1960 = !{!1956, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1961 = !DILocalVariable(name: "argsize", arg: 2, scope: !1957, file: !107, line: 812, type: !145)
!1962 = !DILocalVariable(name: "size", arg: 3, scope: !1957, file: !107, line: 812, type: !210)
!1963 = !DILocalVariable(name: "o", arg: 4, scope: !1957, file: !107, line: 813, type: !1114)
!1964 = !DILocalVariable(name: "p", scope: !1957, file: !107, line: 815, type: !1114)
!1965 = !DILocalVariable(name: "e", scope: !1957, file: !107, line: 816, type: !16)
!1966 = !DILocalVariable(name: "flags", scope: !1957, file: !107, line: 818, type: !16)
!1967 = !DILocalVariable(name: "bufsize", scope: !1957, file: !107, line: 819, type: !145)
!1968 = !DILocalVariable(name: "buf", scope: !1957, file: !107, line: 823, type: !6)
!1969 = !DILocation(line: 0, scope: !1957, inlinedAt: !1970)
!1970 = distinct !DILocation(line: 802, column: 10, scope: !1948)
!1971 = !DILocation(line: 815, column: 37, scope: !1957, inlinedAt: !1970)
!1972 = !DILocation(line: 816, column: 11, scope: !1957, inlinedAt: !1970)
!1973 = !DILocation(line: 818, column: 18, scope: !1957, inlinedAt: !1970)
!1974 = !DILocation(line: 818, column: 24, scope: !1957, inlinedAt: !1970)
!1975 = !DILocation(line: 819, column: 69, scope: !1957, inlinedAt: !1970)
!1976 = !DILocation(line: 820, column: 53, scope: !1957, inlinedAt: !1970)
!1977 = !DILocation(line: 821, column: 49, scope: !1957, inlinedAt: !1970)
!1978 = !DILocation(line: 822, column: 49, scope: !1957, inlinedAt: !1970)
!1979 = !DILocation(line: 819, column: 20, scope: !1957, inlinedAt: !1970)
!1980 = !DILocation(line: 822, column: 62, scope: !1957, inlinedAt: !1970)
!1981 = !DILocalVariable(name: "n", arg: 1, scope: !1982, file: !206, line: 216, type: !145)
!1982 = distinct !DISubprogram(name: "xcharalloc", scope: !206, file: !206, line: 216, type: !1983, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!6, !145}
!1985 = !{!1981}
!1986 = !DILocation(line: 0, scope: !1982, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 823, column: 15, scope: !1957, inlinedAt: !1970)
!1988 = !DILocation(line: 218, column: 10, scope: !1982, inlinedAt: !1987)
!1989 = !DILocation(line: 824, column: 60, scope: !1957, inlinedAt: !1970)
!1990 = !DILocation(line: 826, column: 32, scope: !1957, inlinedAt: !1970)
!1991 = !DILocation(line: 826, column: 47, scope: !1957, inlinedAt: !1970)
!1992 = !DILocation(line: 824, column: 3, scope: !1957, inlinedAt: !1970)
!1993 = !DILocation(line: 827, column: 9, scope: !1957, inlinedAt: !1970)
!1994 = !DILocation(line: 802, column: 3, scope: !1948)
!1995 = !DILocation(line: 0, scope: !1957)
!1996 = !DILocation(line: 815, column: 37, scope: !1957)
!1997 = !DILocation(line: 816, column: 11, scope: !1957)
!1998 = !DILocation(line: 818, column: 18, scope: !1957)
!1999 = !DILocation(line: 818, column: 27, scope: !1957)
!2000 = !DILocation(line: 818, column: 24, scope: !1957)
!2001 = !DILocation(line: 819, column: 69, scope: !1957)
!2002 = !DILocation(line: 820, column: 53, scope: !1957)
!2003 = !DILocation(line: 821, column: 49, scope: !1957)
!2004 = !DILocation(line: 822, column: 49, scope: !1957)
!2005 = !DILocation(line: 819, column: 20, scope: !1957)
!2006 = !DILocation(line: 822, column: 62, scope: !1957)
!2007 = !DILocation(line: 0, scope: !1982, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 823, column: 15, scope: !1957)
!2009 = !DILocation(line: 218, column: 10, scope: !1982, inlinedAt: !2008)
!2010 = !DILocation(line: 824, column: 60, scope: !1957)
!2011 = !DILocation(line: 826, column: 32, scope: !1957)
!2012 = !DILocation(line: 826, column: 47, scope: !1957)
!2013 = !DILocation(line: 824, column: 3, scope: !1957)
!2014 = !DILocation(line: 827, column: 9, scope: !1957)
!2015 = !DILocation(line: 828, column: 7, scope: !1957)
!2016 = !DILocation(line: 829, column: 11, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1957, file: !107, line: 828, column: 7)
!2018 = !{!873, !873, i64 0}
!2019 = !DILocation(line: 829, column: 5, scope: !2017)
!2020 = !DILocation(line: 830, column: 3, scope: !1957)
!2021 = distinct !DISubprogram(name: "quotearg_free", scope: !107, file: !107, line: 848, type: !995, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2022)
!2022 = !{!2023, !2024}
!2023 = !DILocalVariable(name: "sv", scope: !2021, file: !107, line: 850, type: !174)
!2024 = !DILocalVariable(name: "i", scope: !2021, file: !107, line: 851, type: !16)
!2025 = !DILocation(line: 850, column: 24, scope: !2021)
!2026 = !DILocation(line: 0, scope: !2021)
!2027 = !DILocation(line: 852, column: 19, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !107, line: 852, column: 3)
!2029 = distinct !DILexicalBlock(scope: !2021, file: !107, line: 852, column: 3)
!2030 = !DILocation(line: 852, column: 17, scope: !2028)
!2031 = !DILocation(line: 852, column: 3, scope: !2029)
!2032 = !DILocation(line: 853, column: 17, scope: !2028)
!2033 = !{!2034, !645, i64 8}
!2034 = !{!"slotvec", !873, i64 0, !645, i64 8}
!2035 = !DILocation(line: 853, column: 5, scope: !2028)
!2036 = !DILocation(line: 852, column: 28, scope: !2028)
!2037 = distinct !{!2037, !2031, !2038, !694}
!2038 = !DILocation(line: 853, column: 20, scope: !2029)
!2039 = !DILocation(line: 854, column: 13, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2021, file: !107, line: 854, column: 7)
!2041 = !DILocation(line: 854, column: 17, scope: !2040)
!2042 = !DILocation(line: 854, column: 7, scope: !2021)
!2043 = !DILocation(line: 856, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !107, line: 855, column: 5)
!2045 = !DILocation(line: 857, column: 21, scope: !2044)
!2046 = !{!2034, !873, i64 0}
!2047 = !DILocation(line: 858, column: 20, scope: !2044)
!2048 = !DILocation(line: 859, column: 5, scope: !2044)
!2049 = !DILocation(line: 860, column: 10, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2021, file: !107, line: 860, column: 7)
!2051 = !DILocation(line: 860, column: 7, scope: !2021)
!2052 = !DILocation(line: 862, column: 13, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !107, line: 861, column: 5)
!2054 = !DILocation(line: 862, column: 7, scope: !2053)
!2055 = !DILocation(line: 863, column: 15, scope: !2053)
!2056 = !DILocation(line: 864, column: 5, scope: !2053)
!2057 = !DILocation(line: 865, column: 10, scope: !2021)
!2058 = !DILocation(line: 866, column: 1, scope: !2021)
!2059 = distinct !DISubprogram(name: "quotearg_n", scope: !107, file: !107, line: 931, type: !776, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2060)
!2060 = !{!2061, !2062}
!2061 = !DILocalVariable(name: "n", arg: 1, scope: !2059, file: !107, line: 931, type: !16)
!2062 = !DILocalVariable(name: "arg", arg: 2, scope: !2059, file: !107, line: 931, type: !41)
!2063 = !DILocation(line: 0, scope: !2059)
!2064 = !DILocation(line: 933, column: 10, scope: !2059)
!2065 = !DILocation(line: 933, column: 3, scope: !2059)
!2066 = distinct !DISubprogram(name: "quotearg_n_options", scope: !107, file: !107, line: 877, type: !2067, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!6, !16, !41, !145, !1114}
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2075, !2076, !2079, !2080, !2082, !2083, !2084}
!2070 = !DILocalVariable(name: "n", arg: 1, scope: !2066, file: !107, line: 877, type: !16)
!2071 = !DILocalVariable(name: "arg", arg: 2, scope: !2066, file: !107, line: 877, type: !41)
!2072 = !DILocalVariable(name: "argsize", arg: 3, scope: !2066, file: !107, line: 877, type: !145)
!2073 = !DILocalVariable(name: "options", arg: 4, scope: !2066, file: !107, line: 878, type: !1114)
!2074 = !DILocalVariable(name: "e", scope: !2066, file: !107, line: 880, type: !16)
!2075 = !DILocalVariable(name: "sv", scope: !2066, file: !107, line: 882, type: !174)
!2076 = !DILocalVariable(name: "preallocated", scope: !2077, file: !107, line: 889, type: !70)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !107, line: 888, column: 5)
!2078 = distinct !DILexicalBlock(scope: !2066, file: !107, line: 887, column: 7)
!2079 = !DILocalVariable(name: "nmax", scope: !2077, file: !107, line: 890, type: !16)
!2080 = !DILocalVariable(name: "size", scope: !2081, file: !107, line: 903, type: !145)
!2081 = distinct !DILexicalBlock(scope: !2066, file: !107, line: 902, column: 3)
!2082 = !DILocalVariable(name: "val", scope: !2081, file: !107, line: 904, type: !6)
!2083 = !DILocalVariable(name: "flags", scope: !2081, file: !107, line: 906, type: !16)
!2084 = !DILocalVariable(name: "qsize", scope: !2081, file: !107, line: 907, type: !145)
!2085 = !DILocation(line: 0, scope: !2066)
!2086 = !DILocation(line: 880, column: 11, scope: !2066)
!2087 = !DILocation(line: 882, column: 24, scope: !2066)
!2088 = !DILocation(line: 884, column: 9, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2066, file: !107, line: 884, column: 7)
!2090 = !DILocation(line: 884, column: 7, scope: !2066)
!2091 = !DILocation(line: 885, column: 5, scope: !2089)
!2092 = !DILocation(line: 887, column: 7, scope: !2078)
!2093 = !DILocation(line: 887, column: 14, scope: !2078)
!2094 = !DILocation(line: 887, column: 7, scope: !2066)
!2095 = !DILocation(line: 889, column: 31, scope: !2077)
!2096 = !DILocation(line: 0, scope: !2077)
!2097 = !DILocation(line: 892, column: 16, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2077, file: !107, line: 892, column: 11)
!2099 = !DILocation(line: 892, column: 11, scope: !2077)
!2100 = !DILocation(line: 893, column: 9, scope: !2098)
!2101 = !DILocation(line: 895, column: 32, scope: !2077)
!2102 = !DILocation(line: 895, column: 61, scope: !2077)
!2103 = !DILocation(line: 895, column: 66, scope: !2077)
!2104 = !DILocation(line: 895, column: 22, scope: !2077)
!2105 = !DILocation(line: 895, column: 15, scope: !2077)
!2106 = !DILocation(line: 896, column: 11, scope: !2077)
!2107 = !DILocation(line: 897, column: 15, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2077, file: !107, line: 896, column: 11)
!2109 = !{i64 0, i64 8, !2018, i64 8, i64 8, !644}
!2110 = !DILocation(line: 897, column: 9, scope: !2108)
!2111 = !DILocation(line: 898, column: 20, scope: !2077)
!2112 = !DILocation(line: 898, column: 18, scope: !2077)
!2113 = !DILocation(line: 898, column: 15, scope: !2077)
!2114 = !DILocation(line: 898, column: 38, scope: !2077)
!2115 = !DILocation(line: 898, column: 31, scope: !2077)
!2116 = !DILocation(line: 898, column: 48, scope: !2077)
!2117 = !DILocation(line: 0, scope: !1509, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 898, column: 7, scope: !2077)
!2119 = !DILocation(line: 59, column: 10, scope: !1509, inlinedAt: !2118)
!2120 = !DILocation(line: 899, column: 14, scope: !2077)
!2121 = !DILocation(line: 900, column: 5, scope: !2077)
!2122 = !DILocation(line: 903, column: 19, scope: !2081)
!2123 = !DILocation(line: 903, column: 25, scope: !2081)
!2124 = !DILocation(line: 0, scope: !2081)
!2125 = !DILocation(line: 904, column: 23, scope: !2081)
!2126 = !DILocation(line: 906, column: 26, scope: !2081)
!2127 = !DILocation(line: 906, column: 32, scope: !2081)
!2128 = !DILocation(line: 908, column: 55, scope: !2081)
!2129 = !DILocation(line: 909, column: 46, scope: !2081)
!2130 = !DILocation(line: 910, column: 55, scope: !2081)
!2131 = !DILocation(line: 911, column: 55, scope: !2081)
!2132 = !DILocation(line: 907, column: 20, scope: !2081)
!2133 = !DILocation(line: 913, column: 14, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2081, file: !107, line: 913, column: 9)
!2135 = !DILocation(line: 913, column: 9, scope: !2081)
!2136 = !DILocation(line: 915, column: 35, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !107, line: 914, column: 7)
!2138 = !DILocation(line: 915, column: 20, scope: !2137)
!2139 = !DILocation(line: 916, column: 17, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !107, line: 916, column: 13)
!2141 = !DILocation(line: 916, column: 13, scope: !2137)
!2142 = !DILocation(line: 917, column: 11, scope: !2140)
!2143 = !DILocation(line: 0, scope: !1982, inlinedAt: !2144)
!2144 = distinct !DILocation(line: 918, column: 27, scope: !2137)
!2145 = !DILocation(line: 218, column: 10, scope: !1982, inlinedAt: !2144)
!2146 = !DILocation(line: 918, column: 19, scope: !2137)
!2147 = !DILocation(line: 919, column: 69, scope: !2137)
!2148 = !DILocation(line: 921, column: 44, scope: !2137)
!2149 = !DILocation(line: 922, column: 44, scope: !2137)
!2150 = !DILocation(line: 919, column: 9, scope: !2137)
!2151 = !DILocation(line: 923, column: 7, scope: !2137)
!2152 = !DILocation(line: 925, column: 11, scope: !2081)
!2153 = !DILocation(line: 926, column: 5, scope: !2081)
!2154 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !107, file: !107, line: 937, type: !2155, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!6, !16, !41, !145}
!2157 = !{!2158, !2159, !2160}
!2158 = !DILocalVariable(name: "n", arg: 1, scope: !2154, file: !107, line: 937, type: !16)
!2159 = !DILocalVariable(name: "arg", arg: 2, scope: !2154, file: !107, line: 937, type: !41)
!2160 = !DILocalVariable(name: "argsize", arg: 3, scope: !2154, file: !107, line: 937, type: !145)
!2161 = !DILocation(line: 0, scope: !2154)
!2162 = !DILocation(line: 939, column: 10, scope: !2154)
!2163 = !DILocation(line: 939, column: 3, scope: !2154)
!2164 = distinct !DISubprogram(name: "quotearg", scope: !107, file: !107, line: 943, type: !988, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2165)
!2165 = !{!2166}
!2166 = !DILocalVariable(name: "arg", arg: 1, scope: !2164, file: !107, line: 943, type: !41)
!2167 = !DILocation(line: 0, scope: !2164)
!2168 = !DILocation(line: 0, scope: !2059, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 945, column: 10, scope: !2164)
!2170 = !DILocation(line: 933, column: 10, scope: !2059, inlinedAt: !2169)
!2171 = !DILocation(line: 945, column: 3, scope: !2164)
!2172 = distinct !DISubprogram(name: "quotearg_mem", scope: !107, file: !107, line: 949, type: !2173, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!6, !41, !145}
!2175 = !{!2176, !2177}
!2176 = !DILocalVariable(name: "arg", arg: 1, scope: !2172, file: !107, line: 949, type: !41)
!2177 = !DILocalVariable(name: "argsize", arg: 2, scope: !2172, file: !107, line: 949, type: !145)
!2178 = !DILocation(line: 0, scope: !2172)
!2179 = !DILocation(line: 0, scope: !2154, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 951, column: 10, scope: !2172)
!2181 = !DILocation(line: 939, column: 10, scope: !2154, inlinedAt: !2180)
!2182 = !DILocation(line: 951, column: 3, scope: !2172)
!2183 = distinct !DISubprogram(name: "quotearg_n_style", scope: !107, file: !107, line: 955, type: !2184, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!6, !16, !109, !41}
!2186 = !{!2187, !2188, !2189, !2190}
!2187 = !DILocalVariable(name: "n", arg: 1, scope: !2183, file: !107, line: 955, type: !16)
!2188 = !DILocalVariable(name: "s", arg: 2, scope: !2183, file: !107, line: 955, type: !109)
!2189 = !DILocalVariable(name: "arg", arg: 3, scope: !2183, file: !107, line: 955, type: !41)
!2190 = !DILocalVariable(name: "o", scope: !2183, file: !107, line: 957, type: !1115)
!2191 = !DILocation(line: 0, scope: !2183)
!2192 = !DILocation(line: 957, column: 3, scope: !2183)
!2193 = !DILocation(line: 957, column: 32, scope: !2183)
!2194 = !{!2195}
!2195 = distinct !{!2195, !2196, !"quoting_options_from_style: argument 0"}
!2196 = distinct !{!2196, !"quoting_options_from_style"}
!2197 = !DILocation(line: 957, column: 36, scope: !2183)
!2198 = !DILocalVariable(name: "style", arg: 1, scope: !2199, file: !107, line: 193, type: !109)
!2199 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !107, file: !107, line: 193, type: !2200, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!157, !109}
!2202 = !{!2198, !2203}
!2203 = !DILocalVariable(name: "o", scope: !2199, file: !107, line: 195, type: !157)
!2204 = !DILocation(line: 0, scope: !2199, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 957, column: 36, scope: !2183)
!2206 = !DILocation(line: 195, column: 26, scope: !2199, inlinedAt: !2205)
!2207 = !DILocation(line: 196, column: 13, scope: !2208, inlinedAt: !2205)
!2208 = distinct !DILexicalBlock(scope: !2199, file: !107, line: 196, column: 7)
!2209 = !DILocation(line: 196, column: 7, scope: !2199, inlinedAt: !2205)
!2210 = !DILocation(line: 197, column: 5, scope: !2208, inlinedAt: !2205)
!2211 = !DILocation(line: 198, column: 5, scope: !2199, inlinedAt: !2205)
!2212 = !DILocation(line: 198, column: 11, scope: !2199, inlinedAt: !2205)
!2213 = !DILocation(line: 958, column: 10, scope: !2183)
!2214 = !DILocation(line: 959, column: 1, scope: !2183)
!2215 = !DILocation(line: 958, column: 3, scope: !2183)
!2216 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !107, file: !107, line: 962, type: !2217, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!6, !16, !109, !41, !145}
!2219 = !{!2220, !2221, !2222, !2223, !2224}
!2220 = !DILocalVariable(name: "n", arg: 1, scope: !2216, file: !107, line: 962, type: !16)
!2221 = !DILocalVariable(name: "s", arg: 2, scope: !2216, file: !107, line: 962, type: !109)
!2222 = !DILocalVariable(name: "arg", arg: 3, scope: !2216, file: !107, line: 963, type: !41)
!2223 = !DILocalVariable(name: "argsize", arg: 4, scope: !2216, file: !107, line: 963, type: !145)
!2224 = !DILocalVariable(name: "o", scope: !2216, file: !107, line: 965, type: !1115)
!2225 = !DILocation(line: 0, scope: !2216)
!2226 = !DILocation(line: 965, column: 3, scope: !2216)
!2227 = !DILocation(line: 965, column: 32, scope: !2216)
!2228 = !{!2229}
!2229 = distinct !{!2229, !2230, !"quoting_options_from_style: argument 0"}
!2230 = distinct !{!2230, !"quoting_options_from_style"}
!2231 = !DILocation(line: 965, column: 36, scope: !2216)
!2232 = !DILocation(line: 0, scope: !2199, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 965, column: 36, scope: !2216)
!2234 = !DILocation(line: 195, column: 26, scope: !2199, inlinedAt: !2233)
!2235 = !DILocation(line: 196, column: 13, scope: !2208, inlinedAt: !2233)
!2236 = !DILocation(line: 196, column: 7, scope: !2199, inlinedAt: !2233)
!2237 = !DILocation(line: 197, column: 5, scope: !2208, inlinedAt: !2233)
!2238 = !DILocation(line: 198, column: 5, scope: !2199, inlinedAt: !2233)
!2239 = !DILocation(line: 198, column: 11, scope: !2199, inlinedAt: !2233)
!2240 = !DILocation(line: 966, column: 10, scope: !2216)
!2241 = !DILocation(line: 967, column: 1, scope: !2216)
!2242 = !DILocation(line: 966, column: 3, scope: !2216)
!2243 = distinct !DISubprogram(name: "quotearg_style", scope: !107, file: !107, line: 970, type: !2244, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2246)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!6, !109, !41}
!2246 = !{!2247, !2248}
!2247 = !DILocalVariable(name: "s", arg: 1, scope: !2243, file: !107, line: 970, type: !109)
!2248 = !DILocalVariable(name: "arg", arg: 2, scope: !2243, file: !107, line: 970, type: !41)
!2249 = !DILocation(line: 0, scope: !2243)
!2250 = !DILocation(line: 0, scope: !2183, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 972, column: 10, scope: !2243)
!2252 = !DILocation(line: 957, column: 3, scope: !2183, inlinedAt: !2251)
!2253 = !DILocation(line: 957, column: 32, scope: !2183, inlinedAt: !2251)
!2254 = !{!2255}
!2255 = distinct !{!2255, !2256, !"quoting_options_from_style: argument 0"}
!2256 = distinct !{!2256, !"quoting_options_from_style"}
!2257 = !DILocation(line: 957, column: 36, scope: !2183, inlinedAt: !2251)
!2258 = !DILocation(line: 0, scope: !2199, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 957, column: 36, scope: !2183, inlinedAt: !2251)
!2260 = !DILocation(line: 195, column: 26, scope: !2199, inlinedAt: !2259)
!2261 = !DILocation(line: 196, column: 13, scope: !2208, inlinedAt: !2259)
!2262 = !DILocation(line: 196, column: 7, scope: !2199, inlinedAt: !2259)
!2263 = !DILocation(line: 197, column: 5, scope: !2208, inlinedAt: !2259)
!2264 = !DILocation(line: 198, column: 5, scope: !2199, inlinedAt: !2259)
!2265 = !DILocation(line: 198, column: 11, scope: !2199, inlinedAt: !2259)
!2266 = !DILocation(line: 958, column: 10, scope: !2183, inlinedAt: !2251)
!2267 = !DILocation(line: 959, column: 1, scope: !2183, inlinedAt: !2251)
!2268 = !DILocation(line: 972, column: 3, scope: !2243)
!2269 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !107, file: !107, line: 976, type: !2270, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!6, !109, !41, !145}
!2272 = !{!2273, !2274, !2275}
!2273 = !DILocalVariable(name: "s", arg: 1, scope: !2269, file: !107, line: 976, type: !109)
!2274 = !DILocalVariable(name: "arg", arg: 2, scope: !2269, file: !107, line: 976, type: !41)
!2275 = !DILocalVariable(name: "argsize", arg: 3, scope: !2269, file: !107, line: 976, type: !145)
!2276 = !DILocation(line: 0, scope: !2269)
!2277 = !DILocation(line: 0, scope: !2216, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 978, column: 10, scope: !2269)
!2279 = !DILocation(line: 965, column: 3, scope: !2216, inlinedAt: !2278)
!2280 = !DILocation(line: 965, column: 32, scope: !2216, inlinedAt: !2278)
!2281 = !{!2282}
!2282 = distinct !{!2282, !2283, !"quoting_options_from_style: argument 0"}
!2283 = distinct !{!2283, !"quoting_options_from_style"}
!2284 = !DILocation(line: 965, column: 36, scope: !2216, inlinedAt: !2278)
!2285 = !DILocation(line: 0, scope: !2199, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 965, column: 36, scope: !2216, inlinedAt: !2278)
!2287 = !DILocation(line: 195, column: 26, scope: !2199, inlinedAt: !2286)
!2288 = !DILocation(line: 196, column: 13, scope: !2208, inlinedAt: !2286)
!2289 = !DILocation(line: 196, column: 7, scope: !2199, inlinedAt: !2286)
!2290 = !DILocation(line: 197, column: 5, scope: !2208, inlinedAt: !2286)
!2291 = !DILocation(line: 198, column: 5, scope: !2199, inlinedAt: !2286)
!2292 = !DILocation(line: 198, column: 11, scope: !2199, inlinedAt: !2286)
!2293 = !DILocation(line: 966, column: 10, scope: !2216, inlinedAt: !2278)
!2294 = !DILocation(line: 967, column: 1, scope: !2216, inlinedAt: !2278)
!2295 = !DILocation(line: 978, column: 3, scope: !2269)
!2296 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !107, file: !107, line: 982, type: !2297, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!6, !41, !145, !7}
!2299 = !{!2300, !2301, !2302, !2303}
!2300 = !DILocalVariable(name: "arg", arg: 1, scope: !2296, file: !107, line: 982, type: !41)
!2301 = !DILocalVariable(name: "argsize", arg: 2, scope: !2296, file: !107, line: 982, type: !145)
!2302 = !DILocalVariable(name: "ch", arg: 3, scope: !2296, file: !107, line: 982, type: !7)
!2303 = !DILocalVariable(name: "options", scope: !2296, file: !107, line: 984, type: !157)
!2304 = !DILocation(line: 0, scope: !2296)
!2305 = !DILocation(line: 984, column: 3, scope: !2296)
!2306 = !DILocation(line: 984, column: 26, scope: !2296)
!2307 = !DILocation(line: 985, column: 13, scope: !2296)
!2308 = !{i64 0, i64 4, !877, i64 4, i64 4, !652, i64 8, i64 32, !877, i64 40, i64 8, !644, i64 48, i64 8, !644}
!2309 = !DILocation(line: 0, scope: !1135, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 986, column: 3, scope: !2296)
!2311 = !DILocation(line: 156, column: 62, scope: !1135, inlinedAt: !2310)
!2312 = !DILocation(line: 156, column: 57, scope: !1135, inlinedAt: !2310)
!2313 = !DILocation(line: 157, column: 15, scope: !1135, inlinedAt: !2310)
!2314 = !DILocation(line: 158, column: 12, scope: !1135, inlinedAt: !2310)
!2315 = !DILocation(line: 158, column: 15, scope: !1135, inlinedAt: !2310)
!2316 = !DILocation(line: 158, column: 25, scope: !1135, inlinedAt: !2310)
!2317 = !DILocation(line: 159, column: 18, scope: !1135, inlinedAt: !2310)
!2318 = !DILocation(line: 159, column: 23, scope: !1135, inlinedAt: !2310)
!2319 = !DILocation(line: 159, column: 6, scope: !1135, inlinedAt: !2310)
!2320 = !DILocation(line: 987, column: 10, scope: !2296)
!2321 = !DILocation(line: 988, column: 1, scope: !2296)
!2322 = !DILocation(line: 987, column: 3, scope: !2296)
!2323 = distinct !DISubprogram(name: "quotearg_char", scope: !107, file: !107, line: 991, type: !2324, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!6, !41, !7}
!2326 = !{!2327, !2328}
!2327 = !DILocalVariable(name: "arg", arg: 1, scope: !2323, file: !107, line: 991, type: !41)
!2328 = !DILocalVariable(name: "ch", arg: 2, scope: !2323, file: !107, line: 991, type: !7)
!2329 = !DILocation(line: 0, scope: !2323)
!2330 = !DILocation(line: 0, scope: !2296, inlinedAt: !2331)
!2331 = distinct !DILocation(line: 993, column: 10, scope: !2323)
!2332 = !DILocation(line: 984, column: 3, scope: !2296, inlinedAt: !2331)
!2333 = !DILocation(line: 984, column: 26, scope: !2296, inlinedAt: !2331)
!2334 = !DILocation(line: 985, column: 13, scope: !2296, inlinedAt: !2331)
!2335 = !DILocation(line: 0, scope: !1135, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 986, column: 3, scope: !2296, inlinedAt: !2331)
!2337 = !DILocation(line: 156, column: 62, scope: !1135, inlinedAt: !2336)
!2338 = !DILocation(line: 156, column: 57, scope: !1135, inlinedAt: !2336)
!2339 = !DILocation(line: 157, column: 15, scope: !1135, inlinedAt: !2336)
!2340 = !DILocation(line: 158, column: 12, scope: !1135, inlinedAt: !2336)
!2341 = !DILocation(line: 158, column: 15, scope: !1135, inlinedAt: !2336)
!2342 = !DILocation(line: 158, column: 25, scope: !1135, inlinedAt: !2336)
!2343 = !DILocation(line: 159, column: 18, scope: !1135, inlinedAt: !2336)
!2344 = !DILocation(line: 159, column: 23, scope: !1135, inlinedAt: !2336)
!2345 = !DILocation(line: 159, column: 6, scope: !1135, inlinedAt: !2336)
!2346 = !DILocation(line: 987, column: 10, scope: !2296, inlinedAt: !2331)
!2347 = !DILocation(line: 988, column: 1, scope: !2296, inlinedAt: !2331)
!2348 = !DILocation(line: 993, column: 3, scope: !2323)
!2349 = distinct !DISubprogram(name: "quotearg_colon", scope: !107, file: !107, line: 997, type: !988, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2350)
!2350 = !{!2351}
!2351 = !DILocalVariable(name: "arg", arg: 1, scope: !2349, file: !107, line: 997, type: !41)
!2352 = !DILocation(line: 0, scope: !2349)
!2353 = !DILocation(line: 0, scope: !2323, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 999, column: 10, scope: !2349)
!2355 = !DILocation(line: 0, scope: !2296, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 993, column: 10, scope: !2323, inlinedAt: !2354)
!2357 = !DILocation(line: 984, column: 3, scope: !2296, inlinedAt: !2356)
!2358 = !DILocation(line: 984, column: 26, scope: !2296, inlinedAt: !2356)
!2359 = !DILocation(line: 985, column: 13, scope: !2296, inlinedAt: !2356)
!2360 = !DILocation(line: 0, scope: !1135, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 986, column: 3, scope: !2296, inlinedAt: !2356)
!2362 = !DILocation(line: 156, column: 57, scope: !1135, inlinedAt: !2361)
!2363 = !DILocation(line: 158, column: 12, scope: !1135, inlinedAt: !2361)
!2364 = !DILocation(line: 159, column: 6, scope: !1135, inlinedAt: !2361)
!2365 = !DILocation(line: 987, column: 10, scope: !2296, inlinedAt: !2356)
!2366 = !DILocation(line: 988, column: 1, scope: !2296, inlinedAt: !2356)
!2367 = !DILocation(line: 999, column: 3, scope: !2349)
!2368 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !107, file: !107, line: 1003, type: !2173, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2369)
!2369 = !{!2370, !2371}
!2370 = !DILocalVariable(name: "arg", arg: 1, scope: !2368, file: !107, line: 1003, type: !41)
!2371 = !DILocalVariable(name: "argsize", arg: 2, scope: !2368, file: !107, line: 1003, type: !145)
!2372 = !DILocation(line: 0, scope: !2368)
!2373 = !DILocation(line: 0, scope: !2296, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 1005, column: 10, scope: !2368)
!2375 = !DILocation(line: 984, column: 3, scope: !2296, inlinedAt: !2374)
!2376 = !DILocation(line: 984, column: 26, scope: !2296, inlinedAt: !2374)
!2377 = !DILocation(line: 985, column: 13, scope: !2296, inlinedAt: !2374)
!2378 = !DILocation(line: 0, scope: !1135, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 986, column: 3, scope: !2296, inlinedAt: !2374)
!2380 = !DILocation(line: 156, column: 57, scope: !1135, inlinedAt: !2379)
!2381 = !DILocation(line: 158, column: 12, scope: !1135, inlinedAt: !2379)
!2382 = !DILocation(line: 159, column: 6, scope: !1135, inlinedAt: !2379)
!2383 = !DILocation(line: 987, column: 10, scope: !2296, inlinedAt: !2374)
!2384 = !DILocation(line: 988, column: 1, scope: !2296, inlinedAt: !2374)
!2385 = !DILocation(line: 1005, column: 3, scope: !2368)
!2386 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !107, file: !107, line: 1009, type: !2184, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2387)
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DILocalVariable(name: "n", arg: 1, scope: !2386, file: !107, line: 1009, type: !16)
!2389 = !DILocalVariable(name: "s", arg: 2, scope: !2386, file: !107, line: 1009, type: !109)
!2390 = !DILocalVariable(name: "arg", arg: 3, scope: !2386, file: !107, line: 1009, type: !41)
!2391 = !DILocalVariable(name: "options", scope: !2386, file: !107, line: 1011, type: !157)
!2392 = !DILocation(line: 195, column: 26, scope: !2199, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 1012, column: 13, scope: !2386)
!2394 = !DILocation(line: 0, scope: !2386)
!2395 = !DILocation(line: 1011, column: 3, scope: !2386)
!2396 = !DILocation(line: 1011, column: 26, scope: !2386)
!2397 = !DILocation(line: 1012, column: 13, scope: !2386)
!2398 = !{!2399}
!2399 = distinct !{!2399, !2400, !"quoting_options_from_style: argument 0"}
!2400 = distinct !{!2400, !"quoting_options_from_style"}
!2401 = !DILocation(line: 0, scope: !2199, inlinedAt: !2393)
!2402 = !DILocation(line: 196, column: 13, scope: !2208, inlinedAt: !2393)
!2403 = !DILocation(line: 196, column: 7, scope: !2199, inlinedAt: !2393)
!2404 = !DILocation(line: 197, column: 5, scope: !2208, inlinedAt: !2393)
!2405 = !{i64 0, i64 4, !652, i64 4, i64 32, !877, i64 36, i64 8, !644, i64 44, i64 8, !644}
!2406 = !DILocation(line: 0, scope: !1135, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1013, column: 3, scope: !2386)
!2408 = !DILocation(line: 156, column: 57, scope: !1135, inlinedAt: !2407)
!2409 = !DILocation(line: 158, column: 12, scope: !1135, inlinedAt: !2407)
!2410 = !DILocation(line: 159, column: 6, scope: !1135, inlinedAt: !2407)
!2411 = !DILocation(line: 1014, column: 10, scope: !2386)
!2412 = !DILocation(line: 1015, column: 1, scope: !2386)
!2413 = !DILocation(line: 1014, column: 3, scope: !2386)
!2414 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !107, file: !107, line: 1018, type: !2415, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!6, !16, !41, !41, !41}
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "n", arg: 1, scope: !2414, file: !107, line: 1018, type: !16)
!2419 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2414, file: !107, line: 1018, type: !41)
!2420 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2414, file: !107, line: 1019, type: !41)
!2421 = !DILocalVariable(name: "arg", arg: 4, scope: !2414, file: !107, line: 1019, type: !41)
!2422 = !DILocation(line: 0, scope: !2414)
!2423 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !107, line: 1026, type: !16)
!2424 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !107, file: !107, line: 1026, type: !2425, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!6, !16, !41, !41, !41, !145}
!2427 = !{!2423, !2428, !2429, !2430, !2431, !2432}
!2428 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2424, file: !107, line: 1026, type: !41)
!2429 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2424, file: !107, line: 1027, type: !41)
!2430 = !DILocalVariable(name: "arg", arg: 4, scope: !2424, file: !107, line: 1028, type: !41)
!2431 = !DILocalVariable(name: "argsize", arg: 5, scope: !2424, file: !107, line: 1028, type: !145)
!2432 = !DILocalVariable(name: "o", scope: !2424, file: !107, line: 1030, type: !157)
!2433 = !DILocation(line: 0, scope: !2424, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 1021, column: 10, scope: !2414)
!2435 = !DILocation(line: 1030, column: 3, scope: !2424, inlinedAt: !2434)
!2436 = !DILocation(line: 1030, column: 26, scope: !2424, inlinedAt: !2434)
!2437 = !DILocation(line: 1030, column: 30, scope: !2424, inlinedAt: !2434)
!2438 = !DILocation(line: 0, scope: !1175, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 1031, column: 3, scope: !2424, inlinedAt: !2434)
!2440 = !DILocation(line: 184, column: 6, scope: !1175, inlinedAt: !2439)
!2441 = !DILocation(line: 184, column: 12, scope: !1175, inlinedAt: !2439)
!2442 = !DILocation(line: 185, column: 8, scope: !1189, inlinedAt: !2439)
!2443 = !DILocation(line: 185, column: 19, scope: !1189, inlinedAt: !2439)
!2444 = !DILocation(line: 186, column: 5, scope: !1189, inlinedAt: !2439)
!2445 = !DILocation(line: 187, column: 6, scope: !1175, inlinedAt: !2439)
!2446 = !DILocation(line: 187, column: 17, scope: !1175, inlinedAt: !2439)
!2447 = !DILocation(line: 188, column: 6, scope: !1175, inlinedAt: !2439)
!2448 = !DILocation(line: 188, column: 18, scope: !1175, inlinedAt: !2439)
!2449 = !DILocation(line: 1032, column: 10, scope: !2424, inlinedAt: !2434)
!2450 = !DILocation(line: 1033, column: 1, scope: !2424, inlinedAt: !2434)
!2451 = !DILocation(line: 1021, column: 3, scope: !2414)
!2452 = !DILocation(line: 0, scope: !2424)
!2453 = !DILocation(line: 1030, column: 3, scope: !2424)
!2454 = !DILocation(line: 1030, column: 26, scope: !2424)
!2455 = !DILocation(line: 1030, column: 30, scope: !2424)
!2456 = !DILocation(line: 0, scope: !1175, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 1031, column: 3, scope: !2424)
!2458 = !DILocation(line: 184, column: 6, scope: !1175, inlinedAt: !2457)
!2459 = !DILocation(line: 184, column: 12, scope: !1175, inlinedAt: !2457)
!2460 = !DILocation(line: 185, column: 8, scope: !1189, inlinedAt: !2457)
!2461 = !DILocation(line: 185, column: 19, scope: !1189, inlinedAt: !2457)
!2462 = !DILocation(line: 186, column: 5, scope: !1189, inlinedAt: !2457)
!2463 = !DILocation(line: 187, column: 6, scope: !1175, inlinedAt: !2457)
!2464 = !DILocation(line: 187, column: 17, scope: !1175, inlinedAt: !2457)
!2465 = !DILocation(line: 188, column: 6, scope: !1175, inlinedAt: !2457)
!2466 = !DILocation(line: 188, column: 18, scope: !1175, inlinedAt: !2457)
!2467 = !DILocation(line: 1032, column: 10, scope: !2424)
!2468 = !DILocation(line: 1033, column: 1, scope: !2424)
!2469 = !DILocation(line: 1032, column: 3, scope: !2424)
!2470 = distinct !DISubprogram(name: "quotearg_custom", scope: !107, file: !107, line: 1036, type: !2471, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!6, !41, !41, !41}
!2473 = !{!2474, !2475, !2476}
!2474 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2470, file: !107, line: 1036, type: !41)
!2475 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2470, file: !107, line: 1036, type: !41)
!2476 = !DILocalVariable(name: "arg", arg: 3, scope: !2470, file: !107, line: 1037, type: !41)
!2477 = !DILocation(line: 0, scope: !2470)
!2478 = !DILocation(line: 0, scope: !2414, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1039, column: 10, scope: !2470)
!2480 = !DILocation(line: 0, scope: !2424, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 1021, column: 10, scope: !2414, inlinedAt: !2479)
!2482 = !DILocation(line: 1030, column: 3, scope: !2424, inlinedAt: !2481)
!2483 = !DILocation(line: 1030, column: 26, scope: !2424, inlinedAt: !2481)
!2484 = !DILocation(line: 1030, column: 30, scope: !2424, inlinedAt: !2481)
!2485 = !DILocation(line: 0, scope: !1175, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 1031, column: 3, scope: !2424, inlinedAt: !2481)
!2487 = !DILocation(line: 184, column: 6, scope: !1175, inlinedAt: !2486)
!2488 = !DILocation(line: 184, column: 12, scope: !1175, inlinedAt: !2486)
!2489 = !DILocation(line: 185, column: 8, scope: !1189, inlinedAt: !2486)
!2490 = !DILocation(line: 185, column: 19, scope: !1189, inlinedAt: !2486)
!2491 = !DILocation(line: 186, column: 5, scope: !1189, inlinedAt: !2486)
!2492 = !DILocation(line: 187, column: 6, scope: !1175, inlinedAt: !2486)
!2493 = !DILocation(line: 187, column: 17, scope: !1175, inlinedAt: !2486)
!2494 = !DILocation(line: 188, column: 6, scope: !1175, inlinedAt: !2486)
!2495 = !DILocation(line: 188, column: 18, scope: !1175, inlinedAt: !2486)
!2496 = !DILocation(line: 1032, column: 10, scope: !2424, inlinedAt: !2481)
!2497 = !DILocation(line: 1033, column: 1, scope: !2424, inlinedAt: !2481)
!2498 = !DILocation(line: 1039, column: 3, scope: !2470)
!2499 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !107, file: !107, line: 1043, type: !2500, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!6, !41, !41, !41, !145}
!2502 = !{!2503, !2504, !2505, !2506}
!2503 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2499, file: !107, line: 1043, type: !41)
!2504 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2499, file: !107, line: 1043, type: !41)
!2505 = !DILocalVariable(name: "arg", arg: 3, scope: !2499, file: !107, line: 1044, type: !41)
!2506 = !DILocalVariable(name: "argsize", arg: 4, scope: !2499, file: !107, line: 1044, type: !145)
!2507 = !DILocation(line: 0, scope: !2499)
!2508 = !DILocation(line: 0, scope: !2424, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 1046, column: 10, scope: !2499)
!2510 = !DILocation(line: 1030, column: 3, scope: !2424, inlinedAt: !2509)
!2511 = !DILocation(line: 1030, column: 26, scope: !2424, inlinedAt: !2509)
!2512 = !DILocation(line: 1030, column: 30, scope: !2424, inlinedAt: !2509)
!2513 = !DILocation(line: 0, scope: !1175, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 1031, column: 3, scope: !2424, inlinedAt: !2509)
!2515 = !DILocation(line: 184, column: 6, scope: !1175, inlinedAt: !2514)
!2516 = !DILocation(line: 184, column: 12, scope: !1175, inlinedAt: !2514)
!2517 = !DILocation(line: 185, column: 8, scope: !1189, inlinedAt: !2514)
!2518 = !DILocation(line: 185, column: 19, scope: !1189, inlinedAt: !2514)
!2519 = !DILocation(line: 186, column: 5, scope: !1189, inlinedAt: !2514)
!2520 = !DILocation(line: 187, column: 6, scope: !1175, inlinedAt: !2514)
!2521 = !DILocation(line: 187, column: 17, scope: !1175, inlinedAt: !2514)
!2522 = !DILocation(line: 188, column: 6, scope: !1175, inlinedAt: !2514)
!2523 = !DILocation(line: 188, column: 18, scope: !1175, inlinedAt: !2514)
!2524 = !DILocation(line: 1032, column: 10, scope: !2424, inlinedAt: !2509)
!2525 = !DILocation(line: 1033, column: 1, scope: !2424, inlinedAt: !2509)
!2526 = !DILocation(line: 1046, column: 3, scope: !2499)
!2527 = distinct !DISubprogram(name: "quote_n_mem", scope: !107, file: !107, line: 1061, type: !2528, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!41, !16, !41, !145}
!2530 = !{!2531, !2532, !2533}
!2531 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !107, line: 1061, type: !16)
!2532 = !DILocalVariable(name: "arg", arg: 2, scope: !2527, file: !107, line: 1061, type: !41)
!2533 = !DILocalVariable(name: "argsize", arg: 3, scope: !2527, file: !107, line: 1061, type: !145)
!2534 = !DILocation(line: 0, scope: !2527)
!2535 = !DILocation(line: 1063, column: 10, scope: !2527)
!2536 = !DILocation(line: 1063, column: 3, scope: !2527)
!2537 = distinct !DISubprogram(name: "quote_mem", scope: !107, file: !107, line: 1067, type: !2538, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!41, !41, !145}
!2540 = !{!2541, !2542}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !107, line: 1067, type: !41)
!2542 = !DILocalVariable(name: "argsize", arg: 2, scope: !2537, file: !107, line: 1067, type: !145)
!2543 = !DILocation(line: 0, scope: !2537)
!2544 = !DILocation(line: 0, scope: !2527, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 1069, column: 10, scope: !2537)
!2546 = !DILocation(line: 1063, column: 10, scope: !2527, inlinedAt: !2545)
!2547 = !DILocation(line: 1069, column: 3, scope: !2537)
!2548 = distinct !DISubprogram(name: "quote_n", scope: !107, file: !107, line: 1073, type: !2549, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!41, !16, !41}
!2551 = !{!2552, !2553}
!2552 = !DILocalVariable(name: "n", arg: 1, scope: !2548, file: !107, line: 1073, type: !16)
!2553 = !DILocalVariable(name: "arg", arg: 2, scope: !2548, file: !107, line: 1073, type: !41)
!2554 = !DILocation(line: 0, scope: !2548)
!2555 = !DILocation(line: 0, scope: !2527, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 1075, column: 10, scope: !2548)
!2557 = !DILocation(line: 1063, column: 10, scope: !2527, inlinedAt: !2556)
!2558 = !DILocation(line: 1075, column: 3, scope: !2548)
!2559 = distinct !DISubprogram(name: "quote", scope: !107, file: !107, line: 1079, type: !2560, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !106, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!41, !41}
!2562 = !{!2563}
!2563 = !DILocalVariable(name: "arg", arg: 1, scope: !2559, file: !107, line: 1079, type: !41)
!2564 = !DILocation(line: 0, scope: !2559)
!2565 = !DILocation(line: 0, scope: !2548, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1081, column: 10, scope: !2559)
!2567 = !DILocation(line: 0, scope: !2527, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 1075, column: 10, scope: !2548, inlinedAt: !2566)
!2569 = !DILocation(line: 1063, column: 10, scope: !2527, inlinedAt: !2568)
!2570 = !DILocation(line: 1081, column: 3, scope: !2559)
!2571 = distinct !DISubprogram(name: "version_etc_arn", scope: !196, file: !196, line: 61, type: !2572, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2610)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{null, !2574, !41, !41, !41, !2609, !145}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2576, line: 7, baseType: !2577)
!2576 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !724, line: 49, size: 1728, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2577, file: !724, line: 51, baseType: !16, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2577, file: !724, line: 54, baseType: !6, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2577, file: !724, line: 55, baseType: !6, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2577, file: !724, line: 56, baseType: !6, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2577, file: !724, line: 57, baseType: !6, size: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2577, file: !724, line: 58, baseType: !6, size: 64, offset: 320)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2577, file: !724, line: 59, baseType: !6, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2577, file: !724, line: 60, baseType: !6, size: 64, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2577, file: !724, line: 61, baseType: !6, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2577, file: !724, line: 64, baseType: !6, size: 64, offset: 576)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2577, file: !724, line: 65, baseType: !6, size: 64, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2577, file: !724, line: 66, baseType: !6, size: 64, offset: 704)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2577, file: !724, line: 68, baseType: !739, size: 64, offset: 768)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2577, file: !724, line: 70, baseType: !2593, size: 64, offset: 832)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2577, file: !724, line: 72, baseType: !16, size: 32, offset: 896)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2577, file: !724, line: 73, baseType: !16, size: 32, offset: 928)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2577, file: !724, line: 74, baseType: !745, size: 64, offset: 960)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2577, file: !724, line: 77, baseType: !144, size: 16, offset: 1024)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2577, file: !724, line: 78, baseType: !750, size: 8, offset: 1040)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2577, file: !724, line: 79, baseType: !752, size: 8, offset: 1048)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2577, file: !724, line: 81, baseType: !756, size: 64, offset: 1088)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2577, file: !724, line: 89, baseType: !759, size: 64, offset: 1152)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2577, file: !724, line: 91, baseType: !761, size: 64, offset: 1216)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2577, file: !724, line: 92, baseType: !764, size: 64, offset: 1280)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2577, file: !724, line: 93, baseType: !2593, size: 64, offset: 1344)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2577, file: !724, line: 94, baseType: !8, size: 64, offset: 1408)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2577, file: !724, line: 95, baseType: !145, size: 64, offset: 1472)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2577, file: !724, line: 96, baseType: !16, size: 32, offset: 1536)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2577, file: !724, line: 98, baseType: !771, size: 160, offset: 1568)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!2610 = !{!2611, !2612, !2613, !2614, !2615, !2616}
!2611 = !DILocalVariable(name: "stream", arg: 1, scope: !2571, file: !196, line: 61, type: !2574)
!2612 = !DILocalVariable(name: "command_name", arg: 2, scope: !2571, file: !196, line: 62, type: !41)
!2613 = !DILocalVariable(name: "package", arg: 3, scope: !2571, file: !196, line: 62, type: !41)
!2614 = !DILocalVariable(name: "version", arg: 4, scope: !2571, file: !196, line: 63, type: !41)
!2615 = !DILocalVariable(name: "authors", arg: 5, scope: !2571, file: !196, line: 64, type: !2609)
!2616 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2571, file: !196, line: 64, type: !145)
!2617 = !DILocation(line: 0, scope: !2571)
!2618 = !DILocation(line: 66, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2571, file: !196, line: 66, column: 7)
!2620 = !DILocation(line: 66, column: 7, scope: !2571)
!2621 = !DILocation(line: 67, column: 5, scope: !2619)
!2622 = !DILocation(line: 69, column: 5, scope: !2619)
!2623 = !DILocation(line: 83, column: 3, scope: !2571)
!2624 = !DILocation(line: 85, column: 3, scope: !2571)
!2625 = !DILocation(line: 88, column: 3, scope: !2571)
!2626 = !DILocation(line: 95, column: 3, scope: !2571)
!2627 = !DILocation(line: 97, column: 3, scope: !2571)
!2628 = !DILocation(line: 105, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2571, file: !196, line: 98, column: 5)
!2630 = !DILocation(line: 106, column: 7, scope: !2629)
!2631 = !DILocation(line: 109, column: 7, scope: !2629)
!2632 = !DILocation(line: 110, column: 7, scope: !2629)
!2633 = !DILocation(line: 113, column: 7, scope: !2629)
!2634 = !DILocation(line: 115, column: 7, scope: !2629)
!2635 = !DILocation(line: 120, column: 7, scope: !2629)
!2636 = !DILocation(line: 122, column: 7, scope: !2629)
!2637 = !DILocation(line: 127, column: 7, scope: !2629)
!2638 = !DILocation(line: 129, column: 7, scope: !2629)
!2639 = !DILocation(line: 134, column: 7, scope: !2629)
!2640 = !DILocation(line: 137, column: 7, scope: !2629)
!2641 = !DILocation(line: 142, column: 7, scope: !2629)
!2642 = !DILocation(line: 145, column: 7, scope: !2629)
!2643 = !DILocation(line: 150, column: 7, scope: !2629)
!2644 = !DILocation(line: 154, column: 7, scope: !2629)
!2645 = !DILocation(line: 159, column: 7, scope: !2629)
!2646 = !DILocation(line: 163, column: 7, scope: !2629)
!2647 = !DILocation(line: 170, column: 7, scope: !2629)
!2648 = !DILocation(line: 174, column: 7, scope: !2629)
!2649 = !DILocation(line: 176, column: 1, scope: !2571)
!2650 = distinct !DISubprogram(name: "version_etc_ar", scope: !196, file: !196, line: 183, type: !2651, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !2574, !41, !41, !41, !2609}
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659}
!2654 = !DILocalVariable(name: "stream", arg: 1, scope: !2650, file: !196, line: 183, type: !2574)
!2655 = !DILocalVariable(name: "command_name", arg: 2, scope: !2650, file: !196, line: 184, type: !41)
!2656 = !DILocalVariable(name: "package", arg: 3, scope: !2650, file: !196, line: 184, type: !41)
!2657 = !DILocalVariable(name: "version", arg: 4, scope: !2650, file: !196, line: 185, type: !41)
!2658 = !DILocalVariable(name: "authors", arg: 5, scope: !2650, file: !196, line: 185, type: !2609)
!2659 = !DILocalVariable(name: "n_authors", scope: !2650, file: !196, line: 187, type: !145)
!2660 = !DILocation(line: 0, scope: !2650)
!2661 = !DILocation(line: 189, column: 8, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2650, file: !196, line: 189, column: 3)
!2663 = !DILocation(line: 0, scope: !2662)
!2664 = !DILocation(line: 189, column: 23, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !196, line: 189, column: 3)
!2666 = !DILocation(line: 189, column: 3, scope: !2662)
!2667 = !DILocation(line: 189, column: 52, scope: !2665)
!2668 = distinct !{!2668, !2666, !2669, !694}
!2669 = !DILocation(line: 190, column: 5, scope: !2662)
!2670 = !DILocation(line: 191, column: 3, scope: !2650)
!2671 = !DILocation(line: 192, column: 1, scope: !2650)
!2672 = distinct !DISubprogram(name: "version_etc_va", scope: !196, file: !196, line: 199, type: !2673, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2682)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !2574, !41, !41, !41, !2675}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2681}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2676, file: !196, line: 192, baseType: !22, size: 32)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2676, file: !196, line: 192, baseType: !22, size: 32, offset: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2676, file: !196, line: 192, baseType: !8, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2676, file: !196, line: 192, baseType: !8, size: 64, offset: 128)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2683 = !DILocalVariable(name: "stream", arg: 1, scope: !2672, file: !196, line: 199, type: !2574)
!2684 = !DILocalVariable(name: "command_name", arg: 2, scope: !2672, file: !196, line: 200, type: !41)
!2685 = !DILocalVariable(name: "package", arg: 3, scope: !2672, file: !196, line: 200, type: !41)
!2686 = !DILocalVariable(name: "version", arg: 4, scope: !2672, file: !196, line: 201, type: !41)
!2687 = !DILocalVariable(name: "authors", arg: 5, scope: !2672, file: !196, line: 201, type: !2675)
!2688 = !DILocalVariable(name: "n_authors", scope: !2672, file: !196, line: 203, type: !145)
!2689 = !DILocalVariable(name: "authtab", scope: !2672, file: !196, line: 204, type: !2690)
!2690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 640, elements: !153)
!2691 = !DILocation(line: 0, scope: !2672)
!2692 = !DILocation(line: 204, column: 3, scope: !2672)
!2693 = !DILocation(line: 204, column: 15, scope: !2672)
!2694 = !DILocation(line: 208, column: 35, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !196, line: 206, column: 3)
!2696 = distinct !DILexicalBlock(scope: !2672, file: !196, line: 206, column: 3)
!2697 = !DILocation(line: 208, column: 14, scope: !2695)
!2698 = !DILocation(line: 208, column: 33, scope: !2695)
!2699 = !DILocation(line: 208, column: 67, scope: !2695)
!2700 = !DILocation(line: 206, column: 3, scope: !2696)
!2701 = !DILocation(line: 0, scope: !2696)
!2702 = !DILocation(line: 211, column: 3, scope: !2672)
!2703 = !DILocation(line: 213, column: 1, scope: !2672)
!2704 = distinct !DISubprogram(name: "version_etc", scope: !196, file: !196, line: 230, type: !2705, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{null, !2574, !41, !41, !41, null}
!2707 = !{!2708, !2709, !2710, !2711, !2712}
!2708 = !DILocalVariable(name: "stream", arg: 1, scope: !2704, file: !196, line: 230, type: !2574)
!2709 = !DILocalVariable(name: "command_name", arg: 2, scope: !2704, file: !196, line: 231, type: !41)
!2710 = !DILocalVariable(name: "package", arg: 3, scope: !2704, file: !196, line: 231, type: !41)
!2711 = !DILocalVariable(name: "version", arg: 4, scope: !2704, file: !196, line: 232, type: !41)
!2712 = !DILocalVariable(name: "authors", scope: !2704, file: !196, line: 234, type: !2713)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !719, line: 52, baseType: !2714)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2715, line: 32, baseType: !2716)
!2715 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !196, baseType: !2717)
!2717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2676, size: 192, elements: !753)
!2718 = !DILocation(line: 0, scope: !2704)
!2719 = !DILocation(line: 234, column: 3, scope: !2704)
!2720 = !DILocation(line: 234, column: 11, scope: !2704)
!2721 = !DILocation(line: 236, column: 3, scope: !2704)
!2722 = !DILocation(line: 237, column: 3, scope: !2704)
!2723 = !DILocation(line: 238, column: 3, scope: !2704)
!2724 = !DILocation(line: 239, column: 1, scope: !2704)
!2725 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !196, file: !196, line: 242, type: !995, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !4)
!2726 = !DILocation(line: 244, column: 3, scope: !2725)
!2727 = !DILocation(line: 249, column: 3, scope: !2725)
!2728 = !DILocation(line: 255, column: 3, scope: !2725)
!2729 = !DILocation(line: 260, column: 3, scope: !2725)
!2730 = !DILocation(line: 262, column: 1, scope: !2725)
!2731 = distinct !DISubprogram(name: "xnmalloc", scope: !206, file: !206, line: 99, type: !2732, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!8, !145, !145}
!2734 = !{!2735, !2736}
!2735 = !DILocalVariable(name: "n", arg: 1, scope: !2731, file: !206, line: 99, type: !145)
!2736 = !DILocalVariable(name: "s", arg: 2, scope: !2731, file: !206, line: 99, type: !145)
!2737 = !DILocation(line: 0, scope: !2731)
!2738 = !DILocation(line: 101, column: 7, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2731, file: !206, line: 101, column: 7)
!2740 = !DILocation(line: 101, column: 7, scope: !2731)
!2741 = !DILocation(line: 102, column: 5, scope: !2739)
!2742 = !DILocation(line: 103, column: 21, scope: !2731)
!2743 = !DILocalVariable(name: "n", arg: 1, scope: !2744, file: !203, line: 39, type: !145)
!2744 = distinct !DISubprogram(name: "xmalloc", scope: !203, file: !203, line: 39, type: !2745, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2747)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!8, !145}
!2747 = !{!2743, !2748}
!2748 = !DILocalVariable(name: "p", scope: !2744, file: !203, line: 41, type: !8)
!2749 = !DILocation(line: 0, scope: !2744, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 103, column: 10, scope: !2731)
!2751 = !DILocation(line: 41, column: 13, scope: !2744, inlinedAt: !2750)
!2752 = !DILocation(line: 42, column: 8, scope: !2753, inlinedAt: !2750)
!2753 = distinct !DILexicalBlock(scope: !2744, file: !203, line: 42, column: 7)
!2754 = !DILocation(line: 42, column: 10, scope: !2753, inlinedAt: !2750)
!2755 = !DILocation(line: 43, column: 5, scope: !2753, inlinedAt: !2750)
!2756 = !DILocation(line: 103, column: 3, scope: !2731)
!2757 = !DILocation(line: 0, scope: !2744)
!2758 = !DILocation(line: 41, column: 13, scope: !2744)
!2759 = !DILocation(line: 42, column: 8, scope: !2753)
!2760 = !DILocation(line: 42, column: 10, scope: !2753)
!2761 = !DILocation(line: 43, column: 5, scope: !2753)
!2762 = !DILocation(line: 44, column: 3, scope: !2744)
!2763 = distinct !DISubprogram(name: "xnrealloc", scope: !206, file: !206, line: 112, type: !2764, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!8, !8, !145, !145}
!2766 = !{!2767, !2768, !2769}
!2767 = !DILocalVariable(name: "p", arg: 1, scope: !2763, file: !206, line: 112, type: !8)
!2768 = !DILocalVariable(name: "n", arg: 2, scope: !2763, file: !206, line: 112, type: !145)
!2769 = !DILocalVariable(name: "s", arg: 3, scope: !2763, file: !206, line: 112, type: !145)
!2770 = !DILocation(line: 0, scope: !2763)
!2771 = !DILocation(line: 114, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2763, file: !206, line: 114, column: 7)
!2773 = !DILocation(line: 114, column: 7, scope: !2763)
!2774 = !DILocation(line: 115, column: 5, scope: !2772)
!2775 = !DILocation(line: 116, column: 25, scope: !2763)
!2776 = !DILocalVariable(name: "p", arg: 1, scope: !2777, file: !203, line: 51, type: !8)
!2777 = distinct !DISubprogram(name: "xrealloc", scope: !203, file: !203, line: 51, type: !2778, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!8, !8, !145}
!2780 = !{!2776, !2781}
!2781 = !DILocalVariable(name: "n", arg: 2, scope: !2777, file: !203, line: 51, type: !145)
!2782 = !DILocation(line: 0, scope: !2777, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 116, column: 10, scope: !2763)
!2784 = !DILocation(line: 53, column: 8, scope: !2785, inlinedAt: !2783)
!2785 = distinct !DILexicalBlock(scope: !2777, file: !203, line: 53, column: 7)
!2786 = !DILocation(line: 53, column: 10, scope: !2785, inlinedAt: !2783)
!2787 = !DILocation(line: 57, column: 7, scope: !2788, inlinedAt: !2783)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !203, line: 54, column: 5)
!2789 = !DILocation(line: 58, column: 7, scope: !2788, inlinedAt: !2783)
!2790 = !DILocation(line: 61, column: 7, scope: !2777, inlinedAt: !2783)
!2791 = !DILocation(line: 62, column: 8, scope: !2792, inlinedAt: !2783)
!2792 = distinct !DILexicalBlock(scope: !2777, file: !203, line: 62, column: 7)
!2793 = !DILocation(line: 62, column: 10, scope: !2792, inlinedAt: !2783)
!2794 = !DILocation(line: 63, column: 5, scope: !2792, inlinedAt: !2783)
!2795 = !DILocation(line: 116, column: 3, scope: !2763)
!2796 = !DILocation(line: 0, scope: !2777)
!2797 = !DILocation(line: 53, column: 8, scope: !2785)
!2798 = !DILocation(line: 53, column: 10, scope: !2785)
!2799 = !DILocation(line: 57, column: 7, scope: !2788)
!2800 = !DILocation(line: 58, column: 7, scope: !2788)
!2801 = !DILocation(line: 61, column: 7, scope: !2777)
!2802 = !DILocation(line: 62, column: 8, scope: !2792)
!2803 = !DILocation(line: 62, column: 10, scope: !2792)
!2804 = !DILocation(line: 63, column: 5, scope: !2792)
!2805 = !DILocation(line: 65, column: 1, scope: !2777)
!2806 = !DILocation(line: 0, scope: !207)
!2807 = !DILocation(line: 176, column: 14, scope: !207)
!2808 = !DILocation(line: 178, column: 9, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !207, file: !206, line: 178, column: 7)
!2810 = !DILocation(line: 178, column: 7, scope: !207)
!2811 = !DILocation(line: 180, column: 13, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !206, line: 180, column: 11)
!2813 = distinct !DILexicalBlock(scope: !2809, file: !206, line: 179, column: 5)
!2814 = !DILocation(line: 180, column: 11, scope: !2813)
!2815 = !DILocation(line: 188, column: 30, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2812, file: !206, line: 181, column: 9)
!2817 = !DILocation(line: 189, column: 16, scope: !2816)
!2818 = !DILocation(line: 189, column: 13, scope: !2816)
!2819 = !DILocation(line: 190, column: 9, scope: !2816)
!2820 = !DILocation(line: 191, column: 11, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2813, file: !206, line: 191, column: 11)
!2822 = !DILocation(line: 191, column: 11, scope: !2813)
!2823 = !DILocation(line: 206, column: 7, scope: !207)
!2824 = !DILocation(line: 207, column: 25, scope: !207)
!2825 = !DILocation(line: 0, scope: !2777, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 207, column: 10, scope: !207)
!2827 = !DILocation(line: 53, column: 10, scope: !2785, inlinedAt: !2826)
!2828 = !DILocation(line: 192, column: 9, scope: !2821)
!2829 = !DILocation(line: 200, column: 69, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !206, line: 200, column: 11)
!2831 = distinct !DILexicalBlock(scope: !2809, file: !206, line: 195, column: 5)
!2832 = !DILocation(line: 201, column: 11, scope: !2830)
!2833 = !DILocation(line: 200, column: 11, scope: !2831)
!2834 = !DILocation(line: 202, column: 9, scope: !2830)
!2835 = !DILocation(line: 203, column: 14, scope: !2831)
!2836 = !DILocation(line: 203, column: 18, scope: !2831)
!2837 = !DILocation(line: 203, column: 9, scope: !2831)
!2838 = !DILocation(line: 53, column: 8, scope: !2785, inlinedAt: !2826)
!2839 = !DILocation(line: 57, column: 7, scope: !2788, inlinedAt: !2826)
!2840 = !DILocation(line: 58, column: 7, scope: !2788, inlinedAt: !2826)
!2841 = !DILocation(line: 61, column: 7, scope: !2777, inlinedAt: !2826)
!2842 = !DILocation(line: 62, column: 8, scope: !2792, inlinedAt: !2826)
!2843 = !DILocation(line: 62, column: 10, scope: !2792, inlinedAt: !2826)
!2844 = !DILocation(line: 63, column: 5, scope: !2792, inlinedAt: !2826)
!2845 = !DILocation(line: 207, column: 3, scope: !207)
!2846 = distinct !DISubprogram(name: "xcharalloc", scope: !206, file: !206, line: 216, type: !1983, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2847)
!2847 = !{!2848}
!2848 = !DILocalVariable(name: "n", arg: 1, scope: !2846, file: !206, line: 216, type: !145)
!2849 = !DILocation(line: 0, scope: !2846)
!2850 = !DILocation(line: 0, scope: !2744, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 218, column: 10, scope: !2846)
!2852 = !DILocation(line: 41, column: 13, scope: !2744, inlinedAt: !2851)
!2853 = !DILocation(line: 42, column: 8, scope: !2753, inlinedAt: !2851)
!2854 = !DILocation(line: 42, column: 10, scope: !2753, inlinedAt: !2851)
!2855 = !DILocation(line: 43, column: 5, scope: !2753, inlinedAt: !2851)
!2856 = !DILocation(line: 218, column: 3, scope: !2846)
!2857 = distinct !DISubprogram(name: "x2realloc", scope: !203, file: !203, line: 74, type: !2858, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2860)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!8, !8, !210}
!2860 = !{!2861, !2862}
!2861 = !DILocalVariable(name: "p", arg: 1, scope: !2857, file: !203, line: 74, type: !8)
!2862 = !DILocalVariable(name: "pn", arg: 2, scope: !2857, file: !203, line: 74, type: !210)
!2863 = !DILocation(line: 0, scope: !2857)
!2864 = !DILocation(line: 0, scope: !207, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 76, column: 10, scope: !2857)
!2866 = !DILocation(line: 176, column: 14, scope: !207, inlinedAt: !2865)
!2867 = !DILocation(line: 178, column: 9, scope: !2809, inlinedAt: !2865)
!2868 = !DILocation(line: 178, column: 7, scope: !207, inlinedAt: !2865)
!2869 = !DILocation(line: 180, column: 13, scope: !2812, inlinedAt: !2865)
!2870 = !DILocation(line: 180, column: 11, scope: !2813, inlinedAt: !2865)
!2871 = !DILocation(line: 191, column: 11, scope: !2821, inlinedAt: !2865)
!2872 = !DILocation(line: 191, column: 11, scope: !2813, inlinedAt: !2865)
!2873 = !DILocation(line: 192, column: 9, scope: !2821, inlinedAt: !2865)
!2874 = !DILocation(line: 201, column: 11, scope: !2830, inlinedAt: !2865)
!2875 = !DILocation(line: 200, column: 11, scope: !2831, inlinedAt: !2865)
!2876 = !DILocation(line: 202, column: 9, scope: !2830, inlinedAt: !2865)
!2877 = !DILocation(line: 203, column: 14, scope: !2831, inlinedAt: !2865)
!2878 = !DILocation(line: 203, column: 18, scope: !2831, inlinedAt: !2865)
!2879 = !DILocation(line: 203, column: 9, scope: !2831, inlinedAt: !2865)
!2880 = !DILocation(line: 0, scope: !2777, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 207, column: 10, scope: !207, inlinedAt: !2865)
!2882 = !DILocation(line: 53, column: 10, scope: !2785, inlinedAt: !2881)
!2883 = !DILocation(line: 206, column: 7, scope: !207, inlinedAt: !2865)
!2884 = !DILocation(line: 61, column: 7, scope: !2777, inlinedAt: !2881)
!2885 = !DILocation(line: 62, column: 8, scope: !2792, inlinedAt: !2881)
!2886 = !DILocation(line: 62, column: 10, scope: !2792, inlinedAt: !2881)
!2887 = !DILocation(line: 63, column: 5, scope: !2792, inlinedAt: !2881)
!2888 = !DILocation(line: 76, column: 3, scope: !2857)
!2889 = distinct !DISubprogram(name: "xzalloc", scope: !203, file: !203, line: 84, type: !2745, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2890)
!2890 = !{!2891}
!2891 = !DILocalVariable(name: "n", arg: 1, scope: !2889, file: !203, line: 84, type: !145)
!2892 = !DILocation(line: 0, scope: !2889)
!2893 = !DILocalVariable(name: "n", arg: 1, scope: !2894, file: !203, line: 93, type: !145)
!2894 = distinct !DISubprogram(name: "xcalloc", scope: !203, file: !203, line: 93, type: !2732, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2895)
!2895 = !{!2893, !2896, !2897}
!2896 = !DILocalVariable(name: "s", arg: 2, scope: !2894, file: !203, line: 93, type: !145)
!2897 = !DILocalVariable(name: "p", scope: !2894, file: !203, line: 95, type: !8)
!2898 = !DILocation(line: 0, scope: !2894, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 86, column: 10, scope: !2889)
!2900 = !DILocation(line: 100, column: 7, scope: !2901, inlinedAt: !2899)
!2901 = distinct !DILexicalBlock(scope: !2894, file: !203, line: 100, column: 7)
!2902 = !DILocation(line: 101, column: 7, scope: !2901, inlinedAt: !2899)
!2903 = !DILocation(line: 101, column: 18, scope: !2901, inlinedAt: !2899)
!2904 = !DILocation(line: 101, column: 16, scope: !2901, inlinedAt: !2899)
!2905 = !DILocation(line: 100, column: 7, scope: !2894, inlinedAt: !2899)
!2906 = !DILocation(line: 102, column: 5, scope: !2901, inlinedAt: !2899)
!2907 = !DILocation(line: 86, column: 3, scope: !2889)
!2908 = !DILocation(line: 0, scope: !2894)
!2909 = !DILocation(line: 100, column: 7, scope: !2901)
!2910 = !DILocation(line: 101, column: 7, scope: !2901)
!2911 = !DILocation(line: 101, column: 18, scope: !2901)
!2912 = !DILocation(line: 101, column: 16, scope: !2901)
!2913 = !DILocation(line: 100, column: 7, scope: !2894)
!2914 = !DILocation(line: 102, column: 5, scope: !2901)
!2915 = !DILocation(line: 103, column: 3, scope: !2894)
!2916 = distinct !DISubprogram(name: "xmemdup", scope: !203, file: !203, line: 111, type: !2917, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2921)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!8, !2919, !145}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "p", arg: 1, scope: !2916, file: !203, line: 111, type: !2919)
!2923 = !DILocalVariable(name: "s", arg: 2, scope: !2916, file: !203, line: 111, type: !145)
!2924 = !DILocation(line: 0, scope: !2916)
!2925 = !DILocation(line: 0, scope: !2744, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 113, column: 18, scope: !2916)
!2927 = !DILocation(line: 41, column: 13, scope: !2744, inlinedAt: !2926)
!2928 = !DILocation(line: 42, column: 8, scope: !2753, inlinedAt: !2926)
!2929 = !DILocation(line: 42, column: 10, scope: !2753, inlinedAt: !2926)
!2930 = !DILocation(line: 43, column: 5, scope: !2753, inlinedAt: !2926)
!2931 = !DILocalVariable(name: "__dest", arg: 1, scope: !2932, file: !1510, line: 26, type: !2935)
!2932 = distinct !DISubprogram(name: "memcpy", scope: !1510, file: !1510, line: 26, type: !2933, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2937)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!8, !2935, !2936, !145}
!2935 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!2936 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2919)
!2937 = !{!2931, !2938, !2939}
!2938 = !DILocalVariable(name: "__src", arg: 2, scope: !2932, file: !1510, line: 26, type: !2936)
!2939 = !DILocalVariable(name: "__len", arg: 3, scope: !2932, file: !1510, line: 26, type: !145)
!2940 = !DILocation(line: 0, scope: !2932, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 113, column: 10, scope: !2916)
!2942 = !DILocation(line: 29, column: 10, scope: !2932, inlinedAt: !2941)
!2943 = !DILocation(line: 113, column: 3, scope: !2916)
!2944 = distinct !DISubprogram(name: "xstrdup", scope: !203, file: !203, line: 119, type: !988, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !2945)
!2945 = !{!2946}
!2946 = !DILocalVariable(name: "string", arg: 1, scope: !2944, file: !203, line: 119, type: !41)
!2947 = !DILocation(line: 0, scope: !2944)
!2948 = !DILocation(line: 121, column: 27, scope: !2944)
!2949 = !DILocation(line: 121, column: 43, scope: !2944)
!2950 = !DILocation(line: 0, scope: !2916, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 121, column: 10, scope: !2944)
!2952 = !DILocation(line: 0, scope: !2744, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 113, column: 18, scope: !2916, inlinedAt: !2951)
!2954 = !DILocation(line: 41, column: 13, scope: !2744, inlinedAt: !2953)
!2955 = !DILocation(line: 42, column: 8, scope: !2753, inlinedAt: !2953)
!2956 = !DILocation(line: 42, column: 10, scope: !2753, inlinedAt: !2953)
!2957 = !DILocation(line: 43, column: 5, scope: !2753, inlinedAt: !2953)
!2958 = !DILocation(line: 0, scope: !2932, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 113, column: 10, scope: !2916, inlinedAt: !2951)
!2960 = !DILocation(line: 29, column: 10, scope: !2932, inlinedAt: !2959)
!2961 = !DILocation(line: 121, column: 3, scope: !2944)
!2962 = distinct !DISubprogram(name: "xalloc_die", scope: !220, file: !220, line: 32, type: !995, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !219, retainedNodes: !4)
!2963 = !DILocation(line: 34, column: 10, scope: !2962)
!2964 = !DILocation(line: 34, column: 33, scope: !2962)
!2965 = !DILocation(line: 34, column: 3, scope: !2962)
!2966 = !DILocation(line: 40, column: 3, scope: !2962)
!2967 = distinct !DISubprogram(name: "rpl_calloc", scope: !222, file: !222, line: 42, type: !2732, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2968)
!2968 = !{!2969, !2970, !2971, !2972}
!2969 = !DILocalVariable(name: "n", arg: 1, scope: !2967, file: !222, line: 42, type: !145)
!2970 = !DILocalVariable(name: "s", arg: 2, scope: !2967, file: !222, line: 42, type: !145)
!2971 = !DILocalVariable(name: "result", scope: !2967, file: !222, line: 44, type: !8)
!2972 = !DILocalVariable(name: "bytes", scope: !2973, file: !222, line: 56, type: !145)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !222, line: 53, column: 5)
!2974 = distinct !DILexicalBlock(scope: !2967, file: !222, line: 47, column: 7)
!2975 = !DILocation(line: 0, scope: !2967)
!2976 = !DILocation(line: 47, column: 9, scope: !2974)
!2977 = !DILocation(line: 47, column: 14, scope: !2974)
!2978 = !DILocation(line: 0, scope: !2973)
!2979 = !DILocation(line: 57, column: 21, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2973, file: !222, line: 57, column: 11)
!2981 = !DILocation(line: 57, column: 11, scope: !2973)
!2982 = !DILocation(line: 59, column: 11, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2980, file: !222, line: 58, column: 9)
!2984 = !DILocation(line: 59, column: 17, scope: !2983)
!2985 = !DILocation(line: 65, column: 12, scope: !2967)
!2986 = !DILocation(line: 72, column: 3, scope: !2967)
!2987 = !DILocation(line: 73, column: 1, scope: !2967)
!2988 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !224, file: !224, line: 86, type: !2989, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !3003)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!145, !2991, !41, !145, !2992}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1264, line: 6, baseType: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1266, line: 21, baseType: !2995)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1266, line: 13, size: 64, elements: !2996)
!2996 = !{!2997, !2998}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2995, file: !1266, line: 15, baseType: !16, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2995, file: !1266, line: 20, baseType: !2999, size: 32, offset: 32)
!2999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2995, file: !1266, line: 16, size: 32, elements: !3000)
!3000 = !{!3001, !3002}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2999, file: !1266, line: 18, baseType: !22, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2999, file: !1266, line: 19, baseType: !1275, size: 32)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010}
!3004 = !DILocalVariable(name: "pwc", arg: 1, scope: !2988, file: !224, line: 86, type: !2991)
!3005 = !DILocalVariable(name: "s", arg: 2, scope: !2988, file: !224, line: 86, type: !41)
!3006 = !DILocalVariable(name: "n", arg: 3, scope: !2988, file: !224, line: 86, type: !145)
!3007 = !DILocalVariable(name: "ps", arg: 4, scope: !2988, file: !224, line: 86, type: !2992)
!3008 = !DILocalVariable(name: "ret", scope: !2988, file: !224, line: 88, type: !145)
!3009 = !DILocalVariable(name: "wc", scope: !2988, file: !224, line: 89, type: !1280)
!3010 = !DILocalVariable(name: "uc", scope: !3011, file: !224, line: 156, type: !9)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !224, line: 155, column: 5)
!3012 = distinct !DILexicalBlock(scope: !2988, file: !224, line: 154, column: 7)
!3013 = !DILocation(line: 0, scope: !2988)
!3014 = !DILocation(line: 89, column: 3, scope: !2988)
!3015 = !DILocation(line: 105, column: 9, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2988, file: !224, line: 105, column: 7)
!3017 = !DILocation(line: 105, column: 7, scope: !2988)
!3018 = !DILocation(line: 145, column: 9, scope: !2988)
!3019 = !DILocation(line: 154, column: 19, scope: !3012)
!3020 = !DILocation(line: 154, column: 26, scope: !3012)
!3021 = !DILocation(line: 154, column: 41, scope: !3012)
!3022 = !DILocation(line: 154, column: 7, scope: !2988)
!3023 = !DILocation(line: 156, column: 26, scope: !3011)
!3024 = !DILocation(line: 0, scope: !3011)
!3025 = !DILocation(line: 157, column: 14, scope: !3011)
!3026 = !DILocation(line: 157, column: 12, scope: !3011)
!3027 = !DILocation(line: 163, column: 1, scope: !2988)
!3028 = !DISubprogram(name: "mbrtowc", scope: !1943, file: !1943, line: 296, type: !3029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!147, !59, !41, !147, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!3032 = distinct !DISubprogram(name: "close_stream", scope: !227, file: !227, line: 56, type: !3033, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !3069)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!16, !3035}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2576, line: 7, baseType: !3037)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !724, line: 49, size: 1728, elements: !3038)
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3037, file: !724, line: 51, baseType: !16, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3037, file: !724, line: 54, baseType: !6, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3037, file: !724, line: 55, baseType: !6, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3037, file: !724, line: 56, baseType: !6, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3037, file: !724, line: 57, baseType: !6, size: 64, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3037, file: !724, line: 58, baseType: !6, size: 64, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3037, file: !724, line: 59, baseType: !6, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3037, file: !724, line: 60, baseType: !6, size: 64, offset: 448)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3037, file: !724, line: 61, baseType: !6, size: 64, offset: 512)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3037, file: !724, line: 64, baseType: !6, size: 64, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3037, file: !724, line: 65, baseType: !6, size: 64, offset: 640)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3037, file: !724, line: 66, baseType: !6, size: 64, offset: 704)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3037, file: !724, line: 68, baseType: !739, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3037, file: !724, line: 70, baseType: !3053, size: 64, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3037, file: !724, line: 72, baseType: !16, size: 32, offset: 896)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3037, file: !724, line: 73, baseType: !16, size: 32, offset: 928)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3037, file: !724, line: 74, baseType: !745, size: 64, offset: 960)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3037, file: !724, line: 77, baseType: !144, size: 16, offset: 1024)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3037, file: !724, line: 78, baseType: !750, size: 8, offset: 1040)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3037, file: !724, line: 79, baseType: !752, size: 8, offset: 1048)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3037, file: !724, line: 81, baseType: !756, size: 64, offset: 1088)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3037, file: !724, line: 89, baseType: !759, size: 64, offset: 1152)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3037, file: !724, line: 91, baseType: !761, size: 64, offset: 1216)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3037, file: !724, line: 92, baseType: !764, size: 64, offset: 1280)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3037, file: !724, line: 93, baseType: !3053, size: 64, offset: 1344)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3037, file: !724, line: 94, baseType: !8, size: 64, offset: 1408)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3037, file: !724, line: 95, baseType: !145, size: 64, offset: 1472)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3037, file: !724, line: 96, baseType: !16, size: 32, offset: 1536)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3037, file: !724, line: 98, baseType: !771, size: 160, offset: 1568)
!3069 = !{!3070, !3071, !3073, !3074}
!3070 = !DILocalVariable(name: "stream", arg: 1, scope: !3032, file: !227, line: 56, type: !3035)
!3071 = !DILocalVariable(name: "some_pending", scope: !3032, file: !227, line: 58, type: !3072)
!3072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!3073 = !DILocalVariable(name: "prev_fail", scope: !3032, file: !227, line: 59, type: !3072)
!3074 = !DILocalVariable(name: "fclose_fail", scope: !3032, file: !227, line: 60, type: !3072)
!3075 = !DILocation(line: 0, scope: !3032)
!3076 = !DILocation(line: 58, column: 30, scope: !3032)
!3077 = !DILocalVariable(name: "__stream", arg: 1, scope: !3078, file: !864, line: 135, type: !3035)
!3078 = distinct !DISubprogram(name: "ferror_unlocked", scope: !864, file: !864, line: 135, type: !3033, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !3079)
!3079 = !{!3077}
!3080 = !DILocation(line: 0, scope: !3078, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 59, column: 27, scope: !3032)
!3082 = !DILocation(line: 137, column: 10, scope: !3078, inlinedAt: !3081)
!3083 = !{!872, !653, i64 0}
!3084 = !DILocation(line: 59, column: 43, scope: !3032)
!3085 = !DILocation(line: 60, column: 29, scope: !3032)
!3086 = !DILocation(line: 60, column: 45, scope: !3032)
!3087 = !DILocation(line: 70, column: 17, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3032, file: !227, line: 70, column: 7)
!3089 = !DILocation(line: 58, column: 50, scope: !3032)
!3090 = !DILocation(line: 70, column: 33, scope: !3088)
!3091 = !DILocation(line: 70, column: 53, scope: !3088)
!3092 = !DILocation(line: 70, column: 59, scope: !3088)
!3093 = !DILocation(line: 70, column: 7, scope: !3032)
!3094 = !DILocation(line: 72, column: 11, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3088, file: !227, line: 71, column: 5)
!3096 = !DILocation(line: 73, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3095, file: !227, line: 72, column: 11)
!3098 = !DILocation(line: 73, column: 15, scope: !3097)
!3099 = !DILocation(line: 78, column: 1, scope: !3032)
!3100 = distinct !DISubprogram(name: "hard_locale", scope: !229, file: !229, line: 27, type: !3101, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !228, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!70, !16}
!3103 = !{!3104, !3105}
!3104 = !DILocalVariable(name: "category", arg: 1, scope: !3100, file: !229, line: 27, type: !16)
!3105 = !DILocalVariable(name: "locale", scope: !3100, file: !229, line: 29, type: !3106)
!3106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2056, elements: !3107)
!3107 = !{!3108}
!3108 = !DISubrange(count: 257)
!3109 = !DILocation(line: 0, scope: !3100)
!3110 = !DILocation(line: 29, column: 3, scope: !3100)
!3111 = !DILocation(line: 29, column: 8, scope: !3100)
!3112 = !DILocation(line: 31, column: 7, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3100, file: !229, line: 31, column: 7)
!3114 = !DILocation(line: 31, column: 7, scope: !3100)
!3115 = !DILocation(line: 34, column: 12, scope: !3100)
!3116 = !DILocation(line: 34, column: 38, scope: !3100)
!3117 = !DILocation(line: 34, column: 41, scope: !3100)
!3118 = !DILocation(line: 34, column: 66, scope: !3100)
!3119 = !DILocation(line: 35, column: 1, scope: !3100)
!3120 = distinct !DISubprogram(name: "locale_charset", scope: !231, file: !231, line: 831, type: !3121, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !230, retainedNodes: !3123)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!41}
!3123 = !{!3124}
!3124 = !DILocalVariable(name: "codeset", scope: !3120, file: !231, line: 833, type: !41)
!3125 = !DILocation(line: 847, column: 13, scope: !3120)
!3126 = !DILocation(line: 0, scope: !3120)
!3127 = !DILocation(line: 911, column: 15, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3120, file: !231, line: 911, column: 7)
!3129 = !DILocation(line: 911, column: 7, scope: !3120)
!3130 = !DILocation(line: 1070, column: 13, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !231, line: 1070, column: 13)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !231, line: 1060, column: 7)
!3133 = distinct !DILexicalBlock(scope: !3120, file: !231, line: 1019, column: 3)
!3134 = !DILocation(line: 1070, column: 24, scope: !3131)
!3135 = !DILocation(line: 1070, column: 13, scope: !3132)
!3136 = !DILocation(line: 1158, column: 3, scope: !3120)
!3137 = !DISubprogram(name: "nl_langinfo", scope: !234, file: !234, line: 661, type: !3138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!6, !16}
!3140 = distinct !DISubprogram(name: "setlocale_null_r", scope: !620, file: !620, line: 269, type: !3141, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !3143)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!16, !16, !6, !145}
!3143 = !{!3144, !3145, !3146}
!3144 = !DILocalVariable(name: "category", arg: 1, scope: !3140, file: !620, line: 269, type: !16)
!3145 = !DILocalVariable(name: "buf", arg: 2, scope: !3140, file: !620, line: 269, type: !6)
!3146 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3140, file: !620, line: 269, type: !145)
!3147 = !DILocation(line: 0, scope: !3140)
!3148 = !DILocalVariable(name: "category", arg: 1, scope: !3149, file: !620, line: 91, type: !16)
!3149 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !620, file: !620, line: 91, type: !3141, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !3150)
!3150 = !{!3148, !3151, !3152, !3153, !3154}
!3151 = !DILocalVariable(name: "buf", arg: 2, scope: !3149, file: !620, line: 91, type: !6)
!3152 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3149, file: !620, line: 91, type: !145)
!3153 = !DILocalVariable(name: "result", scope: !3149, file: !620, line: 140, type: !41)
!3154 = !DILocalVariable(name: "length", scope: !3155, file: !620, line: 154, type: !145)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !620, line: 153, column: 5)
!3156 = distinct !DILexicalBlock(scope: !3149, file: !620, line: 142, column: 7)
!3157 = !DILocation(line: 0, scope: !3149, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 274, column: 10, scope: !3140)
!3159 = !DILocalVariable(name: "category", arg: 1, scope: !3160, file: !620, line: 60, type: !16)
!3160 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !620, file: !620, line: 60, type: !3161, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !3163)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!41, !16}
!3163 = !{!3159, !3164}
!3164 = !DILocalVariable(name: "result", scope: !3160, file: !620, line: 62, type: !41)
!3165 = !DILocation(line: 0, scope: !3160, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 140, column: 24, scope: !3149, inlinedAt: !3158)
!3167 = !DILocation(line: 62, column: 24, scope: !3160, inlinedAt: !3166)
!3168 = !DILocation(line: 142, column: 14, scope: !3156, inlinedAt: !3158)
!3169 = !DILocation(line: 142, column: 7, scope: !3149, inlinedAt: !3158)
!3170 = !DILocation(line: 145, column: 19, scope: !3171, inlinedAt: !3158)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !620, line: 145, column: 11)
!3172 = distinct !DILexicalBlock(scope: !3156, file: !620, line: 143, column: 5)
!3173 = !DILocation(line: 145, column: 11, scope: !3172, inlinedAt: !3158)
!3174 = !DILocation(line: 149, column: 16, scope: !3171, inlinedAt: !3158)
!3175 = !DILocation(line: 149, column: 9, scope: !3171, inlinedAt: !3158)
!3176 = !DILocation(line: 154, column: 23, scope: !3155, inlinedAt: !3158)
!3177 = !DILocation(line: 0, scope: !3155, inlinedAt: !3158)
!3178 = !DILocation(line: 155, column: 18, scope: !3179, inlinedAt: !3158)
!3179 = distinct !DILexicalBlock(scope: !3155, file: !620, line: 155, column: 11)
!3180 = !DILocation(line: 155, column: 11, scope: !3155, inlinedAt: !3158)
!3181 = !DILocation(line: 157, column: 39, scope: !3182, inlinedAt: !3158)
!3182 = distinct !DILexicalBlock(scope: !3179, file: !620, line: 156, column: 9)
!3183 = !DILocalVariable(name: "__dest", arg: 1, scope: !3184, file: !1510, line: 26, type: !2935)
!3184 = distinct !DISubprogram(name: "memcpy", scope: !1510, file: !1510, line: 26, type: !2933, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !3185)
!3185 = !{!3183, !3186, !3187}
!3186 = !DILocalVariable(name: "__src", arg: 2, scope: !3184, file: !1510, line: 26, type: !2936)
!3187 = !DILocalVariable(name: "__len", arg: 3, scope: !3184, file: !1510, line: 26, type: !145)
!3188 = !DILocation(line: 0, scope: !3184, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 157, column: 11, scope: !3182, inlinedAt: !3158)
!3190 = !DILocation(line: 29, column: 10, scope: !3184, inlinedAt: !3189)
!3191 = !DILocation(line: 158, column: 11, scope: !3182, inlinedAt: !3158)
!3192 = !DILocation(line: 162, column: 23, scope: !3193, inlinedAt: !3158)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !620, line: 162, column: 15)
!3194 = distinct !DILexicalBlock(scope: !3179, file: !620, line: 161, column: 9)
!3195 = !DILocation(line: 162, column: 15, scope: !3194, inlinedAt: !3158)
!3196 = !DILocation(line: 167, column: 44, scope: !3197, inlinedAt: !3158)
!3197 = distinct !DILexicalBlock(scope: !3193, file: !620, line: 163, column: 13)
!3198 = !DILocation(line: 0, scope: !3184, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 167, column: 15, scope: !3197, inlinedAt: !3158)
!3200 = !DILocation(line: 29, column: 10, scope: !3184, inlinedAt: !3199)
!3201 = !DILocation(line: 168, column: 15, scope: !3197, inlinedAt: !3158)
!3202 = !DILocation(line: 168, column: 32, scope: !3197, inlinedAt: !3158)
!3203 = !DILocation(line: 169, column: 13, scope: !3197, inlinedAt: !3158)
!3204 = !DILocation(line: 0, scope: !3156, inlinedAt: !3158)
!3205 = !DILocation(line: 274, column: 3, scope: !3140)
!3206 = distinct !DISubprogram(name: "setlocale_null", scope: !620, file: !620, line: 301, type: !3161, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !619, retainedNodes: !3207)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "category", arg: 1, scope: !3206, file: !620, line: 301, type: !16)
!3209 = !DILocation(line: 0, scope: !3206)
!3210 = !DILocation(line: 0, scope: !3160, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 304, column: 10, scope: !3206)
!3212 = !DILocation(line: 62, column: 24, scope: !3160, inlinedAt: !3211)
!3213 = !DILocation(line: 304, column: 3, scope: !3206)
!3214 = distinct !DISubprogram(name: "rpl_fclose", scope: !622, file: !622, line: 58, type: !3215, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !3251)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!16, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2576, line: 7, baseType: !3219)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !724, line: 49, size: 1728, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3219, file: !724, line: 51, baseType: !16, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3219, file: !724, line: 54, baseType: !6, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3219, file: !724, line: 55, baseType: !6, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3219, file: !724, line: 56, baseType: !6, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3219, file: !724, line: 57, baseType: !6, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3219, file: !724, line: 58, baseType: !6, size: 64, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3219, file: !724, line: 59, baseType: !6, size: 64, offset: 384)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3219, file: !724, line: 60, baseType: !6, size: 64, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3219, file: !724, line: 61, baseType: !6, size: 64, offset: 512)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3219, file: !724, line: 64, baseType: !6, size: 64, offset: 576)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3219, file: !724, line: 65, baseType: !6, size: 64, offset: 640)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3219, file: !724, line: 66, baseType: !6, size: 64, offset: 704)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3219, file: !724, line: 68, baseType: !739, size: 64, offset: 768)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3219, file: !724, line: 70, baseType: !3235, size: 64, offset: 832)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3219, file: !724, line: 72, baseType: !16, size: 32, offset: 896)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3219, file: !724, line: 73, baseType: !16, size: 32, offset: 928)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3219, file: !724, line: 74, baseType: !745, size: 64, offset: 960)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3219, file: !724, line: 77, baseType: !144, size: 16, offset: 1024)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3219, file: !724, line: 78, baseType: !750, size: 8, offset: 1040)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3219, file: !724, line: 79, baseType: !752, size: 8, offset: 1048)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3219, file: !724, line: 81, baseType: !756, size: 64, offset: 1088)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3219, file: !724, line: 89, baseType: !759, size: 64, offset: 1152)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3219, file: !724, line: 91, baseType: !761, size: 64, offset: 1216)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3219, file: !724, line: 92, baseType: !764, size: 64, offset: 1280)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3219, file: !724, line: 93, baseType: !3235, size: 64, offset: 1344)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3219, file: !724, line: 94, baseType: !8, size: 64, offset: 1408)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3219, file: !724, line: 95, baseType: !145, size: 64, offset: 1472)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3219, file: !724, line: 96, baseType: !16, size: 32, offset: 1536)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3219, file: !724, line: 98, baseType: !771, size: 160, offset: 1568)
!3251 = !{!3252, !3253, !3254, !3255}
!3252 = !DILocalVariable(name: "fp", arg: 1, scope: !3214, file: !622, line: 58, type: !3217)
!3253 = !DILocalVariable(name: "saved_errno", scope: !3214, file: !622, line: 60, type: !16)
!3254 = !DILocalVariable(name: "fd", scope: !3214, file: !622, line: 61, type: !16)
!3255 = !DILocalVariable(name: "result", scope: !3214, file: !622, line: 62, type: !16)
!3256 = !DILocation(line: 0, scope: !3214)
!3257 = !DILocation(line: 65, column: 8, scope: !3214)
!3258 = !DILocation(line: 66, column: 10, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3214, file: !622, line: 66, column: 7)
!3260 = !DILocation(line: 66, column: 7, scope: !3214)
!3261 = !DILocation(line: 67, column: 12, scope: !3259)
!3262 = !DILocation(line: 67, column: 5, scope: !3259)
!3263 = !DILocation(line: 72, column: 9, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3214, file: !622, line: 72, column: 7)
!3265 = !DILocation(line: 72, column: 23, scope: !3264)
!3266 = !DILocation(line: 72, column: 33, scope: !3264)
!3267 = !DILocation(line: 72, column: 26, scope: !3264)
!3268 = !DILocation(line: 72, column: 59, scope: !3264)
!3269 = !DILocation(line: 73, column: 7, scope: !3264)
!3270 = !DILocation(line: 73, column: 10, scope: !3264)
!3271 = !DILocation(line: 72, column: 7, scope: !3214)
!3272 = !DILocation(line: 100, column: 12, scope: !3214)
!3273 = !DILocation(line: 105, column: 7, scope: !3214)
!3274 = !DILocation(line: 74, column: 19, scope: !3264)
!3275 = !DILocation(line: 105, column: 19, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3214, file: !622, line: 105, column: 7)
!3277 = !DILocation(line: 107, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3276, file: !622, line: 106, column: 5)
!3279 = !DILocation(line: 109, column: 5, scope: !3278)
!3280 = !DILocation(line: 112, column: 1, scope: !3214)
!3281 = !DISubprogram(name: "fileno", scope: !719, file: !719, line: 785, type: !3282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!16, !3235}
!3284 = !DISubprogram(name: "fclose", scope: !719, file: !719, line: 213, type: !3282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3285 = !DISubprogram(name: "lseek", scope: !3286, file: !3286, line: 334, type: !3287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3286 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!747, !16, !747, !16}
!3289 = distinct !DISubprogram(name: "rpl_fflush", scope: !624, file: !624, line: 129, type: !3290, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3326)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{!16, !3292}
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2576, line: 7, baseType: !3294)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !724, line: 49, size: 1728, elements: !3295)
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3294, file: !724, line: 51, baseType: !16, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3294, file: !724, line: 54, baseType: !6, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3294, file: !724, line: 55, baseType: !6, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3294, file: !724, line: 56, baseType: !6, size: 64, offset: 192)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3294, file: !724, line: 57, baseType: !6, size: 64, offset: 256)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3294, file: !724, line: 58, baseType: !6, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3294, file: !724, line: 59, baseType: !6, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3294, file: !724, line: 60, baseType: !6, size: 64, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3294, file: !724, line: 61, baseType: !6, size: 64, offset: 512)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3294, file: !724, line: 64, baseType: !6, size: 64, offset: 576)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3294, file: !724, line: 65, baseType: !6, size: 64, offset: 640)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3294, file: !724, line: 66, baseType: !6, size: 64, offset: 704)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3294, file: !724, line: 68, baseType: !739, size: 64, offset: 768)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3294, file: !724, line: 70, baseType: !3310, size: 64, offset: 832)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3294, file: !724, line: 72, baseType: !16, size: 32, offset: 896)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3294, file: !724, line: 73, baseType: !16, size: 32, offset: 928)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3294, file: !724, line: 74, baseType: !745, size: 64, offset: 960)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3294, file: !724, line: 77, baseType: !144, size: 16, offset: 1024)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3294, file: !724, line: 78, baseType: !750, size: 8, offset: 1040)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3294, file: !724, line: 79, baseType: !752, size: 8, offset: 1048)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3294, file: !724, line: 81, baseType: !756, size: 64, offset: 1088)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3294, file: !724, line: 89, baseType: !759, size: 64, offset: 1152)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3294, file: !724, line: 91, baseType: !761, size: 64, offset: 1216)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3294, file: !724, line: 92, baseType: !764, size: 64, offset: 1280)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3294, file: !724, line: 93, baseType: !3310, size: 64, offset: 1344)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3294, file: !724, line: 94, baseType: !8, size: 64, offset: 1408)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3294, file: !724, line: 95, baseType: !145, size: 64, offset: 1472)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3294, file: !724, line: 96, baseType: !16, size: 32, offset: 1536)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3294, file: !724, line: 98, baseType: !771, size: 160, offset: 1568)
!3326 = !{!3327}
!3327 = !DILocalVariable(name: "stream", arg: 1, scope: !3289, file: !624, line: 129, type: !3292)
!3328 = !DILocation(line: 0, scope: !3289)
!3329 = !DILocation(line: 150, column: 14, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3289, file: !624, line: 150, column: 7)
!3331 = !DILocation(line: 150, column: 22, scope: !3330)
!3332 = !DILocation(line: 150, column: 27, scope: !3330)
!3333 = !DILocation(line: 150, column: 7, scope: !3289)
!3334 = !DILocation(line: 151, column: 12, scope: !3330)
!3335 = !DILocation(line: 151, column: 5, scope: !3330)
!3336 = !DILocalVariable(name: "fp", arg: 1, scope: !3337, file: !624, line: 41, type: !3292)
!3337 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !624, file: !624, line: 41, type: !3338, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !623, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{null, !3292}
!3340 = !{!3336}
!3341 = !DILocation(line: 0, scope: !3337, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 156, column: 3, scope: !3289)
!3343 = !DILocation(line: 43, column: 11, scope: !3344, inlinedAt: !3342)
!3344 = distinct !DILexicalBlock(scope: !3337, file: !624, line: 43, column: 7)
!3345 = !DILocation(line: 43, column: 18, scope: !3344, inlinedAt: !3342)
!3346 = !DILocation(line: 43, column: 7, scope: !3337, inlinedAt: !3342)
!3347 = !DILocation(line: 45, column: 5, scope: !3344, inlinedAt: !3342)
!3348 = !DILocation(line: 158, column: 10, scope: !3289)
!3349 = !DILocation(line: 158, column: 3, scope: !3289)
!3350 = !DILocation(line: 235, column: 1, scope: !3289)
!3351 = !DISubprogram(name: "fflush", scope: !719, file: !719, line: 218, type: !3352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!16, !3310}
!3354 = distinct !DISubprogram(name: "rpl_fseeko", scope: !626, file: !626, line: 28, type: !3355, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !625, retainedNodes: !3392)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!16, !3357, !3391, !16}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2576, line: 7, baseType: !3359)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !724, line: 49, size: 1728, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3359, file: !724, line: 51, baseType: !16, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3359, file: !724, line: 54, baseType: !6, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3359, file: !724, line: 55, baseType: !6, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3359, file: !724, line: 56, baseType: !6, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3359, file: !724, line: 57, baseType: !6, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3359, file: !724, line: 58, baseType: !6, size: 64, offset: 320)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3359, file: !724, line: 59, baseType: !6, size: 64, offset: 384)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3359, file: !724, line: 60, baseType: !6, size: 64, offset: 448)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3359, file: !724, line: 61, baseType: !6, size: 64, offset: 512)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3359, file: !724, line: 64, baseType: !6, size: 64, offset: 576)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3359, file: !724, line: 65, baseType: !6, size: 64, offset: 640)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3359, file: !724, line: 66, baseType: !6, size: 64, offset: 704)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3359, file: !724, line: 68, baseType: !739, size: 64, offset: 768)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3359, file: !724, line: 70, baseType: !3375, size: 64, offset: 832)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3359, file: !724, line: 72, baseType: !16, size: 32, offset: 896)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3359, file: !724, line: 73, baseType: !16, size: 32, offset: 928)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3359, file: !724, line: 74, baseType: !745, size: 64, offset: 960)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3359, file: !724, line: 77, baseType: !144, size: 16, offset: 1024)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3359, file: !724, line: 78, baseType: !750, size: 8, offset: 1040)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3359, file: !724, line: 79, baseType: !752, size: 8, offset: 1048)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3359, file: !724, line: 81, baseType: !756, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3359, file: !724, line: 89, baseType: !759, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3359, file: !724, line: 91, baseType: !761, size: 64, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3359, file: !724, line: 92, baseType: !764, size: 64, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3359, file: !724, line: 93, baseType: !3375, size: 64, offset: 1344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3359, file: !724, line: 94, baseType: !8, size: 64, offset: 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3359, file: !724, line: 95, baseType: !145, size: 64, offset: 1472)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3359, file: !724, line: 96, baseType: !16, size: 32, offset: 1536)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3359, file: !724, line: 98, baseType: !771, size: 160, offset: 1568)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !719, line: 63, baseType: !745)
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "fp", arg: 1, scope: !3354, file: !626, line: 28, type: !3357)
!3394 = !DILocalVariable(name: "offset", arg: 2, scope: !3354, file: !626, line: 28, type: !3391)
!3395 = !DILocalVariable(name: "whence", arg: 3, scope: !3354, file: !626, line: 28, type: !16)
!3396 = !DILocalVariable(name: "pos", scope: !3397, file: !626, line: 117, type: !3391)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !626, line: 113, column: 5)
!3398 = distinct !DILexicalBlock(scope: !3354, file: !626, line: 52, column: 7)
!3399 = !DILocation(line: 0, scope: !3354)
!3400 = !DILocation(line: 52, column: 11, scope: !3398)
!3401 = !{!872, !645, i64 16}
!3402 = !DILocation(line: 52, column: 31, scope: !3398)
!3403 = !{!872, !645, i64 8}
!3404 = !DILocation(line: 52, column: 24, scope: !3398)
!3405 = !DILocation(line: 53, column: 7, scope: !3398)
!3406 = !DILocation(line: 53, column: 14, scope: !3398)
!3407 = !DILocation(line: 53, column: 35, scope: !3398)
!3408 = !{!872, !645, i64 32}
!3409 = !DILocation(line: 53, column: 28, scope: !3398)
!3410 = !DILocation(line: 54, column: 7, scope: !3398)
!3411 = !DILocation(line: 54, column: 14, scope: !3398)
!3412 = !{!872, !645, i64 72}
!3413 = !DILocation(line: 54, column: 28, scope: !3398)
!3414 = !DILocation(line: 52, column: 7, scope: !3354)
!3415 = !DILocation(line: 117, column: 26, scope: !3397)
!3416 = !DILocation(line: 117, column: 19, scope: !3397)
!3417 = !DILocation(line: 0, scope: !3397)
!3418 = !DILocation(line: 118, column: 15, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3397, file: !626, line: 118, column: 11)
!3420 = !DILocation(line: 118, column: 11, scope: !3397)
!3421 = !DILocation(line: 129, column: 11, scope: !3397)
!3422 = !DILocation(line: 129, column: 18, scope: !3397)
!3423 = !DILocation(line: 130, column: 11, scope: !3397)
!3424 = !DILocation(line: 130, column: 19, scope: !3397)
!3425 = !{!872, !873, i64 144}
!3426 = !DILocation(line: 161, column: 7, scope: !3397)
!3427 = !DILocation(line: 163, column: 10, scope: !3354)
!3428 = !DILocation(line: 163, column: 3, scope: !3354)
!3429 = !DILocation(line: 164, column: 1, scope: !3354)
!3430 = !DISubprogram(name: "fseeko", scope: !719, file: !719, line: 712, type: !3431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!16, !3375, !747, !16}
