; ModuleID = 'coreutils-8.32/src/kill.bc'
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
%struct.numname = type { i32, [8 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"Usage: %s [-s SIGNAL | -SIGNAL] PID...\0A  or:  %s -l [SIGNAL]...\0A  or:  %s -t [SIGNAL]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Send signals to processes, or list signals.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.19 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [236 x i8] c"  -s, --signal=SIGNAL, -SIGNAL\0A                   specify the name or number of the signal to be sent\0A  -l, --list       list signal names, or convert signal names to/from numbers\0A  -t, --table      print a table of signal information\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [189 x i8] c"\0ASIGNAL may be a signal name like 'HUP', or a signal number like '1',\0Aor the exit status of a process terminated by a signal.\0APID is an integer; if negative it identifies a process group.\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@short_options = internal constant [113 x i8] c"0::1::2::3::4::5::6::7::8::9::A::B::C::D::E::F::G::H::I::J::K::M::N::O::P::Q::R::S::T::U::V::W::X::Y::Z::Lln:s:t\00", align 16, !dbg !0
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !11
@optind = external local_unnamed_addr global i32, align 4
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"invalid option -- %c\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: multiple signals specified\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"cannot combine signal with -l or -t\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"no process ID specified\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"%*d %-*s %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"%s: invalid process id\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"multiple -l or -t options specified\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1.46 = private unnamed_addr constant [19 x i8] c"%s: invalid signal\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), align 8, !dbg !31
@.str.49 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !36
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !41
@.str.52 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.53 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !44
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !50
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !56
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !101
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !107
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !119
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !126
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !133
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !121
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !135
@.str.85 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.86 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.87 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.88 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.89 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.90 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.107 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.108 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.109 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !141
@.str.1.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !149
@.str.130 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.134 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !603 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !607, metadata !DIExpression()), !dbg !608
  %3 = icmp eq i32 %0, 0, !dbg !609
  br i1 %3, label %9, label %4, !dbg !611

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !612, !tbaa !614
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #27, !dbg !612
  %7 = load i8*, i8** @program_name, align 8, !dbg !612, !tbaa !614
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #27, !dbg !612
  br label %69, !dbg !612

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 5) #27, !dbg !618
  %11 = load i8*, i8** @program_name, align 8, !dbg !618, !tbaa !614
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11, i8* %11) #27, !dbg !618
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #27, !dbg !620
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !614
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !620
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #27, !dbg !621
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !621, !tbaa !614
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #27, !dbg !621
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.3, i64 0, i64 0), i32 5) #27, !dbg !627
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !627, !tbaa !614
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !627
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #27, !dbg !628
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !614
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !628
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #27, !dbg !629
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !614
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !629
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.6, i64 0, i64 0), i32 5) #27, !dbg !630
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !614
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !630
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #27, !dbg !631
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #27, !dbg !631
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), metadata !632, metadata !DIExpression()) #27, !dbg !650
  %33 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !652
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %33) #27, !dbg !652
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !637, metadata !DIExpression()) #27, !dbg !653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %33, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #27, !dbg !653
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), metadata !646, metadata !DIExpression()) #27, !dbg !650
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !647, metadata !DIExpression()) #27, !dbg !650
  %34 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !654
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !647, metadata !DIExpression()) #27, !dbg !650
  br label %35, !dbg !655

35:                                               ; preds = %40, %9
  %36 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %37 = phi %struct.infomap* [ %41, %40 ], [ %34, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !647, metadata !DIExpression()) #27, !dbg !650
  %38 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %36) #28, !dbg !656
  %39 = icmp eq i32 %38, 0, !dbg !656
  br i1 %39, label %45, label %40, !dbg !655

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 1, !dbg !657
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !647, metadata !DIExpression()) #27, !dbg !650
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 0, !dbg !658
  %43 = load i8*, i8** %42, align 8, !dbg !658, !tbaa !659
  %44 = icmp eq i8* %43, null, !dbg !661
  br i1 %44, label %45, label %35, !dbg !662, !llvm.loop !663

45:                                               ; preds = %40, %35
  %46 = phi %struct.infomap* [ %37, %35 ], [ %41, %40 ]
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 1, !dbg !665
  %48 = load i8*, i8** %47, align 8, !dbg !665, !tbaa !667
  %49 = icmp eq i8* %48, null, !dbg !668
  %50 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %48, !dbg !669
  call void @llvm.dbg.value(metadata i8* %50, metadata !646, metadata !DIExpression()) #27, !dbg !650
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #27, !dbg !670
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #27, !dbg !670
  %53 = tail call i8* @setlocale(i32 5, i8* null) #27, !dbg !671
  call void @llvm.dbg.value(metadata i8* %53, metadata !649, metadata !DIExpression()) #27, !dbg !650
  %54 = icmp eq i8* %53, null, !dbg !672
  br i1 %54, label %62, label %55, !dbg !674

55:                                               ; preds = %45
  %56 = tail call i32 @strncmp(i8* nonnull %53, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #28, !dbg !675
  %57 = icmp eq i32 %56, 0, !dbg !675
  br i1 %57, label %62, label %58, !dbg !676

58:                                               ; preds = %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i64 0, i64 0), i32 5) #27, !dbg !677
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !677, !tbaa !614
  %61 = tail call i32 @fputs_unlocked(i8* %59, %struct._IO_FILE* %60) #27, !dbg !677
  br label %62, !dbg !679

62:                                               ; preds = %45, %55, %58
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 5) #27, !dbg !680
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #27, !dbg !680
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #27, !dbg !681
  %66 = icmp eq i8* %50, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !681
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !681
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %50, i8* %67) #27, !dbg !681
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #27, !dbg !682
  br label %69

69:                                               ; preds = %62, %4
  tail call void @exit(i32 %0) #29, !dbg !683
  unreachable, !dbg !683
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !684 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !688 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !744 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !748 {
  %3 = alloca i8*, align 8
  %4 = alloca [19 x i8], align 16
  %5 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !753, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8** %1, metadata !754, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 0, metadata !756, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 0, metadata !757, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i32 -1, metadata !758, metadata !DIExpression()), !dbg !764
  %6 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0, !dbg !765
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %6) #27, !dbg !765
  call void @llvm.dbg.declare(metadata [19 x i8]* %5, metadata !759, metadata !DIExpression()), !dbg !766
  %7 = load i8*, i8** %1, align 8, !dbg !767, !tbaa !614
  tail call void @set_program_name(i8* %7) #27, !dbg !768
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #27, !dbg !769
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #27, !dbg !770
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #27, !dbg !771
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #27, !dbg !772
  br label %12, !dbg !773

12:                                               ; preds = %2, %52
  %13 = phi i32 [ %54, %52 ], [ -1, %2 ], !dbg !774
  call void @llvm.dbg.value(metadata i32 %13, metadata !758, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 0, metadata !757, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 0, metadata !756, metadata !DIExpression()), !dbg !764
  %14 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !775
  call void @llvm.dbg.value(metadata i32 %14, metadata !755, metadata !DIExpression()), !dbg !764
  switch i32 %14, label %64 [
    i32 -1, label %65
    i32 48, label %15
    i32 49, label %15
    i32 50, label %15
    i32 51, label %15
    i32 52, label %15
    i32 53, label %15
    i32 54, label %15
    i32 55, label %15
    i32 56, label %15
    i32 57, label %15
    i32 65, label %24
    i32 66, label %24
    i32 67, label %24
    i32 68, label %24
    i32 69, label %24
    i32 70, label %24
    i32 71, label %24
    i32 72, label %24
    i32 73, label %24
    i32 74, label %24
    i32 75, label %24
    i32 77, label %24
    i32 78, label %24
    i32 79, label %24
    i32 80, label %24
    i32 81, label %24
    i32 82, label %24
    i32 83, label %24
    i32 84, label %24
    i32 85, label %24
    i32 86, label %24
    i32 87, label %24
    i32 88, label %24
    i32 89, label %24
    i32 90, label %24
    i32 110, label %46
    i32 115, label %46
    i32 76, label %58
    i32 116, label %58
    i32 108, label %57
    i32 -130, label %60
    i32 -131, label %61
  ], !dbg !773

15:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %16 = load i32, i32* @optind, align 4, !dbg !776, !tbaa !779
  %17 = icmp eq i32 %16, 2, !dbg !781
  br i1 %17, label %24, label %18, !dbg !782

18:                                               ; preds = %221, %15
  %19 = phi i8 [ 0, %15 ], [ 1, %221 ]
  %20 = phi i8 [ 0, %15 ], [ %59, %221 ]
  %21 = phi i32 [ %13, %15 ], [ %217, %221 ], !dbg !774
  %22 = phi i32 [ %16, %15 ], [ %222, %221 ], !dbg !776
  %23 = add nsw i32 %22, -1, !dbg !783
  store i32 %23, i32* @optind, align 4, !dbg !783, !tbaa !779
  br label %65, !dbg !785

24:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %15
  %25 = load i8*, i8** @optarg, align 8, !dbg !786, !tbaa !614
  %26 = icmp eq i8* %25, null, !dbg !786
  %27 = load i32, i32* @optind, align 4, !dbg !788, !tbaa !779
  %28 = add nsw i32 %27, -1, !dbg !788
  %29 = sext i32 %28 to i64, !dbg !788
  br i1 %26, label %30, label %35, !dbg !789

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !790
  %32 = load i8*, i8** %31, align 8, !dbg !790, !tbaa !614
  %33 = call i64 @strlen(i8* nonnull dereferenceable(1) %32) #28, !dbg !791
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !792
  store i8* %34, i8** @optarg, align 8, !dbg !793, !tbaa !614
  br label %35, !dbg !794

35:                                               ; preds = %24, %30
  %36 = phi i8* [ %34, %30 ], [ %25, %24 ], !dbg !795
  %37 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !797
  %38 = load i8*, i8** %37, align 8, !dbg !797, !tbaa !614
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !798
  %40 = icmp eq i8* %36, %39, !dbg !799
  br i1 %40, label %44, label %41, !dbg !800

41:                                               ; preds = %235, %35
  %42 = phi i32 [ %14, %35 ], [ %218, %235 ], !dbg !775
  %43 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #27, !dbg !801
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %43, i32 %42) #27, !dbg !803
  call void @usage(i32 1) #30, !dbg !804
  unreachable, !dbg !804

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !805
  store i8* %45, i8** @optarg, align 8, !dbg !805, !tbaa !614
  br label %46, !dbg !806

46:                                               ; preds = %12, %12, %44
  %47 = icmp sgt i32 %13, -1, !dbg !807
  br i1 %47, label %48, label %52, !dbg !809

48:                                               ; preds = %243, %46
  %49 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 5) #27, !dbg !810
  %50 = load i8*, i8** @optarg, align 8, !dbg !812, !tbaa !614
  %51 = call i8* @quote(i8* %50) #27, !dbg !813
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49, i8* %51) #27, !dbg !814
  call void @usage(i32 1) #30, !dbg !815
  unreachable, !dbg !815

52:                                               ; preds = %46
  %53 = load i8*, i8** @optarg, align 8, !dbg !816, !tbaa !614
  %54 = call i32 @operand2sig(i8* %53, i8* nonnull %6) #27, !dbg !817
  call void @llvm.dbg.value(metadata i32 %54, metadata !758, metadata !DIExpression()), !dbg !764
  %55 = icmp slt i32 %54, 0, !dbg !818
  br i1 %55, label %56, label %12, !dbg !820, !llvm.loop !821

56:                                               ; preds = %245, %52
  call void @usage(i32 1) #30, !dbg !823
  unreachable, !dbg !823

57:                                               ; preds = %12
  br label %58, !dbg !824

58:                                               ; preds = %12, %12, %57
  %59 = phi i8 [ 0, %57 ], [ 1, %12 ], [ 1, %12 ], !dbg !764
  call void @llvm.dbg.value(metadata i8 %59, metadata !757, metadata !DIExpression()), !dbg !764
  br label %216, !dbg !773

60:                                               ; preds = %216, %12
  call void @usage(i32 0) #30, !dbg !826
  unreachable, !dbg !826

61:                                               ; preds = %216, %12
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !827, !tbaa !614
  %63 = load i8*, i8** @Version, align 8, !dbg !827, !tbaa !614
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #27, !dbg !827
  call void @exit(i32 0) #29, !dbg !827
  unreachable, !dbg !827

64:                                               ; preds = %216, %12
  call void @usage(i32 1) #30, !dbg !828
  unreachable, !dbg !828

65:                                               ; preds = %12, %216, %18
  %66 = phi i8 [ %19, %18 ], [ 0, %12 ], [ 1, %216 ]
  %67 = phi i8 [ %20, %18 ], [ 0, %12 ], [ %59, %216 ]
  %68 = phi i32 [ %21, %18 ], [ %13, %12 ], [ %217, %216 ]
  call void @llvm.dbg.label(metadata !763), !dbg !829
  %69 = icmp slt i32 %68, 0, !dbg !830
  %70 = icmp eq i8 %66, 0, !dbg !764
  %71 = or i1 %69, %70, !dbg !832
  %72 = xor i1 %69, true, !dbg !832
  %73 = or i1 %70, %72, !dbg !832
  %74 = select i1 %69, i32 15, i32 %68, !dbg !832
  br i1 %71, label %77, label %75, !dbg !832

75:                                               ; preds = %65
  %76 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #27, !dbg !833
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %76) #27, !dbg !836
  call void @usage(i32 1) #30, !dbg !837
  unreachable, !dbg !837

77:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i32 %74, metadata !758, metadata !DIExpression()), !dbg !764
  %78 = xor i1 %73, true, !dbg !838
  %79 = load i32, i32* @optind, align 4
  %80 = icmp slt i32 %79, %0
  %81 = or i1 %80, %78, !dbg !838
  br i1 %81, label %84, label %82, !dbg !838

82:                                               ; preds = %77
  %83 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 5) #27, !dbg !840
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %83) #27, !dbg !842
  call void @usage(i32 1) #30, !dbg !843
  unreachable, !dbg !843

84:                                               ; preds = %77
  br i1 %73, label %177, label %85, !dbg !844

85:                                               ; preds = %84
  %86 = and i8 %67, 1, !dbg !845
  %87 = icmp eq i8 %86, 0, !dbg !845
  %88 = sext i32 %79 to i64, !dbg !846
  %89 = getelementptr inbounds i8*, i8** %1, i64 %88, !dbg !846
  %90 = select i1 %80, i8** %89, i8** null, !dbg !846
  call void @llvm.dbg.value(metadata i1 %87, metadata !847, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #27, !dbg !867
  call void @llvm.dbg.value(metadata i8** %90, metadata !854, metadata !DIExpression()) #27, !dbg !867
  call void @llvm.dbg.value(metadata i32 0, metadata !856, metadata !DIExpression()) #27, !dbg !867
  %91 = getelementptr inbounds [19 x i8], [19 x i8]* %4, i64 0, i64 0, !dbg !869
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %91) #27, !dbg !869
  call void @llvm.dbg.declare(metadata [19 x i8]* %4, metadata !857, metadata !DIExpression()) #27, !dbg !870
  br i1 %87, label %140, label %92, !dbg !871

92:                                               ; preds = %85, %103
  %93 = phi i32 [ %104, %103 ], [ 0, %85 ]
  %94 = phi i32 [ %105, %103 ], [ 1, %85 ]
  call void @llvm.dbg.value(metadata i32 %93, metadata !858, metadata !DIExpression()) #27, !dbg !872
  call void @llvm.dbg.value(metadata i32 %94, metadata !855, metadata !DIExpression()) #27, !dbg !867
  %95 = call i32 @sig2str(i32 %94, i8* nonnull %91) #27, !dbg !873
  %96 = icmp eq i32 %95, 0, !dbg !874
  br i1 %96, label %97, label %103, !dbg !875

97:                                               ; preds = %92
  %98 = call i64 @strlen(i8* nonnull %91) #28, !dbg !876
  call void @llvm.dbg.value(metadata i64 %98, metadata !862, metadata !DIExpression()) #27, !dbg !877
  %99 = zext i32 %93 to i64, !dbg !878
  %100 = icmp ugt i64 %98, %99, !dbg !880
  %101 = trunc i64 %98 to i32
  %102 = select i1 %100, i32 %101, i32 %93, !dbg !881
  call void @llvm.dbg.value(metadata i32 %102, metadata !858, metadata !DIExpression()) #27, !dbg !872
  br label %103, !dbg !882

103:                                              ; preds = %97, %92
  %104 = phi i32 [ %102, %97 ], [ %93, %92 ], !dbg !872
  call void @llvm.dbg.value(metadata i32 %104, metadata !858, metadata !DIExpression()) #27, !dbg !872
  %105 = add nuw nsw i32 %94, 1, !dbg !883
  call void @llvm.dbg.value(metadata i32 %105, metadata !855, metadata !DIExpression()) #27, !dbg !867
  %106 = icmp eq i32 %105, 65, !dbg !884
  br i1 %106, label %107, label %92, !dbg !885, !llvm.loop !886

107:                                              ; preds = %103
  %108 = icmp eq i8** %90, null, !dbg !888
  br i1 %108, label %128, label %109, !dbg !890

109:                                              ; preds = %107
  call void @llvm.dbg.value(metadata i8** %90, metadata !854, metadata !DIExpression()) #27, !dbg !867
  call void @llvm.dbg.value(metadata i32 0, metadata !856, metadata !DIExpression()) #27, !dbg !867
  %110 = load i8*, i8** %90, align 8, !dbg !891, !tbaa !614
  %111 = icmp eq i8* %110, null, !dbg !894
  br i1 %111, label %175, label %112, !dbg !894

112:                                              ; preds = %109, %123
  %113 = phi i8* [ %126, %123 ], [ %110, %109 ]
  %114 = phi i8** [ %125, %123 ], [ %89, %109 ]
  %115 = phi i32 [ %124, %123 ], [ 0, %109 ]
  call void @llvm.dbg.value(metadata i8** %114, metadata !854, metadata !DIExpression()) #27, !dbg !867
  call void @llvm.dbg.value(metadata i32 %115, metadata !856, metadata !DIExpression()) #27, !dbg !867
  %116 = call i32 @operand2sig(i8* nonnull %113, i8* nonnull %91) #27, !dbg !895
  call void @llvm.dbg.value(metadata i32 %116, metadata !855, metadata !DIExpression()) #27, !dbg !867
  %117 = icmp slt i32 %116, 0, !dbg !897
  br i1 %117, label %123, label %118, !dbg !899

118:                                              ; preds = %112
  call void @llvm.dbg.value(metadata i32 2, metadata !900, metadata !DIExpression()) #27, !dbg !909
  call void @llvm.dbg.value(metadata i32 %116, metadata !905, metadata !DIExpression()) #27, !dbg !909
  call void @llvm.dbg.value(metadata i32 %104, metadata !906, metadata !DIExpression()) #27, !dbg !909
  call void @llvm.dbg.value(metadata i8* %91, metadata !907, metadata !DIExpression()) #27, !dbg !909
  %119 = call i8* @strsignal(i32 %116) #27, !dbg !911
  call void @llvm.dbg.value(metadata i8* %119, metadata !908, metadata !DIExpression()) #27, !dbg !909
  %120 = icmp eq i8* %119, null, !dbg !912
  %121 = select i1 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* %119, !dbg !912
  %122 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %116, i32 %104, i8* nonnull %91, i8* %121) #27, !dbg !912
  br label %123

123:                                              ; preds = %118, %112
  %124 = phi i32 [ %115, %118 ], [ 1, %112 ], !dbg !867
  call void @llvm.dbg.value(metadata i32 %124, metadata !856, metadata !DIExpression()) #27, !dbg !867
  %125 = getelementptr inbounds i8*, i8** %114, i64 1, !dbg !913
  call void @llvm.dbg.value(metadata i8** %125, metadata !854, metadata !DIExpression()) #27, !dbg !867
  %126 = load i8*, i8** %125, align 8, !dbg !891, !tbaa !614
  %127 = icmp eq i8* %126, null, !dbg !894
  br i1 %127, label %175, label %112, !dbg !894, !llvm.loop !914

128:                                              ; preds = %107, %137
  %129 = phi i32 [ %138, %137 ], [ 1, %107 ]
  call void @llvm.dbg.value(metadata i32 %129, metadata !855, metadata !DIExpression()) #27, !dbg !867
  %130 = call i32 @sig2str(i32 %129, i8* nonnull %91) #27, !dbg !916
  %131 = icmp eq i32 %130, 0, !dbg !920
  br i1 %131, label %132, label %137, !dbg !921

132:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i32 2, metadata !900, metadata !DIExpression()) #27, !dbg !922
  call void @llvm.dbg.value(metadata i32 %129, metadata !905, metadata !DIExpression()) #27, !dbg !922
  call void @llvm.dbg.value(metadata i32 %104, metadata !906, metadata !DIExpression()) #27, !dbg !922
  call void @llvm.dbg.value(metadata i8* %91, metadata !907, metadata !DIExpression()) #27, !dbg !922
  %133 = call i8* @strsignal(i32 %129) #27, !dbg !924
  call void @llvm.dbg.value(metadata i8* %133, metadata !908, metadata !DIExpression()) #27, !dbg !922
  %134 = icmp eq i8* %133, null, !dbg !925
  %135 = select i1 %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* %133, !dbg !925
  %136 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %129, i32 %104, i8* nonnull %91, i8* %135) #27, !dbg !925
  br label %137, !dbg !926

137:                                              ; preds = %132, %128
  %138 = add nuw nsw i32 %129, 1, !dbg !927
  call void @llvm.dbg.value(metadata i32 %138, metadata !855, metadata !DIExpression()) #27, !dbg !867
  %139 = icmp eq i32 %138, 65, !dbg !928
  br i1 %139, label %175, label %128, !dbg !929, !llvm.loop !930

140:                                              ; preds = %85
  %141 = icmp eq i8** %90, null, !dbg !932
  br i1 %141, label %166, label %142, !dbg !935

142:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i8** %90, metadata !854, metadata !DIExpression()) #27, !dbg !867
  call void @llvm.dbg.value(metadata i32 0, metadata !856, metadata !DIExpression()) #27, !dbg !867
  %143 = load i8*, i8** %90, align 8, !dbg !936, !tbaa !614
  %144 = icmp eq i8* %143, null, !dbg !939
  br i1 %144, label %175, label %145, !dbg !939

145:                                              ; preds = %142, %161
  %146 = phi i8* [ %164, %161 ], [ %143, %142 ]
  %147 = phi i8** [ %163, %161 ], [ %89, %142 ]
  %148 = phi i32 [ %162, %161 ], [ 0, %142 ]
  call void @llvm.dbg.value(metadata i8** %147, metadata !854, metadata !DIExpression()) #27, !dbg !867
  call void @llvm.dbg.value(metadata i32 %148, metadata !856, metadata !DIExpression()) #27, !dbg !867
  %149 = call i32 @operand2sig(i8* nonnull %146, i8* nonnull %91) #27, !dbg !940
  call void @llvm.dbg.value(metadata i32 %149, metadata !855, metadata !DIExpression()) #27, !dbg !867
  %150 = icmp slt i32 %149, 0, !dbg !942
  br i1 %150, label %161, label %151, !dbg !944

151:                                              ; preds = %145
  %152 = load i8*, i8** %147, align 8, !dbg !945, !tbaa !614
  %153 = load i8, i8* %152, align 1, !dbg !945, !tbaa !948
  %154 = sext i8 %153 to i32, !dbg !945
  %155 = add nsw i32 %154, -48, !dbg !945
  %156 = icmp ult i32 %155, 10, !dbg !945
  br i1 %156, label %157, label %159, !dbg !949

157:                                              ; preds = %151
  %158 = call i32 @puts(i8* nonnull %91) #27, !dbg !950
  br label %161, !dbg !950

159:                                              ; preds = %151
  %160 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i32 %149) #27, !dbg !951
  br label %161

161:                                              ; preds = %159, %157, %145
  %162 = phi i32 [ %148, %157 ], [ %148, %159 ], [ 1, %145 ], !dbg !867
  call void @llvm.dbg.value(metadata i32 %162, metadata !856, metadata !DIExpression()) #27, !dbg !867
  %163 = getelementptr inbounds i8*, i8** %147, i64 1, !dbg !952
  call void @llvm.dbg.value(metadata i8** %163, metadata !854, metadata !DIExpression()) #27, !dbg !867
  %164 = load i8*, i8** %163, align 8, !dbg !936, !tbaa !614
  %165 = icmp eq i8* %164, null, !dbg !939
  br i1 %165, label %175, label %145, !dbg !939, !llvm.loop !953

166:                                              ; preds = %140, %172
  %167 = phi i32 [ %173, %172 ], [ 1, %140 ]
  call void @llvm.dbg.value(metadata i32 %167, metadata !855, metadata !DIExpression()) #27, !dbg !867
  %168 = call i32 @sig2str(i32 %167, i8* nonnull %91) #27, !dbg !955
  %169 = icmp eq i32 %168, 0, !dbg !959
  br i1 %169, label %170, label %172, !dbg !960

170:                                              ; preds = %166
  %171 = call i32 @puts(i8* nonnull %91) #27, !dbg !961
  br label %172, !dbg !961

172:                                              ; preds = %170, %166
  %173 = add nuw nsw i32 %167, 1, !dbg !962
  call void @llvm.dbg.value(metadata i32 %173, metadata !855, metadata !DIExpression()) #27, !dbg !867
  %174 = icmp eq i32 %173, 65, !dbg !963
  br i1 %174, label %175, label %166, !dbg !964, !llvm.loop !965

175:                                              ; preds = %123, %137, %161, %172, %109, %142
  %176 = phi i32 [ 0, %109 ], [ 0, %142 ], [ 0, %172 ], [ %162, %161 ], [ 0, %137 ], [ %124, %123 ], !dbg !967
  call void @llvm.dbg.value(metadata i32 %176, metadata !856, metadata !DIExpression()) #27, !dbg !867
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %91) #27, !dbg !968
  br label %214, !dbg !844

177:                                              ; preds = %84
  %178 = sext i32 %79 to i64, !dbg !969
  %179 = getelementptr inbounds i8*, i8** %1, i64 %178, !dbg !969
  call void @llvm.dbg.value(metadata i32 %74, metadata !970, metadata !DIExpression()) #27, !dbg !988
  call void @llvm.dbg.value(metadata i8** %179, metadata !975, metadata !DIExpression()) #27, !dbg !988
  call void @llvm.dbg.value(metadata i32 0, metadata !976, metadata !DIExpression()) #27, !dbg !988
  %180 = load i8*, i8** %179, align 8, !dbg !990, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %180, metadata !977, metadata !DIExpression()) #27, !dbg !988
  %181 = bitcast i8** %3 to i8*
  %182 = tail call i32* @__errno_location() #31, !dbg !988
  br label %183, !dbg !991

183:                                              ; preds = %209, %177
  %184 = phi i8* [ %180, %177 ], [ %212, %209 ], !dbg !988
  %185 = phi i32 [ 0, %177 ], [ %210, %209 ], !dbg !988
  %186 = phi i8** [ %179, %177 ], [ %211, %209 ]
  call void @llvm.dbg.value(metadata i8** %186, metadata !975, metadata !DIExpression()) #27, !dbg !988
  call void @llvm.dbg.value(metadata i32 %185, metadata !976, metadata !DIExpression()) #27, !dbg !988
  call void @llvm.dbg.value(metadata i8* %184, metadata !977, metadata !DIExpression()) #27, !dbg !988
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %181) #27, !dbg !992
  store i32 0, i32* %182, align 4, !dbg !993, !tbaa !779
  call void @llvm.dbg.value(metadata i8** %3, metadata !978, metadata !DIExpression(DW_OP_deref)) #27, !dbg !994
  %187 = call i64 @strtoimax(i8* %184, i8** nonnull %3, i32 10) #27, !dbg !995
  call void @llvm.dbg.value(metadata i64 %187, metadata !980, metadata !DIExpression()) #27, !dbg !994
  %188 = trunc i64 %187 to i32, !dbg !996
  call void @llvm.dbg.value(metadata i32 %188, metadata !984, metadata !DIExpression()) #27, !dbg !994
  %189 = load i32, i32* %182, align 4, !dbg !997, !tbaa !779
  %190 = icmp eq i32 %189, 34, !dbg !999
  %191 = add i64 %187, 2147483648
  %192 = icmp ugt i64 %191, 4294967295
  %193 = or i1 %190, %192, !dbg !1000
  %194 = load i8*, i8** %3, align 8
  %195 = icmp eq i8* %184, %194
  %196 = or i1 %193, %195, !dbg !1000
  call void @llvm.dbg.value(metadata i8* %194, metadata !978, metadata !DIExpression()) #27, !dbg !994
  br i1 %196, label %200, label %197, !dbg !1000

197:                                              ; preds = %183
  %198 = load i8, i8* %194, align 1, !dbg !1001, !tbaa !948
  %199 = icmp eq i8 %198, 0, !dbg !1001
  br i1 %199, label %203, label %200, !dbg !1002

200:                                              ; preds = %197, %183
  %201 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #27, !dbg !1003
  %202 = call i8* @quote(i8* %184) #27, !dbg !1005
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %201, i8* %202) #27, !dbg !1006
  call void @llvm.dbg.value(metadata i32 1, metadata !976, metadata !DIExpression()) #27, !dbg !988
  br label %209, !dbg !1007

203:                                              ; preds = %197
  %204 = call i32 @kill(i32 %188, i32 %74) #27, !dbg !1008
  %205 = icmp eq i32 %204, 0, !dbg !1010
  br i1 %205, label %209, label %206, !dbg !1011

206:                                              ; preds = %203
  %207 = load i32, i32* %182, align 4, !dbg !1012, !tbaa !779
  %208 = call i8* @quote(i8* %184) #27, !dbg !1014
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* %208) #27, !dbg !1015
  call void @llvm.dbg.value(metadata i32 1, metadata !976, metadata !DIExpression()) #27, !dbg !988
  br label %209, !dbg !1016

209:                                              ; preds = %206, %203, %200
  %210 = phi i32 [ 1, %200 ], [ 1, %206 ], [ %185, %203 ], !dbg !988
  call void @llvm.dbg.value(metadata i32 %210, metadata !976, metadata !DIExpression()) #27, !dbg !988
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %181) #27, !dbg !1017
  %211 = getelementptr inbounds i8*, i8** %186, i64 1, !dbg !1018
  call void @llvm.dbg.value(metadata i8** %211, metadata !975, metadata !DIExpression()) #27, !dbg !988
  %212 = load i8*, i8** %211, align 8, !dbg !1019, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %212, metadata !977, metadata !DIExpression()) #27, !dbg !988
  %213 = icmp eq i8* %212, null, !dbg !1020
  br i1 %213, label %214, label %183, !dbg !1020, !llvm.loop !1021

214:                                              ; preds = %209, %175
  %215 = phi i32 [ %176, %175 ], [ %210, %209 ], !dbg !844
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %6) #27, !dbg !1023
  ret i32 %215, !dbg !1023

216:                                              ; preds = %245, %58
  %217 = phi i32 [ %247, %245 ], [ %13, %58 ], !dbg !774
  call void @llvm.dbg.value(metadata i32 %217, metadata !758, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 %59, metadata !757, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i8 1, metadata !756, metadata !DIExpression()), !dbg !764
  %218 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #27, !dbg !775
  call void @llvm.dbg.value(metadata i32 %218, metadata !755, metadata !DIExpression()), !dbg !764
  switch i32 %218, label %64 [
    i32 -1, label %65
    i32 48, label %221
    i32 49, label %221
    i32 50, label %221
    i32 51, label %221
    i32 52, label %221
    i32 53, label %221
    i32 54, label %221
    i32 55, label %221
    i32 56, label %221
    i32 57, label %221
    i32 65, label %224
    i32 66, label %224
    i32 67, label %224
    i32 68, label %224
    i32 69, label %224
    i32 70, label %224
    i32 71, label %224
    i32 72, label %224
    i32 73, label %224
    i32 74, label %224
    i32 75, label %224
    i32 77, label %224
    i32 78, label %224
    i32 79, label %224
    i32 80, label %224
    i32 81, label %224
    i32 82, label %224
    i32 83, label %224
    i32 84, label %224
    i32 85, label %224
    i32 86, label %224
    i32 87, label %224
    i32 88, label %224
    i32 89, label %224
    i32 90, label %224
    i32 110, label %243
    i32 115, label %243
    i32 76, label %219
    i32 116, label %219
    i32 108, label %219
    i32 -130, label %60
    i32 -131, label %61
  ], !dbg !773

219:                                              ; preds = %216, %216, %216
  call void @llvm.dbg.value(metadata i8 undef, metadata !757, metadata !DIExpression()), !dbg !764
  %220 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 5) #27, !dbg !1024
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %220) #27, !dbg !1026
  call void @usage(i32 1) #30, !dbg !1027
  unreachable, !dbg !1027

221:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216, %216
  %222 = load i32, i32* @optind, align 4, !dbg !776, !tbaa !779
  %223 = icmp eq i32 %222, 2, !dbg !781
  br i1 %223, label %224, label %18, !dbg !782

224:                                              ; preds = %221, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216, %216
  %225 = load i8*, i8** @optarg, align 8, !dbg !786, !tbaa !614
  %226 = icmp eq i8* %225, null, !dbg !786
  %227 = load i32, i32* @optind, align 4, !dbg !788, !tbaa !779
  %228 = add nsw i32 %227, -1, !dbg !788
  %229 = sext i32 %228 to i64, !dbg !788
  br i1 %226, label %230, label %235, !dbg !789

230:                                              ; preds = %224
  %231 = getelementptr inbounds i8*, i8** %1, i64 %229, !dbg !790
  %232 = load i8*, i8** %231, align 8, !dbg !790, !tbaa !614
  %233 = call i64 @strlen(i8* nonnull dereferenceable(1) %232) #28, !dbg !791
  %234 = getelementptr inbounds i8, i8* %232, i64 %233, !dbg !792
  store i8* %234, i8** @optarg, align 8, !dbg !793, !tbaa !614
  br label %235, !dbg !794

235:                                              ; preds = %230, %224
  %236 = phi i8* [ %234, %230 ], [ %225, %224 ], !dbg !795
  %237 = getelementptr inbounds i8*, i8** %1, i64 %229, !dbg !797
  %238 = load i8*, i8** %237, align 8, !dbg !797, !tbaa !614
  %239 = getelementptr inbounds i8, i8* %238, i64 2, !dbg !798
  %240 = icmp eq i8* %236, %239, !dbg !799
  br i1 %240, label %241, label %41, !dbg !800

241:                                              ; preds = %235
  %242 = getelementptr inbounds i8, i8* %236, i64 -1, !dbg !805
  store i8* %242, i8** @optarg, align 8, !dbg !805, !tbaa !614
  br label %243, !dbg !806

243:                                              ; preds = %241, %216, %216
  %244 = icmp sgt i32 %217, -1, !dbg !807
  br i1 %244, label %48, label %245, !dbg !809

245:                                              ; preds = %243
  %246 = load i8*, i8** @optarg, align 8, !dbg !816, !tbaa !614
  %247 = call i32 @operand2sig(i8* %246, i8* nonnull %6) #27, !dbg !817
  call void @llvm.dbg.value(metadata i32 %247, metadata !758, metadata !DIExpression()), !dbg !764
  %248 = icmp slt i32 %247, 0, !dbg !818
  br i1 %248, label %56, label %216, !dbg !820, !llvm.loop !821
}

; Function Attrs: nounwind
declare !dbg !1028 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1031 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1034 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1039 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

declare !dbg !1043 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !1047 i8* @strsignal(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1051 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1054 i64 @strtoimax(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1058 i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @operand2sig(i8* %0, i8* %1) local_unnamed_addr #8 !dbg !1062 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1066, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i8* %1, metadata !1067, metadata !DIExpression()), !dbg !1077
  %5 = bitcast i32* %3 to i8*, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #27, !dbg !1078
  %6 = load i8, i8* %0, align 1, !dbg !1079, !tbaa !948
  %7 = sext i8 %6 to i32, !dbg !1079
  %8 = add nsw i32 %7, -48, !dbg !1079
  %9 = icmp ult i32 %8, 10, !dbg !1079
  br i1 %9, label %10, label %38, !dbg !1080

10:                                               ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1081
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #27, !dbg !1081
  %12 = tail call i32* @__errno_location() #31, !dbg !1082
  store i32 0, i32* %12, align 4, !dbg !1083, !tbaa !779
  call void @llvm.dbg.value(metadata i8** %4, metadata !1069, metadata !DIExpression(DW_OP_deref)), !dbg !1084
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #27, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %13, metadata !1072, metadata !DIExpression()), !dbg !1084
  %14 = trunc i64 %13 to i32, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %14, metadata !1073, metadata !DIExpression()), !dbg !1084
  %15 = load i8*, i8** %4, align 8, !dbg !1087, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %15, metadata !1069, metadata !DIExpression()), !dbg !1084
  %16 = icmp eq i8* %15, %0, !dbg !1088
  br i1 %16, label %29, label %17, !dbg !1089

17:                                               ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1090, !tbaa !948
  %19 = icmp eq i8 %18, 0, !dbg !1090
  br i1 %19, label %20, label %29, !dbg !1091

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1092, !tbaa !779
  %22 = icmp eq i32 %21, 0, !dbg !1092
  %23 = add i64 %13, 2147483648
  %24 = icmp ult i64 %23, 4294967296
  %25 = and i1 %24, %22, !dbg !1093
  br i1 %25, label %26, label %29, !dbg !1093

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 %14, metadata !1068, metadata !DIExpression()), !dbg !1077
  %27 = icmp eq i32 %14, -1, !dbg !1094
  %28 = icmp slt i32 %14, 255, !dbg !1096
  br i1 %28, label %29, label %32, !dbg !1096

29:                                               ; preds = %10, %17, %20, %26
  %30 = phi i1 [ %27, %26 ], [ true, %20 ], [ true, %17 ], [ true, %10 ]
  %31 = phi i32 [ %14, %26 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ]
  br label %32, !dbg !1096

32:                                               ; preds = %26, %29
  %33 = phi i1 [ %30, %29 ], [ %27, %26 ]
  %34 = phi i32 [ %31, %29 ], [ %14, %26 ]
  %35 = phi i32 [ 127, %29 ], [ 255, %26 ]
  %36 = select i1 %33, i32 -1, i32 %35, !dbg !1096
  %37 = and i32 %36, %34, !dbg !1096
  store i32 %37, i32* %3, align 4, !dbg !1084, !tbaa !779
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #27, !dbg !1097
  br label %75, !dbg !1098

38:                                               ; preds = %2
  %39 = tail call noalias i8* @xstrdup(i8* nonnull %0) #27, !dbg !1099
  call void @llvm.dbg.value(metadata i8* %39, metadata !1074, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %39, metadata !1076, metadata !DIExpression()), !dbg !1100
  %40 = load i8, i8* %39, align 1, !dbg !1101, !tbaa !948
  %41 = icmp eq i8 %40, 0, !dbg !1104
  br i1 %41, label %54, label %42, !dbg !1104

42:                                               ; preds = %38, %50
  %43 = phi i8 [ %52, %50 ], [ %40, %38 ]
  %44 = phi i8* [ %51, %50 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i8* %44, metadata !1076, metadata !DIExpression()), !dbg !1100
  %45 = sext i8 %43 to i32, !dbg !1105
  %46 = tail call i8* @memchr(i8* nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 %45, i64 27), !dbg !1107
  %47 = icmp eq i8* %46, null, !dbg !1107
  br i1 %47, label %50, label %48, !dbg !1108

48:                                               ; preds = %42
  %49 = add i8 %43, -32, !dbg !1109
  store i8 %49, i8* %44, align 1, !dbg !1109, !tbaa !948
  br label %50, !dbg !1110

50:                                               ; preds = %42, %48
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1111
  call void @llvm.dbg.value(metadata i8* %51, metadata !1076, metadata !DIExpression()), !dbg !1100
  %52 = load i8, i8* %51, align 1, !dbg !1101, !tbaa !948
  %53 = icmp eq i8 %52, 0, !dbg !1104
  br i1 %53, label %54, label %42, !dbg !1104, !llvm.loop !1112

54:                                               ; preds = %50, %38
  call void @llvm.dbg.value(metadata i32* %3, metadata !1068, metadata !DIExpression(DW_OP_deref)), !dbg !1077
  %55 = call i32 @str2sig(i8* nonnull %39, i32* nonnull %3) #27, !dbg !1114
  %56 = icmp eq i32 %55, 0, !dbg !1116
  br i1 %56, label %73, label %57, !dbg !1117

57:                                               ; preds = %54
  %58 = load i8, i8* %39, align 1, !dbg !1118, !tbaa !948
  %59 = icmp eq i8 %58, 83, !dbg !1119
  br i1 %59, label %60, label %72, !dbg !1120

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1121
  %62 = load i8, i8* %61, align 1, !dbg !1121, !tbaa !948
  %63 = icmp eq i8 %62, 73, !dbg !1122
  br i1 %63, label %64, label %72, !dbg !1123

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !1124
  %66 = load i8, i8* %65, align 1, !dbg !1124, !tbaa !948
  %67 = icmp eq i8 %66, 71, !dbg !1125
  br i1 %67, label %68, label %72, !dbg !1126

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !1127
  call void @llvm.dbg.value(metadata i32* %3, metadata !1068, metadata !DIExpression(DW_OP_deref)), !dbg !1077
  %70 = call i32 @str2sig(i8* nonnull %69, i32* nonnull %3) #27, !dbg !1128
  %71 = icmp eq i32 %70, 0, !dbg !1129
  br i1 %71, label %73, label %72, !dbg !1130

72:                                               ; preds = %68, %64, %60, %57
  call void @llvm.dbg.value(metadata i32 -1, metadata !1068, metadata !DIExpression()), !dbg !1077
  store i32 -1, i32* %3, align 4, !dbg !1131, !tbaa !779
  br label %73, !dbg !1132

73:                                               ; preds = %72, %68, %54
  call void @free(i8* %39) #27, !dbg !1133
  %74 = load i32, i32* %3, align 4, !dbg !1134, !tbaa !779
  br label %75

75:                                               ; preds = %73, %32
  %76 = phi i32 [ %74, %73 ], [ %37, %32 ], !dbg !1134
  call void @llvm.dbg.value(metadata i32 %76, metadata !1068, metadata !DIExpression()), !dbg !1077
  %77 = icmp slt i32 %76, 0, !dbg !1136
  br i1 %77, label %81, label %78, !dbg !1137

78:                                               ; preds = %75
  %79 = call i32 @sig2str(i32 %76, i8* %1) #27, !dbg !1138
  %80 = icmp eq i32 %79, 0, !dbg !1139
  br i1 %80, label %84, label %81, !dbg !1140

81:                                               ; preds = %78, %75
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.46, i64 0, i64 0), i32 5) #27, !dbg !1141
  %83 = call i8* @quote(i8* nonnull %0) #27, !dbg !1143
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %83) #27, !dbg !1144
  br label %86, !dbg !1145

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4, !dbg !1146, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %85, metadata !1068, metadata !DIExpression()), !dbg !1077
  br label %86, !dbg !1147

86:                                               ; preds = %84, %81
  %87 = phi i32 [ -1, %81 ], [ %85, %84 ], !dbg !1077
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #27, !dbg !1148
  ret i32 %87, !dbg !1148
}

; Function Attrs: nofree nounwind willreturn
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #11

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #13 !dbg !1149 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1151, metadata !DIExpression()), !dbg !1152
  store i8* %0, i8** @file_name, align 8, !dbg !1153, !tbaa !614
  ret void, !dbg !1154
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #13 !dbg !1155 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1159, metadata !DIExpression()), !dbg !1160
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1161, !tbaa !1162
  ret void, !dbg !1164
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1165 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1170, !tbaa !614
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #27, !dbg !1171
  %3 = icmp eq i32 %2, 0, !dbg !1172
  br i1 %3, label %22, label %4, !dbg !1173

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1174, !tbaa !1162, !range !1175
  %6 = icmp eq i8 %5, 0, !dbg !1174
  br i1 %6, label %11, label %7, !dbg !1176

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #31, !dbg !1177
  %9 = load i32, i32* %8, align 4, !dbg !1177, !tbaa !779
  %10 = icmp eq i32 %9, 32, !dbg !1178
  br i1 %10, label %22, label %11, !dbg !1179

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i32 5) #27, !dbg !1180
  call void @llvm.dbg.value(metadata i8* %12, metadata !1167, metadata !DIExpression()), !dbg !1181
  %13 = load i8*, i8** @file_name, align 8, !dbg !1182, !tbaa !614
  %14 = icmp eq i8* %13, null, !dbg !1182
  %15 = tail call i32* @__errno_location() #31, !dbg !1184
  %16 = load i32, i32* %15, align 4, !dbg !1184, !tbaa !779
  br i1 %14, label %19, label %17, !dbg !1185

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #27, !dbg !1186
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.53, i64 0, i64 0), i8* %18, i8* %12) #27, !dbg !1187
  br label %20, !dbg !1187

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.54, i64 0, i64 0), i8* %12) #27, !dbg !1188
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1189, !tbaa !779
  tail call void @_exit(i32 %21) #29, !dbg !1190
  unreachable, !dbg !1190

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1191, !tbaa !614
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #27, !dbg !1193
  %25 = icmp eq i32 %24, 0, !dbg !1194
  br i1 %25, label %28, label %26, !dbg !1195

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1196, !tbaa !779
  tail call void @_exit(i32 %27) #29, !dbg !1197
  unreachable, !dbg !1197

28:                                               ; preds = %22
  ret void, !dbg !1198
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1199 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1201, metadata !DIExpression()), !dbg !1204
  %2 = icmp eq i8* %0, null, !dbg !1205
  br i1 %2, label %3, label %6, !dbg !1207

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1208, !tbaa !614
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #32, !dbg !1210
  tail call void @abort() #29, !dbg !1211
  unreachable, !dbg !1211

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #28, !dbg !1212
  call void @llvm.dbg.value(metadata i8* %7, metadata !1202, metadata !DIExpression()), !dbg !1204
  %8 = icmp eq i8* %7, null, !dbg !1213
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1214
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %10, metadata !1203, metadata !DIExpression()), !dbg !1204
  %11 = ptrtoint i8* %10 to i64, !dbg !1215
  %12 = ptrtoint i8* %0 to i64, !dbg !1215
  %13 = sub i64 %11, %12, !dbg !1215
  %14 = icmp sgt i64 %13, 6, !dbg !1217
  br i1 %14, label %15, label %24, !dbg !1218

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1219
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #28, !dbg !1220
  %18 = icmp eq i32 %17, 0, !dbg !1221
  br i1 %18, label %19, label %24, !dbg !1222

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1201, metadata !DIExpression()), !dbg !1204
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #28, !dbg !1223
  %21 = icmp eq i32 %20, 0, !dbg !1226
  br i1 %21, label %22, label %24, !dbg !1227

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %23, metadata !1201, metadata !DIExpression()), !dbg !1204
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1230, !tbaa !614
  br label %24, !dbg !1231

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1201, metadata !DIExpression()), !dbg !1204
  store i8* %25, i8** @program_name, align 8, !dbg !1232, !tbaa !614
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1233, !tbaa !614
  ret void, !dbg !1234
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1235 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1240, metadata !DIExpression()), !dbg !1243
  %2 = tail call i32* @__errno_location() #31, !dbg !1244
  %3 = load i32, i32* %2, align 4, !dbg !1244, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %3, metadata !1241, metadata !DIExpression()), !dbg !1243
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1245
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1245
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1245
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #27, !dbg !1246
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1246
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1242, metadata !DIExpression()), !dbg !1243
  store i32 %3, i32* %2, align 4, !dbg !1247, !tbaa !779
  ret %struct.quoting_options* %8, !dbg !1248
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #16 !dbg !1249 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1255, metadata !DIExpression()), !dbg !1256
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1257
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1257
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1258
  %5 = load i32, i32* %4, align 8, !dbg !1258, !tbaa !1259
  ret i32 %5, !dbg !1261
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #13 !dbg !1262 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1266, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i32 %1, metadata !1267, metadata !DIExpression()), !dbg !1268
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1269
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1269
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1270
  store i32 %1, i32* %5, align 8, !dbg !1271, !tbaa !1259
  ret void, !dbg !1272
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !1273 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1277, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %1, metadata !1278, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i32 %2, metadata !1279, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %1, metadata !1280, metadata !DIExpression()), !dbg !1286
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1287
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1287
  %6 = lshr i8 %1, 5, !dbg !1288
  %7 = zext i8 %6 to i64, !dbg !1288
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1289
  call void @llvm.dbg.value(metadata i32* %8, metadata !1282, metadata !DIExpression()), !dbg !1286
  %9 = and i8 %1, 31, !dbg !1290
  %10 = zext i8 %9 to i32, !dbg !1290
  call void @llvm.dbg.value(metadata i32 %10, metadata !1284, metadata !DIExpression()), !dbg !1286
  %11 = load i32, i32* %8, align 4, !dbg !1291, !tbaa !779
  %12 = lshr i32 %11, %10, !dbg !1292
  %13 = and i32 %12, 1, !dbg !1293
  call void @llvm.dbg.value(metadata i32 %13, metadata !1285, metadata !DIExpression()), !dbg !1286
  %14 = and i32 %2, 1, !dbg !1294
  %15 = xor i32 %13, %14, !dbg !1295
  %16 = shl i32 %15, %10, !dbg !1296
  %17 = xor i32 %16, %11, !dbg !1297
  store i32 %17, i32* %8, align 4, !dbg !1297, !tbaa !779
  ret i32 %13, !dbg !1298
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !1299 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1303, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %1, metadata !1304, metadata !DIExpression()), !dbg !1306
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1307
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1309
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1303, metadata !DIExpression()), !dbg !1306
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1310
  %6 = load i32, i32* %5, align 4, !dbg !1310, !tbaa !1311
  call void @llvm.dbg.value(metadata i32 %6, metadata !1305, metadata !DIExpression()), !dbg !1306
  store i32 %1, i32* %5, align 4, !dbg !1312, !tbaa !1311
  ret i32 %6, !dbg !1313
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1314 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1318, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %1, metadata !1319, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i8* %2, metadata !1320, metadata !DIExpression()), !dbg !1321
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1322
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1324
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1318, metadata !DIExpression()), !dbg !1321
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1325
  store i32 10, i32* %6, align 8, !dbg !1326, !tbaa !1259
  %7 = icmp ne i8* %1, null, !dbg !1327
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1329
  br i1 %9, label %11, label %10, !dbg !1329

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !1330
  unreachable, !dbg !1330

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1331
  store i8* %1, i8** %12, align 8, !dbg !1332, !tbaa !1333
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1334
  store i8* %2, i8** %13, align 8, !dbg !1335, !tbaa !1336
  ret void, !dbg !1337
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1338 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1342, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %1, metadata !1343, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8* %2, metadata !1344, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i64 %3, metadata !1345, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1346, metadata !DIExpression()), !dbg !1350
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1351
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1347, metadata !DIExpression()), !dbg !1350
  %8 = tail call i32* @__errno_location() #31, !dbg !1352
  %9 = load i32, i32* %8, align 4, !dbg !1352, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %9, metadata !1348, metadata !DIExpression()), !dbg !1350
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1353
  %11 = load i32, i32* %10, align 8, !dbg !1353, !tbaa !1259
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1354
  %13 = load i32, i32* %12, align 4, !dbg !1354, !tbaa !1311
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1355
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1356
  %16 = load i8*, i8** %15, align 8, !dbg !1356, !tbaa !1333
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1357
  %18 = load i8*, i8** %17, align 8, !dbg !1357, !tbaa !1336
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %19, metadata !1349, metadata !DIExpression()), !dbg !1350
  store i32 %9, i32* %8, align 4, !dbg !1359, !tbaa !779
  ret i64 %19, !dbg !1360
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1361 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1367, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %1, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %2, metadata !1369, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %3, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %4, metadata !1371, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %5, metadata !1372, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32* %6, metadata !1373, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %7, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %8, metadata !1375, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* null, metadata !1379, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !1380, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, metadata !1381, metadata !DIExpression()), !dbg !1437
  %13 = tail call i64 @__ctype_get_mb_cur_max() #27, !dbg !1438
  %14 = icmp eq i64 %13, 1, !dbg !1439
  call void @llvm.dbg.value(metadata i1 %14, metadata !1382, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1437
  %15 = lshr i32 %5, 1, !dbg !1440
  %16 = trunc i32 %15 to i8, !dbg !1440
  %17 = and i8 %16, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i8 %17, metadata !1383, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, metadata !1386, metadata !DIExpression()), !dbg !1437
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1441

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1442
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1443
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1444
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1445
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1437
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1446
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1447
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1448
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %38, metadata !1386, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %37, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %36, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %35, metadata !1383, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %34, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %33, metadata !1381, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %32, metadata !1380, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %31, metadata !1379, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %30, metadata !1378, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %29, metadata !1375, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %28, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %27, metadata !1371, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.label(metadata !1431), !dbg !1449
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
  ], !dbg !1450

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1383, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 5, metadata !1371, metadata !DIExpression()), !dbg !1437
  br label %92, !dbg !1451

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1383, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 5, metadata !1371, metadata !DIExpression()), !dbg !1437
  %42 = and i8 %35, 1, !dbg !1453
  %43 = icmp eq i8 %42, 0, !dbg !1453
  br i1 %43, label %44, label %92, !dbg !1451

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1455
  br i1 %45, label %92, label %46, !dbg !1458

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1455, !tbaa !948
  br label %92, !dbg !1455

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %27), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %48, metadata !1374, metadata !DIExpression()), !dbg !1437
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %27), !dbg !1463
  call void @llvm.dbg.value(metadata i8* %49, metadata !1375, metadata !DIExpression()), !dbg !1437
  br label %50, !dbg !1464

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1375, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %51, metadata !1374, metadata !DIExpression()), !dbg !1437
  %53 = and i8 %35, 1, !dbg !1465
  %54 = icmp eq i8 %53, 0, !dbg !1465
  br i1 %54, label %55, label %70, !dbg !1467

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1379, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !1377, metadata !DIExpression()), !dbg !1437
  %56 = load i8, i8* %51, align 1, !dbg !1468, !tbaa !948
  %57 = icmp eq i8 %56, 0, !dbg !1471
  br i1 %57, label %70, label %58, !dbg !1471

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1379, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %61, metadata !1377, metadata !DIExpression()), !dbg !1437
  %62 = icmp ult i64 %61, %39, !dbg !1472
  br i1 %62, label %63, label %65, !dbg !1475

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1472
  store i8 %59, i8* %64, align 1, !dbg !1472, !tbaa !948
  br label %65, !dbg !1472

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1475
  call void @llvm.dbg.value(metadata i64 %66, metadata !1377, metadata !DIExpression()), !dbg !1437
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1476
  call void @llvm.dbg.value(metadata i8* %67, metadata !1379, metadata !DIExpression()), !dbg !1437
  %68 = load i8, i8* %67, align 1, !dbg !1468, !tbaa !948
  %69 = icmp eq i8 %68, 0, !dbg !1471
  br i1 %69, label %70, label %58, !dbg !1471, !llvm.loop !1477

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %71, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, metadata !1381, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %52, metadata !1379, metadata !DIExpression()), !dbg !1437
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #28, !dbg !1480
  call void @llvm.dbg.value(metadata i64 %72, metadata !1380, metadata !DIExpression()), !dbg !1437
  br label %92, !dbg !1481

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1381, metadata !DIExpression()), !dbg !1437
  br label %74, !dbg !1482

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8 %75, metadata !1381, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, metadata !1383, metadata !DIExpression()), !dbg !1437
  br label %76, !dbg !1483

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1445
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8 %78, metadata !1383, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %77, metadata !1381, metadata !DIExpression()), !dbg !1437
  %79 = and i8 %78, 1, !dbg !1484
  %80 = icmp eq i8 %79, 0, !dbg !1484
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1486
  br label %82, !dbg !1486

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1437
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1440
  call void @llvm.dbg.value(metadata i8 %84, metadata !1383, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %83, metadata !1381, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 2, metadata !1371, metadata !DIExpression()), !dbg !1437
  %85 = and i8 %84, 1, !dbg !1487
  %86 = icmp eq i8 %85, 0, !dbg !1487
  br i1 %86, label %87, label %92, !dbg !1489

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1490
  br i1 %88, label %92, label %89, !dbg !1493

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1490, !tbaa !948
  br label %92, !dbg !1490

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1383, metadata !DIExpression()), !dbg !1437
  br label %92, !dbg !1494

91:                                               ; preds = %26
  call void @abort() #29, !dbg !1495
  unreachable, !dbg !1495

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1479
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %40 ], !dbg !1437
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1437
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1437
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8 %100, metadata !1383, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %99, metadata !1381, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %98, metadata !1380, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %97, metadata !1379, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %96, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %95, metadata !1375, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %94, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i32 %93, metadata !1371, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !1376, metadata !DIExpression()), !dbg !1437
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
  br label %121, !dbg !1496

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1497
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1479
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1442
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1446
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1447
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1448
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %128, metadata !1386, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %127, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %126, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %125, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %124, metadata !1378, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %123, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %122, metadata !1376, metadata !DIExpression()), !dbg !1437
  %130 = icmp eq i64 %125, -1, !dbg !1498
  br i1 %130, label %131, label %135, !dbg !1499

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1500
  %133 = load i8, i8* %132, align 1, !dbg !1500, !tbaa !948
  %134 = icmp eq i8 %133, 0, !dbg !1501
  br i1 %134, label %587, label %137, !dbg !1502

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1503
  br i1 %136, label %587, label %137, !dbg !1502

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1392, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 0, metadata !1394, metadata !DIExpression()), !dbg !1504
  br i1 %106, label %138, label %153, !dbg !1505

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1507
  %140 = and i1 %107, %130, !dbg !1508
  br i1 %140, label %141, label %143, !dbg !1508

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %142, metadata !1370, metadata !DIExpression()), !dbg !1437
  br label %143, !dbg !1510

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1510
  call void @llvm.dbg.value(metadata i64 %144, metadata !1370, metadata !DIExpression()), !dbg !1437
  %145 = icmp ugt i64 %139, %144, !dbg !1511
  br i1 %145, label %153, label %146, !dbg !1512

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1513
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1514
  %149 = icmp ne i32 %148, 0, !dbg !1515
  %150 = or i1 %149, %109, !dbg !1516
  %151 = xor i1 %149, true, !dbg !1516
  %152 = zext i1 %151 to i8, !dbg !1516
  br i1 %150, label %153, label %646, !dbg !1516

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1504
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %156, metadata !1392, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 %154, metadata !1370, metadata !DIExpression()), !dbg !1437
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1517
  %158 = load i8, i8* %157, align 1, !dbg !1517, !tbaa !948
  call void @llvm.dbg.value(metadata i8 %158, metadata !1387, metadata !DIExpression()), !dbg !1504
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
  ], !dbg !1518

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1519

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1520

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1393, metadata !DIExpression()), !dbg !1504
  %162 = and i8 %126, 1, !dbg !1524
  %163 = icmp eq i8 %162, 0, !dbg !1524
  %164 = and i1 %110, %163, !dbg !1524
  br i1 %164, label %165, label %181, !dbg !1524

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1526
  br i1 %166, label %167, label %169, !dbg !1530

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1526
  store i8 39, i8* %168, align 1, !dbg !1526, !tbaa !948
  br label %169, !dbg !1526

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %170, metadata !1377, metadata !DIExpression()), !dbg !1437
  %171 = icmp ult i64 %170, %129, !dbg !1531
  br i1 %171, label %172, label %174, !dbg !1534

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1531
  store i8 36, i8* %173, align 1, !dbg !1531, !tbaa !948
  br label %174, !dbg !1531

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %175, metadata !1377, metadata !DIExpression()), !dbg !1437
  %176 = icmp ult i64 %175, %129, !dbg !1535
  br i1 %176, label %177, label %179, !dbg !1538

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1535
  store i8 39, i8* %178, align 1, !dbg !1535, !tbaa !948
  br label %179, !dbg !1535

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %180, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, metadata !1384, metadata !DIExpression()), !dbg !1437
  br label %181, !dbg !1539

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1437
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8 %183, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %182, metadata !1377, metadata !DIExpression()), !dbg !1437
  %184 = icmp ult i64 %182, %129, !dbg !1540
  br i1 %184, label %185, label %187, !dbg !1543

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1540
  store i8 92, i8* %186, align 1, !dbg !1540, !tbaa !948
  br label %187, !dbg !1540

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %188, metadata !1377, metadata !DIExpression()), !dbg !1437
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1544
  br i1 %191, label %192, label %473, !dbg !1544

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1546
  %194 = load i8, i8* %193, align 1, !dbg !1546, !tbaa !948
  %195 = add i8 %194, -48, !dbg !1547
  %196 = icmp ult i8 %195, 10, !dbg !1547
  br i1 %196, label %197, label %473, !dbg !1547

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1548
  br i1 %198, label %199, label %201, !dbg !1552

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1548
  store i8 48, i8* %200, align 1, !dbg !1548, !tbaa !948
  br label %201, !dbg !1548

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1552
  call void @llvm.dbg.value(metadata i64 %202, metadata !1377, metadata !DIExpression()), !dbg !1437
  %203 = icmp ult i64 %202, %129, !dbg !1553
  br i1 %203, label %204, label %206, !dbg !1556

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1553
  store i8 48, i8* %205, align 1, !dbg !1553, !tbaa !948
  br label %206, !dbg !1553

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %207, metadata !1377, metadata !DIExpression()), !dbg !1437
  br label %473, !dbg !1557

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1558

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1559

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1560

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1562
  br i1 %214, label %215, label %473, !dbg !1562

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1564
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1565
  %218 = load i8, i8* %217, align 1, !dbg !1565, !tbaa !948
  %219 = icmp eq i8 %218, 63, !dbg !1566
  br i1 %219, label %220, label %473, !dbg !1567

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1568
  %222 = load i8, i8* %221, align 1, !dbg !1568, !tbaa !948
  %223 = sext i8 %222 to i32, !dbg !1568
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
  ], !dbg !1569

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1570

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 undef, metadata !1376, metadata !DIExpression()), !dbg !1437
  %226 = icmp ult i64 %123, %129, !dbg !1572
  br i1 %226, label %227, label %229, !dbg !1575

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1572
  store i8 63, i8* %228, align 1, !dbg !1572, !tbaa !948
  br label %229, !dbg !1572

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %230, metadata !1377, metadata !DIExpression()), !dbg !1437
  %231 = icmp ult i64 %230, %129, !dbg !1576
  br i1 %231, label %232, label %234, !dbg !1579

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1576
  store i8 34, i8* %233, align 1, !dbg !1576, !tbaa !948
  br label %234, !dbg !1576

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %235, metadata !1377, metadata !DIExpression()), !dbg !1437
  %236 = icmp ult i64 %235, %129, !dbg !1580
  br i1 %236, label %237, label %239, !dbg !1583

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1580
  store i8 34, i8* %238, align 1, !dbg !1580, !tbaa !948
  br label %239, !dbg !1580

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1583
  call void @llvm.dbg.value(metadata i64 %240, metadata !1377, metadata !DIExpression()), !dbg !1437
  %241 = icmp ult i64 %240, %129, !dbg !1584
  br i1 %241, label %242, label %244, !dbg !1587

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1584
  store i8 63, i8* %243, align 1, !dbg !1584, !tbaa !948
  br label %244, !dbg !1584

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %245, metadata !1377, metadata !DIExpression()), !dbg !1437
  br label %473, !dbg !1588

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1391, metadata !DIExpression()), !dbg !1504
  br label %256, !dbg !1589

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1391, metadata !DIExpression()), !dbg !1504
  br label %256, !dbg !1590

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1391, metadata !DIExpression()), !dbg !1504
  br label %254, !dbg !1591

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1391, metadata !DIExpression()), !dbg !1504
  br label %254, !dbg !1592

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1391, metadata !DIExpression()), !dbg !1504
  br label %256, !dbg !1593

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1391, metadata !DIExpression()), !dbg !1504
  br i1 %110, label %252, label %253, !dbg !1594

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1595

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1598

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1600
  call void @llvm.dbg.value(metadata i8 %255, metadata !1391, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.label(metadata !1432), !dbg !1601
  br i1 %111, label %256, label %631, !dbg !1602

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1600
  call void @llvm.dbg.value(metadata i8 %257, metadata !1391, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.label(metadata !1433), !dbg !1604
  br i1 %102, label %495, label %473, !dbg !1605

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1606

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1607, !tbaa !948
  %261 = icmp eq i8 %260, 0, !dbg !1609
  br i1 %261, label %262, label %473, !dbg !1610

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1611
  br i1 %263, label %264, label %473, !dbg !1613

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1504
  br label %265, !dbg !1614

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %266, metadata !1394, metadata !DIExpression()), !dbg !1504
  br i1 %111, label %473, label %631, !dbg !1615

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1504
  br i1 %110, label %268, label %473, !dbg !1617

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1618

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1621
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1623
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1623
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %274, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %273, metadata !1378, metadata !DIExpression()), !dbg !1437
  %275 = icmp ult i64 %123, %274, !dbg !1624
  br i1 %275, label %276, label %278, !dbg !1627

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1624
  store i8 39, i8* %277, align 1, !dbg !1624, !tbaa !948
  br label %278, !dbg !1624

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %279, metadata !1377, metadata !DIExpression()), !dbg !1437
  %280 = icmp ult i64 %279, %274, !dbg !1628
  br i1 %280, label %281, label %283, !dbg !1631

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1628
  store i8 92, i8* %282, align 1, !dbg !1628, !tbaa !948
  br label %283, !dbg !1628

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %284, metadata !1377, metadata !DIExpression()), !dbg !1437
  %285 = icmp ult i64 %284, %274, !dbg !1632
  br i1 %285, label %286, label %288, !dbg !1635

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1632
  store i8 39, i8* %287, align 1, !dbg !1632, !tbaa !948
  br label %288, !dbg !1632

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %289, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, metadata !1384, metadata !DIExpression()), !dbg !1437
  br label %473, !dbg !1636

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1637

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1395, metadata !DIExpression()), !dbg !1638
  %292 = tail call i16** @__ctype_b_loc() #31, !dbg !1639
  %293 = load i16*, i16** %292, align 8, !dbg !1639, !tbaa !614
  %294 = zext i8 %158 to i64, !dbg !1639
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1639
  %296 = load i16, i16* %295, align 2, !dbg !1639, !tbaa !1641
  %297 = lshr i16 %296, 14, !dbg !1643
  %298 = trunc i16 %297 to i8, !dbg !1643
  %299 = and i8 %298, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i8 %354, metadata !1398, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %355, metadata !1395, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %306, metadata !1370, metadata !DIExpression()), !dbg !1437
  %300 = icmp eq i8 %299, 0, !dbg !1644
  call void @llvm.dbg.value(metadata i1 %357, metadata !1394, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1504
  br label %359, !dbg !1645

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1646
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1399, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %23, metadata !1648, metadata !DIExpression()) #27, !dbg !1656
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()) #27, !dbg !1656
  call void @llvm.dbg.value(metadata i64 8, metadata !1655, metadata !DIExpression()) #27, !dbg !1656
  store i64 0, i64* %10, align 8, !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1395, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 1, metadata !1398, metadata !DIExpression()), !dbg !1638
  %302 = icmp eq i64 %154, -1, !dbg !1659
  br i1 %302, label %303, label %305, !dbg !1661

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #28, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %304, metadata !1370, metadata !DIExpression()), !dbg !1437
  br label %305, !dbg !1663

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1504
  call void @llvm.dbg.value(metadata i64 %306, metadata !1370, metadata !DIExpression()), !dbg !1437
  br label %307, !dbg !1664

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1665
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1666
  call void @llvm.dbg.value(metadata i8 %309, metadata !1398, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %308, metadata !1395, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1667
  %310 = add i64 %308, %122, !dbg !1668
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1669
  %312 = sub i64 %306, %310, !dbg !1670
  call void @llvm.dbg.value(metadata i32* %12, metadata !1417, metadata !DIExpression(DW_OP_deref)), !dbg !1671
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #27, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %313, metadata !1420, metadata !DIExpression()), !dbg !1671
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1673

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1395, metadata !DIExpression()), !dbg !1638
  %315 = icmp ugt i64 %306, %310, !dbg !1674
  br i1 %315, label %316, label %341, !dbg !1676

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1677
  br label %318, !dbg !1677

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1395, metadata !DIExpression()), !dbg !1638
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1678
  %322 = load i8, i8* %321, align 1, !dbg !1678, !tbaa !948
  %323 = icmp eq i8 %322, 0, !dbg !1676
  br i1 %323, label %341, label %324, !dbg !1677

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %325, metadata !1395, metadata !DIExpression()), !dbg !1638
  %326 = add i64 %325, %122, !dbg !1680
  %327 = icmp ult i64 %326, %306, !dbg !1674
  br i1 %327, label %318, label %341, !dbg !1676, !llvm.loop !1681

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1682
  call void @llvm.dbg.value(metadata i64 1, metadata !1421, metadata !DIExpression()), !dbg !1683
  br i1 %330, label %331, label %344, !dbg !1682

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1421, metadata !DIExpression()), !dbg !1683
  %333 = add i64 %332, %310, !dbg !1684
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1687
  %335 = load i8, i8* %334, align 1, !dbg !1687, !tbaa !948
  %336 = sext i8 %335 to i32, !dbg !1687
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !1688

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %338, metadata !1421, metadata !DIExpression()), !dbg !1683
  %339 = icmp eq i64 %338, %313, !dbg !1690
  br i1 %339, label %344, label %331, !dbg !1691, !llvm.loop !1692

340:                                              ; preds = %307
  br label %341, !dbg !1694

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1398, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 undef, metadata !1395, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1694
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1695, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %345, metadata !1417, metadata !DIExpression()), !dbg !1671
  %346 = call i32 @iswprint(i32 %345) #27, !dbg !1697
  %347 = icmp eq i32 %346, 0, !dbg !1697
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1698
  call void @llvm.dbg.value(metadata i8 %348, metadata !1398, metadata !DIExpression()), !dbg !1638
  %349 = add i64 %313, %308, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %349, metadata !1395, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1694
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #28, !dbg !1700
  %351 = icmp eq i32 %350, 0, !dbg !1701
  br i1 %351, label %307, label %353, !dbg !1702, !llvm.loop !1703

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1398, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 undef, metadata !1395, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #27, !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1705
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #27, !dbg !1705
  call void @llvm.dbg.value(metadata i8 %354, metadata !1398, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %355, metadata !1395, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i64 %306, metadata !1370, metadata !DIExpression()), !dbg !1437
  %356 = and i8 %354, 1, !dbg !1644
  %357 = icmp eq i8 %356, 0, !dbg !1644
  call void @llvm.dbg.value(metadata i1 %357, metadata !1394, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1504
  %358 = icmp ugt i64 %355, 1, !dbg !1706
  br i1 %358, label %367, label %359, !dbg !1645

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !1707
  br i1 %364, label %367, label %365, !dbg !1707

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i8 %472, metadata !1394, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %441, metadata !1393, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %440, metadata !1392, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %439, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %438, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %371, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %437, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %375, metadata !1376, metadata !DIExpression()), !dbg !1437
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %372, metadata !1428, metadata !DIExpression()), !dbg !1709
  %373 = and i1 %102, %368
  br label %374, !dbg !1710

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1497
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1437
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1446
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1504
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1504
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1711
  call void @llvm.dbg.value(metadata i8 %380, metadata !1393, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %379, metadata !1392, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %378, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %377, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %376, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %375, metadata !1376, metadata !DIExpression()), !dbg !1437
  br i1 %373, label %381, label %427, !dbg !1712

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1717

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1393, metadata !DIExpression()), !dbg !1504
  %383 = and i8 %377, 1, !dbg !1720
  %384 = icmp eq i8 %383, 0, !dbg !1720
  %385 = and i1 %110, %384, !dbg !1720
  br i1 %385, label %386, label %402, !dbg !1720

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1722
  br i1 %387, label %388, label %390, !dbg !1726

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1722
  store i8 39, i8* %389, align 1, !dbg !1722, !tbaa !948
  br label %390, !dbg !1722

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %391, metadata !1377, metadata !DIExpression()), !dbg !1437
  %392 = icmp ult i64 %391, %129, !dbg !1727
  br i1 %392, label %393, label %395, !dbg !1730

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1727
  store i8 36, i8* %394, align 1, !dbg !1727, !tbaa !948
  br label %395, !dbg !1727

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %396, metadata !1377, metadata !DIExpression()), !dbg !1437
  %397 = icmp ult i64 %396, %129, !dbg !1731
  br i1 %397, label %398, label %400, !dbg !1734

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1731
  store i8 39, i8* %399, align 1, !dbg !1731, !tbaa !948
  br label %400, !dbg !1731

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %401, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, metadata !1384, metadata !DIExpression()), !dbg !1437
  br label %402, !dbg !1735

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1437
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8 %404, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %403, metadata !1377, metadata !DIExpression()), !dbg !1437
  %405 = icmp ult i64 %403, %129, !dbg !1736
  br i1 %405, label %406, label %408, !dbg !1739

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1736
  store i8 92, i8* %407, align 1, !dbg !1736, !tbaa !948
  br label %408, !dbg !1736

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %409, metadata !1377, metadata !DIExpression()), !dbg !1437
  %410 = icmp ult i64 %409, %129, !dbg !1740
  br i1 %410, label %411, label %415, !dbg !1743

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1740
  %413 = or i8 %412, 48, !dbg !1740
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1740
  store i8 %413, i8* %414, align 1, !dbg !1740, !tbaa !948
  br label %415, !dbg !1740

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %416, metadata !1377, metadata !DIExpression()), !dbg !1437
  %417 = icmp ult i64 %416, %129, !dbg !1744
  br i1 %417, label %418, label %423, !dbg !1747

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1744
  %420 = and i8 %419, 7, !dbg !1744
  %421 = or i8 %420, 48, !dbg !1744
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1744
  store i8 %421, i8* %422, align 1, !dbg !1744, !tbaa !948
  br label %423, !dbg !1744

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %424, metadata !1377, metadata !DIExpression()), !dbg !1437
  %425 = and i8 %378, 7, !dbg !1748
  %426 = or i8 %425, 48, !dbg !1749
  call void @llvm.dbg.value(metadata i8 %426, metadata !1387, metadata !DIExpression()), !dbg !1504
  br label %436, !dbg !1750

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !1751
  %429 = icmp eq i8 %428, 0, !dbg !1751
  br i1 %429, label %436, label %430, !dbg !1753

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !1754
  br i1 %431, label %432, label %434, !dbg !1758

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1754
  store i8 92, i8* %433, align 1, !dbg !1754, !tbaa !948
  br label %434, !dbg !1754

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %435, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, metadata !1392, metadata !DIExpression()), !dbg !1504
  br label %436, !dbg !1759

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1437
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1446
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1504
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1504
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1504
  call void @llvm.dbg.value(metadata i8 %441, metadata !1393, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %440, metadata !1392, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %439, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %438, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %437, metadata !1377, metadata !DIExpression()), !dbg !1437
  %442 = add i64 %375, 1, !dbg !1760
  %443 = icmp ugt i64 %372, %442, !dbg !1762
  br i1 %443, label %444, label %471, !dbg !1763

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !1764
  %446 = icmp ne i8 %445, 0, !dbg !1764
  %447 = and i8 %441, 1, !dbg !1764
  %448 = icmp eq i8 %447, 0, !dbg !1764
  %449 = and i1 %446, %448, !dbg !1764
  br i1 %449, label %450, label %461, !dbg !1764

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !1767
  br i1 %451, label %452, label %454, !dbg !1771

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !1767
  store i8 39, i8* %453, align 1, !dbg !1767, !tbaa !948
  br label %454, !dbg !1767

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %455, metadata !1377, metadata !DIExpression()), !dbg !1437
  %456 = icmp ult i64 %455, %129, !dbg !1772
  br i1 %456, label %457, label %459, !dbg !1775

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1772
  store i8 39, i8* %458, align 1, !dbg !1772, !tbaa !948
  br label %459, !dbg !1772

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %460, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, metadata !1384, metadata !DIExpression()), !dbg !1437
  br label %461, !dbg !1776

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1777
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8 %463, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %462, metadata !1377, metadata !DIExpression()), !dbg !1437
  %464 = icmp ult i64 %462, %129, !dbg !1778
  br i1 %464, label %465, label %467, !dbg !1781

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1778
  store i8 %439, i8* %466, align 1, !dbg !1778, !tbaa !948
  br label %467, !dbg !1778

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %468, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %442, metadata !1376, metadata !DIExpression()), !dbg !1437
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1782
  %470 = load i8, i8* %469, align 1, !dbg !1782, !tbaa !948
  call void @llvm.dbg.value(metadata i8 %470, metadata !1387, metadata !DIExpression()), !dbg !1504
  br label %374, !dbg !1783, !llvm.loop !1784

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i8 %472, metadata !1394, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %441, metadata !1393, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %440, metadata !1392, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %439, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %438, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %371, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %437, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %375, metadata !1376, metadata !DIExpression()), !dbg !1437
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1497
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1437
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1442
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1787
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1437
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1437
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1504
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1504
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1504
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %482, metadata !1394, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %481, metadata !1393, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %156, metadata !1392, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %480, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %479, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %478, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %477, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %476, metadata !1378, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %475, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %474, metadata !1376, metadata !DIExpression()), !dbg !1437
  br i1 %116, label %494, label %484, !dbg !1788

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1790
  %486 = zext i8 %485 to i64, !dbg !1790
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1791
  %488 = load i32, i32* %487, align 4, !dbg !1791, !tbaa !779
  %489 = and i8 %480, 31, !dbg !1792
  %490 = zext i8 %489 to i32, !dbg !1792
  %491 = shl nuw i32 1, %490, !dbg !1793
  %492 = and i32 %488, %491, !dbg !1793
  %493 = icmp eq i32 %492, 0, !dbg !1793
  br i1 %493, label %494, label %495, !dbg !1794

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !1795

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !1796
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1437
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1442
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1787
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1446
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1447
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1504
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1504
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %503, metadata !1394, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %502, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %501, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %500, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %499, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %498, metadata !1378, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %497, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %496, metadata !1376, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.label(metadata !1434), !dbg !1797
  br i1 %109, label %505, label %635, !dbg !1798

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1393, metadata !DIExpression()), !dbg !1504
  %506 = and i8 %500, 1, !dbg !1800
  %507 = icmp eq i8 %506, 0, !dbg !1800
  %508 = and i1 %110, %507, !dbg !1800
  br i1 %508, label %509, label %525, !dbg !1800

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1802
  br i1 %510, label %511, label %513, !dbg !1806

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1802
  store i8 39, i8* %512, align 1, !dbg !1802, !tbaa !948
  br label %513, !dbg !1802

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %514, metadata !1377, metadata !DIExpression()), !dbg !1437
  %515 = icmp ult i64 %514, %504, !dbg !1807
  br i1 %515, label %516, label %518, !dbg !1810

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1807
  store i8 36, i8* %517, align 1, !dbg !1807, !tbaa !948
  br label %518, !dbg !1807

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %519, metadata !1377, metadata !DIExpression()), !dbg !1437
  %520 = icmp ult i64 %519, %504, !dbg !1811
  br i1 %520, label %521, label %523, !dbg !1814

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1811
  store i8 39, i8* %522, align 1, !dbg !1811, !tbaa !948
  br label %523, !dbg !1811

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %524, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 1, metadata !1384, metadata !DIExpression()), !dbg !1437
  br label %525, !dbg !1815

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1504
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8 %527, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %526, metadata !1377, metadata !DIExpression()), !dbg !1437
  %528 = icmp ult i64 %526, %504, !dbg !1816
  br i1 %528, label %529, label %531, !dbg !1819

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1816
  store i8 92, i8* %530, align 1, !dbg !1816, !tbaa !948
  br label %531, !dbg !1816

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %543, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %542, metadata !1394, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %541, metadata !1393, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %540, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %539, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %538, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %537, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %536, metadata !1378, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %535, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %534, metadata !1376, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.label(metadata !1435), !dbg !1820
  br label %560, !dbg !1821

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1796
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1437
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1442
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1787
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1446
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1447
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1824
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1504
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1504
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %542, metadata !1394, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %541, metadata !1393, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %540, metadata !1387, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %539, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %538, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %537, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %536, metadata !1378, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %535, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %534, metadata !1376, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.label(metadata !1435), !dbg !1820
  %544 = and i8 %538, 1, !dbg !1821
  %545 = icmp ne i8 %544, 0, !dbg !1821
  %546 = and i8 %541, 1, !dbg !1821
  %547 = icmp eq i8 %546, 0, !dbg !1821
  %548 = and i1 %545, %547, !dbg !1821
  br i1 %548, label %549, label %560, !dbg !1821

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !1825
  br i1 %550, label %551, label %553, !dbg !1829

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !1825
  store i8 39, i8* %552, align 1, !dbg !1825, !tbaa !948
  br label %553, !dbg !1825

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %554, metadata !1377, metadata !DIExpression()), !dbg !1437
  %555 = icmp ult i64 %554, %543, !dbg !1830
  br i1 %555, label %556, label %558, !dbg !1833

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1830
  store i8 39, i8* %557, align 1, !dbg !1830, !tbaa !948
  br label %558, !dbg !1830

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %559, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 0, metadata !1384, metadata !DIExpression()), !dbg !1437
  br label %560, !dbg !1834

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1504
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1437
  call void @llvm.dbg.value(metadata i8 %569, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %568, metadata !1377, metadata !DIExpression()), !dbg !1437
  %570 = icmp ult i64 %568, %561, !dbg !1835
  br i1 %570, label %571, label %573, !dbg !1838

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1835
  store i8 %563, i8* %572, align 1, !dbg !1835, !tbaa !948
  br label %573, !dbg !1835

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %574, metadata !1377, metadata !DIExpression()), !dbg !1437
  %575 = icmp eq i8 %562, 0, !dbg !1839
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1841
  call void @llvm.dbg.value(metadata i8 %576, metadata !1386, metadata !DIExpression()), !dbg !1437
  br label %577, !dbg !1842

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1796
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1437
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1442
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1787
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1446
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1437
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1448
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %584, metadata !1386, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %583, metadata !1385, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %582, metadata !1384, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %581, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %580, metadata !1378, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %579, metadata !1377, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %578, metadata !1376, metadata !DIExpression()), !dbg !1437
  %586 = add i64 %578, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %586, metadata !1376, metadata !DIExpression()), !dbg !1437
  br label %121, !dbg !1844, !llvm.loop !1845

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !1847
  %590 = and i1 %110, %589, !dbg !1849
  %591 = xor i1 %590, true, !dbg !1849
  %592 = or i1 %109, %591, !dbg !1849
  br i1 %592, label %593, label %635, !dbg !1849

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !1850
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !1850
  br i1 %597, label %598, label %607, !dbg !1850

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !1852
  %600 = icmp eq i8 %599, 0, !dbg !1852
  br i1 %600, label %603, label %601, !dbg !1855

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !1856
  br label %652, !dbg !1857

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !1858
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !1860
  br i1 %606, label %26, label %607, !dbg !1860

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !1861
  %610 = and i1 %609, %608, !dbg !1863
  br i1 %610, label %611, label %626, !dbg !1863

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1379, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %123, metadata !1377, metadata !DIExpression()), !dbg !1437
  %612 = load i8, i8* %97, align 1, !dbg !1864, !tbaa !948
  %613 = icmp eq i8 %612, 0, !dbg !1867
  br i1 %613, label %626, label %614, !dbg !1867

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1379, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %617, metadata !1377, metadata !DIExpression()), !dbg !1437
  %618 = icmp ult i64 %617, %129, !dbg !1868
  br i1 %618, label %619, label %621, !dbg !1871

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1868
  store i8 %615, i8* %620, align 1, !dbg !1868, !tbaa !948
  br label %621, !dbg !1868

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %622, metadata !1377, metadata !DIExpression()), !dbg !1437
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1872
  call void @llvm.dbg.value(metadata i8* %623, metadata !1379, metadata !DIExpression()), !dbg !1437
  %624 = load i8, i8* %623, align 1, !dbg !1864, !tbaa !948
  %625 = icmp eq i8 %624, 0, !dbg !1867
  br i1 %625, label %626, label %614, !dbg !1867, !llvm.loop !1873

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %627, metadata !1377, metadata !DIExpression()), !dbg !1437
  %628 = icmp ult i64 %627, %129, !dbg !1875
  br i1 %628, label %629, label %652, !dbg !1877

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1878
  store i8 0, i8* %630, align 1, !dbg !1879, !tbaa !948
  br label %652, !dbg !1878

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %637, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.label(metadata !1436), !dbg !1880
  %633 = icmp eq i8 %101, 0, !dbg !1881
  %634 = select i1 %633, i32 2, i32 4, !dbg !1881
  br label %642, !dbg !1881

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1368, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %637, metadata !1370, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.label(metadata !1436), !dbg !1880
  %639 = icmp eq i32 %93, 2, !dbg !1883
  %640 = icmp eq i8 %636, 0, !dbg !1881
  %641 = select i1 %640, i32 2, i32 4, !dbg !1881
  br i1 %639, label %642, label %646, !dbg !1881

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !1881

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1371, metadata !DIExpression()), !dbg !1437
  %650 = and i32 %5, -3, !dbg !1884
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1885
  br label %652, !dbg !1886

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1887
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1888 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1892, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %1, metadata !1893, metadata !DIExpression()), !dbg !1896
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #27, !dbg !1897
  call void @llvm.dbg.value(metadata i8* %3, metadata !1894, metadata !DIExpression()), !dbg !1896
  %4 = icmp eq i8* %3, %0, !dbg !1898
  br i1 %4, label %5, label %72, !dbg !1900

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #27, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %6, metadata !1895, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %6, metadata !1902, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8* undef, metadata !1908, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 85, metadata !1909, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 84, metadata !1910, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 70, metadata !1911, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 45, metadata !1912, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 56, metadata !1913, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 0, metadata !1914, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 0, metadata !1915, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 0, metadata !1916, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 0, metadata !1917, metadata !DIExpression()), !dbg !1918
  %7 = load i8, i8* %6, align 1, !dbg !1921, !tbaa !948
  %8 = and i8 %7, -33, !dbg !1921
  %9 = sext i8 %8 to i32, !dbg !1921
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !1921

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1923, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* undef, metadata !1928, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 84, metadata !1929, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 70, metadata !1930, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 45, metadata !1931, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 56, metadata !1932, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1933, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1934, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1935, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1936, metadata !DIExpression()), !dbg !1937
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1941
  %12 = load i8, i8* %11, align 1, !dbg !1941, !tbaa !948
  %13 = and i8 %12, -33, !dbg !1941
  %14 = icmp eq i8 %13, 84, !dbg !1941
  br i1 %14, label %15, label %69, !dbg !1941

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !1943, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8* undef, metadata !1948, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 70, metadata !1949, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 45, metadata !1950, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 56, metadata !1951, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1952, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1953, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1954, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1955, metadata !DIExpression()), !dbg !1956
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1960
  %17 = load i8, i8* %16, align 1, !dbg !1960, !tbaa !948
  %18 = and i8 %17, -33, !dbg !1960
  %19 = icmp eq i8 %18, 70, !dbg !1960
  br i1 %19, label %20, label %69, !dbg !1960

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !1962, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8* undef, metadata !1967, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 45, metadata !1968, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 56, metadata !1969, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1971, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1972, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !1974
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1978
  %22 = load i8, i8* %21, align 1, !dbg !1978, !tbaa !948
  %23 = icmp eq i8 %22, 45, !dbg !1978
  br i1 %23, label %24, label %69, !dbg !1980

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !1981, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8* undef, metadata !1986, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 56, metadata !1987, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 0, metadata !1988, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 0, metadata !1989, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata i8 0, metadata !1991, metadata !DIExpression()), !dbg !1992
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1996
  %26 = load i8, i8* %25, align 1, !dbg !1996, !tbaa !948
  %27 = icmp eq i8 %26, 56, !dbg !1996
  br i1 %27, label %28, label %69, !dbg !1998

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !1999, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8* undef, metadata !2004, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !2005, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !2006, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !2008, metadata !DIExpression()), !dbg !2009
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2013
  %30 = load i8, i8* %29, align 1, !dbg !2013, !tbaa !948
  %31 = icmp eq i8 %30, 0, !dbg !2013
  br i1 %31, label %32, label %69, !dbg !2015

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2016, !tbaa !948
  %34 = icmp eq i8 %33, 96, !dbg !2017
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !2016
  br label %72, !dbg !2018

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1923, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* undef, metadata !1928, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 66, metadata !1929, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 49, metadata !1930, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 56, metadata !1931, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 48, metadata !1932, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 51, metadata !1933, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 48, metadata !1934, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1935, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8 0, metadata !1936, metadata !DIExpression()), !dbg !2019
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2023
  %38 = load i8, i8* %37, align 1, !dbg !2023, !tbaa !948
  %39 = and i8 %38, -33, !dbg !2023
  %40 = icmp eq i8 %39, 66, !dbg !2023
  br i1 %40, label %41, label %69, !dbg !2023

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !1943, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8* undef, metadata !1948, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 49, metadata !1949, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 56, metadata !1950, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 48, metadata !1951, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 51, metadata !1952, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 48, metadata !1953, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1954, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8 0, metadata !1955, metadata !DIExpression()), !dbg !2024
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2026
  %43 = load i8, i8* %42, align 1, !dbg !2026, !tbaa !948
  %44 = icmp eq i8 %43, 49, !dbg !2026
  br i1 %44, label %45, label %69, !dbg !2027

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !1962, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8* undef, metadata !1967, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 56, metadata !1968, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 48, metadata !1969, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 51, metadata !1970, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 48, metadata !1971, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 0, metadata !1972, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !2028
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2030
  %47 = load i8, i8* %46, align 1, !dbg !2030, !tbaa !948
  %48 = icmp eq i8 %47, 56, !dbg !2030
  br i1 %48, label %49, label %69, !dbg !2031

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !1981, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8* undef, metadata !1986, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 48, metadata !1987, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 51, metadata !1988, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 48, metadata !1989, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1990, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !1991, metadata !DIExpression()), !dbg !2032
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2034
  %51 = load i8, i8* %50, align 1, !dbg !2034, !tbaa !948
  %52 = icmp eq i8 %51, 48, !dbg !2034
  br i1 %52, label %53, label %69, !dbg !2035

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !1999, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* undef, metadata !2004, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 51, metadata !2005, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 48, metadata !2006, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !2007, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8 0, metadata !2008, metadata !DIExpression()), !dbg !2036
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2038
  %55 = load i8, i8* %54, align 1, !dbg !2038, !tbaa !948
  %56 = icmp eq i8 %55, 51, !dbg !2038
  br i1 %56, label %57, label %69, !dbg !2039

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2040, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8* undef, metadata !2045, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 48, metadata !2046, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2049
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2053
  %59 = load i8, i8* %58, align 1, !dbg !2053, !tbaa !948
  %60 = icmp eq i8 %59, 48, !dbg !2053
  br i1 %60, label %61, label %69, !dbg !2055

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2056, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* undef, metadata !2061, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 0, metadata !2063, metadata !DIExpression()), !dbg !2064
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2068
  %63 = load i8, i8* %62, align 1, !dbg !2068, !tbaa !948
  %64 = icmp eq i8 %63, 0, !dbg !2068
  br i1 %64, label %65, label %69, !dbg !2070

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2071, !tbaa !948
  %67 = icmp eq i8 %66, 96, !dbg !2072
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !2071
  br label %72, !dbg !2073

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2074
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !2075
  br label %72, !dbg !2076

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1896
  ret i8* %73, !dbg !2077
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #11

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2078 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2082 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2088 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i64 %1, metadata !2093, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2094, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %0, metadata !2096, metadata !DIExpression()) #27, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %1, metadata !2101, metadata !DIExpression()) #27, !dbg !2109
  call void @llvm.dbg.value(metadata i64* null, metadata !2102, metadata !DIExpression()) #27, !dbg !2109
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2103, metadata !DIExpression()) #27, !dbg !2109
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2111
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2104, metadata !DIExpression()) #27, !dbg !2109
  %6 = tail call i32* @__errno_location() #31, !dbg !2112
  %7 = load i32, i32* %6, align 4, !dbg !2112, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %7, metadata !2105, metadata !DIExpression()) #27, !dbg !2109
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2113
  %9 = load i32, i32* %8, align 4, !dbg !2113, !tbaa !1311
  %10 = or i32 %9, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %10, metadata !2106, metadata !DIExpression()) #27, !dbg !2109
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2115
  %12 = load i32, i32* %11, align 8, !dbg !2115, !tbaa !1259
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2116
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2117
  %15 = load i8*, i8** %14, align 8, !dbg !2117, !tbaa !1333
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2118
  %17 = load i8*, i8** %16, align 8, !dbg !2118, !tbaa !1336
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #27, !dbg !2119
  %19 = add i64 %18, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %19, metadata !2107, metadata !DIExpression()) #27, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %19, metadata !2121, metadata !DIExpression()) #27, !dbg !2126
  %20 = tail call noalias i8* @xmalloc(i64 %19) #27, !dbg !2128
  call void @llvm.dbg.value(metadata i8* %20, metadata !2108, metadata !DIExpression()) #27, !dbg !2109
  %21 = load i32, i32* %11, align 8, !dbg !2129, !tbaa !1259
  %22 = load i8*, i8** %14, align 8, !dbg !2130, !tbaa !1333
  %23 = load i8*, i8** %16, align 8, !dbg !2131, !tbaa !1336
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #27, !dbg !2132
  store i32 %7, i32* %6, align 4, !dbg !2133, !tbaa !779
  ret i8* %20, !dbg !2134
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2097 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2096, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %1, metadata !2101, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64* %2, metadata !2102, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2103, metadata !DIExpression()), !dbg !2135
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2136
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2104, metadata !DIExpression()), !dbg !2135
  %7 = tail call i32* @__errno_location() #31, !dbg !2137
  %8 = load i32, i32* %7, align 4, !dbg !2137, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %8, metadata !2105, metadata !DIExpression()), !dbg !2135
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2138
  %10 = load i32, i32* %9, align 4, !dbg !2138, !tbaa !1311
  %11 = icmp eq i64* %2, null, !dbg !2139
  %12 = zext i1 %11 to i32, !dbg !2139
  %13 = or i32 %10, %12, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %13, metadata !2106, metadata !DIExpression()), !dbg !2135
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2141
  %15 = load i32, i32* %14, align 8, !dbg !2141, !tbaa !1259
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2142
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2143
  %18 = load i8*, i8** %17, align 8, !dbg !2143, !tbaa !1333
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2144
  %20 = load i8*, i8** %19, align 8, !dbg !2144, !tbaa !1336
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2145
  %22 = add i64 %21, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %22, metadata !2107, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %22, metadata !2121, metadata !DIExpression()) #27, !dbg !2147
  %23 = tail call noalias i8* @xmalloc(i64 %22) #27, !dbg !2149
  call void @llvm.dbg.value(metadata i8* %23, metadata !2108, metadata !DIExpression()), !dbg !2135
  %24 = load i32, i32* %14, align 8, !dbg !2150, !tbaa !1259
  %25 = load i8*, i8** %17, align 8, !dbg !2151, !tbaa !1333
  %26 = load i8*, i8** %19, align 8, !dbg !2152, !tbaa !1336
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2153
  store i32 %8, i32* %7, align 4, !dbg !2154, !tbaa !779
  br i1 %11, label %29, label %28, !dbg !2155

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2156, !tbaa !2158
  br label %29, !dbg !2160

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2161
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2162 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2166, !tbaa !614
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2164, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i32 1, metadata !2165, metadata !DIExpression()), !dbg !2167
  %2 = load i32, i32* @nslots, align 4, !dbg !2168, !tbaa !779
  %3 = icmp sgt i32 %2, 1, !dbg !2171
  br i1 %3, label %4, label %12, !dbg !2172

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2171
  br label %6, !dbg !2172

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2165, metadata !DIExpression()), !dbg !2167
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2173
  %9 = load i8*, i8** %8, align 8, !dbg !2173, !tbaa !2174
  tail call void @free(i8* %9) #27, !dbg !2176
  %10 = add nuw nsw i64 %7, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %10, metadata !2165, metadata !DIExpression()), !dbg !2167
  %11 = icmp eq i64 %10, %5, !dbg !2171
  br i1 %11, label %12, label %6, !dbg !2172, !llvm.loop !2178

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2180
  %14 = load i8*, i8** %13, align 8, !dbg !2180, !tbaa !2174
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2182
  br i1 %15, label %17, label %16, !dbg !2183

16:                                               ; preds = %12
  tail call void @free(i8* %14) #27, !dbg !2184
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2186, !tbaa !2187
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2188, !tbaa !2174
  br label %17, !dbg !2189

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2190
  br i1 %18, label %21, label %19, !dbg !2192

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2193
  tail call void @free(i8* %20) #27, !dbg !2195
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2196, !tbaa !614
  br label %21, !dbg !2197

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2198, !tbaa !779
  ret void, !dbg !2199
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2200 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8* %1, metadata !2203, metadata !DIExpression()), !dbg !2204
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2205
  ret i8* %3, !dbg !2206
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2207 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2211, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8* %1, metadata !2212, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %2, metadata !2213, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2214, metadata !DIExpression()), !dbg !2226
  %5 = tail call i32* @__errno_location() #31, !dbg !2227
  %6 = load i32, i32* %5, align 4, !dbg !2227, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %6, metadata !2215, metadata !DIExpression()), !dbg !2226
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2228, !tbaa !614
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2216, metadata !DIExpression()), !dbg !2226
  %8 = icmp slt i32 %0, 0, !dbg !2229
  br i1 %8, label %9, label %10, !dbg !2231

9:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2232
  unreachable, !dbg !2232

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2233, !tbaa !779
  %12 = icmp sgt i32 %11, %0, !dbg !2234
  br i1 %12, label %34, label %13, !dbg !2235

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2236
  call void @llvm.dbg.value(metadata i1 %14, metadata !2217, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2237
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2220, metadata !DIExpression()), !dbg !2237
  %15 = icmp eq i32 %0, 2147483647, !dbg !2238
  br i1 %15, label %16, label %17, !dbg !2240

16:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2241
  unreachable, !dbg !2241

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2242
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2242
  %20 = add nuw nsw i32 %0, 1, !dbg !2243
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2244
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #27, !dbg !2245
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2245
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2216, metadata !DIExpression()), !dbg !2226
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2246, !tbaa !614
  br i1 %14, label %25, label %26, !dbg !2247

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2248, !tbaa.struct !2250
  br label %26, !dbg !2251

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2252, !tbaa !779
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2253
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2254
  %31 = sub nsw i32 %20, %27, !dbg !2255
  %32 = sext i32 %31 to i64, !dbg !2256
  %33 = shl nsw i64 %32, 4, !dbg !2257
  call void @llvm.dbg.value(metadata i8* %30, metadata !1648, metadata !DIExpression()) #27, !dbg !2258
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()) #27, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %33, metadata !1655, metadata !DIExpression()) #27, !dbg !2258
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #27, !dbg !2260
  store i32 %20, i32* @nslots, align 4, !dbg !2261, !tbaa !779
  br label %34, !dbg !2262

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2226
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2216, metadata !DIExpression()), !dbg !2226
  %36 = zext i32 %0 to i64, !dbg !2263
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2264
  %38 = load i64, i64* %37, align 8, !dbg !2264, !tbaa !2187
  call void @llvm.dbg.value(metadata i64 %38, metadata !2221, metadata !DIExpression()), !dbg !2265
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2266
  %40 = load i8*, i8** %39, align 8, !dbg !2266, !tbaa !2174
  call void @llvm.dbg.value(metadata i8* %40, metadata !2223, metadata !DIExpression()), !dbg !2265
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2267
  %42 = load i32, i32* %41, align 4, !dbg !2267, !tbaa !1311
  %43 = or i32 %42, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i32 %43, metadata !2224, metadata !DIExpression()), !dbg !2265
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2269
  %45 = load i32, i32* %44, align 8, !dbg !2269, !tbaa !1259
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2270
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2271
  %48 = load i8*, i8** %47, align 8, !dbg !2271, !tbaa !1333
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2272
  %50 = load i8*, i8** %49, align 8, !dbg !2272, !tbaa !1336
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %51, metadata !2225, metadata !DIExpression()), !dbg !2265
  %52 = icmp ugt i64 %38, %51, !dbg !2274
  br i1 %52, label %63, label %53, !dbg !2276

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %54, metadata !2221, metadata !DIExpression()), !dbg !2265
  store i64 %54, i64* %37, align 8, !dbg !2279, !tbaa !2187
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2280
  br i1 %55, label %57, label %56, !dbg !2282

56:                                               ; preds = %53
  tail call void @free(i8* %40) #27, !dbg !2283
  br label %57, !dbg !2283

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2121, metadata !DIExpression()) #27, !dbg !2284
  %58 = tail call noalias i8* @xmalloc(i64 %54) #27, !dbg !2286
  call void @llvm.dbg.value(metadata i8* %58, metadata !2223, metadata !DIExpression()), !dbg !2265
  store i8* %58, i8** %39, align 8, !dbg !2287, !tbaa !2174
  %59 = load i32, i32* %44, align 8, !dbg !2288, !tbaa !1259
  %60 = load i8*, i8** %47, align 8, !dbg !2289, !tbaa !1333
  %61 = load i8*, i8** %49, align 8, !dbg !2290, !tbaa !1336
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2291
  br label %63, !dbg !2292

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2265
  call void @llvm.dbg.value(metadata i8* %64, metadata !2223, metadata !DIExpression()), !dbg !2265
  store i32 %6, i32* %5, align 4, !dbg !2293, !tbaa !779
  ret i8* %64, !dbg !2294
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2299, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i8* %1, metadata !2300, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 %2, metadata !2301, metadata !DIExpression()), !dbg !2302
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2303
  ret i8* %4, !dbg !2304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2305 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2307, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 0, metadata !2202, metadata !DIExpression()) #27, !dbg !2309
  call void @llvm.dbg.value(metadata i8* %0, metadata !2203, metadata !DIExpression()) #27, !dbg !2309
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2311
  ret i8* %2, !dbg !2312
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2313 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2317, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %1, metadata !2318, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 0, metadata !2299, metadata !DIExpression()) #27, !dbg !2320
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()) #27, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %1, metadata !2301, metadata !DIExpression()) #27, !dbg !2320
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #27, !dbg !2322
  ret i8* %3, !dbg !2323
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2324 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2328, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 %1, metadata !2329, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %2, metadata !2330, metadata !DIExpression()), !dbg !2332
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2333
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2333
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2331, metadata !DIExpression()), !dbg !2334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2335), !dbg !2338
  call void @llvm.dbg.value(metadata i32 %1, metadata !2339, metadata !DIExpression()) #27, !dbg !2345
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2344, metadata !DIExpression()) #27, !dbg !2347
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2347, !alias.scope !2335
  %6 = icmp eq i32 %1, 10, !dbg !2348
  br i1 %6, label %7, label %8, !dbg !2350

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2351, !noalias !2335
  unreachable, !dbg !2351

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2352
  store i32 %1, i32* %9, align 8, !dbg !2353, !tbaa !1259, !alias.scope !2335
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2354
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2355
  ret i8* %10, !dbg !2356
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2357 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2361, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2362, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %2, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %3, metadata !2364, metadata !DIExpression()), !dbg !2366
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2367
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2365, metadata !DIExpression()), !dbg !2368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369), !dbg !2372
  call void @llvm.dbg.value(metadata i32 %1, metadata !2339, metadata !DIExpression()) #27, !dbg !2373
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2344, metadata !DIExpression()) #27, !dbg !2375
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #27, !dbg !2375, !alias.scope !2369
  %7 = icmp eq i32 %1, 10, !dbg !2376
  br i1 %7, label %8, label %9, !dbg !2377

8:                                                ; preds = %4
  tail call void @abort() #29, !dbg !2378, !noalias !2369
  unreachable, !dbg !2378

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2379
  store i32 %1, i32* %10, align 8, !dbg !2380, !tbaa !1259, !alias.scope !2369
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2381
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2382
  ret i8* %11, !dbg !2383
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2384 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %1, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32 0, metadata !2328, metadata !DIExpression()) #27, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %0, metadata !2329, metadata !DIExpression()) #27, !dbg !2391
  call void @llvm.dbg.value(metadata i8* %1, metadata !2330, metadata !DIExpression()) #27, !dbg !2391
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2393
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2393
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2331, metadata !DIExpression()) #27, !dbg !2394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395) #27, !dbg !2398
  call void @llvm.dbg.value(metadata i32 %0, metadata !2339, metadata !DIExpression()) #27, !dbg !2399
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2344, metadata !DIExpression()) #27, !dbg !2401
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #27, !dbg !2401, !alias.scope !2395
  %5 = icmp eq i32 %0, 10, !dbg !2402
  br i1 %5, label %6, label %7, !dbg !2403

6:                                                ; preds = %2
  tail call void @abort() #29, !dbg !2404, !noalias !2395
  unreachable, !dbg !2404

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2405
  store i32 %0, i32* %8, align 8, !dbg !2406, !tbaa !1259, !alias.scope !2395
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2408
  ret i8* %9, !dbg !2409
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2410 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2414, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8* %1, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i64 %2, metadata !2416, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i32 0, metadata !2361, metadata !DIExpression()) #27, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %0, metadata !2362, metadata !DIExpression()) #27, !dbg !2418
  call void @llvm.dbg.value(metadata i8* %1, metadata !2363, metadata !DIExpression()) #27, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %2, metadata !2364, metadata !DIExpression()) #27, !dbg !2418
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2420
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2420
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2365, metadata !DIExpression()) #27, !dbg !2421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2422) #27, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %0, metadata !2339, metadata !DIExpression()) #27, !dbg !2426
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2344, metadata !DIExpression()) #27, !dbg !2428
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #27, !dbg !2428, !alias.scope !2422
  %6 = icmp eq i32 %0, 10, !dbg !2429
  br i1 %6, label %7, label %8, !dbg !2430

7:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2431, !noalias !2422
  unreachable, !dbg !2431

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2432
  store i32 %0, i32* %9, align 8, !dbg !2433, !tbaa !1259, !alias.scope !2422
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #27, !dbg !2434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2435
  ret i8* %10, !dbg !2436
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2437 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %1, metadata !2442, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 %2, metadata !2443, metadata !DIExpression()), !dbg !2445
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2446
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2446
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2444, metadata !DIExpression()), !dbg !2447
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2448, !tbaa.struct !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1277, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 %2, metadata !1278, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 1, metadata !1279, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8 %2, metadata !1280, metadata !DIExpression()), !dbg !2450
  %6 = lshr i8 %2, 5, !dbg !2452
  %7 = zext i8 %6 to i64, !dbg !2452
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2453
  call void @llvm.dbg.value(metadata i32* %8, metadata !1282, metadata !DIExpression()), !dbg !2450
  %9 = and i8 %2, 31, !dbg !2454
  %10 = zext i8 %9 to i32, !dbg !2454
  call void @llvm.dbg.value(metadata i32 %10, metadata !1284, metadata !DIExpression()), !dbg !2450
  %11 = load i32, i32* %8, align 4, !dbg !2455, !tbaa !779
  %12 = lshr i32 %11, %10, !dbg !2456
  %13 = and i32 %12, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %13, metadata !1285, metadata !DIExpression()), !dbg !2450
  %14 = xor i32 %13, 1, !dbg !2458
  %15 = shl i32 %14, %10, !dbg !2459
  %16 = xor i32 %15, %11, !dbg !2460
  store i32 %16, i32* %8, align 4, !dbg !2460, !tbaa !779
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2461
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2462
  ret i8* %17, !dbg !2463
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2464 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2468, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 %1, metadata !2469, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()) #27, !dbg !2471
  call void @llvm.dbg.value(metadata i64 -1, metadata !2442, metadata !DIExpression()) #27, !dbg !2471
  call void @llvm.dbg.value(metadata i8 %1, metadata !2443, metadata !DIExpression()) #27, !dbg !2471
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2473
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2444, metadata !DIExpression()) #27, !dbg !2474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2475, !tbaa.struct !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1277, metadata !DIExpression()) #27, !dbg !2476
  call void @llvm.dbg.value(metadata i8 %1, metadata !1278, metadata !DIExpression()) #27, !dbg !2476
  call void @llvm.dbg.value(metadata i32 1, metadata !1279, metadata !DIExpression()) #27, !dbg !2476
  call void @llvm.dbg.value(metadata i8 %1, metadata !1280, metadata !DIExpression()) #27, !dbg !2476
  %5 = lshr i8 %1, 5, !dbg !2478
  %6 = zext i8 %5 to i64, !dbg !2478
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2479
  call void @llvm.dbg.value(metadata i32* %7, metadata !1282, metadata !DIExpression()) #27, !dbg !2476
  %8 = and i8 %1, 31, !dbg !2480
  %9 = zext i8 %8 to i32, !dbg !2480
  call void @llvm.dbg.value(metadata i32 %9, metadata !1284, metadata !DIExpression()) #27, !dbg !2476
  %10 = load i32, i32* %7, align 4, !dbg !2481, !tbaa !779
  %11 = lshr i32 %10, %9, !dbg !2482
  %12 = and i32 %11, 1, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %12, metadata !1285, metadata !DIExpression()) #27, !dbg !2476
  %13 = xor i32 %12, 1, !dbg !2484
  %14 = shl i32 %13, %9, !dbg !2485
  %15 = xor i32 %14, %10, !dbg !2486
  store i32 %15, i32* %7, align 4, !dbg !2486, !tbaa !779
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #27, !dbg !2487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2488
  ret i8* %16, !dbg !2489
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2490 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* %0, metadata !2468, metadata !DIExpression()) #27, !dbg !2494
  call void @llvm.dbg.value(metadata i8 58, metadata !2469, metadata !DIExpression()) #27, !dbg !2494
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()) #27, !dbg !2496
  call void @llvm.dbg.value(metadata i64 -1, metadata !2442, metadata !DIExpression()) #27, !dbg !2496
  call void @llvm.dbg.value(metadata i8 58, metadata !2443, metadata !DIExpression()) #27, !dbg !2496
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2498
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2498
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2444, metadata !DIExpression()) #27, !dbg !2499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2500, !tbaa.struct !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1277, metadata !DIExpression()) #27, !dbg !2501
  call void @llvm.dbg.value(metadata i8 58, metadata !1278, metadata !DIExpression()) #27, !dbg !2501
  call void @llvm.dbg.value(metadata i32 1, metadata !1279, metadata !DIExpression()) #27, !dbg !2501
  call void @llvm.dbg.value(metadata i8 58, metadata !1280, metadata !DIExpression()) #27, !dbg !2501
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2503
  call void @llvm.dbg.value(metadata i32* %4, metadata !1282, metadata !DIExpression()) #27, !dbg !2501
  call void @llvm.dbg.value(metadata i32 26, metadata !1284, metadata !DIExpression()) #27, !dbg !2501
  %5 = load i32, i32* %4, align 4, !dbg !2504, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %5, metadata !1285, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2501
  %6 = or i32 %5, 67108864, !dbg !2505
  store i32 %6, i32* %4, align 4, !dbg !2505, !tbaa !779
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #27, !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #27, !dbg !2507
  ret i8* %7, !dbg !2508
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2509 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()) #27, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %1, metadata !2442, metadata !DIExpression()) #27, !dbg !2514
  call void @llvm.dbg.value(metadata i8 58, metadata !2443, metadata !DIExpression()) #27, !dbg !2514
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2516
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2516
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2444, metadata !DIExpression()) #27, !dbg !2517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #27, !dbg !2518, !tbaa.struct !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1277, metadata !DIExpression()) #27, !dbg !2519
  call void @llvm.dbg.value(metadata i8 58, metadata !1278, metadata !DIExpression()) #27, !dbg !2519
  call void @llvm.dbg.value(metadata i32 1, metadata !1279, metadata !DIExpression()) #27, !dbg !2519
  call void @llvm.dbg.value(metadata i8 58, metadata !1280, metadata !DIExpression()) #27, !dbg !2519
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2521
  call void @llvm.dbg.value(metadata i32* %5, metadata !1282, metadata !DIExpression()) #27, !dbg !2519
  call void @llvm.dbg.value(metadata i32 26, metadata !1284, metadata !DIExpression()) #27, !dbg !2519
  %6 = load i32, i32* %5, align 4, !dbg !2522, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %6, metadata !1285, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #27, !dbg !2519
  %7 = or i32 %6, 67108864, !dbg !2523
  store i32 %7, i32* %5, align 4, !dbg !2523, !tbaa !779
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #27, !dbg !2524
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #27, !dbg !2525
  ret i8* %8, !dbg !2526
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2527 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2344, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %0, metadata !2529, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %1, metadata !2530, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %2, metadata !2531, metadata !DIExpression()), !dbg !2535
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2536
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2532, metadata !DIExpression()), !dbg !2537
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2538
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2539), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %1, metadata !2339, metadata !DIExpression()) #27, !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2542
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2533, !alias.scope !2539
  %8 = icmp eq i32 %1, 10, !dbg !2543
  br i1 %8, label %9, label %10, !dbg !2544

9:                                                ; preds = %3
  tail call void @abort() #29, !dbg !2545, !noalias !2539
  unreachable, !dbg !2545

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2542
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2538
  store i32 %1, i32* %11, align 8, !dbg !2538, !tbaa.struct !2449
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2538
  %13 = bitcast i32* %12 to i8*, !dbg !2538
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2538, !tbaa.struct !2546
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2538
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1277, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 58, metadata !1278, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 1, metadata !1279, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 58, metadata !1280, metadata !DIExpression()), !dbg !2547
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2549
  call void @llvm.dbg.value(metadata i32* %14, metadata !1282, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 26, metadata !1284, metadata !DIExpression()), !dbg !2547
  %15 = load i32, i32* %14, align 4, !dbg !2550, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %15, metadata !1285, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2547
  %16 = or i32 %15, 67108864, !dbg !2551
  store i32 %16, i32* %14, align 4, !dbg !2551, !tbaa !779
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2553
  ret i8* %17, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2555 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* %3, metadata !2562, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 %0, metadata !2564, metadata !DIExpression()) #27, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()) #27, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %2, metadata !2570, metadata !DIExpression()) #27, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %3, metadata !2571, metadata !DIExpression()) #27, !dbg !2574
  call void @llvm.dbg.value(metadata i64 -1, metadata !2572, metadata !DIExpression()) #27, !dbg !2574
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2576
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2573, metadata !DIExpression()) #27, !dbg !2577
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2578, !tbaa.struct !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1318, metadata !DIExpression()) #27, !dbg !2579
  call void @llvm.dbg.value(metadata i8* %1, metadata !1319, metadata !DIExpression()) #27, !dbg !2579
  call void @llvm.dbg.value(metadata i8* %2, metadata !1320, metadata !DIExpression()) #27, !dbg !2579
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1318, metadata !DIExpression()) #27, !dbg !2579
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2581
  store i32 10, i32* %7, align 8, !dbg !2582, !tbaa !1259
  %8 = icmp ne i8* %1, null, !dbg !2583
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2584
  br i1 %10, label %12, label %11, !dbg !2584

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !2585
  unreachable, !dbg !2585

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2586
  store i8* %1, i8** %13, align 8, !dbg !2587, !tbaa !1333
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2588
  store i8* %2, i8** %14, align 8, !dbg !2589, !tbaa !1336
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #27, !dbg !2590
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2591
  ret i8* %15, !dbg !2592
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2565 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2564, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %2, metadata !2570, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %3, metadata !2571, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %4, metadata !2572, metadata !DIExpression()), !dbg !2593
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2594
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #27, !dbg !2594
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2573, metadata !DIExpression()), !dbg !2595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2596, !tbaa.struct !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1318, metadata !DIExpression()) #27, !dbg !2597
  call void @llvm.dbg.value(metadata i8* %1, metadata !1319, metadata !DIExpression()) #27, !dbg !2597
  call void @llvm.dbg.value(metadata i8* %2, metadata !1320, metadata !DIExpression()) #27, !dbg !2597
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1318, metadata !DIExpression()) #27, !dbg !2597
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2599
  store i32 10, i32* %8, align 8, !dbg !2600, !tbaa !1259
  %9 = icmp ne i8* %1, null, !dbg !2601
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2602
  br i1 %11, label %13, label %12, !dbg !2602

12:                                               ; preds = %5
  tail call void @abort() #29, !dbg !2603
  unreachable, !dbg !2603

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2604
  store i8* %1, i8** %14, align 8, !dbg !2605, !tbaa !1333
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2606
  store i8* %2, i8** %15, align 8, !dbg !2607, !tbaa !1336
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2608
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #27, !dbg !2609
  ret i8* %16, !dbg !2610
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2611 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2615, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %1, metadata !2616, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %2, metadata !2617, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i32 0, metadata !2559, metadata !DIExpression()) #27, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %0, metadata !2560, metadata !DIExpression()) #27, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()) #27, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()) #27, !dbg !2619
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()) #27, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %0, metadata !2569, metadata !DIExpression()) #27, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %1, metadata !2570, metadata !DIExpression()) #27, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %2, metadata !2571, metadata !DIExpression()) #27, !dbg !2621
  call void @llvm.dbg.value(metadata i64 -1, metadata !2572, metadata !DIExpression()) #27, !dbg !2621
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2623
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2623
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2573, metadata !DIExpression()) #27, !dbg !2624
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2625, !tbaa.struct !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1318, metadata !DIExpression()) #27, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %0, metadata !1319, metadata !DIExpression()) #27, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %1, metadata !1320, metadata !DIExpression()) #27, !dbg !2626
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1318, metadata !DIExpression()) #27, !dbg !2626
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2628
  store i32 10, i32* %6, align 8, !dbg !2629, !tbaa !1259
  %7 = icmp ne i8* %0, null, !dbg !2630
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2631
  br i1 %9, label %11, label %10, !dbg !2631

10:                                               ; preds = %3
  tail call void @abort() #29, !dbg !2632
  unreachable, !dbg !2632

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2633
  store i8* %0, i8** %12, align 8, !dbg !2634, !tbaa !1333
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2635
  store i8* %1, i8** %13, align 8, !dbg !2636, !tbaa !1336
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #27, !dbg !2637
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #27, !dbg !2638
  ret i8* %14, !dbg !2639
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2640 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2644, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %1, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* %2, metadata !2646, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %3, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()) #27, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %0, metadata !2569, metadata !DIExpression()) #27, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2570, metadata !DIExpression()) #27, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %2, metadata !2571, metadata !DIExpression()) #27, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %3, metadata !2572, metadata !DIExpression()) #27, !dbg !2649
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2651
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2651
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2573, metadata !DIExpression()) #27, !dbg !2652
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #27, !dbg !2653, !tbaa.struct !2449
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1318, metadata !DIExpression()) #27, !dbg !2654
  call void @llvm.dbg.value(metadata i8* %0, metadata !1319, metadata !DIExpression()) #27, !dbg !2654
  call void @llvm.dbg.value(metadata i8* %1, metadata !1320, metadata !DIExpression()) #27, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1318, metadata !DIExpression()) #27, !dbg !2654
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2656
  store i32 10, i32* %7, align 8, !dbg !2657, !tbaa !1259
  %8 = icmp ne i8* %0, null, !dbg !2658
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2659
  br i1 %10, label %12, label %11, !dbg !2659

11:                                               ; preds = %4
  tail call void @abort() #29, !dbg !2660
  unreachable, !dbg !2660

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2661
  store i8* %0, i8** %13, align 8, !dbg !2662, !tbaa !1333
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2663
  store i8* %1, i8** %14, align 8, !dbg !2664, !tbaa !1336
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #27, !dbg !2665
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #27, !dbg !2666
  ret i8* %15, !dbg !2667
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2668 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %1, metadata !2673, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %2, metadata !2674, metadata !DIExpression()), !dbg !2675
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2676
  ret i8* %4, !dbg !2677
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2678 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %1, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()) #27, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()) #27, !dbg !2685
  call void @llvm.dbg.value(metadata i64 %1, metadata !2674, metadata !DIExpression()) #27, !dbg !2685
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2687
  ret i8* %3, !dbg !2688
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2689 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8* %1, metadata !2694, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %0, metadata !2672, metadata !DIExpression()) #27, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %1, metadata !2673, metadata !DIExpression()) #27, !dbg !2696
  call void @llvm.dbg.value(metadata i64 -1, metadata !2674, metadata !DIExpression()) #27, !dbg !2696
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2698
  ret i8* %3, !dbg !2699
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2700 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2704, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2693, metadata !DIExpression()) #27, !dbg !2706
  call void @llvm.dbg.value(metadata i8* %0, metadata !2694, metadata !DIExpression()) #27, !dbg !2706
  call void @llvm.dbg.value(metadata i32 0, metadata !2672, metadata !DIExpression()) #27, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %0, metadata !2673, metadata !DIExpression()) #27, !dbg !2708
  call void @llvm.dbg.value(metadata i64 -1, metadata !2674, metadata !DIExpression()) #27, !dbg !2708
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #27, !dbg !2710
  ret i8* %2, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2712 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2752, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %1, metadata !2753, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %2, metadata !2754, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %3, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8** %4, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i64 %5, metadata !2757, metadata !DIExpression()), !dbg !2758
  %7 = icmp eq i8* %1, null, !dbg !2759
  br i1 %7, label %10, label %8, !dbg !2761

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #27, !dbg !2762
  br label %12, !dbg !2762

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.86, i64 0, i64 0), i8* %2, i8* %3) #27, !dbg !2763
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.87, i64 0, i64 0), i32 5) #27, !dbg !2764
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #27, !dbg !2764
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.88, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2765
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.89, i64 0, i64 0), i32 5) #27, !dbg !2766
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.90, i64 0, i64 0)) #27, !dbg !2766
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.88, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2767
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
  ], !dbg !2768

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.91, i64 0, i64 0), i32 5) #27, !dbg !2769
  %21 = load i8*, i8** %4, align 8, !dbg !2769, !tbaa !614
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #27, !dbg !2769
  br label %147, !dbg !2771

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.92, i64 0, i64 0), i32 5) #27, !dbg !2772
  %25 = load i8*, i8** %4, align 8, !dbg !2772, !tbaa !614
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2772
  %27 = load i8*, i8** %26, align 8, !dbg !2772, !tbaa !614
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #27, !dbg !2772
  br label %147, !dbg !2773

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.93, i64 0, i64 0), i32 5) #27, !dbg !2774
  %31 = load i8*, i8** %4, align 8, !dbg !2774, !tbaa !614
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2774
  %33 = load i8*, i8** %32, align 8, !dbg !2774, !tbaa !614
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2774
  %35 = load i8*, i8** %34, align 8, !dbg !2774, !tbaa !614
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #27, !dbg !2774
  br label %147, !dbg !2775

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.94, i64 0, i64 0), i32 5) #27, !dbg !2776
  %39 = load i8*, i8** %4, align 8, !dbg !2776, !tbaa !614
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2776
  %41 = load i8*, i8** %40, align 8, !dbg !2776, !tbaa !614
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2776
  %43 = load i8*, i8** %42, align 8, !dbg !2776, !tbaa !614
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2776
  %45 = load i8*, i8** %44, align 8, !dbg !2776, !tbaa !614
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #27, !dbg !2776
  br label %147, !dbg !2777

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.95, i64 0, i64 0), i32 5) #27, !dbg !2778
  %49 = load i8*, i8** %4, align 8, !dbg !2778, !tbaa !614
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2778
  %51 = load i8*, i8** %50, align 8, !dbg !2778, !tbaa !614
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2778
  %53 = load i8*, i8** %52, align 8, !dbg !2778, !tbaa !614
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2778
  %55 = load i8*, i8** %54, align 8, !dbg !2778, !tbaa !614
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2778
  %57 = load i8*, i8** %56, align 8, !dbg !2778, !tbaa !614
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #27, !dbg !2778
  br label %147, !dbg !2779

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.96, i64 0, i64 0), i32 5) #27, !dbg !2780
  %61 = load i8*, i8** %4, align 8, !dbg !2780, !tbaa !614
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2780
  %63 = load i8*, i8** %62, align 8, !dbg !2780, !tbaa !614
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2780
  %65 = load i8*, i8** %64, align 8, !dbg !2780, !tbaa !614
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2780
  %67 = load i8*, i8** %66, align 8, !dbg !2780, !tbaa !614
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2780
  %69 = load i8*, i8** %68, align 8, !dbg !2780, !tbaa !614
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2780
  %71 = load i8*, i8** %70, align 8, !dbg !2780, !tbaa !614
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #27, !dbg !2780
  br label %147, !dbg !2781

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.97, i64 0, i64 0), i32 5) #27, !dbg !2782
  %75 = load i8*, i8** %4, align 8, !dbg !2782, !tbaa !614
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2782
  %77 = load i8*, i8** %76, align 8, !dbg !2782, !tbaa !614
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2782
  %79 = load i8*, i8** %78, align 8, !dbg !2782, !tbaa !614
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2782
  %81 = load i8*, i8** %80, align 8, !dbg !2782, !tbaa !614
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2782
  %83 = load i8*, i8** %82, align 8, !dbg !2782, !tbaa !614
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2782
  %85 = load i8*, i8** %84, align 8, !dbg !2782, !tbaa !614
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2782
  %87 = load i8*, i8** %86, align 8, !dbg !2782, !tbaa !614
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #27, !dbg !2782
  br label %147, !dbg !2783

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.98, i64 0, i64 0), i32 5) #27, !dbg !2784
  %91 = load i8*, i8** %4, align 8, !dbg !2784, !tbaa !614
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2784
  %93 = load i8*, i8** %92, align 8, !dbg !2784, !tbaa !614
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2784
  %95 = load i8*, i8** %94, align 8, !dbg !2784, !tbaa !614
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2784
  %97 = load i8*, i8** %96, align 8, !dbg !2784, !tbaa !614
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2784
  %99 = load i8*, i8** %98, align 8, !dbg !2784, !tbaa !614
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2784
  %101 = load i8*, i8** %100, align 8, !dbg !2784, !tbaa !614
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2784
  %103 = load i8*, i8** %102, align 8, !dbg !2784, !tbaa !614
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2784
  %105 = load i8*, i8** %104, align 8, !dbg !2784, !tbaa !614
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #27, !dbg !2784
  br label %147, !dbg !2785

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.99, i64 0, i64 0), i32 5) #27, !dbg !2786
  %109 = load i8*, i8** %4, align 8, !dbg !2786, !tbaa !614
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2786
  %111 = load i8*, i8** %110, align 8, !dbg !2786, !tbaa !614
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2786
  %113 = load i8*, i8** %112, align 8, !dbg !2786, !tbaa !614
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2786
  %115 = load i8*, i8** %114, align 8, !dbg !2786, !tbaa !614
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2786
  %117 = load i8*, i8** %116, align 8, !dbg !2786, !tbaa !614
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2786
  %119 = load i8*, i8** %118, align 8, !dbg !2786, !tbaa !614
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2786
  %121 = load i8*, i8** %120, align 8, !dbg !2786, !tbaa !614
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2786
  %123 = load i8*, i8** %122, align 8, !dbg !2786, !tbaa !614
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2786
  %125 = load i8*, i8** %124, align 8, !dbg !2786, !tbaa !614
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #27, !dbg !2786
  br label %147, !dbg !2787

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.100, i64 0, i64 0), i32 5) #27, !dbg !2788
  %129 = load i8*, i8** %4, align 8, !dbg !2788, !tbaa !614
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2788
  %131 = load i8*, i8** %130, align 8, !dbg !2788, !tbaa !614
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2788
  %133 = load i8*, i8** %132, align 8, !dbg !2788, !tbaa !614
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2788
  %135 = load i8*, i8** %134, align 8, !dbg !2788, !tbaa !614
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2788
  %137 = load i8*, i8** %136, align 8, !dbg !2788, !tbaa !614
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2788
  %139 = load i8*, i8** %138, align 8, !dbg !2788, !tbaa !614
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2788
  %141 = load i8*, i8** %140, align 8, !dbg !2788, !tbaa !614
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2788
  %143 = load i8*, i8** %142, align 8, !dbg !2788, !tbaa !614
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2788
  %145 = load i8*, i8** %144, align 8, !dbg !2788, !tbaa !614
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #27, !dbg !2788
  br label %147, !dbg !2789

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2791 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2795, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %1, metadata !2796, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %2, metadata !2797, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8* %3, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i8** %4, metadata !2799, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 0, metadata !2800, metadata !DIExpression()), !dbg !2801
  br label %6, !dbg !2802

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2804
  call void @llvm.dbg.value(metadata i64 %7, metadata !2800, metadata !DIExpression()), !dbg !2801
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2805
  %9 = load i8*, i8** %8, align 8, !dbg !2805, !tbaa !614
  %10 = icmp eq i8* %9, null, !dbg !2807
  %11 = add i64 %7, 1, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %11, metadata !2800, metadata !DIExpression()), !dbg !2801
  br i1 %10, label %12, label %6, !dbg !2807, !llvm.loop !2809

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2811
  ret void, !dbg !2812
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2813 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2824, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %1, metadata !2825, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %2, metadata !2826, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %3, metadata !2827, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2828, metadata !DIExpression()), !dbg !2832
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #27, !dbg !2833
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 0, metadata !2829, metadata !DIExpression()), !dbg !2832
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2829, metadata !DIExpression()), !dbg !2832
  %11 = load i32, i32* %8, align 8, !dbg !2835
  %12 = icmp ult i32 %11, 41, !dbg !2835
  br i1 %12, label %13, label %18, !dbg !2835

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2835
  %15 = zext i32 %11 to i64, !dbg !2835
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2835
  %17 = add nuw nsw i32 %11, 8, !dbg !2835
  store i32 %17, i32* %8, align 8, !dbg !2835
  br label %21, !dbg !2835

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2835
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2835
  store i8* %20, i8** %9, align 8, !dbg !2835
  br label %21, !dbg !2835

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2835
  %25 = load i8*, i8** %24, align 8, !dbg !2835
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2838
  store i8* %25, i8** %26, align 16, !dbg !2839, !tbaa !614
  %27 = icmp eq i8* %25, null, !dbg !2840
  br i1 %27, label %30, label %28, !dbg !2841

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 1, metadata !2829, metadata !DIExpression()), !dbg !2832
  %29 = icmp ult i32 %22, 41, !dbg !2835
  br i1 %29, label %35, label %32, !dbg !2835

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2842
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2843
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #27, !dbg !2844
  ret void, !dbg !2844

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2835
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2835
  store i8* %34, i8** %9, align 8, !dbg !2835
  br label %40, !dbg !2835

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2835
  %37 = zext i32 %22 to i64, !dbg !2835
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2835
  %39 = add nuw nsw i32 %22, 8, !dbg !2835
  store i32 %39, i32* %8, align 8, !dbg !2835
  br label %40, !dbg !2835

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2835
  %44 = load i8*, i8** %43, align 8, !dbg !2835
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2838
  store i8* %44, i8** %45, align 8, !dbg !2839, !tbaa !614
  %46 = icmp eq i8* %44, null, !dbg !2840
  br i1 %46, label %30, label %47, !dbg !2841

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 2, metadata !2829, metadata !DIExpression()), !dbg !2832
  %48 = icmp ult i32 %41, 41, !dbg !2835
  br i1 %48, label %52, label %49, !dbg !2835

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2835
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2835
  store i8* %51, i8** %9, align 8, !dbg !2835
  br label %57, !dbg !2835

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2835
  %54 = zext i32 %41 to i64, !dbg !2835
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2835
  %56 = add nuw nsw i32 %41, 8, !dbg !2835
  store i32 %56, i32* %8, align 8, !dbg !2835
  br label %57, !dbg !2835

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2835
  %61 = load i8*, i8** %60, align 8, !dbg !2835
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2838
  store i8* %61, i8** %62, align 16, !dbg !2839, !tbaa !614
  %63 = icmp eq i8* %61, null, !dbg !2840
  br i1 %63, label %30, label %64, !dbg !2841

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 3, metadata !2829, metadata !DIExpression()), !dbg !2832
  %65 = icmp ult i32 %58, 41, !dbg !2835
  br i1 %65, label %69, label %66, !dbg !2835

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2835
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2835
  store i8* %68, i8** %9, align 8, !dbg !2835
  br label %74, !dbg !2835

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2835
  %71 = zext i32 %58 to i64, !dbg !2835
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2835
  %73 = add nuw nsw i32 %58, 8, !dbg !2835
  store i32 %73, i32* %8, align 8, !dbg !2835
  br label %74, !dbg !2835

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2835
  %78 = load i8*, i8** %77, align 8, !dbg !2835
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2838
  store i8* %78, i8** %79, align 8, !dbg !2839, !tbaa !614
  %80 = icmp eq i8* %78, null, !dbg !2840
  br i1 %80, label %30, label %81, !dbg !2841

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 4, metadata !2829, metadata !DIExpression()), !dbg !2832
  %82 = icmp ult i32 %75, 41, !dbg !2835
  br i1 %82, label %86, label %83, !dbg !2835

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2835
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2835
  store i8* %85, i8** %9, align 8, !dbg !2835
  br label %91, !dbg !2835

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2835
  %88 = zext i32 %75 to i64, !dbg !2835
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2835
  %90 = add nuw nsw i32 %75, 8, !dbg !2835
  store i32 %90, i32* %8, align 8, !dbg !2835
  br label %91, !dbg !2835

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2835
  %95 = load i8*, i8** %94, align 8, !dbg !2835
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2838
  store i8* %95, i8** %96, align 16, !dbg !2839, !tbaa !614
  %97 = icmp eq i8* %95, null, !dbg !2840
  br i1 %97, label %30, label %98, !dbg !2841

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 5, metadata !2829, metadata !DIExpression()), !dbg !2832
  %99 = icmp ult i32 %92, 41, !dbg !2835
  br i1 %99, label %103, label %100, !dbg !2835

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2835
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2835
  store i8* %102, i8** %9, align 8, !dbg !2835
  br label %108, !dbg !2835

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2835
  %105 = zext i32 %92 to i64, !dbg !2835
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2835
  %107 = add nuw nsw i32 %92, 8, !dbg !2835
  store i32 %107, i32* %8, align 8, !dbg !2835
  br label %108, !dbg !2835

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2835
  %111 = load i8*, i8** %110, align 8, !dbg !2835
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2838
  store i8* %111, i8** %112, align 8, !dbg !2839, !tbaa !614
  %113 = icmp eq i8* %111, null, !dbg !2840
  br i1 %113, label %30, label %114, !dbg !2841

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2829, metadata !DIExpression()), !dbg !2832
  %115 = load i8*, i8** %9, align 8, !dbg !2835
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2835
  store i8* %116, i8** %9, align 8, !dbg !2835
  %117 = bitcast i8* %115 to i8**, !dbg !2835
  %118 = load i8*, i8** %117, align 8, !dbg !2835
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2838
  store i8* %118, i8** %119, align 16, !dbg !2839, !tbaa !614
  %120 = icmp eq i8* %118, null, !dbg !2840
  br i1 %120, label %30, label %121, !dbg !2841

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2829, metadata !DIExpression()), !dbg !2832
  %122 = load i8*, i8** %9, align 8, !dbg !2835
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2835
  store i8* %123, i8** %9, align 8, !dbg !2835
  %124 = bitcast i8* %122 to i8**, !dbg !2835
  %125 = load i8*, i8** %124, align 8, !dbg !2835
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2838
  store i8* %125, i8** %126, align 8, !dbg !2839, !tbaa !614
  %127 = icmp eq i8* %125, null, !dbg !2840
  br i1 %127, label %30, label %128, !dbg !2841

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2829, metadata !DIExpression()), !dbg !2832
  %129 = load i8*, i8** %9, align 8, !dbg !2835
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2835
  store i8* %130, i8** %9, align 8, !dbg !2835
  %131 = bitcast i8* %129 to i8**, !dbg !2835
  %132 = load i8*, i8** %131, align 8, !dbg !2835
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2838
  store i8* %132, i8** %133, align 16, !dbg !2839, !tbaa !614
  %134 = icmp eq i8* %132, null, !dbg !2840
  br i1 %134, label %30, label %135, !dbg !2841

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2829, metadata !DIExpression()), !dbg !2832
  %136 = load i8*, i8** %9, align 8, !dbg !2835
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2835
  store i8* %137, i8** %9, align 8, !dbg !2835
  %138 = bitcast i8* %136 to i8**, !dbg !2835
  %139 = load i8*, i8** %138, align 8, !dbg !2835
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2838
  store i8* %139, i8** %140, align 8, !dbg !2839, !tbaa !614
  %141 = icmp eq i8* %139, null, !dbg !2840
  %142 = select i1 %141, i64 9, i64 10, !dbg !2841
  br label %30, !dbg !2841
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2845 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2849, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %1, metadata !2850, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %2, metadata !2851, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %3, metadata !2852, metadata !DIExpression()), !dbg !2859
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2860
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27, !dbg !2860
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2853, metadata !DIExpression()), !dbg !2861
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2862
  call void @llvm.va_start(i8* nonnull %6), !dbg !2862
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2863
  call void @llvm.va_end(i8* nonnull %6), !dbg !2864
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27, !dbg !2865
  ret void, !dbg !2865
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #21

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2866 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2867, !tbaa !614
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.88, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2867
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.103, i64 0, i64 0), i32 5) #27, !dbg !2868
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.104, i64 0, i64 0)) #27, !dbg !2868
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.105, i64 0, i64 0), i32 5) #27, !dbg !2869
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.106, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.107, i64 0, i64 0)) #27, !dbg !2869
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.108, i64 0, i64 0), i32 5) #27, !dbg !2870
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.109, i64 0, i64 0)) #27, !dbg !2870
  ret void, !dbg !2871
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !2872 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2876, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %1, metadata !2877, metadata !DIExpression()), !dbg !2878
  %3 = udiv i64 9223372036854775807, %1, !dbg !2879
  %4 = icmp ult i64 %3, %0, !dbg !2879
  br i1 %4, label %5, label %6, !dbg !2881

5:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !2882
  unreachable, !dbg !2882

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %7, metadata !2884, metadata !DIExpression()) #27, !dbg !2890
  %8 = tail call noalias i8* @malloc(i64 %7) #27, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %8, metadata !2889, metadata !DIExpression()) #27, !dbg !2890
  %9 = icmp eq i8* %8, null, !dbg !2893
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2895
  br i1 %11, label %12, label %13, !dbg !2895

12:                                               ; preds = %6
  tail call void @xalloc_die() #29, !dbg !2896
  unreachable, !dbg !2896

13:                                               ; preds = %6
  ret i8* %8, !dbg !2897
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2885 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2884, metadata !DIExpression()), !dbg !2898
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !2899
  call void @llvm.dbg.value(metadata i8* %2, metadata !2889, metadata !DIExpression()), !dbg !2898
  %3 = icmp eq i8* %2, null, !dbg !2900
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2901
  br i1 %5, label %6, label %7, !dbg !2901

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !2902
  unreachable, !dbg !2902

7:                                                ; preds = %1
  ret i8* %2, !dbg !2903
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !2904 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2908, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %2, metadata !2910, metadata !DIExpression()), !dbg !2911
  %4 = udiv i64 9223372036854775807, %2, !dbg !2912
  %5 = icmp ult i64 %4, %1, !dbg !2912
  br i1 %5, label %6, label %7, !dbg !2914

6:                                                ; preds = %3
  tail call void @xalloc_die() #29, !dbg !2915
  unreachable, !dbg !2915

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2916
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()) #27, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %8, metadata !2922, metadata !DIExpression()) #27, !dbg !2923
  %9 = icmp eq i64 %8, 0, !dbg !2925
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2927
  br i1 %11, label %12, label %13, !dbg !2927

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #27, !dbg !2928
  br label %19, !dbg !2930

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #27, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %14, metadata !2917, metadata !DIExpression()) #27, !dbg !2923
  %15 = icmp eq i8* %14, null, !dbg !2932
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2934
  br i1 %17, label %18, label %19, !dbg !2934

18:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2935
  unreachable, !dbg !2935

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2923
  ret i8* %20, !dbg !2936
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2918 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !2937
  %3 = icmp eq i64 %1, 0, !dbg !2938
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2939
  br i1 %5, label %6, label %7, !dbg !2939

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #27, !dbg !2940
  br label %13, !dbg !2941

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #27, !dbg !2942
  call void @llvm.dbg.value(metadata i8* %8, metadata !2917, metadata !DIExpression()), !dbg !2937
  %9 = icmp eq i8* %8, null, !dbg !2943
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2944
  br i1 %11, label %12, label %13, !dbg !2944

12:                                               ; preds = %7
  tail call void @xalloc_die() #29, !dbg !2945
  unreachable, !dbg !2945

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2937
  ret i8* %14, !dbg !2946
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !182, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64* %1, metadata !183, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 %2, metadata !184, metadata !DIExpression()), !dbg !2947
  %4 = load i64, i64* %1, align 8, !dbg !2948, !tbaa !2158
  call void @llvm.dbg.value(metadata i64 %4, metadata !185, metadata !DIExpression()), !dbg !2947
  %5 = icmp eq i8* %0, null, !dbg !2949
  br i1 %5, label %6, label %20, !dbg !2951

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2952
  br i1 %7, label %8, label %13, !dbg !2955

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %9, metadata !185, metadata !DIExpression()), !dbg !2947
  %10 = icmp ugt i64 %2, 128, !dbg !2958
  %11 = zext i1 %10 to i64, !dbg !2958
  %12 = add nuw nsw i64 %9, %11, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %12, metadata !185, metadata !DIExpression()), !dbg !2947
  br label %13, !dbg !2960

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2947
  call void @llvm.dbg.value(metadata i64 %14, metadata !185, metadata !DIExpression()), !dbg !2947
  %15 = udiv i64 9223372036854775807, %2, !dbg !2961
  %16 = icmp ult i64 %15, %14, !dbg !2961
  br i1 %16, label %19, label %17, !dbg !2963

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !185, metadata !DIExpression()), !dbg !2947
  store i64 %14, i64* %1, align 8, !dbg !2964, !tbaa !2158
  %18 = mul i64 %14, %2, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()) #27, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %28, metadata !2922, metadata !DIExpression()) #27, !dbg !2966
  br label %31, !dbg !2968

19:                                               ; preds = %13
  tail call void @xalloc_die() #29, !dbg !2969
  unreachable, !dbg !2969

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2970
  %22 = icmp ugt i64 %21, %4, !dbg !2973
  br i1 %22, label %24, label %23, !dbg !2974

23:                                               ; preds = %20
  tail call void @xalloc_die() #29, !dbg !2975
  unreachable, !dbg !2975

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2976
  %26 = add nuw i64 %4, 1, !dbg !2977
  %27 = add i64 %26, %25, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %27, metadata !185, metadata !DIExpression()), !dbg !2947
  store i64 %27, i64* %1, align 8, !dbg !2964, !tbaa !2158
  %28 = mul i64 %27, %2, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()) #27, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %28, metadata !2922, metadata !DIExpression()) #27, !dbg !2966
  %29 = icmp eq i64 %28, 0, !dbg !2979
  br i1 %29, label %30, label %31, !dbg !2968

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #27, !dbg !2980
  br label %38, !dbg !2981

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #27, !dbg !2982
  call void @llvm.dbg.value(metadata i8* %33, metadata !2917, metadata !DIExpression()) #27, !dbg !2966
  %34 = icmp eq i8* %33, null, !dbg !2983
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2984
  br i1 %36, label %37, label %38, !dbg !2984

37:                                               ; preds = %31
  tail call void @xalloc_die() #29, !dbg !2985
  unreachable, !dbg !2985

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2966
  ret i8* %39, !dbg !2986
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !2987 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2989, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %0, metadata !2884, metadata !DIExpression()) #27, !dbg !2991
  %2 = tail call noalias i8* @malloc(i64 %0) #27, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %2, metadata !2889, metadata !DIExpression()) #27, !dbg !2991
  %3 = icmp eq i8* %2, null, !dbg !2994
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2995
  br i1 %5, label %6, label %7, !dbg !2995

6:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !2996
  unreachable, !dbg !2996

7:                                                ; preds = %1
  ret i8* %2, !dbg !2997
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2998 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3002, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64* %1, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %0, metadata !182, metadata !DIExpression()) #27, !dbg !3005
  call void @llvm.dbg.value(metadata i64* %1, metadata !183, metadata !DIExpression()) #27, !dbg !3005
  call void @llvm.dbg.value(metadata i64 1, metadata !184, metadata !DIExpression()) #27, !dbg !3005
  %3 = load i64, i64* %1, align 8, !dbg !3007, !tbaa !2158
  call void @llvm.dbg.value(metadata i64 %3, metadata !185, metadata !DIExpression()) #27, !dbg !3005
  %4 = icmp eq i8* %0, null, !dbg !3008
  br i1 %4, label %5, label %10, !dbg !3009

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3010
  br i1 %6, label %17, label %7, !dbg !3011

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !185, metadata !DIExpression()) #27, !dbg !3005
  %8 = icmp slt i64 %3, 0, !dbg !3012
  br i1 %8, label %9, label %17, !dbg !3013

9:                                                ; preds = %7
  tail call void @xalloc_die() #29, !dbg !3014
  unreachable, !dbg !3014

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3015
  br i1 %11, label %13, label %12, !dbg !3016

12:                                               ; preds = %10
  tail call void @xalloc_die() #29, !dbg !3017
  unreachable, !dbg !3017

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3018
  %15 = add nuw nsw i64 %3, 1, !dbg !3019
  %16 = add nuw nsw i64 %15, %14, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %16, metadata !185, metadata !DIExpression()) #27, !dbg !3005
  call void @llvm.dbg.value(metadata i8* %0, metadata !2917, metadata !DIExpression()) #27, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %16, metadata !2922, metadata !DIExpression()) #27, !dbg !3021
  br label %17, !dbg !3023

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3024
  store i64 %18, i64* %1, align 8, !dbg !3024, !tbaa !2158
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #27, !dbg !3025
  call void @llvm.dbg.value(metadata i8* %19, metadata !2917, metadata !DIExpression()) #27, !dbg !3021
  %20 = icmp eq i8* %19, null, !dbg !3026
  br i1 %20, label %21, label %22, !dbg !3027

21:                                               ; preds = %17
  tail call void @xalloc_die() #29, !dbg !3028
  unreachable, !dbg !3028

22:                                               ; preds = %17
  ret i8* %19, !dbg !3029
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3030 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %0, metadata !3034, metadata !DIExpression()) #27, !dbg !3039
  call void @llvm.dbg.value(metadata i64 1, metadata !3037, metadata !DIExpression()) #27, !dbg !3039
  %2 = icmp slt i64 %0, 0, !dbg !3041
  br i1 %2, label %6, label %3, !dbg !3043

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #27, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %4, metadata !3038, metadata !DIExpression()) #27, !dbg !3039
  %5 = icmp eq i8* %4, null, !dbg !3045
  br i1 %5, label %6, label %7, !dbg !3046

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #29, !dbg !3047
  unreachable, !dbg !3047

7:                                                ; preds = %3
  ret i8* %4, !dbg !3048
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3035 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3034, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()), !dbg !3049
  %3 = udiv i64 9223372036854775807, %1, !dbg !3050
  %4 = icmp ult i64 %3, %0, !dbg !3050
  br i1 %4, label %8, label %5, !dbg !3051

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #27, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %6, metadata !3038, metadata !DIExpression()), !dbg !3049
  %7 = icmp eq i8* %6, null, !dbg !3053
  br i1 %7, label %8, label %9, !dbg !3054

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #29, !dbg !3055
  unreachable, !dbg !3055

9:                                                ; preds = %5
  ret i8* %6, !dbg !3056
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3057 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !3064, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !2884, metadata !DIExpression()) #27, !dbg !3066
  %3 = tail call noalias i8* @malloc(i64 %1) #27, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %3, metadata !2889, metadata !DIExpression()) #27, !dbg !3066
  %4 = icmp eq i8* %3, null, !dbg !3069
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3070
  br i1 %6, label %7, label %8, !dbg !3070

7:                                                ; preds = %2
  tail call void @xalloc_die() #29, !dbg !3071
  unreachable, !dbg !3071

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3072, metadata !DIExpression()) #27, !dbg !3081
  call void @llvm.dbg.value(metadata i8* %0, metadata !3079, metadata !DIExpression()) #27, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()) #27, !dbg !3081
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #27, !dbg !3083
  ret i8* %3, !dbg !3084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3085 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3087, metadata !DIExpression()), !dbg !3088
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #28, !dbg !3089
  %3 = add i64 %2, 1, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %0, metadata !3063, metadata !DIExpression()) #27, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %3, metadata !3064, metadata !DIExpression()) #27, !dbg !3091
  call void @llvm.dbg.value(metadata i64 %3, metadata !2884, metadata !DIExpression()) #27, !dbg !3093
  %4 = tail call noalias i8* @malloc(i64 %3) #27, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %4, metadata !2889, metadata !DIExpression()) #27, !dbg !3093
  %5 = icmp eq i8* %4, null, !dbg !3096
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3097
  br i1 %7, label %8, label %9, !dbg !3097

8:                                                ; preds = %1
  tail call void @xalloc_die() #29, !dbg !3098
  unreachable, !dbg !3098

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3072, metadata !DIExpression()) #27, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %0, metadata !3079, metadata !DIExpression()) #27, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %3, metadata !3080, metadata !DIExpression()) #27, !dbg !3099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #27, !dbg !3101
  ret i8* %4, !dbg !3102
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3103 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3104, !tbaa !779
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.122, i64 0, i64 0), i32 5) #27, !dbg !3105
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i8* %2) #27, !dbg !3106
  tail call void @abort() #29, !dbg !3107
  unreachable, !dbg !3107
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3108 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3110, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3116
  %3 = icmp eq i64 %0, 0, !dbg !3117
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3118
  br i1 %5, label %11, label %6, !dbg !3118

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3113, metadata !DIExpression()), !dbg !3119
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3120
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3120
  br i1 %8, label %9, label %11, !dbg !3122

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #31, !dbg !3123
  store i32 12, i32* %10, align 4, !dbg !3125, !tbaa !779
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3110, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %12, metadata !3111, metadata !DIExpression()), !dbg !3116
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #27, !dbg !3126
  call void @llvm.dbg.value(metadata i8* %14, metadata !3112, metadata !DIExpression()), !dbg !3116
  br label %15, !dbg !3127

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3116
  ret i8* %16, !dbg !3128
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3129 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3145, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8* %1, metadata !3146, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %2, metadata !3147, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3148, metadata !DIExpression()), !dbg !3154
  %6 = bitcast i32* %5 to i8*, !dbg !3155
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3155
  %7 = icmp eq i32* %0, null, !dbg !3156
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3158
  call void @llvm.dbg.value(metadata i32* %8, metadata !3145, metadata !DIExpression()), !dbg !3154
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #27, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %9, metadata !3149, metadata !DIExpression()), !dbg !3154
  %10 = icmp ugt i64 %9, -3, !dbg !3160
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3161
  br i1 %12, label %13, label %18, !dbg !3161

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #27, !dbg !3162
  br i1 %14, label %18, label %15, !dbg !3163

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3164, !tbaa !948
  call void @llvm.dbg.value(metadata i8 %16, metadata !3151, metadata !DIExpression()), !dbg !3165
  %17 = zext i8 %16 to i32, !dbg !3166
  store i32 %17, i32* %8, align 4, !dbg !3167, !tbaa !779
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #27, !dbg !3168
  ret i64 %19, !dbg !3168
}

; Function Attrs: nounwind
declare !dbg !3169 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @str2sig(i8* %0, i32* nocapture %1) local_unnamed_addr #8 !dbg !3173 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3177, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i32* %1, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i8* %0, metadata !3180, metadata !DIExpression()) #27, !dbg !3199
  %5 = load i8, i8* %0, align 1, !dbg !3201, !tbaa !948
  %6 = sext i8 %5 to i32, !dbg !3201
  %7 = add nsw i32 %6, -48, !dbg !3201
  %8 = icmp ult i32 %7, 10, !dbg !3201
  br i1 %8, label %9, label %21, !dbg !3202

9:                                                ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #27, !dbg !3203
  call void @llvm.dbg.value(metadata i8** %3, metadata !3183, metadata !DIExpression(DW_OP_deref)) #27, !dbg !3204
  %11 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #27, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %11, metadata !3186, metadata !DIExpression()) #27, !dbg !3204
  %12 = load i8*, i8** %3, align 8, !dbg !3206, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %12, metadata !3183, metadata !DIExpression()) #27, !dbg !3204
  %13 = load i8, i8* %12, align 1, !dbg !3208, !tbaa !948
  %14 = icmp eq i8 %13, 0, !dbg !3208
  %15 = icmp slt i64 %11, 65
  %16 = and i1 %15, %14, !dbg !3209
  %17 = trunc i64 %11 to i32, !dbg !3209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #27, !dbg !3210
  br i1 %16, label %74, label %73

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %19, metadata !3187, metadata !DIExpression()) #27, !dbg !3214
  call void @llvm.dbg.value(metadata i64 %22, metadata !3187, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #27, !dbg !3214
  %20 = icmp eq i64 %19, 35, !dbg !3215
  br i1 %20, label %30, label %21, !dbg !3216, !llvm.loop !3217

21:                                               ; preds = %2, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !3187, metadata !DIExpression()) #27, !dbg !3214
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !3219
  %24 = tail call i32 @strcmp(i8* nonnull %23, i8* nonnull %0) #28, !dbg !3221
  %25 = icmp eq i32 %24, 0, !dbg !3222
  call void @llvm.dbg.value(metadata i64 %22, metadata !3187, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #27, !dbg !3214
  br i1 %25, label %26, label %18, !dbg !3223

26:                                               ; preds = %21
  %27 = and i64 %22, 4294967295, !dbg !3224
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %27, i32 0, !dbg !3225
  %29 = load i32, i32* %28, align 4, !dbg !3225, !tbaa !3226
  br label %74

30:                                               ; preds = %18
  %31 = bitcast i8** %4 to i8*, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #27, !dbg !3228
  %32 = tail call i32 @__libc_current_sigrtmin() #27, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %32, metadata !3191, metadata !DIExpression()) #27, !dbg !3230
  %33 = tail call i32 @__libc_current_sigrtmax() #27, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %33, metadata !3192, metadata !DIExpression()) #27, !dbg !3230
  %34 = icmp sgt i32 %32, 0, !dbg !3232
  br i1 %34, label %35, label %50, !dbg !3233

35:                                               ; preds = %30
  %36 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i64 5) #28, !dbg !3234
  %37 = icmp eq i32 %36, 0, !dbg !3235
  br i1 %37, label %38, label %50, !dbg !3236

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3237
  call void @llvm.dbg.value(metadata i8** %4, metadata !3189, metadata !DIExpression(DW_OP_deref)) #27, !dbg !3230
  %40 = call i64 @strtol(i8* nonnull %39, i8** nonnull %4, i32 10) #27, !dbg !3238
  call void @llvm.dbg.value(metadata i64 %40, metadata !3193, metadata !DIExpression()) #27, !dbg !3239
  %41 = load i8*, i8** %4, align 8, !dbg !3240, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %41, metadata !3189, metadata !DIExpression()) #27, !dbg !3230
  %42 = load i8, i8* %41, align 1, !dbg !3242, !tbaa !948
  %43 = icmp eq i8 %42, 0, !dbg !3242
  %44 = icmp sgt i64 %40, -1
  %45 = and i1 %44, %43, !dbg !3243
  br i1 %45, label %46, label %67, !dbg !3243

46:                                               ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !3244
  %48 = sext i32 %47 to i64, !dbg !3245
  %49 = icmp sgt i64 %40, %48, !dbg !3246
  br i1 %49, label %67, label %68, !dbg !3247

50:                                               ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !3248
  br i1 %51, label %52, label %67, !dbg !3249

52:                                               ; preds = %50
  %53 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 5) #28, !dbg !3250
  %54 = icmp eq i32 %53, 0, !dbg !3251
  br i1 %54, label %55, label %67, !dbg !3252

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3253
  call void @llvm.dbg.value(metadata i8** %4, metadata !3189, metadata !DIExpression(DW_OP_deref)) #27, !dbg !3230
  %57 = call i64 @strtol(i8* nonnull %56, i8** nonnull %4, i32 10) #27, !dbg !3254
  call void @llvm.dbg.value(metadata i64 %57, metadata !3196, metadata !DIExpression()) #27, !dbg !3255
  %58 = load i8*, i8** %4, align 8, !dbg !3256, !tbaa !614
  call void @llvm.dbg.value(metadata i8* %58, metadata !3189, metadata !DIExpression()) #27, !dbg !3230
  %59 = load i8, i8* %58, align 1, !dbg !3258, !tbaa !948
  %60 = icmp eq i8 %59, 0, !dbg !3258
  br i1 %60, label %61, label %67, !dbg !3259

61:                                               ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !3260
  %63 = sext i32 %62 to i64, !dbg !3261
  %64 = icmp sge i64 %57, %63, !dbg !3262
  %65 = icmp slt i64 %57, 1
  %66 = and i1 %64, %65, !dbg !3263
  br i1 %66, label %68, label %67, !dbg !3263

67:                                               ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #27, !dbg !3264
  br label %73

68:                                               ; preds = %61, %46
  %69 = phi i64 [ %40, %46 ], [ %57, %61 ]
  %70 = phi i32 [ %32, %46 ], [ %33, %61 ]
  %71 = trunc i64 %69 to i32, !dbg !3265
  %72 = add i32 %70, %71, !dbg !3265
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #27, !dbg !3264
  br label %74

73:                                               ; preds = %67, %9
  br label %74, !dbg !3266

74:                                               ; preds = %9, %26, %68, %73
  %75 = phi i32 [ -1, %73 ], [ %17, %9 ], [ %72, %68 ], [ %29, %26 ], !dbg !3199
  store i32 %75, i32* %1, align 4, !dbg !3267, !tbaa !779
  %76 = ashr i32 %75, 31, !dbg !3268
  ret i32 %76, !dbg !3269
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sig2str(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3270 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3274, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i8* %1, metadata !3275, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 0, metadata !3276, metadata !DIExpression()), !dbg !3282
  br label %8, !dbg !3283

3:                                                ; preds = %8
  %4 = add nuw nsw i64 %9, 1, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %4, metadata !3276, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %9, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %4, metadata !3276, metadata !DIExpression()), !dbg !3282
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !3287
  %6 = load i32, i32* %5, align 4, !dbg !3287, !tbaa !3226
  %7 = icmp eq i32 %6, %0, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %4, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  br i1 %7, label %13, label %40, !dbg !3290

8:                                                ; preds = %55, %2
  %9 = phi i64 [ 0, %2 ], [ %56, %55 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3276, metadata !DIExpression()), !dbg !3282
  %10 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %9, i32 0, !dbg !3287
  %11 = load i32, i32* %10, align 4, !dbg !3287, !tbaa !3226
  %12 = icmp eq i32 %11, %0, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %9, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  br i1 %12, label %13, label %3, !dbg !3290

13:                                               ; preds = %50, %45, %40, %3, %8
  %14 = phi i64 [ %9, %8 ], [ %4, %3 ], [ %41, %40 ], [ %46, %45 ], [ %51, %50 ]
  %15 = and i64 %14, 4294967295, !dbg !3291
  %16 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %15, i32 1, i64 0, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3294, metadata !DIExpression()) #27, !dbg !3302
  call void @llvm.dbg.value(metadata i8* %16, metadata !3301, metadata !DIExpression()) #27, !dbg !3302
  %17 = call i8* @strcpy(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(1) %16), !dbg !3304
  br label %38, !dbg !3305

18:                                               ; preds = %55
  %19 = tail call i32 @__libc_current_sigrtmin() #27, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %19, metadata !3277, metadata !DIExpression()), !dbg !3307
  %20 = tail call i32 @__libc_current_sigrtmax() #27, !dbg !3308
  call void @llvm.dbg.value(metadata i32 %20, metadata !3279, metadata !DIExpression()), !dbg !3307
  %21 = icmp sgt i32 %19, %0, !dbg !3309
  %22 = icmp slt i32 %20, %0
  %23 = or i1 %21, %22, !dbg !3311
  br i1 %23, label %38, label %24, !dbg !3311

24:                                               ; preds = %18
  %25 = sub nsw i32 %20, %19, !dbg !3312
  %26 = sdiv i32 %25, 2, !dbg !3314
  %27 = add nsw i32 %26, %19, !dbg !3315
  %28 = icmp slt i32 %27, %0, !dbg !3316
  call void @llvm.dbg.value(metadata i8* %1, metadata !3294, metadata !DIExpression()) #27, !dbg !3317
  call void @llvm.dbg.value(metadata i8* %1, metadata !3294, metadata !DIExpression()) #27, !dbg !3320
  br i1 %28, label %30, label %29, !dbg !3323

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), metadata !3301, metadata !DIExpression()) #27, !dbg !3320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i64 6, i1 false), !dbg !3324
  call void @llvm.dbg.value(metadata i32 %19, metadata !3280, metadata !DIExpression()), !dbg !3307
  br label %31, !dbg !3325

30:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), metadata !3301, metadata !DIExpression()) #27, !dbg !3317
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6, i1 false), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %20, metadata !3280, metadata !DIExpression()), !dbg !3307
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %19, %29 ], [ %20, %30 ], !dbg !3327
  call void @llvm.dbg.value(metadata i32 %32, metadata !3280, metadata !DIExpression()), !dbg !3307
  %33 = sub nsw i32 %0, %32, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %33, metadata !3281, metadata !DIExpression()), !dbg !3307
  %34 = icmp eq i32 %33, 0, !dbg !3329
  br i1 %34, label %38, label %35, !dbg !3331

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3332
  %37 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %36, i32 1, i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.134, i64 0, i64 0), i32 %33) #27, !dbg !3332
  br label %38, !dbg !3332

38:                                               ; preds = %18, %35, %31, %13
  %39 = phi i32 [ 0, %13 ], [ -1, %18 ], [ 0, %35 ], [ 0, %31 ], !dbg !3282
  ret i32 %39, !dbg !3333

40:                                               ; preds = %3
  %41 = add nuw nsw i64 %9, 2, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %41, metadata !3276, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %4, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %41, metadata !3276, metadata !DIExpression()), !dbg !3282
  %42 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %41, i32 0, !dbg !3287
  %43 = load i32, i32* %42, align 4, !dbg !3287, !tbaa !3226
  %44 = icmp eq i32 %43, %0, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %41, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  br i1 %44, label %13, label %45, !dbg !3290

45:                                               ; preds = %40
  %46 = add nuw nsw i64 %9, 3, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %46, metadata !3276, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %41, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %46, metadata !3276, metadata !DIExpression()), !dbg !3282
  %47 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %46, i32 0, !dbg !3287
  %48 = load i32, i32* %47, align 4, !dbg !3287, !tbaa !3226
  %49 = icmp eq i32 %48, %0, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %46, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  br i1 %49, label %13, label %50, !dbg !3290

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %9, 4, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %51, metadata !3276, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %46, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %51, metadata !3276, metadata !DIExpression()), !dbg !3282
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !3287
  %53 = load i32, i32* %52, align 4, !dbg !3287, !tbaa !3226
  %54 = icmp eq i32 %53, %0, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %51, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  br i1 %54, label %13, label %55, !dbg !3290

55:                                               ; preds = %50
  %56 = add nuw nsw i64 %9, 5, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %56, metadata !3276, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %51, metadata !3276, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3282
  %57 = icmp eq i64 %56, 35, !dbg !3334
  br i1 %57, label %18, label %8, !dbg !3283, !llvm.loop !3335
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare i8* @strcpy(i8* noalias returned writeonly, i8* noalias nocapture readonly) #25

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #26

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3337 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3375, metadata !DIExpression()), !dbg !3380
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #27, !dbg !3381
  call void @llvm.dbg.value(metadata i1 undef, metadata !3376, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3380
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3382, metadata !DIExpression()), !dbg !3386
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3388
  %4 = load i32, i32* %3, align 8, !dbg !3388, !tbaa !3389
  %5 = and i32 %4, 32, !dbg !3391
  %6 = icmp eq i32 %5, 0, !dbg !3391
  call void @llvm.dbg.value(metadata i1 %6, metadata !3378, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3380
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #27, !dbg !3392
  %8 = icmp eq i32 %7, 0, !dbg !3393
  call void @llvm.dbg.value(metadata i1 %8, metadata !3379, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3380
  br i1 %6, label %9, label %19, !dbg !3394

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3396
  call void @llvm.dbg.value(metadata i1 %10, metadata !3376, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3380
  %11 = or i1 %10, %8, !dbg !3397
  %12 = xor i1 %8, true, !dbg !3397
  %13 = sext i1 %12 to i32, !dbg !3397
  br i1 %11, label %22, label %14, !dbg !3397

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #31, !dbg !3398
  %16 = load i32, i32* %15, align 4, !dbg !3398, !tbaa !779
  %17 = icmp ne i32 %16, 9, !dbg !3399
  %18 = sext i1 %17 to i32, !dbg !3400
  br label %22, !dbg !3400

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3401

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #31, !dbg !3403
  store i32 0, i32* %21, align 4, !dbg !3405, !tbaa !779
  br label %22, !dbg !3403

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3380
  ret i32 %23, !dbg !3406
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3407 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()), !dbg !3416
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3417
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3412, metadata !DIExpression()), !dbg !3418
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #27, !dbg !3419
  %5 = icmp eq i32 %4, 0, !dbg !3419
  br i1 %5, label %6, label %13, !dbg !3421

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3422
  %8 = load i16, i16* %7, align 16, !dbg !3422
  %9 = icmp eq i16 %8, 67, !dbg !3422
  br i1 %9, label %13, label %10, !dbg !3423

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), i64 6), !dbg !3424
  %12 = icmp ne i32 %11, 0, !dbg !3425
  br label %13, !dbg !3423

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3416
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #27, !dbg !3426
  ret i1 %14, !dbg !3426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3427 {
  %1 = tail call i8* @nl_langinfo(i32 14) #27, !dbg !3432
  call void @llvm.dbg.value(metadata i8* %1, metadata !3431, metadata !DIExpression()), !dbg !3433
  %2 = icmp eq i8* %1, null, !dbg !3434
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), i8* %1, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %3, metadata !3431, metadata !DIExpression()), !dbg !3433
  %4 = load i8, i8* %3, align 1, !dbg !3437, !tbaa !948
  %5 = icmp eq i8 %4, 0, !dbg !3441
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i8* %3, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %6, metadata !3431, metadata !DIExpression()), !dbg !3433
  ret i8* %6, !dbg !3443
}

; Function Attrs: nounwind
declare !dbg !3444 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3445 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i8* %1, metadata !3450, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i64 %2, metadata !3451, metadata !DIExpression()), !dbg !3452
  call void @llvm.dbg.value(metadata i32 %0, metadata !3453, metadata !DIExpression()) #27, !dbg !3462
  call void @llvm.dbg.value(metadata i8* %1, metadata !3456, metadata !DIExpression()) #27, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %2, metadata !3457, metadata !DIExpression()) #27, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()) #27, !dbg !3470
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %4, metadata !3469, metadata !DIExpression()) #27, !dbg !3470
  call void @llvm.dbg.value(metadata i8* %4, metadata !3458, metadata !DIExpression()) #27, !dbg !3462
  %5 = icmp eq i8* %4, null, !dbg !3473
  br i1 %5, label %6, label %9, !dbg !3474

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3475
  br i1 %7, label %19, label %8, !dbg !3478

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3479, !tbaa !948
  br label %19, !dbg !3480

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #28, !dbg !3481
  call void @llvm.dbg.value(metadata i64 %10, metadata !3459, metadata !DIExpression()) #27, !dbg !3482
  %11 = icmp ult i64 %10, %2, !dbg !3483
  br i1 %11, label %12, label %14, !dbg !3485

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %1, metadata !3488, metadata !DIExpression()) #27, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %4, metadata !3491, metadata !DIExpression()) #27, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %13, metadata !3492, metadata !DIExpression()) #27, !dbg !3493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #27, !dbg !3495
  br label %19, !dbg !3496

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3497
  br i1 %15, label %19, label %16, !dbg !3500

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %1, metadata !3488, metadata !DIExpression()) #27, !dbg !3503
  call void @llvm.dbg.value(metadata i8* %4, metadata !3491, metadata !DIExpression()) #27, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %17, metadata !3492, metadata !DIExpression()) #27, !dbg !3503
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #27, !dbg !3505
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3506
  store i8 0, i8* %18, align 1, !dbg !3507, !tbaa !948
  br label %19, !dbg !3508

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3509
  ret i32 %20, !dbg !3510
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()) #27, !dbg !3515
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #27, !dbg !3517
  call void @llvm.dbg.value(metadata i8* %2, metadata !3469, metadata !DIExpression()) #27, !dbg !3515
  ret i8* %2, !dbg !3518
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3519 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3557, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 0, metadata !3558, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 0, metadata !3560, metadata !DIExpression()), !dbg !3561
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %2, metadata !3559, metadata !DIExpression()), !dbg !3561
  %3 = icmp slt i32 %2, 0, !dbg !3563
  br i1 %3, label %4, label %6, !dbg !3565

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3566
  br label %24, !dbg !3567

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !3568
  %8 = icmp eq i32 %7, 0, !dbg !3568
  br i1 %8, label %13, label %9, !dbg !3570

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3571
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #27, !dbg !3572
  %12 = icmp eq i64 %11, -1, !dbg !3573
  br i1 %12, label %16, label %13, !dbg !3574

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #27, !dbg !3575
  %15 = icmp eq i32 %14, 0, !dbg !3575
  br i1 %15, label %16, label %18, !dbg !3576

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3558, metadata !DIExpression()), !dbg !3561
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %21, metadata !3560, metadata !DIExpression()), !dbg !3561
  br label %24, !dbg !3578

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #31, !dbg !3579
  %20 = load i32, i32* %19, align 4, !dbg !3579, !tbaa !779
  call void @llvm.dbg.value(metadata i32 %20, metadata !3558, metadata !DIExpression()), !dbg !3561
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3577
  call void @llvm.dbg.value(metadata i32 %21, metadata !3560, metadata !DIExpression()), !dbg !3561
  %22 = icmp eq i32 %20, 0, !dbg !3580
  br i1 %22, label %24, label %23, !dbg !3578

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3582, !tbaa !779
  call void @llvm.dbg.value(metadata i32 -1, metadata !3560, metadata !DIExpression()), !dbg !3561
  br label %24, !dbg !3584

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3561
  ret i32 %25, !dbg !3585
}

; Function Attrs: nofree nounwind
declare !dbg !3586 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3589 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3590 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3594 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3632, metadata !DIExpression()), !dbg !3633
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3634
  br i1 %2, label %6, label %3, !dbg !3636

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #27, !dbg !3637
  %5 = icmp eq i32 %4, 0, !dbg !3637
  br i1 %5, label %6, label %8, !dbg !3638

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3639
  br label %17, !dbg !3640

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3641, metadata !DIExpression()) #27, !dbg !3646
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3648
  %10 = load i32, i32* %9, align 8, !dbg !3648, !tbaa !3389
  %11 = and i32 %10, 256, !dbg !3650
  %12 = icmp eq i32 %11, 0, !dbg !3650
  br i1 %12, label %15, label %13, !dbg !3651

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #27, !dbg !3652
  br label %15, !dbg !3652

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3653
  br label %17, !dbg !3654

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3633
  ret i32 %18, !dbg !3655
}

; Function Attrs: nofree nounwind
declare !dbg !3656 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3659 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3698, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i64 %1, metadata !3699, metadata !DIExpression()), !dbg !3704
  call void @llvm.dbg.value(metadata i32 %2, metadata !3700, metadata !DIExpression()), !dbg !3704
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3705
  %5 = load i8*, i8** %4, align 8, !dbg !3705, !tbaa !3706
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3707
  %7 = load i8*, i8** %6, align 8, !dbg !3707, !tbaa !3708
  %8 = icmp eq i8* %5, %7, !dbg !3709
  br i1 %8, label %9, label %28, !dbg !3710

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3711
  %11 = load i8*, i8** %10, align 8, !dbg !3711, !tbaa !3712
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3713
  %13 = load i8*, i8** %12, align 8, !dbg !3713, !tbaa !3714
  %14 = icmp eq i8* %11, %13, !dbg !3715
  br i1 %14, label %15, label %28, !dbg !3716

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3717
  %17 = load i8*, i8** %16, align 8, !dbg !3717, !tbaa !3718
  %18 = icmp eq i8* %17, null, !dbg !3719
  br i1 %18, label %19, label %28, !dbg !3720

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #27, !dbg !3721
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #27, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %21, metadata !3701, metadata !DIExpression()), !dbg !3723
  %22 = icmp eq i64 %21, -1, !dbg !3724
  br i1 %22, label %30, label %23, !dbg !3726

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3727
  %25 = load i32, i32* %24, align 8, !dbg !3728, !tbaa !3389
  %26 = and i32 %25, -17, !dbg !3728
  store i32 %26, i32* %24, align 8, !dbg !3728, !tbaa !3389
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3729
  store i64 %21, i64* %27, align 8, !dbg !3730, !tbaa !3731
  br label %30, !dbg !3732

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3733
  br label %30, !dbg !3734

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3704
  ret i32 %31, !dbg !3735
}

; Function Attrs: nofree nounwind
declare !dbg !3736 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

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
attributes #10 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree nounwind }
attributes #16 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #20 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #21 = { nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { argmemonly nofree nounwind willreturn }
attributes #26 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nounwind }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind readnone willreturn }
attributes #32 = { cold }

!llvm.dbg.cu = !{!2, !163, !33, !38, !46, !52, !58, !165, !143, !172, !189, !191, !193, !151, !196, !198, !200, !589, !591, !593, !595}
!llvm.ident = !{!597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597}
!llvm.module.flags = !{!598, !599, !600, !601, !602}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "short_options", scope: !2, file: !3, line: 54, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/kill.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!0, !11}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 60, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1536, elements: !26)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !16, line: 50, size: 256, elements: !17)
!16 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!17 = !{!18, !21, !23, !25}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !15, file: !16, line: 52, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !15, file: !16, line: 55, baseType: !22, size: 32, offset: 64)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !15, file: !16, line: 56, baseType: !24, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !15, file: !16, line: 57, baseType: !22, size: 32, offset: 192)
!26 = !{!27}
!27 = !DISubrange(count: 6)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 904, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 113)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "Version", scope: !33, file: !34, line: 2, type: !19, isLocal: false, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !35, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!35 = !{!31}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "file_name", scope: !38, file: !39, line: 46, type: !19, isLocal: true, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C99, file: !39, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !40, splitDebugInlining: false, nameTableKind: None)
!39 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!40 = !{!36, !41}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !38, file: !39, line: 56, type: !43, isLocal: true, isDefinition: true)
!43 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "exit_failure", scope: !46, file: !47, line: 24, type: !49, isLocal: false, isDefinition: true)
!46 = distinct !DICompileUnit(language: DW_LANG_C99, file: !47, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !48, splitDebugInlining: false, nameTableKind: None)
!47 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!48 = !{!44}
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "program_name", scope: !52, file: !53, line: 33, type: !19, isLocal: false, isDefinition: true)
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !55, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!54 = !{!8, !6}
!55 = !{!50}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !58, file: !59, line: 85, type: !137, isLocal: false, isDefinition: true)
!58 = distinct !DICompileUnit(language: DW_LANG_C99, file: !59, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !95, globals: !100, splitDebugInlining: false, nameTableKind: None)
!59 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!60 = !{!61, !75, !80}
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !62, line: 32, baseType: !9, size: 32, elements: !63)
!62 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!64 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!65 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!69 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!70 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!71 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!72 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!73 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!74 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !62, line: 242, baseType: !9, size: 32, elements: !76)
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 46, baseType: !9, size: 32, elements: !82)
!81 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!83 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!84 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!85 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!86 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!87 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!88 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!89 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!95 = !{!22, !96, !97, !6}
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !{!56, !101, !107, !119, !121, !126, !133, !135}
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !58, file: !59, line: 101, type: !103, isLocal: false, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 320, elements: !105)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!105 = !{!106}
!106 = !DISubrange(count: 10)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !58, file: !59, line: 1052, type: !109, isLocal: false, isDefinition: true)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !59, line: 65, size: 448, elements: !110)
!110 = !{!111, !112, !113, !117, !118}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !109, file: !59, line: 68, baseType: !61, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !109, file: !59, line: 71, baseType: !22, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !109, file: !59, line: 75, baseType: !114, size: 256, offset: 64)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !109, file: !59, line: 78, baseType: !19, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !109, file: !59, line: 81, baseType: !19, size: 64, offset: 384)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !58, file: !59, line: 116, type: !109, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "slot0", scope: !58, file: !59, line: 842, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 256)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "slotvec", scope: !58, file: !59, line: 845, type: !128, isLocal: true, isDefinition: true)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !59, line: 834, size: 128, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !129, file: !59, line: 836, baseType: !97, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !129, file: !59, line: 837, baseType: !6, size: 64, offset: 64)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "nslots", scope: !58, file: !59, line: 843, type: !22, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "slotvec0", scope: !58, file: !59, line: 844, type: !129, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 704, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!139 = !{!140}
!140 = !DISubrange(count: 11)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !143, file: !144, line: 26, type: !146, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !145, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!145 = !{!141}
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 376, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 47)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "numname_table", scope: !151, file: !152, line: 41, type: !155, isLocal: true, isDefinition: true)
!151 = distinct !DICompileUnit(language: DW_LANG_C99, file: !152, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !153, globals: !154, splitDebugInlining: false, nameTableKind: None)
!152 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!153 = !{!9}
!154 = !{!149}
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 3360, elements: !161)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !152, line: 41, size: 96, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !156, file: !152, line: 41, baseType: !22, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !152, line: 41, baseType: !160, size: 64, offset: 32)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !115)
!161 = !{!162}
!162 = !DISubrange(count: 35)
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !153, splitDebugInlining: false, nameTableKind: None)
!164 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !171, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!167 = !{!168}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 40, baseType: !9, size: 32, elements: !169)
!169 = !{!170}
!170 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!171 = !{!8}
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !174, retainedTypes: !188, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !{!175}
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !177, file: !176, line: 186, baseType: !9, size: 32, elements: !186)
!176 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = distinct !DISubprogram(name: "x2nrealloc", scope: !176, file: !176, line: 174, type: !178, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !181)
!178 = !DISubroutineType(types: !179)
!179 = !{!8, !8, !180, !97}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!181 = !{!182, !183, !184, !185}
!182 = !DILocalVariable(name: "p", arg: 1, scope: !177, file: !176, line: 174, type: !8)
!183 = !DILocalVariable(name: "pn", arg: 2, scope: !177, file: !176, line: 174, type: !180)
!184 = !DILocalVariable(name: "s", arg: 3, scope: !177, file: !176, line: 174, type: !97)
!185 = !DILocalVariable(name: "n", scope: !177, file: !176, line: 176, type: !97)
!186 = !{!187}
!187 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!188 = !{!97, !6, !8}
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, splitDebugInlining: false, nameTableKind: None)
!192 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !195, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!195 = !{!97}
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!199 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !202, retainedTypes: !171, splitDebugInlining: false, nameTableKind: None)
!201 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!202 = !{!203}
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !204, line: 41, baseType: !9, size: 32, elements: !205)
!204 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!206 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!207 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!208 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!209 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!210 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!211 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!213 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!214 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!215 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!216 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!244 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!245 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!246 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!247 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!248 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!249 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!250 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!251 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!252 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!253 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!254 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!255 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!314 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!401 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!474 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!475 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!476 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!477 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!478 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!479 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!480 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!481 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!482 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!483 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!484 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!485 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!486 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!487 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!488 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!490 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!491 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!492 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!493 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!521 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!522 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!523 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!524 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!525 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!530 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!531 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!532 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!533 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!589 = distinct !DICompileUnit(language: DW_LANG_C99, file: !590, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, splitDebugInlining: false, nameTableKind: None)
!590 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!592 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, splitDebugInlining: false, nameTableKind: None)
!594 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !171, splitDebugInlining: false, nameTableKind: None)
!596 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!597 = !{!"clang version 12.0.1"}
!598 = !{i32 7, !"Dwarf Version", i32 4}
!599 = !{i32 2, !"Debug Info Version", i32 3}
!600 = !{i32 1, !"wchar_size", i32 4}
!601 = !{i32 7, !"PIC Level", i32 2}
!602 = !{i32 7, !"PIE Level", i32 2}
!603 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 71, type: !604, scopeLine: 72, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !22}
!606 = !{!607}
!607 = !DILocalVariable(name: "status", arg: 1, scope: !603, file: !3, line: 71, type: !22)
!608 = !DILocation(line: 0, scope: !603)
!609 = !DILocation(line: 73, column: 14, scope: !610)
!610 = distinct !DILexicalBlock(scope: !603, file: !3, line: 73, column: 7)
!611 = !DILocation(line: 73, column: 7, scope: !603)
!612 = !DILocation(line: 74, column: 5, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !3, line: 74, column: 5)
!614 = !{!615, !615, i64 0}
!615 = !{!"any pointer", !616, i64 0}
!616 = !{!"omnipotent char", !617, i64 0}
!617 = !{!"Simple C/C++ TBAA"}
!618 = !DILocation(line: 77, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !610, file: !3, line: 76, column: 5)
!620 = !DILocation(line: 83, column: 7, scope: !619)
!621 = !DILocation(line: 590, column: 3, scope: !622, inlinedAt: !626)
!622 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !623, file: !623, line: 588, type: !624, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!623 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!624 = !DISubroutineType(types: !625)
!625 = !{null}
!626 = distinct !DILocation(line: 87, column: 7, scope: !619)
!627 = !DILocation(line: 89, column: 7, scope: !619)
!628 = !DILocation(line: 95, column: 7, scope: !619)
!629 = !DILocation(line: 96, column: 7, scope: !619)
!630 = !DILocation(line: 97, column: 7, scope: !619)
!631 = !DILocation(line: 102, column: 7, scope: !619)
!632 = !DILocalVariable(name: "program", arg: 1, scope: !633, file: !623, line: 634, type: !19)
!633 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !623, file: !623, line: 634, type: !634, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !19}
!636 = !{!632, !637, !646, !647, !649}
!637 = !DILocalVariable(name: "infomap", scope: !633, file: !623, line: 636, type: !638)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 896, elements: !644)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !633, file: !623, line: 636, size: 128, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !640, file: !623, line: 636, baseType: !19, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !640, file: !623, line: 636, baseType: !19, size: 64, offset: 64)
!644 = !{!645}
!645 = !DISubrange(count: 7)
!646 = !DILocalVariable(name: "node", scope: !633, file: !623, line: 646, type: !19)
!647 = !DILocalVariable(name: "map_prog", scope: !633, file: !623, line: 647, type: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!649 = !DILocalVariable(name: "lc_messages", scope: !633, file: !623, line: 659, type: !19)
!650 = !DILocation(line: 0, scope: !633, inlinedAt: !651)
!651 = distinct !DILocation(line: 103, column: 7, scope: !619)
!652 = !DILocation(line: 636, column: 3, scope: !633, inlinedAt: !651)
!653 = !DILocation(line: 636, column: 67, scope: !633, inlinedAt: !651)
!654 = !DILocation(line: 647, column: 36, scope: !633, inlinedAt: !651)
!655 = !DILocation(line: 649, column: 3, scope: !633, inlinedAt: !651)
!656 = !DILocation(line: 649, column: 33, scope: !633, inlinedAt: !651)
!657 = !DILocation(line: 650, column: 13, scope: !633, inlinedAt: !651)
!658 = !DILocation(line: 649, column: 20, scope: !633, inlinedAt: !651)
!659 = !{!660, !615, i64 0}
!660 = !{!"infomap", !615, i64 0, !615, i64 8}
!661 = !DILocation(line: 649, column: 10, scope: !633, inlinedAt: !651)
!662 = !DILocation(line: 649, column: 28, scope: !633, inlinedAt: !651)
!663 = distinct !{!663, !655, !657, !664}
!664 = !{!"llvm.loop.mustprogress"}
!665 = !DILocation(line: 652, column: 17, scope: !666, inlinedAt: !651)
!666 = distinct !DILexicalBlock(scope: !633, file: !623, line: 652, column: 7)
!667 = !{!660, !615, i64 8}
!668 = !DILocation(line: 652, column: 7, scope: !666, inlinedAt: !651)
!669 = !DILocation(line: 652, column: 7, scope: !633, inlinedAt: !651)
!670 = !DILocation(line: 655, column: 3, scope: !633, inlinedAt: !651)
!671 = !DILocation(line: 659, column: 29, scope: !633, inlinedAt: !651)
!672 = !DILocation(line: 660, column: 7, scope: !673, inlinedAt: !651)
!673 = distinct !DILexicalBlock(scope: !633, file: !623, line: 660, column: 7)
!674 = !DILocation(line: 660, column: 19, scope: !673, inlinedAt: !651)
!675 = !DILocation(line: 660, column: 22, scope: !673, inlinedAt: !651)
!676 = !DILocation(line: 660, column: 7, scope: !633, inlinedAt: !651)
!677 = !DILocation(line: 666, column: 7, scope: !678, inlinedAt: !651)
!678 = distinct !DILexicalBlock(scope: !673, file: !623, line: 661, column: 5)
!679 = !DILocation(line: 668, column: 5, scope: !678, inlinedAt: !651)
!680 = !DILocation(line: 669, column: 3, scope: !633, inlinedAt: !651)
!681 = !DILocation(line: 671, column: 3, scope: !633, inlinedAt: !651)
!682 = !DILocation(line: 673, column: 1, scope: !633, inlinedAt: !651)
!683 = !DILocation(line: 105, column: 3, scope: !603)
!684 = !DISubprogram(name: "dcgettext", scope: !685, file: !685, line: 51, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!685 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!686 = !DISubroutineType(types: !687)
!687 = !{!6, !19, !19, !22}
!688 = !DISubprogram(name: "fputs_unlocked", scope: !689, file: !689, line: 667, type: !690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!689 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!690 = !DISubroutineType(types: !691)
!691 = !{!22, !19, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !694, line: 49, size: 1728, elements: !695)
!694 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !711, !712, !713, !714, !718, !719, !721, !725, !728, !730, !733, !736, !737, !738, !739, !740}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !693, file: !694, line: 51, baseType: !22, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !693, file: !694, line: 54, baseType: !6, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !693, file: !694, line: 55, baseType: !6, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !693, file: !694, line: 56, baseType: !6, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !693, file: !694, line: 57, baseType: !6, size: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !693, file: !694, line: 58, baseType: !6, size: 64, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !693, file: !694, line: 59, baseType: !6, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !693, file: !694, line: 60, baseType: !6, size: 64, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !693, file: !694, line: 61, baseType: !6, size: 64, offset: 512)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !693, file: !694, line: 64, baseType: !6, size: 64, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !693, file: !694, line: 65, baseType: !6, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !693, file: !694, line: 66, baseType: !6, size: 64, offset: 704)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !693, file: !694, line: 68, baseType: !709, size: 64, offset: 768)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !694, line: 36, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !693, file: !694, line: 70, baseType: !692, size: 64, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !693, file: !694, line: 72, baseType: !22, size: 32, offset: 896)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !693, file: !694, line: 73, baseType: !22, size: 32, offset: 928)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !693, file: !694, line: 74, baseType: !715, size: 64, offset: 960)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !716, line: 152, baseType: !717)
!716 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!717 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !693, file: !694, line: 77, baseType: !96, size: 16, offset: 1024)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !693, file: !694, line: 78, baseType: !720, size: 8, offset: 1040)
!720 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !693, file: !694, line: 79, baseType: !722, size: 8, offset: 1048)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 1)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !693, file: !694, line: 81, baseType: !726, size: 64, offset: 1088)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !694, line: 43, baseType: null)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !693, file: !694, line: 89, baseType: !729, size: 64, offset: 1152)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !716, line: 153, baseType: !717)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !693, file: !694, line: 91, baseType: !731, size: 64, offset: 1216)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !694, line: 37, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !693, file: !694, line: 92, baseType: !734, size: 64, offset: 1280)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !694, line: 38, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !693, file: !694, line: 93, baseType: !692, size: 64, offset: 1344)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !693, file: !694, line: 94, baseType: !8, size: 64, offset: 1408)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !693, file: !694, line: 95, baseType: !97, size: 64, offset: 1472)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !693, file: !694, line: 96, baseType: !22, size: 32, offset: 1536)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !693, file: !694, line: 98, baseType: !741, size: 160, offset: 1568)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 20)
!744 = !DISubprogram(name: "setlocale", scope: !745, file: !745, line: 122, type: !746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!745 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!746 = !DISubroutineType(types: !747)
!747 = !{!6, !22, !19}
!748 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 221, type: !749, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !752)
!749 = !DISubroutineType(types: !750)
!750 = !{!22, !22, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !763}
!753 = !DILocalVariable(name: "argc", arg: 1, scope: !748, file: !3, line: 221, type: !22)
!754 = !DILocalVariable(name: "argv", arg: 2, scope: !748, file: !3, line: 221, type: !751)
!755 = !DILocalVariable(name: "optc", scope: !748, file: !3, line: 223, type: !22)
!756 = !DILocalVariable(name: "list", scope: !748, file: !3, line: 224, type: !43)
!757 = !DILocalVariable(name: "table", scope: !748, file: !3, line: 225, type: !43)
!758 = !DILocalVariable(name: "signum", scope: !748, file: !3, line: 226, type: !22)
!759 = !DILocalVariable(name: "signame", scope: !748, file: !3, line: 227, type: !760)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 152, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 19)
!763 = !DILabel(scope: !748, name: "no_more_options", file: !3, line: 295)
!764 = !DILocation(line: 0, scope: !748)
!765 = !DILocation(line: 227, column: 3, scope: !748)
!766 = !DILocation(line: 227, column: 8, scope: !748)
!767 = !DILocation(line: 230, column: 21, scope: !748)
!768 = !DILocation(line: 230, column: 3, scope: !748)
!769 = !DILocation(line: 231, column: 3, scope: !748)
!770 = !DILocation(line: 232, column: 3, scope: !748)
!771 = !DILocation(line: 233, column: 3, scope: !748)
!772 = !DILocation(line: 235, column: 3, scope: !748)
!773 = !DILocation(line: 237, column: 3, scope: !748)
!774 = !DILocation(line: 226, column: 7, scope: !748)
!775 = !DILocation(line: 237, column: 18, scope: !748)
!776 = !DILocation(line: 243, column: 13, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 243, column: 13)
!778 = distinct !DILexicalBlock(scope: !748, file: !3, line: 240, column: 7)
!779 = !{!780, !780, i64 0}
!780 = !{!"int", !616, i64 0}
!781 = !DILocation(line: 243, column: 20, scope: !777)
!782 = !DILocation(line: 243, column: 13, scope: !778)
!783 = !DILocation(line: 246, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !777, file: !3, line: 244, column: 11)
!785 = !DILocation(line: 247, column: 13, scope: !784)
!786 = !DILocation(line: 256, column: 15, scope: !787)
!787 = distinct !DILexicalBlock(scope: !778, file: !3, line: 256, column: 13)
!788 = !DILocation(line: 0, scope: !778)
!789 = !DILocation(line: 256, column: 13, scope: !778)
!790 = !DILocation(line: 257, column: 20, scope: !787)
!791 = !DILocation(line: 257, column: 39, scope: !787)
!792 = !DILocation(line: 257, column: 37, scope: !787)
!793 = !DILocation(line: 257, column: 18, scope: !787)
!794 = !DILocation(line: 257, column: 11, scope: !787)
!795 = !DILocation(line: 258, column: 13, scope: !796)
!796 = distinct !DILexicalBlock(scope: !778, file: !3, line: 258, column: 13)
!797 = !DILocation(line: 258, column: 23, scope: !796)
!798 = !DILocation(line: 258, column: 40, scope: !796)
!799 = !DILocation(line: 258, column: 20, scope: !796)
!800 = !DILocation(line: 258, column: 13, scope: !778)
!801 = !DILocation(line: 260, column: 26, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !3, line: 259, column: 11)
!803 = !DILocation(line: 260, column: 13, scope: !802)
!804 = !DILocation(line: 261, column: 13, scope: !802)
!805 = !DILocation(line: 263, column: 15, scope: !778)
!806 = !DILocation(line: 264, column: 9, scope: !778)
!807 = !DILocation(line: 267, column: 15, scope: !808)
!808 = distinct !DILexicalBlock(scope: !778, file: !3, line: 267, column: 13)
!809 = !DILocation(line: 267, column: 13, scope: !778)
!810 = !DILocation(line: 269, column: 26, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !3, line: 268, column: 11)
!812 = !DILocation(line: 269, column: 70, scope: !811)
!813 = !DILocation(line: 269, column: 63, scope: !811)
!814 = !DILocation(line: 269, column: 13, scope: !811)
!815 = !DILocation(line: 270, column: 13, scope: !811)
!816 = !DILocation(line: 272, column: 31, scope: !778)
!817 = !DILocation(line: 272, column: 18, scope: !778)
!818 = !DILocation(line: 273, column: 20, scope: !819)
!819 = distinct !DILexicalBlock(scope: !778, file: !3, line: 273, column: 13)
!820 = !DILocation(line: 273, column: 13, scope: !778)
!821 = distinct !{!821, !773, !822, !664}
!822 = !DILocation(line: 294, column: 7, scope: !748)
!823 = !DILocation(line: 274, column: 11, scope: !819)
!824 = !DILocation(line: 282, column: 13, scope: !825)
!825 = distinct !DILexicalBlock(scope: !778, file: !3, line: 282, column: 13)
!826 = !DILocation(line: 290, column: 7, scope: !778)
!827 = !DILocation(line: 291, column: 7, scope: !778)
!828 = !DILocation(line: 293, column: 9, scope: !778)
!829 = !DILocation(line: 295, column: 2, scope: !748)
!830 = !DILocation(line: 297, column: 14, scope: !831)
!831 = distinct !DILexicalBlock(scope: !748, file: !3, line: 297, column: 7)
!832 = !DILocation(line: 297, column: 7, scope: !748)
!833 = !DILocation(line: 301, column: 20, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 300, column: 5)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 299, column: 12)
!836 = !DILocation(line: 301, column: 7, scope: !834)
!837 = !DILocation(line: 302, column: 7, scope: !834)
!838 = !DILocation(line: 305, column: 15, scope: !839)
!839 = distinct !DILexicalBlock(scope: !748, file: !3, line: 305, column: 8)
!840 = !DILocation(line: 307, column: 20, scope: !841)
!841 = distinct !DILexicalBlock(scope: !839, file: !3, line: 306, column: 5)
!842 = !DILocation(line: 307, column: 7, scope: !841)
!843 = !DILocation(line: 308, column: 7, scope: !841)
!844 = !DILocation(line: 311, column: 11, scope: !748)
!845 = !DILocation(line: 312, column: 27, scope: !748)
!846 = !DILocation(line: 312, column: 34, scope: !748)
!847 = !DILocalVariable(name: "table", arg: 1, scope: !848, file: !3, line: 126, type: !43)
!848 = distinct !DISubprogram(name: "list_signals", scope: !3, file: !3, line: 126, type: !849, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !853)
!849 = !DISubroutineType(types: !850)
!850 = !{!22, !43, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!853 = !{!847, !854, !855, !856, !857, !858, !861, !862}
!854 = !DILocalVariable(name: "argv", arg: 2, scope: !848, file: !3, line: 126, type: !851)
!855 = !DILocalVariable(name: "signum", scope: !848, file: !3, line: 128, type: !22)
!856 = !DILocalVariable(name: "status", scope: !848, file: !3, line: 129, type: !22)
!857 = !DILocalVariable(name: "signame", scope: !848, file: !3, line: 130, type: !760)
!858 = !DILocalVariable(name: "name_width", scope: !859, file: !3, line: 134, type: !9)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 133, column: 5)
!860 = distinct !DILexicalBlock(scope: !848, file: !3, line: 132, column: 7)
!861 = !DILocalVariable(name: "num_width", scope: !859, file: !3, line: 137, type: !9)
!862 = !DILocalVariable(name: "len", scope: !863, file: !3, line: 145, type: !97)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 144, column: 11)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 143, column: 13)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 142, column: 7)
!866 = distinct !DILexicalBlock(scope: !859, file: !3, line: 142, column: 7)
!867 = !DILocation(line: 0, scope: !848, inlinedAt: !868)
!868 = distinct !DILocation(line: 312, column: 13, scope: !748)
!869 = !DILocation(line: 130, column: 3, scope: !848, inlinedAt: !868)
!870 = !DILocation(line: 130, column: 8, scope: !848, inlinedAt: !868)
!871 = !DILocation(line: 132, column: 7, scope: !848, inlinedAt: !868)
!872 = !DILocation(line: 0, scope: !859, inlinedAt: !868)
!873 = !DILocation(line: 143, column: 13, scope: !864, inlinedAt: !868)
!874 = !DILocation(line: 143, column: 39, scope: !864, inlinedAt: !868)
!875 = !DILocation(line: 143, column: 13, scope: !865, inlinedAt: !868)
!876 = !DILocation(line: 145, column: 26, scope: !863, inlinedAt: !868)
!877 = !DILocation(line: 0, scope: !863, inlinedAt: !868)
!878 = !DILocation(line: 146, column: 17, scope: !879, inlinedAt: !868)
!879 = distinct !DILexicalBlock(scope: !863, file: !3, line: 146, column: 17)
!880 = !DILocation(line: 146, column: 28, scope: !879, inlinedAt: !868)
!881 = !DILocation(line: 146, column: 17, scope: !863, inlinedAt: !868)
!882 = !DILocation(line: 148, column: 11, scope: !863, inlinedAt: !868)
!883 = !DILocation(line: 142, column: 54, scope: !865, inlinedAt: !868)
!884 = !DILocation(line: 142, column: 31, scope: !865, inlinedAt: !868)
!885 = !DILocation(line: 142, column: 7, scope: !866, inlinedAt: !868)
!886 = distinct !{!886, !885, !887, !664}
!887 = !DILocation(line: 148, column: 11, scope: !866, inlinedAt: !868)
!888 = !DILocation(line: 150, column: 11, scope: !889, inlinedAt: !868)
!889 = distinct !DILexicalBlock(scope: !859, file: !3, line: 150, column: 11)
!890 = !DILocation(line: 150, column: 11, scope: !859, inlinedAt: !868)
!891 = !DILocation(line: 151, column: 16, scope: !892, inlinedAt: !868)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 151, column: 9)
!893 = distinct !DILexicalBlock(scope: !889, file: !3, line: 151, column: 9)
!894 = !DILocation(line: 151, column: 9, scope: !893, inlinedAt: !868)
!895 = !DILocation(line: 153, column: 22, scope: !896, inlinedAt: !868)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 152, column: 11)
!897 = !DILocation(line: 154, column: 24, scope: !898, inlinedAt: !868)
!898 = distinct !DILexicalBlock(scope: !896, file: !3, line: 154, column: 17)
!899 = !DILocation(line: 154, column: 17, scope: !896, inlinedAt: !868)
!900 = !DILocalVariable(name: "num_width", arg: 1, scope: !901, file: !3, line: 113, type: !22)
!901 = distinct !DISubprogram(name: "print_table_row", scope: !3, file: !3, line: 113, type: !902, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !22, !22, !22, !19}
!904 = !{!900, !905, !906, !907, !908}
!905 = !DILocalVariable(name: "signum", arg: 2, scope: !901, file: !3, line: 113, type: !22)
!906 = !DILocalVariable(name: "name_width", arg: 3, scope: !901, file: !3, line: 114, type: !22)
!907 = !DILocalVariable(name: "signame", arg: 4, scope: !901, file: !3, line: 114, type: !19)
!908 = !DILocalVariable(name: "description", scope: !901, file: !3, line: 116, type: !19)
!909 = !DILocation(line: 0, scope: !901, inlinedAt: !910)
!910 = distinct !DILocation(line: 157, column: 15, scope: !898, inlinedAt: !868)
!911 = !DILocation(line: 116, column: 29, scope: !901, inlinedAt: !910)
!912 = !DILocation(line: 117, column: 3, scope: !901, inlinedAt: !910)
!913 = !DILocation(line: 151, column: 27, scope: !892, inlinedAt: !868)
!914 = distinct !{!914, !894, !915, !664}
!915 = !DILocation(line: 158, column: 11, scope: !893, inlinedAt: !868)
!916 = !DILocation(line: 161, column: 15, scope: !917, inlinedAt: !868)
!917 = distinct !DILexicalBlock(scope: !918, file: !3, line: 161, column: 15)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 160, column: 9)
!919 = distinct !DILexicalBlock(scope: !889, file: !3, line: 160, column: 9)
!920 = !DILocation(line: 161, column: 41, scope: !917, inlinedAt: !868)
!921 = !DILocation(line: 161, column: 15, scope: !918, inlinedAt: !868)
!922 = !DILocation(line: 0, scope: !901, inlinedAt: !923)
!923 = distinct !DILocation(line: 162, column: 13, scope: !917, inlinedAt: !868)
!924 = !DILocation(line: 116, column: 29, scope: !901, inlinedAt: !923)
!925 = !DILocation(line: 117, column: 3, scope: !901, inlinedAt: !923)
!926 = !DILocation(line: 162, column: 13, scope: !917, inlinedAt: !868)
!927 = !DILocation(line: 160, column: 56, scope: !918, inlinedAt: !868)
!928 = !DILocation(line: 160, column: 33, scope: !918, inlinedAt: !868)
!929 = !DILocation(line: 160, column: 9, scope: !919, inlinedAt: !868)
!930 = distinct !{!930, !929, !931, !664}
!931 = !DILocation(line: 162, column: 68, scope: !919, inlinedAt: !868)
!932 = !DILocation(line: 166, column: 11, scope: !933, inlinedAt: !868)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 166, column: 11)
!934 = distinct !DILexicalBlock(scope: !860, file: !3, line: 165, column: 5)
!935 = !DILocation(line: 166, column: 11, scope: !934, inlinedAt: !868)
!936 = !DILocation(line: 167, column: 16, scope: !937, inlinedAt: !868)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 167, column: 9)
!938 = distinct !DILexicalBlock(scope: !933, file: !3, line: 167, column: 9)
!939 = !DILocation(line: 167, column: 9, scope: !938, inlinedAt: !868)
!940 = !DILocation(line: 169, column: 22, scope: !941, inlinedAt: !868)
!941 = distinct !DILexicalBlock(scope: !937, file: !3, line: 168, column: 11)
!942 = !DILocation(line: 170, column: 24, scope: !943, inlinedAt: !868)
!943 = distinct !DILexicalBlock(scope: !941, file: !3, line: 170, column: 17)
!944 = !DILocation(line: 170, column: 17, scope: !941, inlinedAt: !868)
!945 = !DILocation(line: 174, column: 21, scope: !946, inlinedAt: !868)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 174, column: 21)
!947 = distinct !DILexicalBlock(scope: !943, file: !3, line: 173, column: 15)
!948 = !{!616, !616, i64 0}
!949 = !DILocation(line: 174, column: 21, scope: !947, inlinedAt: !868)
!950 = !DILocation(line: 175, column: 19, scope: !946, inlinedAt: !868)
!951 = !DILocation(line: 177, column: 19, scope: !946, inlinedAt: !868)
!952 = !DILocation(line: 167, column: 27, scope: !937, inlinedAt: !868)
!953 = distinct !{!953, !939, !954, !664}
!954 = !DILocation(line: 179, column: 11, scope: !938, inlinedAt: !868)
!955 = !DILocation(line: 182, column: 15, scope: !956, inlinedAt: !868)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 182, column: 15)
!957 = distinct !DILexicalBlock(scope: !958, file: !3, line: 181, column: 9)
!958 = distinct !DILexicalBlock(scope: !933, file: !3, line: 181, column: 9)
!959 = !DILocation(line: 182, column: 41, scope: !956, inlinedAt: !868)
!960 = !DILocation(line: 182, column: 15, scope: !957, inlinedAt: !868)
!961 = !DILocation(line: 183, column: 13, scope: !956, inlinedAt: !868)
!962 = !DILocation(line: 181, column: 56, scope: !957, inlinedAt: !868)
!963 = !DILocation(line: 181, column: 33, scope: !957, inlinedAt: !868)
!964 = !DILocation(line: 181, column: 9, scope: !958, inlinedAt: !868)
!965 = distinct !{!965, !964, !966, !664}
!966 = !DILocation(line: 183, column: 26, scope: !958, inlinedAt: !868)
!967 = !DILocation(line: 129, column: 7, scope: !848, inlinedAt: !868)
!968 = !DILocation(line: 187, column: 1, scope: !848, inlinedAt: !868)
!969 = !DILocation(line: 313, column: 40, scope: !748)
!970 = !DILocalVariable(name: "signum", arg: 1, scope: !971, file: !3, line: 193, type: !22)
!971 = distinct !DISubprogram(name: "send_signals", scope: !3, file: !3, line: 193, type: !972, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!22, !22, !851}
!974 = !{!970, !975, !976, !977, !978, !980, !984}
!975 = !DILocalVariable(name: "argv", arg: 2, scope: !971, file: !3, line: 193, type: !851)
!976 = !DILocalVariable(name: "status", scope: !971, file: !3, line: 195, type: !22)
!977 = !DILocalVariable(name: "arg", scope: !971, file: !3, line: 196, type: !19)
!978 = !DILocalVariable(name: "endp", scope: !979, file: !3, line: 200, type: !6)
!979 = distinct !DILexicalBlock(scope: !971, file: !3, line: 199, column: 5)
!980 = !DILocalVariable(name: "n", scope: !979, file: !3, line: 201, type: !981)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !982, line: 101, baseType: !983)
!982 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !716, line: 72, baseType: !717)
!984 = !DILocalVariable(name: "pid", scope: !979, file: !3, line: 202, type: !985)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !986, line: 97, baseType: !987)
!986 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !716, line: 154, baseType: !22)
!988 = !DILocation(line: 0, scope: !971, inlinedAt: !989)
!989 = distinct !DILocation(line: 313, column: 13, scope: !748)
!990 = !DILocation(line: 196, column: 21, scope: !971, inlinedAt: !989)
!991 = !DILocation(line: 198, column: 3, scope: !971, inlinedAt: !989)
!992 = !DILocation(line: 200, column: 7, scope: !979, inlinedAt: !989)
!993 = !DILocation(line: 201, column: 27, scope: !979, inlinedAt: !989)
!994 = !DILocation(line: 0, scope: !979, inlinedAt: !989)
!995 = !DILocation(line: 201, column: 32, scope: !979, inlinedAt: !989)
!996 = !DILocation(line: 202, column: 19, scope: !979, inlinedAt: !989)
!997 = !DILocation(line: 204, column: 11, scope: !998, inlinedAt: !989)
!998 = distinct !DILexicalBlock(scope: !979, file: !3, line: 204, column: 11)
!999 = !DILocation(line: 204, column: 17, scope: !998, inlinedAt: !989)
!1000 = !DILocation(line: 204, column: 27, scope: !998, inlinedAt: !989)
!1001 = !DILocation(line: 204, column: 57, scope: !998, inlinedAt: !989)
!1002 = !DILocation(line: 204, column: 11, scope: !979, inlinedAt: !989)
!1003 = !DILocation(line: 206, column: 24, scope: !1004, inlinedAt: !989)
!1004 = distinct !DILexicalBlock(scope: !998, file: !3, line: 205, column: 9)
!1005 = !DILocation(line: 206, column: 53, scope: !1004, inlinedAt: !989)
!1006 = !DILocation(line: 206, column: 11, scope: !1004, inlinedAt: !989)
!1007 = !DILocation(line: 208, column: 9, scope: !1004, inlinedAt: !989)
!1008 = !DILocation(line: 209, column: 16, scope: !1009, inlinedAt: !989)
!1009 = distinct !DILexicalBlock(scope: !998, file: !3, line: 209, column: 16)
!1010 = !DILocation(line: 209, column: 35, scope: !1009, inlinedAt: !989)
!1011 = !DILocation(line: 209, column: 16, scope: !998, inlinedAt: !989)
!1012 = !DILocation(line: 211, column: 21, scope: !1013, inlinedAt: !989)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 210, column: 9)
!1014 = !DILocation(line: 211, column: 34, scope: !1013, inlinedAt: !989)
!1015 = !DILocation(line: 211, column: 11, scope: !1013, inlinedAt: !989)
!1016 = !DILocation(line: 213, column: 9, scope: !1013, inlinedAt: !989)
!1017 = !DILocation(line: 214, column: 5, scope: !971, inlinedAt: !989)
!1018 = !DILocation(line: 215, column: 18, scope: !971, inlinedAt: !989)
!1019 = !DILocation(line: 215, column: 17, scope: !971, inlinedAt: !989)
!1020 = !DILocation(line: 214, column: 5, scope: !979, inlinedAt: !989)
!1021 = distinct !{!1021, !991, !1022, !664}
!1022 = !DILocation(line: 215, column: 25, scope: !971, inlinedAt: !989)
!1023 = !DILocation(line: 314, column: 1, scope: !748)
!1024 = !DILocation(line: 284, column: 26, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !825, file: !3, line: 283, column: 11)
!1026 = !DILocation(line: 284, column: 13, scope: !1025)
!1027 = !DILocation(line: 285, column: 13, scope: !1025)
!1028 = !DISubprogram(name: "bindtextdomain", scope: !685, file: !685, line: 86, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!6, !19, !19}
!1031 = !DISubprogram(name: "textdomain", scope: !685, file: !685, line: 82, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!6, !19}
!1034 = !DISubprogram(name: "atexit", scope: !1035, file: !1035, line: 595, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1035 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!22, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!1039 = !DISubprogram(name: "getopt_long", scope: !16, file: !16, line: 66, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!22, !22, !851, !19, !1042, !24}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1043 = !DISubprogram(name: "error", scope: !1044, file: !1044, line: 52, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1044 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !22, !22, !19, null}
!1047 = !DISubprogram(name: "strsignal", scope: !1048, file: !1048, line: 462, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1048 = !DIFile(filename: "/usr/include/string.h", directory: "")
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!6, !22}
!1051 = !DISubprogram(name: "puts", scope: !689, file: !689, line: 637, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!22, !19}
!1054 = !DISubprogram(name: "strtoimax", scope: !1055, file: !1055, line: 297, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1055 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!717, !19, !751, !22}
!1058 = !DISubprogram(name: "kill", scope: !1059, file: !1059, line: 112, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1059 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!22, !22, !22}
!1062 = distinct !DISubprogram(name: "operand2sig", scope: !164, file: !164, line: 36, type: !1063, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !163, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!22, !19, !6}
!1065 = !{!1066, !1067, !1068, !1069, !1072, !1073, !1074, !1076}
!1066 = !DILocalVariable(name: "operand", arg: 1, scope: !1062, file: !164, line: 36, type: !19)
!1067 = !DILocalVariable(name: "signame", arg: 2, scope: !1062, file: !164, line: 36, type: !6)
!1068 = !DILocalVariable(name: "signum", scope: !1062, file: !164, line: 38, type: !22)
!1069 = !DILocalVariable(name: "endp", scope: !1070, file: !164, line: 53, type: !6)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !164, line: 41, column: 5)
!1071 = distinct !DILexicalBlock(scope: !1062, file: !164, line: 40, column: 7)
!1072 = !DILocalVariable(name: "l", scope: !1070, file: !164, line: 54, type: !717)
!1073 = !DILocalVariable(name: "i", scope: !1070, file: !164, line: 55, type: !22)
!1074 = !DILocalVariable(name: "upcased", scope: !1075, file: !164, line: 70, type: !6)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !164, line: 67, column: 5)
!1076 = !DILocalVariable(name: "p", scope: !1075, file: !164, line: 71, type: !6)
!1077 = !DILocation(line: 0, scope: !1062)
!1078 = !DILocation(line: 38, column: 3, scope: !1062)
!1079 = !DILocation(line: 40, column: 7, scope: !1071)
!1080 = !DILocation(line: 40, column: 7, scope: !1062)
!1081 = !DILocation(line: 53, column: 7, scope: !1070)
!1082 = !DILocation(line: 54, column: 21, scope: !1070)
!1083 = !DILocation(line: 54, column: 27, scope: !1070)
!1084 = !DILocation(line: 0, scope: !1070)
!1085 = !DILocation(line: 54, column: 32, scope: !1070)
!1086 = !DILocation(line: 55, column: 15, scope: !1070)
!1087 = !DILocation(line: 56, column: 28, scope: !1070)
!1088 = !DILocation(line: 56, column: 25, scope: !1070)
!1089 = !DILocation(line: 56, column: 33, scope: !1070)
!1090 = !DILocation(line: 56, column: 36, scope: !1070)
!1091 = !DILocation(line: 56, column: 42, scope: !1070)
!1092 = !DILocation(line: 56, column: 45, scope: !1070)
!1093 = !DILocation(line: 56, column: 51, scope: !1070)
!1094 = !DILocation(line: 58, column: 18, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1070, file: !164, line: 58, column: 11)
!1096 = !DILocation(line: 58, column: 11, scope: !1070)
!1097 = !DILocation(line: 65, column: 5, scope: !1071)
!1098 = !DILocation(line: 65, column: 5, scope: !1070)
!1099 = !DILocation(line: 70, column: 23, scope: !1075)
!1100 = !DILocation(line: 0, scope: !1075)
!1101 = !DILocation(line: 72, column: 25, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !164, line: 72, column: 7)
!1103 = distinct !DILexicalBlock(scope: !1075, file: !164, line: 72, column: 7)
!1104 = !DILocation(line: 72, column: 7, scope: !1103)
!1105 = !DILocation(line: 73, column: 51, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !164, line: 73, column: 13)
!1107 = !DILocation(line: 73, column: 13, scope: !1106)
!1108 = !DILocation(line: 73, column: 13, scope: !1102)
!1109 = !DILocation(line: 74, column: 14, scope: !1106)
!1110 = !DILocation(line: 74, column: 11, scope: !1106)
!1111 = !DILocation(line: 72, column: 30, scope: !1102)
!1112 = distinct !{!1112, !1104, !1113, !664}
!1113 = !DILocation(line: 74, column: 23, scope: !1103)
!1114 = !DILocation(line: 78, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1075, file: !164, line: 78, column: 11)
!1116 = !DILocation(line: 78, column: 40, scope: !1115)
!1117 = !DILocation(line: 79, column: 13, scope: !1115)
!1118 = !DILocation(line: 79, column: 17, scope: !1115)
!1119 = !DILocation(line: 79, column: 28, scope: !1115)
!1120 = !DILocation(line: 79, column: 35, scope: !1115)
!1121 = !DILocation(line: 79, column: 38, scope: !1115)
!1122 = !DILocation(line: 79, column: 49, scope: !1115)
!1123 = !DILocation(line: 79, column: 56, scope: !1115)
!1124 = !DILocation(line: 79, column: 59, scope: !1115)
!1125 = !DILocation(line: 79, column: 70, scope: !1115)
!1126 = !DILocation(line: 80, column: 17, scope: !1115)
!1127 = !DILocation(line: 80, column: 37, scope: !1115)
!1128 = !DILocation(line: 80, column: 20, scope: !1115)
!1129 = !DILocation(line: 80, column: 51, scope: !1115)
!1130 = !DILocation(line: 78, column: 11, scope: !1075)
!1131 = !DILocation(line: 81, column: 16, scope: !1115)
!1132 = !DILocation(line: 81, column: 9, scope: !1115)
!1133 = !DILocation(line: 83, column: 7, scope: !1075)
!1134 = !DILocation(line: 86, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1062, file: !164, line: 86, column: 7)
!1136 = !DILocation(line: 86, column: 14, scope: !1135)
!1137 = !DILocation(line: 86, column: 18, scope: !1135)
!1138 = !DILocation(line: 86, column: 21, scope: !1135)
!1139 = !DILocation(line: 86, column: 47, scope: !1135)
!1140 = !DILocation(line: 86, column: 7, scope: !1062)
!1141 = !DILocation(line: 88, column: 20, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !164, line: 87, column: 5)
!1143 = !DILocation(line: 88, column: 45, scope: !1142)
!1144 = !DILocation(line: 88, column: 7, scope: !1142)
!1145 = !DILocation(line: 89, column: 7, scope: !1142)
!1146 = !DILocation(line: 92, column: 10, scope: !1062)
!1147 = !DILocation(line: 92, column: 3, scope: !1062)
!1148 = !DILocation(line: 93, column: 1, scope: !1062)
!1149 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !39, file: !39, line: 51, type: !634, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1150)
!1150 = !{!1151}
!1151 = !DILocalVariable(name: "file", arg: 1, scope: !1149, file: !39, line: 51, type: !19)
!1152 = !DILocation(line: 0, scope: !1149)
!1153 = !DILocation(line: 53, column: 13, scope: !1149)
!1154 = !DILocation(line: 54, column: 1, scope: !1149)
!1155 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !39, file: !39, line: 88, type: !1156, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !43}
!1158 = !{!1159}
!1159 = !DILocalVariable(name: "ignore", arg: 1, scope: !1155, file: !39, line: 88, type: !43)
!1160 = !DILocation(line: 0, scope: !1155)
!1161 = !DILocation(line: 90, column: 16, scope: !1155)
!1162 = !{!1163, !1163, i64 0}
!1163 = !{!"_Bool", !616, i64 0}
!1164 = !DILocation(line: 91, column: 1, scope: !1155)
!1165 = distinct !DISubprogram(name: "close_stdout", scope: !39, file: !39, line: 117, type: !624, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1166)
!1166 = !{!1167}
!1167 = !DILocalVariable(name: "write_error", scope: !1168, file: !39, line: 122, type: !19)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !39, line: 121, column: 5)
!1169 = distinct !DILexicalBlock(scope: !1165, file: !39, line: 119, column: 7)
!1170 = !DILocation(line: 119, column: 21, scope: !1169)
!1171 = !DILocation(line: 119, column: 7, scope: !1169)
!1172 = !DILocation(line: 119, column: 29, scope: !1169)
!1173 = !DILocation(line: 120, column: 7, scope: !1169)
!1174 = !DILocation(line: 120, column: 12, scope: !1169)
!1175 = !{i8 0, i8 2}
!1176 = !DILocation(line: 120, column: 25, scope: !1169)
!1177 = !DILocation(line: 120, column: 28, scope: !1169)
!1178 = !DILocation(line: 120, column: 34, scope: !1169)
!1179 = !DILocation(line: 119, column: 7, scope: !1165)
!1180 = !DILocation(line: 122, column: 33, scope: !1168)
!1181 = !DILocation(line: 0, scope: !1168)
!1182 = !DILocation(line: 123, column: 11, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1168, file: !39, line: 123, column: 11)
!1184 = !DILocation(line: 0, scope: !1183)
!1185 = !DILocation(line: 123, column: 11, scope: !1168)
!1186 = !DILocation(line: 124, column: 36, scope: !1183)
!1187 = !DILocation(line: 124, column: 9, scope: !1183)
!1188 = !DILocation(line: 127, column: 9, scope: !1183)
!1189 = !DILocation(line: 129, column: 14, scope: !1168)
!1190 = !DILocation(line: 129, column: 7, scope: !1168)
!1191 = !DILocation(line: 134, column: 42, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1165, file: !39, line: 134, column: 7)
!1193 = !DILocation(line: 134, column: 28, scope: !1192)
!1194 = !DILocation(line: 134, column: 50, scope: !1192)
!1195 = !DILocation(line: 134, column: 7, scope: !1165)
!1196 = !DILocation(line: 135, column: 12, scope: !1192)
!1197 = !DILocation(line: 135, column: 5, scope: !1192)
!1198 = !DILocation(line: 136, column: 1, scope: !1165)
!1199 = distinct !DISubprogram(name: "set_program_name", scope: !53, file: !53, line: 39, type: !634, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !52, retainedNodes: !1200)
!1200 = !{!1201, !1202, !1203}
!1201 = !DILocalVariable(name: "argv0", arg: 1, scope: !1199, file: !53, line: 39, type: !19)
!1202 = !DILocalVariable(name: "slash", scope: !1199, file: !53, line: 46, type: !19)
!1203 = !DILocalVariable(name: "base", scope: !1199, file: !53, line: 47, type: !19)
!1204 = !DILocation(line: 0, scope: !1199)
!1205 = !DILocation(line: 51, column: 13, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !53, line: 51, column: 7)
!1207 = !DILocation(line: 51, column: 7, scope: !1199)
!1208 = !DILocation(line: 55, column: 14, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1206, file: !53, line: 52, column: 5)
!1210 = !DILocation(line: 54, column: 7, scope: !1209)
!1211 = !DILocation(line: 56, column: 7, scope: !1209)
!1212 = !DILocation(line: 59, column: 11, scope: !1199)
!1213 = !DILocation(line: 60, column: 17, scope: !1199)
!1214 = !DILocation(line: 60, column: 11, scope: !1199)
!1215 = !DILocation(line: 61, column: 12, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1199, file: !53, line: 61, column: 7)
!1217 = !DILocation(line: 61, column: 20, scope: !1216)
!1218 = !DILocation(line: 61, column: 25, scope: !1216)
!1219 = !DILocation(line: 61, column: 42, scope: !1216)
!1220 = !DILocation(line: 61, column: 28, scope: !1216)
!1221 = !DILocation(line: 61, column: 61, scope: !1216)
!1222 = !DILocation(line: 61, column: 7, scope: !1199)
!1223 = !DILocation(line: 64, column: 11, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !53, line: 64, column: 11)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !53, line: 62, column: 5)
!1226 = !DILocation(line: 64, column: 36, scope: !1224)
!1227 = !DILocation(line: 64, column: 11, scope: !1225)
!1228 = !DILocation(line: 66, column: 24, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1224, file: !53, line: 65, column: 9)
!1230 = !DILocation(line: 70, column: 41, scope: !1229)
!1231 = !DILocation(line: 72, column: 9, scope: !1229)
!1232 = !DILocation(line: 84, column: 16, scope: !1199)
!1233 = !DILocation(line: 90, column: 27, scope: !1199)
!1234 = !DILocation(line: 92, column: 1, scope: !1199)
!1235 = distinct !DISubprogram(name: "clone_quoting_options", scope: !59, file: !59, line: 122, type: !1236, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1239)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1238, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1239 = !{!1240, !1241, !1242}
!1240 = !DILocalVariable(name: "o", arg: 1, scope: !1235, file: !59, line: 122, type: !1238)
!1241 = !DILocalVariable(name: "e", scope: !1235, file: !59, line: 124, type: !22)
!1242 = !DILocalVariable(name: "p", scope: !1235, file: !59, line: 125, type: !1238)
!1243 = !DILocation(line: 0, scope: !1235)
!1244 = !DILocation(line: 124, column: 11, scope: !1235)
!1245 = !DILocation(line: 125, column: 40, scope: !1235)
!1246 = !DILocation(line: 125, column: 31, scope: !1235)
!1247 = !DILocation(line: 127, column: 9, scope: !1235)
!1248 = !DILocation(line: 128, column: 3, scope: !1235)
!1249 = distinct !DISubprogram(name: "get_quoting_style", scope: !59, file: !59, line: 133, type: !1250, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1254)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!61, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1254 = !{!1255}
!1255 = !DILocalVariable(name: "o", arg: 1, scope: !1249, file: !59, line: 133, type: !1252)
!1256 = !DILocation(line: 0, scope: !1249)
!1257 = !DILocation(line: 135, column: 11, scope: !1249)
!1258 = !DILocation(line: 135, column: 46, scope: !1249)
!1259 = !{!1260, !616, i64 0}
!1260 = !{!"quoting_options", !616, i64 0, !780, i64 4, !616, i64 8, !615, i64 40, !615, i64 48}
!1261 = !DILocation(line: 135, column: 3, scope: !1249)
!1262 = distinct !DISubprogram(name: "set_quoting_style", scope: !59, file: !59, line: 141, type: !1263, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !1238, !61}
!1265 = !{!1266, !1267}
!1266 = !DILocalVariable(name: "o", arg: 1, scope: !1262, file: !59, line: 141, type: !1238)
!1267 = !DILocalVariable(name: "s", arg: 2, scope: !1262, file: !59, line: 141, type: !61)
!1268 = !DILocation(line: 0, scope: !1262)
!1269 = !DILocation(line: 143, column: 4, scope: !1262)
!1270 = !DILocation(line: 143, column: 39, scope: !1262)
!1271 = !DILocation(line: 143, column: 45, scope: !1262)
!1272 = !DILocation(line: 144, column: 1, scope: !1262)
!1273 = distinct !DISubprogram(name: "set_char_quoting", scope: !59, file: !59, line: 152, type: !1274, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!22, !1238, !7, !22}
!1276 = !{!1277, !1278, !1279, !1280, !1282, !1284, !1285}
!1277 = !DILocalVariable(name: "o", arg: 1, scope: !1273, file: !59, line: 152, type: !1238)
!1278 = !DILocalVariable(name: "c", arg: 2, scope: !1273, file: !59, line: 152, type: !7)
!1279 = !DILocalVariable(name: "i", arg: 3, scope: !1273, file: !59, line: 152, type: !22)
!1280 = !DILocalVariable(name: "uc", scope: !1273, file: !59, line: 154, type: !1281)
!1281 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1282 = !DILocalVariable(name: "p", scope: !1273, file: !59, line: 155, type: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!1284 = !DILocalVariable(name: "shift", scope: !1273, file: !59, line: 157, type: !22)
!1285 = !DILocalVariable(name: "r", scope: !1273, file: !59, line: 158, type: !22)
!1286 = !DILocation(line: 0, scope: !1273)
!1287 = !DILocation(line: 156, column: 6, scope: !1273)
!1288 = !DILocation(line: 156, column: 62, scope: !1273)
!1289 = !DILocation(line: 156, column: 57, scope: !1273)
!1290 = !DILocation(line: 157, column: 15, scope: !1273)
!1291 = !DILocation(line: 158, column: 12, scope: !1273)
!1292 = !DILocation(line: 158, column: 15, scope: !1273)
!1293 = !DILocation(line: 158, column: 25, scope: !1273)
!1294 = !DILocation(line: 159, column: 13, scope: !1273)
!1295 = !DILocation(line: 159, column: 18, scope: !1273)
!1296 = !DILocation(line: 159, column: 23, scope: !1273)
!1297 = !DILocation(line: 159, column: 6, scope: !1273)
!1298 = !DILocation(line: 160, column: 3, scope: !1273)
!1299 = distinct !DISubprogram(name: "set_quoting_flags", scope: !59, file: !59, line: 168, type: !1300, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!22, !1238, !22}
!1302 = !{!1303, !1304, !1305}
!1303 = !DILocalVariable(name: "o", arg: 1, scope: !1299, file: !59, line: 168, type: !1238)
!1304 = !DILocalVariable(name: "i", arg: 2, scope: !1299, file: !59, line: 168, type: !22)
!1305 = !DILocalVariable(name: "r", scope: !1299, file: !59, line: 170, type: !22)
!1306 = !DILocation(line: 0, scope: !1299)
!1307 = !DILocation(line: 171, column: 8, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1299, file: !59, line: 171, column: 7)
!1309 = !DILocation(line: 171, column: 7, scope: !1299)
!1310 = !DILocation(line: 173, column: 10, scope: !1299)
!1311 = !{!1260, !780, i64 4}
!1312 = !DILocation(line: 174, column: 12, scope: !1299)
!1313 = !DILocation(line: 175, column: 3, scope: !1299)
!1314 = distinct !DISubprogram(name: "set_custom_quoting", scope: !59, file: !59, line: 179, type: !1315, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !1238, !19, !19}
!1317 = !{!1318, !1319, !1320}
!1318 = !DILocalVariable(name: "o", arg: 1, scope: !1314, file: !59, line: 179, type: !1238)
!1319 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1314, file: !59, line: 180, type: !19)
!1320 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1314, file: !59, line: 180, type: !19)
!1321 = !DILocation(line: 0, scope: !1314)
!1322 = !DILocation(line: 182, column: 8, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1314, file: !59, line: 182, column: 7)
!1324 = !DILocation(line: 182, column: 7, scope: !1314)
!1325 = !DILocation(line: 184, column: 6, scope: !1314)
!1326 = !DILocation(line: 184, column: 12, scope: !1314)
!1327 = !DILocation(line: 185, column: 8, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1314, file: !59, line: 185, column: 7)
!1329 = !DILocation(line: 185, column: 19, scope: !1328)
!1330 = !DILocation(line: 186, column: 5, scope: !1328)
!1331 = !DILocation(line: 187, column: 6, scope: !1314)
!1332 = !DILocation(line: 187, column: 17, scope: !1314)
!1333 = !{!1260, !615, i64 40}
!1334 = !DILocation(line: 188, column: 6, scope: !1314)
!1335 = !DILocation(line: 188, column: 18, scope: !1314)
!1336 = !{!1260, !615, i64 48}
!1337 = !DILocation(line: 189, column: 1, scope: !1314)
!1338 = distinct !DISubprogram(name: "quotearg_buffer", scope: !59, file: !59, line: 784, type: !1339, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!97, !6, !97, !19, !97, !1252}
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1342 = !DILocalVariable(name: "buffer", arg: 1, scope: !1338, file: !59, line: 784, type: !6)
!1343 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1338, file: !59, line: 784, type: !97)
!1344 = !DILocalVariable(name: "arg", arg: 3, scope: !1338, file: !59, line: 785, type: !19)
!1345 = !DILocalVariable(name: "argsize", arg: 4, scope: !1338, file: !59, line: 785, type: !97)
!1346 = !DILocalVariable(name: "o", arg: 5, scope: !1338, file: !59, line: 786, type: !1252)
!1347 = !DILocalVariable(name: "p", scope: !1338, file: !59, line: 788, type: !1252)
!1348 = !DILocalVariable(name: "e", scope: !1338, file: !59, line: 789, type: !22)
!1349 = !DILocalVariable(name: "r", scope: !1338, file: !59, line: 790, type: !97)
!1350 = !DILocation(line: 0, scope: !1338)
!1351 = !DILocation(line: 788, column: 37, scope: !1338)
!1352 = !DILocation(line: 789, column: 11, scope: !1338)
!1353 = !DILocation(line: 791, column: 43, scope: !1338)
!1354 = !DILocation(line: 791, column: 53, scope: !1338)
!1355 = !DILocation(line: 791, column: 60, scope: !1338)
!1356 = !DILocation(line: 792, column: 43, scope: !1338)
!1357 = !DILocation(line: 792, column: 58, scope: !1338)
!1358 = !DILocation(line: 790, column: 14, scope: !1338)
!1359 = !DILocation(line: 793, column: 9, scope: !1338)
!1360 = !DILocation(line: 794, column: 3, scope: !1338)
!1361 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !59, file: !59, line: 256, type: !1362, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1366)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!97, !6, !97, !19, !97, !61, !22, !1364, !19, !19}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1391, !1392, !1393, !1394, !1395, !1398, !1399, !1417, !1420, !1421, !1428, !1431, !1432, !1433, !1434, !1435, !1436}
!1367 = !DILocalVariable(name: "buffer", arg: 1, scope: !1361, file: !59, line: 256, type: !6)
!1368 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1361, file: !59, line: 256, type: !97)
!1369 = !DILocalVariable(name: "arg", arg: 3, scope: !1361, file: !59, line: 257, type: !19)
!1370 = !DILocalVariable(name: "argsize", arg: 4, scope: !1361, file: !59, line: 257, type: !97)
!1371 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1361, file: !59, line: 258, type: !61)
!1372 = !DILocalVariable(name: "flags", arg: 6, scope: !1361, file: !59, line: 258, type: !22)
!1373 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1361, file: !59, line: 259, type: !1364)
!1374 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1361, file: !59, line: 260, type: !19)
!1375 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1361, file: !59, line: 261, type: !19)
!1376 = !DILocalVariable(name: "i", scope: !1361, file: !59, line: 263, type: !97)
!1377 = !DILocalVariable(name: "len", scope: !1361, file: !59, line: 264, type: !97)
!1378 = !DILocalVariable(name: "orig_buffersize", scope: !1361, file: !59, line: 265, type: !97)
!1379 = !DILocalVariable(name: "quote_string", scope: !1361, file: !59, line: 266, type: !19)
!1380 = !DILocalVariable(name: "quote_string_len", scope: !1361, file: !59, line: 267, type: !97)
!1381 = !DILocalVariable(name: "backslash_escapes", scope: !1361, file: !59, line: 268, type: !43)
!1382 = !DILocalVariable(name: "unibyte_locale", scope: !1361, file: !59, line: 269, type: !43)
!1383 = !DILocalVariable(name: "elide_outer_quotes", scope: !1361, file: !59, line: 270, type: !43)
!1384 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1361, file: !59, line: 271, type: !43)
!1385 = !DILocalVariable(name: "encountered_single_quote", scope: !1361, file: !59, line: 272, type: !43)
!1386 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1361, file: !59, line: 273, type: !43)
!1387 = !DILocalVariable(name: "c", scope: !1388, file: !59, line: 402, type: !1281)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !59, line: 401, column: 5)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !59, line: 400, column: 3)
!1390 = distinct !DILexicalBlock(scope: !1361, file: !59, line: 400, column: 3)
!1391 = !DILocalVariable(name: "esc", scope: !1388, file: !59, line: 403, type: !1281)
!1392 = !DILocalVariable(name: "is_right_quote", scope: !1388, file: !59, line: 404, type: !43)
!1393 = !DILocalVariable(name: "escaping", scope: !1388, file: !59, line: 405, type: !43)
!1394 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1388, file: !59, line: 406, type: !43)
!1395 = !DILocalVariable(name: "m", scope: !1396, file: !59, line: 610, type: !97)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 608, column: 11)
!1397 = distinct !DILexicalBlock(scope: !1388, file: !59, line: 426, column: 9)
!1398 = !DILocalVariable(name: "printable", scope: !1396, file: !59, line: 612, type: !43)
!1399 = !DILocalVariable(name: "mbstate", scope: !1400, file: !59, line: 621, type: !1402)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !59, line: 620, column: 15)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !59, line: 614, column: 17)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1403, line: 6, baseType: !1404)
!1403 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1405, line: 21, baseType: !1406)
!1405 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1405, line: 13, size: 64, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1406, file: !1405, line: 15, baseType: !22, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1406, file: !1405, line: 20, baseType: !1410, size: 32, offset: 32)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1405, line: 16, size: 32, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1410, file: !1405, line: 18, baseType: !9, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1410, file: !1405, line: 19, baseType: !1414, size: 32)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !1415)
!1415 = !{!1416}
!1416 = !DISubrange(count: 4)
!1417 = !DILocalVariable(name: "w", scope: !1418, file: !59, line: 631, type: !1419)
!1418 = distinct !DILexicalBlock(scope: !1400, file: !59, line: 630, column: 19)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !98, line: 74, baseType: !22)
!1420 = !DILocalVariable(name: "bytes", scope: !1418, file: !59, line: 632, type: !97)
!1421 = !DILocalVariable(name: "j", scope: !1422, file: !59, line: 657, type: !97)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !59, line: 656, column: 27)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !59, line: 654, column: 29)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !59, line: 649, column: 23)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !59, line: 641, column: 30)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !59, line: 636, column: 30)
!1427 = distinct !DILexicalBlock(scope: !1418, file: !59, line: 634, column: 25)
!1428 = !DILocalVariable(name: "ilim", scope: !1429, file: !59, line: 684, type: !97)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !59, line: 681, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1396, file: !59, line: 680, column: 17)
!1431 = !DILabel(scope: !1361, name: "process_input", file: !59, line: 314)
!1432 = !DILabel(scope: !1397, name: "c_and_shell_escape", file: !59, line: 512)
!1433 = !DILabel(scope: !1397, name: "c_escape", file: !59, line: 517)
!1434 = !DILabel(scope: !1388, name: "store_escape", file: !59, line: 719)
!1435 = !DILabel(scope: !1388, name: "store_c", file: !59, line: 722)
!1436 = !DILabel(scope: !1361, name: "force_outer_quoting_style", file: !59, line: 763)
!1437 = !DILocation(line: 0, scope: !1361)
!1438 = !DILocation(line: 269, column: 25, scope: !1361)
!1439 = !DILocation(line: 269, column: 36, scope: !1361)
!1440 = !DILocation(line: 270, column: 8, scope: !1361)
!1441 = !DILocation(line: 273, column: 3, scope: !1361)
!1442 = !DILocation(line: 265, column: 10, scope: !1361)
!1443 = !DILocation(line: 266, column: 15, scope: !1361)
!1444 = !DILocation(line: 267, column: 10, scope: !1361)
!1445 = !DILocation(line: 268, column: 8, scope: !1361)
!1446 = !DILocation(line: 271, column: 8, scope: !1361)
!1447 = !DILocation(line: 272, column: 8, scope: !1361)
!1448 = !DILocation(line: 273, column: 8, scope: !1361)
!1449 = !DILocation(line: 314, column: 2, scope: !1361)
!1450 = !DILocation(line: 316, column: 3, scope: !1361)
!1451 = !DILocation(line: 323, column: 11, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1361, file: !59, line: 317, column: 5)
!1453 = !DILocation(line: 323, column: 12, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1452, file: !59, line: 323, column: 11)
!1455 = !DILocation(line: 324, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !59, line: 324, column: 9)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !59, line: 324, column: 9)
!1458 = !DILocation(line: 324, column: 9, scope: !1457)
!1459 = !DILocation(line: 362, column: 26, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !59, line: 340, column: 11)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !59, line: 339, column: 13)
!1462 = distinct !DILexicalBlock(scope: !1452, file: !59, line: 338, column: 7)
!1463 = !DILocation(line: 363, column: 27, scope: !1460)
!1464 = !DILocation(line: 364, column: 11, scope: !1460)
!1465 = !DILocation(line: 365, column: 14, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !59, line: 365, column: 13)
!1467 = !DILocation(line: 365, column: 13, scope: !1462)
!1468 = !DILocation(line: 366, column: 43, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !59, line: 366, column: 11)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !59, line: 366, column: 11)
!1471 = !DILocation(line: 366, column: 11, scope: !1470)
!1472 = !DILocation(line: 367, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !59, line: 367, column: 13)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !59, line: 367, column: 13)
!1475 = !DILocation(line: 367, column: 13, scope: !1474)
!1476 = !DILocation(line: 366, column: 70, scope: !1469)
!1477 = distinct !{!1477, !1471, !1478, !664}
!1478 = !DILocation(line: 367, column: 13, scope: !1470)
!1479 = !DILocation(line: 264, column: 10, scope: !1361)
!1480 = !DILocation(line: 370, column: 28, scope: !1462)
!1481 = !DILocation(line: 372, column: 7, scope: !1452)
!1482 = !DILocation(line: 376, column: 7, scope: !1452)
!1483 = !DILocation(line: 379, column: 7, scope: !1452)
!1484 = !DILocation(line: 381, column: 12, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1452, file: !59, line: 381, column: 11)
!1486 = !DILocation(line: 381, column: 11, scope: !1452)
!1487 = !DILocation(line: 386, column: 12, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1452, file: !59, line: 386, column: 11)
!1489 = !DILocation(line: 386, column: 11, scope: !1452)
!1490 = !DILocation(line: 387, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !59, line: 387, column: 9)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !59, line: 387, column: 9)
!1493 = !DILocation(line: 387, column: 9, scope: !1492)
!1494 = !DILocation(line: 394, column: 7, scope: !1452)
!1495 = !DILocation(line: 397, column: 7, scope: !1452)
!1496 = !DILocation(line: 400, column: 8, scope: !1390)
!1497 = !DILocation(line: 0, scope: !1390)
!1498 = !DILocation(line: 400, column: 27, scope: !1389)
!1499 = !DILocation(line: 400, column: 19, scope: !1389)
!1500 = !DILocation(line: 400, column: 41, scope: !1389)
!1501 = !DILocation(line: 400, column: 48, scope: !1389)
!1502 = !DILocation(line: 400, column: 3, scope: !1390)
!1503 = !DILocation(line: 400, column: 60, scope: !1389)
!1504 = !DILocation(line: 0, scope: !1388)
!1505 = !DILocation(line: 409, column: 11, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1388, file: !59, line: 408, column: 11)
!1507 = !DILocation(line: 411, column: 17, scope: !1506)
!1508 = !DILocation(line: 412, column: 39, scope: !1506)
!1509 = !DILocation(line: 416, column: 32, scope: !1506)
!1510 = !DILocation(line: 412, column: 19, scope: !1506)
!1511 = !DILocation(line: 412, column: 15, scope: !1506)
!1512 = !DILocation(line: 417, column: 11, scope: !1506)
!1513 = !DILocation(line: 417, column: 26, scope: !1506)
!1514 = !DILocation(line: 417, column: 14, scope: !1506)
!1515 = !DILocation(line: 417, column: 63, scope: !1506)
!1516 = !DILocation(line: 408, column: 11, scope: !1388)
!1517 = !DILocation(line: 424, column: 11, scope: !1388)
!1518 = !DILocation(line: 425, column: 7, scope: !1388)
!1519 = !DILocation(line: 428, column: 15, scope: !1397)
!1520 = !DILocation(line: 430, column: 15, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !59, line: 430, column: 15)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !59, line: 429, column: 13)
!1523 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 428, column: 15)
!1524 = !DILocation(line: 430, column: 15, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !59, line: 430, column: 15)
!1526 = !DILocation(line: 430, column: 15, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !59, line: 430, column: 15)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !59, line: 430, column: 15)
!1529 = distinct !DILexicalBlock(scope: !1525, file: !59, line: 430, column: 15)
!1530 = !DILocation(line: 430, column: 15, scope: !1528)
!1531 = !DILocation(line: 430, column: 15, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !59, line: 430, column: 15)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !59, line: 430, column: 15)
!1534 = !DILocation(line: 430, column: 15, scope: !1533)
!1535 = !DILocation(line: 430, column: 15, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !59, line: 430, column: 15)
!1537 = distinct !DILexicalBlock(scope: !1529, file: !59, line: 430, column: 15)
!1538 = !DILocation(line: 430, column: 15, scope: !1537)
!1539 = !DILocation(line: 430, column: 15, scope: !1529)
!1540 = !DILocation(line: 430, column: 15, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !59, line: 430, column: 15)
!1542 = distinct !DILexicalBlock(scope: !1521, file: !59, line: 430, column: 15)
!1543 = !DILocation(line: 430, column: 15, scope: !1542)
!1544 = !DILocation(line: 438, column: 19, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1522, file: !59, line: 437, column: 19)
!1546 = !DILocation(line: 438, column: 48, scope: !1545)
!1547 = !DILocation(line: 438, column: 59, scope: !1545)
!1548 = !DILocation(line: 440, column: 19, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !59, line: 440, column: 19)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !59, line: 440, column: 19)
!1551 = distinct !DILexicalBlock(scope: !1545, file: !59, line: 439, column: 17)
!1552 = !DILocation(line: 440, column: 19, scope: !1550)
!1553 = !DILocation(line: 441, column: 19, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !59, line: 441, column: 19)
!1555 = distinct !DILexicalBlock(scope: !1551, file: !59, line: 441, column: 19)
!1556 = !DILocation(line: 441, column: 19, scope: !1555)
!1557 = !DILocation(line: 442, column: 17, scope: !1551)
!1558 = !DILocation(line: 449, column: 20, scope: !1523)
!1559 = !DILocation(line: 454, column: 11, scope: !1397)
!1560 = !DILocation(line: 457, column: 19, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 455, column: 13)
!1562 = !DILocation(line: 463, column: 19, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1561, file: !59, line: 462, column: 19)
!1564 = !DILocation(line: 463, column: 47, scope: !1563)
!1565 = !DILocation(line: 463, column: 41, scope: !1563)
!1566 = !DILocation(line: 463, column: 52, scope: !1563)
!1567 = !DILocation(line: 462, column: 19, scope: !1561)
!1568 = !DILocation(line: 464, column: 25, scope: !1563)
!1569 = !DILocation(line: 464, column: 17, scope: !1563)
!1570 = !DILocation(line: 471, column: 25, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1563, file: !59, line: 465, column: 19)
!1572 = !DILocation(line: 475, column: 21, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !59, line: 475, column: 21)
!1574 = distinct !DILexicalBlock(scope: !1571, file: !59, line: 475, column: 21)
!1575 = !DILocation(line: 475, column: 21, scope: !1574)
!1576 = !DILocation(line: 476, column: 21, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !59, line: 476, column: 21)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !59, line: 476, column: 21)
!1579 = !DILocation(line: 476, column: 21, scope: !1578)
!1580 = !DILocation(line: 477, column: 21, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !59, line: 477, column: 21)
!1582 = distinct !DILexicalBlock(scope: !1571, file: !59, line: 477, column: 21)
!1583 = !DILocation(line: 477, column: 21, scope: !1582)
!1584 = !DILocation(line: 478, column: 21, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !59, line: 478, column: 21)
!1586 = distinct !DILexicalBlock(scope: !1571, file: !59, line: 478, column: 21)
!1587 = !DILocation(line: 478, column: 21, scope: !1586)
!1588 = !DILocation(line: 479, column: 21, scope: !1571)
!1589 = !DILocation(line: 492, column: 31, scope: !1397)
!1590 = !DILocation(line: 493, column: 31, scope: !1397)
!1591 = !DILocation(line: 495, column: 31, scope: !1397)
!1592 = !DILocation(line: 496, column: 31, scope: !1397)
!1593 = !DILocation(line: 497, column: 31, scope: !1397)
!1594 = !DILocation(line: 500, column: 15, scope: !1397)
!1595 = !DILocation(line: 502, column: 19, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !59, line: 501, column: 13)
!1597 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 500, column: 15)
!1598 = !DILocation(line: 509, column: 33, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 509, column: 15)
!1600 = !DILocation(line: 0, scope: !1397)
!1601 = !DILocation(line: 512, column: 9, scope: !1397)
!1602 = !DILocation(line: 514, column: 15, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 513, column: 15)
!1604 = !DILocation(line: 517, column: 9, scope: !1397)
!1605 = !DILocation(line: 518, column: 15, scope: !1397)
!1606 = !DILocation(line: 526, column: 15, scope: !1397)
!1607 = !DILocation(line: 526, column: 40, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 526, column: 15)
!1609 = !DILocation(line: 526, column: 47, scope: !1608)
!1610 = !DILocation(line: 526, column: 18, scope: !1608)
!1611 = !DILocation(line: 530, column: 17, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 530, column: 15)
!1613 = !DILocation(line: 530, column: 15, scope: !1397)
!1614 = !DILocation(line: 535, column: 11, scope: !1397)
!1615 = !DILocation(line: 549, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 548, column: 15)
!1617 = !DILocation(line: 556, column: 15, scope: !1397)
!1618 = !DILocation(line: 558, column: 19, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !59, line: 557, column: 13)
!1620 = distinct !DILexicalBlock(scope: !1397, file: !59, line: 556, column: 15)
!1621 = !DILocation(line: 561, column: 19, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !59, line: 561, column: 19)
!1623 = !DILocation(line: 561, column: 30, scope: !1622)
!1624 = !DILocation(line: 570, column: 15, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !59, line: 570, column: 15)
!1626 = distinct !DILexicalBlock(scope: !1619, file: !59, line: 570, column: 15)
!1627 = !DILocation(line: 570, column: 15, scope: !1626)
!1628 = !DILocation(line: 571, column: 15, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !59, line: 571, column: 15)
!1630 = distinct !DILexicalBlock(scope: !1619, file: !59, line: 571, column: 15)
!1631 = !DILocation(line: 571, column: 15, scope: !1630)
!1632 = !DILocation(line: 572, column: 15, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !59, line: 572, column: 15)
!1634 = distinct !DILexicalBlock(scope: !1619, file: !59, line: 572, column: 15)
!1635 = !DILocation(line: 572, column: 15, scope: !1634)
!1636 = !DILocation(line: 574, column: 13, scope: !1619)
!1637 = !DILocation(line: 614, column: 17, scope: !1396)
!1638 = !DILocation(line: 0, scope: !1396)
!1639 = !DILocation(line: 617, column: 29, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1401, file: !59, line: 615, column: 15)
!1641 = !{!1642, !1642, i64 0}
!1642 = !{!"short", !616, i64 0}
!1643 = !DILocation(line: 617, column: 27, scope: !1640)
!1644 = !DILocation(line: 678, column: 40, scope: !1396)
!1645 = !DILocation(line: 680, column: 23, scope: !1430)
!1646 = !DILocation(line: 621, column: 17, scope: !1400)
!1647 = !DILocation(line: 621, column: 27, scope: !1400)
!1648 = !DILocalVariable(name: "__dest", arg: 1, scope: !1649, file: !1650, line: 57, type: !8)
!1649 = distinct !DISubprogram(name: "memset", scope: !1650, file: !1650, line: 57, type: !1651, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1653)
!1650 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!8, !8, !22, !97}
!1653 = !{!1648, !1654, !1655}
!1654 = !DILocalVariable(name: "__ch", arg: 2, scope: !1649, file: !1650, line: 57, type: !22)
!1655 = !DILocalVariable(name: "__len", arg: 3, scope: !1649, file: !1650, line: 57, type: !97)
!1656 = !DILocation(line: 0, scope: !1649, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 622, column: 17, scope: !1400)
!1658 = !DILocation(line: 59, column: 10, scope: !1649, inlinedAt: !1657)
!1659 = !DILocation(line: 626, column: 29, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1400, file: !59, line: 626, column: 21)
!1661 = !DILocation(line: 626, column: 21, scope: !1400)
!1662 = !DILocation(line: 627, column: 29, scope: !1660)
!1663 = !DILocation(line: 627, column: 19, scope: !1660)
!1664 = !DILocation(line: 629, column: 17, scope: !1400)
!1665 = !DILocation(line: 624, column: 19, scope: !1400)
!1666 = !DILocation(line: 625, column: 27, scope: !1400)
!1667 = !DILocation(line: 631, column: 21, scope: !1418)
!1668 = !DILocation(line: 632, column: 56, scope: !1418)
!1669 = !DILocation(line: 632, column: 50, scope: !1418)
!1670 = !DILocation(line: 633, column: 53, scope: !1418)
!1671 = !DILocation(line: 0, scope: !1418)
!1672 = !DILocation(line: 632, column: 36, scope: !1418)
!1673 = !DILocation(line: 634, column: 25, scope: !1418)
!1674 = !DILocation(line: 644, column: 38, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1425, file: !59, line: 642, column: 23)
!1676 = !DILocation(line: 644, column: 48, scope: !1675)
!1677 = !DILocation(line: 644, column: 25, scope: !1675)
!1678 = !DILocation(line: 644, column: 51, scope: !1675)
!1679 = !DILocation(line: 645, column: 28, scope: !1675)
!1680 = !DILocation(line: 644, column: 34, scope: !1675)
!1681 = distinct !{!1681, !1677, !1679, !664}
!1682 = !DILocation(line: 655, column: 29, scope: !1423)
!1683 = !DILocation(line: 0, scope: !1422)
!1684 = !DILocation(line: 659, column: 49, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !59, line: 658, column: 29)
!1686 = distinct !DILexicalBlock(scope: !1422, file: !59, line: 658, column: 29)
!1687 = !DILocation(line: 659, column: 39, scope: !1685)
!1688 = !DILocation(line: 659, column: 31, scope: !1685)
!1689 = !DILocation(line: 658, column: 53, scope: !1685)
!1690 = !DILocation(line: 658, column: 43, scope: !1685)
!1691 = !DILocation(line: 658, column: 29, scope: !1686)
!1692 = distinct !{!1692, !1691, !1693, !664}
!1693 = !DILocation(line: 667, column: 33, scope: !1686)
!1694 = !DILocation(line: 674, column: 19, scope: !1400)
!1695 = !DILocation(line: 670, column: 41, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1424, file: !59, line: 670, column: 29)
!1697 = !DILocation(line: 670, column: 31, scope: !1696)
!1698 = !DILocation(line: 670, column: 29, scope: !1424)
!1699 = !DILocation(line: 672, column: 27, scope: !1424)
!1700 = !DILocation(line: 675, column: 26, scope: !1400)
!1701 = !DILocation(line: 675, column: 24, scope: !1400)
!1702 = !DILocation(line: 674, column: 19, scope: !1418)
!1703 = distinct !{!1703, !1664, !1704, !664}
!1704 = !DILocation(line: 675, column: 44, scope: !1400)
!1705 = !DILocation(line: 676, column: 15, scope: !1401)
!1706 = !DILocation(line: 680, column: 19, scope: !1430)
!1707 = !DILocation(line: 680, column: 45, scope: !1430)
!1708 = !DILocation(line: 684, column: 33, scope: !1429)
!1709 = !DILocation(line: 0, scope: !1429)
!1710 = !DILocation(line: 686, column: 17, scope: !1429)
!1711 = !DILocation(line: 405, column: 12, scope: !1388)
!1712 = !DILocation(line: 688, column: 43, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !59, line: 688, column: 25)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !59, line: 687, column: 19)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !59, line: 686, column: 17)
!1716 = distinct !DILexicalBlock(scope: !1429, file: !59, line: 686, column: 17)
!1717 = !DILocation(line: 690, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !59, line: 690, column: 25)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !59, line: 689, column: 23)
!1720 = !DILocation(line: 690, column: 25, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !59, line: 690, column: 25)
!1722 = !DILocation(line: 690, column: 25, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !59, line: 690, column: 25)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !59, line: 690, column: 25)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !59, line: 690, column: 25)
!1726 = !DILocation(line: 690, column: 25, scope: !1724)
!1727 = !DILocation(line: 690, column: 25, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !59, line: 690, column: 25)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !59, line: 690, column: 25)
!1730 = !DILocation(line: 690, column: 25, scope: !1729)
!1731 = !DILocation(line: 690, column: 25, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !59, line: 690, column: 25)
!1733 = distinct !DILexicalBlock(scope: !1725, file: !59, line: 690, column: 25)
!1734 = !DILocation(line: 690, column: 25, scope: !1733)
!1735 = !DILocation(line: 690, column: 25, scope: !1725)
!1736 = !DILocation(line: 690, column: 25, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !59, line: 690, column: 25)
!1738 = distinct !DILexicalBlock(scope: !1718, file: !59, line: 690, column: 25)
!1739 = !DILocation(line: 690, column: 25, scope: !1738)
!1740 = !DILocation(line: 691, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !59, line: 691, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1719, file: !59, line: 691, column: 25)
!1743 = !DILocation(line: 691, column: 25, scope: !1742)
!1744 = !DILocation(line: 692, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !59, line: 692, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1719, file: !59, line: 692, column: 25)
!1747 = !DILocation(line: 692, column: 25, scope: !1746)
!1748 = !DILocation(line: 693, column: 38, scope: !1719)
!1749 = !DILocation(line: 693, column: 33, scope: !1719)
!1750 = !DILocation(line: 694, column: 23, scope: !1719)
!1751 = !DILocation(line: 695, column: 30, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1713, file: !59, line: 695, column: 30)
!1753 = !DILocation(line: 695, column: 30, scope: !1713)
!1754 = !DILocation(line: 697, column: 25, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !59, line: 697, column: 25)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !59, line: 697, column: 25)
!1757 = distinct !DILexicalBlock(scope: !1752, file: !59, line: 696, column: 23)
!1758 = !DILocation(line: 697, column: 25, scope: !1756)
!1759 = !DILocation(line: 699, column: 23, scope: !1757)
!1760 = !DILocation(line: 700, column: 35, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1714, file: !59, line: 700, column: 25)
!1762 = !DILocation(line: 700, column: 30, scope: !1761)
!1763 = !DILocation(line: 700, column: 25, scope: !1714)
!1764 = !DILocation(line: 702, column: 21, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !59, line: 702, column: 21)
!1766 = distinct !DILexicalBlock(scope: !1714, file: !59, line: 702, column: 21)
!1767 = !DILocation(line: 702, column: 21, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !59, line: 702, column: 21)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !59, line: 702, column: 21)
!1770 = distinct !DILexicalBlock(scope: !1765, file: !59, line: 702, column: 21)
!1771 = !DILocation(line: 702, column: 21, scope: !1769)
!1772 = !DILocation(line: 702, column: 21, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !59, line: 702, column: 21)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !59, line: 702, column: 21)
!1775 = !DILocation(line: 702, column: 21, scope: !1774)
!1776 = !DILocation(line: 702, column: 21, scope: !1770)
!1777 = !DILocation(line: 0, scope: !1714)
!1778 = !DILocation(line: 703, column: 21, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !59, line: 703, column: 21)
!1780 = distinct !DILexicalBlock(scope: !1714, file: !59, line: 703, column: 21)
!1781 = !DILocation(line: 703, column: 21, scope: !1780)
!1782 = !DILocation(line: 704, column: 25, scope: !1714)
!1783 = !DILocation(line: 686, column: 17, scope: !1715)
!1784 = distinct !{!1784, !1785, !1786}
!1785 = !DILocation(line: 686, column: 17, scope: !1716)
!1786 = !DILocation(line: 705, column: 19, scope: !1716)
!1787 = !DILocation(line: 416, column: 30, scope: !1506)
!1788 = !DILocation(line: 712, column: 34, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1388, file: !59, line: 712, column: 11)
!1790 = !DILocation(line: 715, column: 35, scope: !1789)
!1791 = !DILocation(line: 715, column: 17, scope: !1789)
!1792 = !DILocation(line: 715, column: 47, scope: !1789)
!1793 = !DILocation(line: 715, column: 65, scope: !1789)
!1794 = !DILocation(line: 716, column: 11, scope: !1789)
!1795 = !DILocation(line: 712, column: 11, scope: !1388)
!1796 = !DILocation(line: 400, column: 10, scope: !1390)
!1797 = !DILocation(line: 719, column: 5, scope: !1388)
!1798 = !DILocation(line: 720, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1388, file: !59, line: 720, column: 7)
!1800 = !DILocation(line: 720, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1799, file: !59, line: 720, column: 7)
!1802 = !DILocation(line: 720, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !59, line: 720, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !59, line: 720, column: 7)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !59, line: 720, column: 7)
!1806 = !DILocation(line: 720, column: 7, scope: !1804)
!1807 = !DILocation(line: 720, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !59, line: 720, column: 7)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !59, line: 720, column: 7)
!1810 = !DILocation(line: 720, column: 7, scope: !1809)
!1811 = !DILocation(line: 720, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !59, line: 720, column: 7)
!1813 = distinct !DILexicalBlock(scope: !1805, file: !59, line: 720, column: 7)
!1814 = !DILocation(line: 720, column: 7, scope: !1813)
!1815 = !DILocation(line: 720, column: 7, scope: !1805)
!1816 = !DILocation(line: 720, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !59, line: 720, column: 7)
!1818 = distinct !DILexicalBlock(scope: !1799, file: !59, line: 720, column: 7)
!1819 = !DILocation(line: 720, column: 7, scope: !1818)
!1820 = !DILocation(line: 722, column: 5, scope: !1388)
!1821 = !DILocation(line: 723, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !59, line: 723, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1388, file: !59, line: 723, column: 7)
!1824 = !DILocation(line: 424, column: 9, scope: !1388)
!1825 = !DILocation(line: 723, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !59, line: 723, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !59, line: 723, column: 7)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !59, line: 723, column: 7)
!1829 = !DILocation(line: 723, column: 7, scope: !1827)
!1830 = !DILocation(line: 723, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !59, line: 723, column: 7)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !59, line: 723, column: 7)
!1833 = !DILocation(line: 723, column: 7, scope: !1832)
!1834 = !DILocation(line: 723, column: 7, scope: !1828)
!1835 = !DILocation(line: 724, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !59, line: 724, column: 7)
!1837 = distinct !DILexicalBlock(scope: !1388, file: !59, line: 724, column: 7)
!1838 = !DILocation(line: 724, column: 7, scope: !1837)
!1839 = !DILocation(line: 726, column: 13, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1388, file: !59, line: 726, column: 11)
!1841 = !DILocation(line: 726, column: 11, scope: !1388)
!1842 = !DILocation(line: 728, column: 5, scope: !1389)
!1843 = !DILocation(line: 400, column: 75, scope: !1389)
!1844 = !DILocation(line: 400, column: 3, scope: !1389)
!1845 = distinct !{!1845, !1502, !1846, !664}
!1846 = !DILocation(line: 728, column: 5, scope: !1390)
!1847 = !DILocation(line: 730, column: 11, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1361, file: !59, line: 730, column: 7)
!1849 = !DILocation(line: 730, column: 16, scope: !1848)
!1850 = !DILocation(line: 738, column: 51, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1361, file: !59, line: 738, column: 7)
!1852 = !DILocation(line: 741, column: 11, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !59, line: 741, column: 11)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !59, line: 740, column: 5)
!1855 = !DILocation(line: 741, column: 11, scope: !1854)
!1856 = !DILocation(line: 742, column: 16, scope: !1853)
!1857 = !DILocation(line: 742, column: 9, scope: !1853)
!1858 = !DILocation(line: 746, column: 18, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !59, line: 746, column: 16)
!1860 = !DILocation(line: 746, column: 29, scope: !1859)
!1861 = !DILocation(line: 755, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1361, file: !59, line: 755, column: 7)
!1863 = !DILocation(line: 755, column: 20, scope: !1862)
!1864 = !DILocation(line: 756, column: 12, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !59, line: 756, column: 5)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !59, line: 756, column: 5)
!1867 = !DILocation(line: 756, column: 5, scope: !1866)
!1868 = !DILocation(line: 757, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !59, line: 757, column: 7)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !59, line: 757, column: 7)
!1871 = !DILocation(line: 757, column: 7, scope: !1870)
!1872 = !DILocation(line: 756, column: 39, scope: !1865)
!1873 = distinct !{!1873, !1867, !1874, !664}
!1874 = !DILocation(line: 757, column: 7, scope: !1866)
!1875 = !DILocation(line: 759, column: 11, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1361, file: !59, line: 759, column: 7)
!1877 = !DILocation(line: 759, column: 7, scope: !1361)
!1878 = !DILocation(line: 760, column: 5, scope: !1876)
!1879 = !DILocation(line: 760, column: 17, scope: !1876)
!1880 = !DILocation(line: 763, column: 2, scope: !1361)
!1881 = !DILocation(line: 766, column: 51, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1361, file: !59, line: 766, column: 7)
!1883 = !DILocation(line: 766, column: 21, scope: !1882)
!1884 = !DILocation(line: 770, column: 42, scope: !1361)
!1885 = !DILocation(line: 768, column: 10, scope: !1361)
!1886 = !DILocation(line: 768, column: 3, scope: !1361)
!1887 = !DILocation(line: 772, column: 1, scope: !1361)
!1888 = distinct !DISubprogram(name: "gettext_quote", scope: !59, file: !59, line: 207, type: !1889, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!19, !19, !61}
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DILocalVariable(name: "msgid", arg: 1, scope: !1888, file: !59, line: 207, type: !19)
!1893 = !DILocalVariable(name: "s", arg: 2, scope: !1888, file: !59, line: 207, type: !61)
!1894 = !DILocalVariable(name: "translation", scope: !1888, file: !59, line: 209, type: !19)
!1895 = !DILocalVariable(name: "locale_code", scope: !1888, file: !59, line: 210, type: !19)
!1896 = !DILocation(line: 0, scope: !1888)
!1897 = !DILocation(line: 209, column: 29, scope: !1888)
!1898 = !DILocation(line: 212, column: 19, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1888, file: !59, line: 212, column: 7)
!1900 = !DILocation(line: 212, column: 7, scope: !1888)
!1901 = !DILocation(line: 233, column: 17, scope: !1888)
!1902 = !DILocalVariable(name: "s1", arg: 1, scope: !1903, file: !1904, line: 160, type: !19)
!1903 = distinct !DISubprogram(name: "strcaseeq0", scope: !1904, file: !1904, line: 160, type: !1905, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1907)
!1904 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!22, !19, !19, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!1907 = !{!1902, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1908 = !DILocalVariable(name: "s2", arg: 2, scope: !1903, file: !1904, line: 160, type: !19)
!1909 = !DILocalVariable(name: "s20", arg: 3, scope: !1903, file: !1904, line: 160, type: !7)
!1910 = !DILocalVariable(name: "s21", arg: 4, scope: !1903, file: !1904, line: 160, type: !7)
!1911 = !DILocalVariable(name: "s22", arg: 5, scope: !1903, file: !1904, line: 160, type: !7)
!1912 = !DILocalVariable(name: "s23", arg: 6, scope: !1903, file: !1904, line: 160, type: !7)
!1913 = !DILocalVariable(name: "s24", arg: 7, scope: !1903, file: !1904, line: 160, type: !7)
!1914 = !DILocalVariable(name: "s25", arg: 8, scope: !1903, file: !1904, line: 160, type: !7)
!1915 = !DILocalVariable(name: "s26", arg: 9, scope: !1903, file: !1904, line: 160, type: !7)
!1916 = !DILocalVariable(name: "s27", arg: 10, scope: !1903, file: !1904, line: 160, type: !7)
!1917 = !DILocalVariable(name: "s28", arg: 11, scope: !1903, file: !1904, line: 160, type: !7)
!1918 = !DILocation(line: 0, scope: !1903, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 234, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1888, file: !59, line: 234, column: 7)
!1921 = !DILocation(line: 162, column: 7, scope: !1922, inlinedAt: !1919)
!1922 = distinct !DILexicalBlock(scope: !1903, file: !1904, line: 162, column: 7)
!1923 = !DILocalVariable(name: "s1", arg: 1, scope: !1924, file: !1904, line: 146, type: !19)
!1924 = distinct !DISubprogram(name: "strcaseeq1", scope: !1904, file: !1904, line: 146, type: !1925, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!22, !19, !19, !7, !7, !7, !7, !7, !7, !7, !7}
!1927 = !{!1923, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936}
!1928 = !DILocalVariable(name: "s2", arg: 2, scope: !1924, file: !1904, line: 146, type: !19)
!1929 = !DILocalVariable(name: "s21", arg: 3, scope: !1924, file: !1904, line: 146, type: !7)
!1930 = !DILocalVariable(name: "s22", arg: 4, scope: !1924, file: !1904, line: 146, type: !7)
!1931 = !DILocalVariable(name: "s23", arg: 5, scope: !1924, file: !1904, line: 146, type: !7)
!1932 = !DILocalVariable(name: "s24", arg: 6, scope: !1924, file: !1904, line: 146, type: !7)
!1933 = !DILocalVariable(name: "s25", arg: 7, scope: !1924, file: !1904, line: 146, type: !7)
!1934 = !DILocalVariable(name: "s26", arg: 8, scope: !1924, file: !1904, line: 146, type: !7)
!1935 = !DILocalVariable(name: "s27", arg: 9, scope: !1924, file: !1904, line: 146, type: !7)
!1936 = !DILocalVariable(name: "s28", arg: 10, scope: !1924, file: !1904, line: 146, type: !7)
!1937 = !DILocation(line: 0, scope: !1924, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 167, column: 16, scope: !1939, inlinedAt: !1919)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1904, line: 164, column: 11)
!1940 = distinct !DILexicalBlock(scope: !1922, file: !1904, line: 163, column: 5)
!1941 = !DILocation(line: 148, column: 7, scope: !1942, inlinedAt: !1938)
!1942 = distinct !DILexicalBlock(scope: !1924, file: !1904, line: 148, column: 7)
!1943 = !DILocalVariable(name: "s1", arg: 1, scope: !1944, file: !1904, line: 132, type: !19)
!1944 = distinct !DISubprogram(name: "strcaseeq2", scope: !1904, file: !1904, line: 132, type: !1945, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!22, !19, !19, !7, !7, !7, !7, !7, !7, !7}
!1947 = !{!1943, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955}
!1948 = !DILocalVariable(name: "s2", arg: 2, scope: !1944, file: !1904, line: 132, type: !19)
!1949 = !DILocalVariable(name: "s22", arg: 3, scope: !1944, file: !1904, line: 132, type: !7)
!1950 = !DILocalVariable(name: "s23", arg: 4, scope: !1944, file: !1904, line: 132, type: !7)
!1951 = !DILocalVariable(name: "s24", arg: 5, scope: !1944, file: !1904, line: 132, type: !7)
!1952 = !DILocalVariable(name: "s25", arg: 6, scope: !1944, file: !1904, line: 132, type: !7)
!1953 = !DILocalVariable(name: "s26", arg: 7, scope: !1944, file: !1904, line: 132, type: !7)
!1954 = !DILocalVariable(name: "s27", arg: 8, scope: !1944, file: !1904, line: 132, type: !7)
!1955 = !DILocalVariable(name: "s28", arg: 9, scope: !1944, file: !1904, line: 132, type: !7)
!1956 = !DILocation(line: 0, scope: !1944, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 153, column: 16, scope: !1958, inlinedAt: !1938)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1904, line: 150, column: 11)
!1959 = distinct !DILexicalBlock(scope: !1942, file: !1904, line: 149, column: 5)
!1960 = !DILocation(line: 134, column: 7, scope: !1961, inlinedAt: !1957)
!1961 = distinct !DILexicalBlock(scope: !1944, file: !1904, line: 134, column: 7)
!1962 = !DILocalVariable(name: "s1", arg: 1, scope: !1963, file: !1904, line: 118, type: !19)
!1963 = distinct !DISubprogram(name: "strcaseeq3", scope: !1904, file: !1904, line: 118, type: !1964, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!22, !19, !19, !7, !7, !7, !7, !7, !7}
!1966 = !{!1962, !1967, !1968, !1969, !1970, !1971, !1972, !1973}
!1967 = !DILocalVariable(name: "s2", arg: 2, scope: !1963, file: !1904, line: 118, type: !19)
!1968 = !DILocalVariable(name: "s23", arg: 3, scope: !1963, file: !1904, line: 118, type: !7)
!1969 = !DILocalVariable(name: "s24", arg: 4, scope: !1963, file: !1904, line: 118, type: !7)
!1970 = !DILocalVariable(name: "s25", arg: 5, scope: !1963, file: !1904, line: 118, type: !7)
!1971 = !DILocalVariable(name: "s26", arg: 6, scope: !1963, file: !1904, line: 118, type: !7)
!1972 = !DILocalVariable(name: "s27", arg: 7, scope: !1963, file: !1904, line: 118, type: !7)
!1973 = !DILocalVariable(name: "s28", arg: 8, scope: !1963, file: !1904, line: 118, type: !7)
!1974 = !DILocation(line: 0, scope: !1963, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 139, column: 16, scope: !1976, inlinedAt: !1957)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !1904, line: 136, column: 11)
!1977 = distinct !DILexicalBlock(scope: !1961, file: !1904, line: 135, column: 5)
!1978 = !DILocation(line: 120, column: 7, scope: !1979, inlinedAt: !1975)
!1979 = distinct !DILexicalBlock(scope: !1963, file: !1904, line: 120, column: 7)
!1980 = !DILocation(line: 120, column: 7, scope: !1963, inlinedAt: !1975)
!1981 = !DILocalVariable(name: "s1", arg: 1, scope: !1982, file: !1904, line: 104, type: !19)
!1982 = distinct !DISubprogram(name: "strcaseeq4", scope: !1904, file: !1904, line: 104, type: !1983, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!22, !19, !19, !7, !7, !7, !7, !7}
!1985 = !{!1981, !1986, !1987, !1988, !1989, !1990, !1991}
!1986 = !DILocalVariable(name: "s2", arg: 2, scope: !1982, file: !1904, line: 104, type: !19)
!1987 = !DILocalVariable(name: "s24", arg: 3, scope: !1982, file: !1904, line: 104, type: !7)
!1988 = !DILocalVariable(name: "s25", arg: 4, scope: !1982, file: !1904, line: 104, type: !7)
!1989 = !DILocalVariable(name: "s26", arg: 5, scope: !1982, file: !1904, line: 104, type: !7)
!1990 = !DILocalVariable(name: "s27", arg: 6, scope: !1982, file: !1904, line: 104, type: !7)
!1991 = !DILocalVariable(name: "s28", arg: 7, scope: !1982, file: !1904, line: 104, type: !7)
!1992 = !DILocation(line: 0, scope: !1982, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 125, column: 16, scope: !1994, inlinedAt: !1975)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !1904, line: 122, column: 11)
!1995 = distinct !DILexicalBlock(scope: !1979, file: !1904, line: 121, column: 5)
!1996 = !DILocation(line: 106, column: 7, scope: !1997, inlinedAt: !1993)
!1997 = distinct !DILexicalBlock(scope: !1982, file: !1904, line: 106, column: 7)
!1998 = !DILocation(line: 106, column: 7, scope: !1982, inlinedAt: !1993)
!1999 = !DILocalVariable(name: "s1", arg: 1, scope: !2000, file: !1904, line: 90, type: !19)
!2000 = distinct !DISubprogram(name: "strcaseeq5", scope: !1904, file: !1904, line: 90, type: !2001, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!22, !19, !19, !7, !7, !7, !7}
!2003 = !{!1999, !2004, !2005, !2006, !2007, !2008}
!2004 = !DILocalVariable(name: "s2", arg: 2, scope: !2000, file: !1904, line: 90, type: !19)
!2005 = !DILocalVariable(name: "s25", arg: 3, scope: !2000, file: !1904, line: 90, type: !7)
!2006 = !DILocalVariable(name: "s26", arg: 4, scope: !2000, file: !1904, line: 90, type: !7)
!2007 = !DILocalVariable(name: "s27", arg: 5, scope: !2000, file: !1904, line: 90, type: !7)
!2008 = !DILocalVariable(name: "s28", arg: 6, scope: !2000, file: !1904, line: 90, type: !7)
!2009 = !DILocation(line: 0, scope: !2000, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 111, column: 16, scope: !2011, inlinedAt: !1993)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !1904, line: 108, column: 11)
!2012 = distinct !DILexicalBlock(scope: !1997, file: !1904, line: 107, column: 5)
!2013 = !DILocation(line: 92, column: 7, scope: !2014, inlinedAt: !2010)
!2014 = distinct !DILexicalBlock(scope: !2000, file: !1904, line: 92, column: 7)
!2015 = !DILocation(line: 92, column: 7, scope: !2000, inlinedAt: !2010)
!2016 = !DILocation(line: 235, column: 12, scope: !1920)
!2017 = !DILocation(line: 235, column: 21, scope: !1920)
!2018 = !DILocation(line: 235, column: 5, scope: !1920)
!2019 = !DILocation(line: 0, scope: !1924, inlinedAt: !2020)
!2020 = distinct !DILocation(line: 167, column: 16, scope: !1939, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 236, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1888, file: !59, line: 236, column: 7)
!2023 = !DILocation(line: 148, column: 7, scope: !1942, inlinedAt: !2020)
!2024 = !DILocation(line: 0, scope: !1944, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 153, column: 16, scope: !1958, inlinedAt: !2020)
!2026 = !DILocation(line: 134, column: 7, scope: !1961, inlinedAt: !2025)
!2027 = !DILocation(line: 134, column: 7, scope: !1944, inlinedAt: !2025)
!2028 = !DILocation(line: 0, scope: !1963, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 139, column: 16, scope: !1976, inlinedAt: !2025)
!2030 = !DILocation(line: 120, column: 7, scope: !1979, inlinedAt: !2029)
!2031 = !DILocation(line: 120, column: 7, scope: !1963, inlinedAt: !2029)
!2032 = !DILocation(line: 0, scope: !1982, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 125, column: 16, scope: !1994, inlinedAt: !2029)
!2034 = !DILocation(line: 106, column: 7, scope: !1997, inlinedAt: !2033)
!2035 = !DILocation(line: 106, column: 7, scope: !1982, inlinedAt: !2033)
!2036 = !DILocation(line: 0, scope: !2000, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 111, column: 16, scope: !2011, inlinedAt: !2033)
!2038 = !DILocation(line: 92, column: 7, scope: !2014, inlinedAt: !2037)
!2039 = !DILocation(line: 92, column: 7, scope: !2000, inlinedAt: !2037)
!2040 = !DILocalVariable(name: "s1", arg: 1, scope: !2041, file: !1904, line: 76, type: !19)
!2041 = distinct !DISubprogram(name: "strcaseeq6", scope: !1904, file: !1904, line: 76, type: !2042, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!22, !19, !19, !7, !7, !7}
!2044 = !{!2040, !2045, !2046, !2047, !2048}
!2045 = !DILocalVariable(name: "s2", arg: 2, scope: !2041, file: !1904, line: 76, type: !19)
!2046 = !DILocalVariable(name: "s26", arg: 3, scope: !2041, file: !1904, line: 76, type: !7)
!2047 = !DILocalVariable(name: "s27", arg: 4, scope: !2041, file: !1904, line: 76, type: !7)
!2048 = !DILocalVariable(name: "s28", arg: 5, scope: !2041, file: !1904, line: 76, type: !7)
!2049 = !DILocation(line: 0, scope: !2041, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 97, column: 16, scope: !2051, inlinedAt: !2037)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !1904, line: 94, column: 11)
!2052 = distinct !DILexicalBlock(scope: !2014, file: !1904, line: 93, column: 5)
!2053 = !DILocation(line: 78, column: 7, scope: !2054, inlinedAt: !2050)
!2054 = distinct !DILexicalBlock(scope: !2041, file: !1904, line: 78, column: 7)
!2055 = !DILocation(line: 78, column: 7, scope: !2041, inlinedAt: !2050)
!2056 = !DILocalVariable(name: "s1", arg: 1, scope: !2057, file: !1904, line: 62, type: !19)
!2057 = distinct !DISubprogram(name: "strcaseeq7", scope: !1904, file: !1904, line: 62, type: !2058, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!22, !19, !19, !7, !7}
!2060 = !{!2056, !2061, !2062, !2063}
!2061 = !DILocalVariable(name: "s2", arg: 2, scope: !2057, file: !1904, line: 62, type: !19)
!2062 = !DILocalVariable(name: "s27", arg: 3, scope: !2057, file: !1904, line: 62, type: !7)
!2063 = !DILocalVariable(name: "s28", arg: 4, scope: !2057, file: !1904, line: 62, type: !7)
!2064 = !DILocation(line: 0, scope: !2057, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 83, column: 16, scope: !2066, inlinedAt: !2050)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !1904, line: 80, column: 11)
!2067 = distinct !DILexicalBlock(scope: !2054, file: !1904, line: 79, column: 5)
!2068 = !DILocation(line: 64, column: 7, scope: !2069, inlinedAt: !2065)
!2069 = distinct !DILexicalBlock(scope: !2057, file: !1904, line: 64, column: 7)
!2070 = !DILocation(line: 236, column: 7, scope: !1888)
!2071 = !DILocation(line: 237, column: 12, scope: !2022)
!2072 = !DILocation(line: 237, column: 21, scope: !2022)
!2073 = !DILocation(line: 237, column: 5, scope: !2022)
!2074 = !DILocation(line: 239, column: 13, scope: !1888)
!2075 = !DILocation(line: 239, column: 11, scope: !1888)
!2076 = !DILocation(line: 239, column: 3, scope: !1888)
!2077 = !DILocation(line: 240, column: 1, scope: !1888)
!2078 = !DISubprogram(name: "iswprint", scope: !2079, file: !2079, line: 120, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2079 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!22, !9}
!2082 = !DISubprogram(name: "mbsinit", scope: !2083, file: !2083, line: 292, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!2083 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!22, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!2088 = distinct !DISubprogram(name: "quotearg_alloc", scope: !59, file: !59, line: 799, type: !2089, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!6, !19, !97, !1252}
!2091 = !{!2092, !2093, !2094}
!2092 = !DILocalVariable(name: "arg", arg: 1, scope: !2088, file: !59, line: 799, type: !19)
!2093 = !DILocalVariable(name: "argsize", arg: 2, scope: !2088, file: !59, line: 799, type: !97)
!2094 = !DILocalVariable(name: "o", arg: 3, scope: !2088, file: !59, line: 800, type: !1252)
!2095 = !DILocation(line: 0, scope: !2088)
!2096 = !DILocalVariable(name: "arg", arg: 1, scope: !2097, file: !59, line: 812, type: !19)
!2097 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !59, file: !59, line: 812, type: !2098, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!6, !19, !97, !180, !1252}
!2100 = !{!2096, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2101 = !DILocalVariable(name: "argsize", arg: 2, scope: !2097, file: !59, line: 812, type: !97)
!2102 = !DILocalVariable(name: "size", arg: 3, scope: !2097, file: !59, line: 812, type: !180)
!2103 = !DILocalVariable(name: "o", arg: 4, scope: !2097, file: !59, line: 813, type: !1252)
!2104 = !DILocalVariable(name: "p", scope: !2097, file: !59, line: 815, type: !1252)
!2105 = !DILocalVariable(name: "e", scope: !2097, file: !59, line: 816, type: !22)
!2106 = !DILocalVariable(name: "flags", scope: !2097, file: !59, line: 818, type: !22)
!2107 = !DILocalVariable(name: "bufsize", scope: !2097, file: !59, line: 819, type: !97)
!2108 = !DILocalVariable(name: "buf", scope: !2097, file: !59, line: 823, type: !6)
!2109 = !DILocation(line: 0, scope: !2097, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 802, column: 10, scope: !2088)
!2111 = !DILocation(line: 815, column: 37, scope: !2097, inlinedAt: !2110)
!2112 = !DILocation(line: 816, column: 11, scope: !2097, inlinedAt: !2110)
!2113 = !DILocation(line: 818, column: 18, scope: !2097, inlinedAt: !2110)
!2114 = !DILocation(line: 818, column: 24, scope: !2097, inlinedAt: !2110)
!2115 = !DILocation(line: 819, column: 69, scope: !2097, inlinedAt: !2110)
!2116 = !DILocation(line: 820, column: 53, scope: !2097, inlinedAt: !2110)
!2117 = !DILocation(line: 821, column: 49, scope: !2097, inlinedAt: !2110)
!2118 = !DILocation(line: 822, column: 49, scope: !2097, inlinedAt: !2110)
!2119 = !DILocation(line: 819, column: 20, scope: !2097, inlinedAt: !2110)
!2120 = !DILocation(line: 822, column: 62, scope: !2097, inlinedAt: !2110)
!2121 = !DILocalVariable(name: "n", arg: 1, scope: !2122, file: !176, line: 216, type: !97)
!2122 = distinct !DISubprogram(name: "xcharalloc", scope: !176, file: !176, line: 216, type: !2123, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!6, !97}
!2125 = !{!2121}
!2126 = !DILocation(line: 0, scope: !2122, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 823, column: 15, scope: !2097, inlinedAt: !2110)
!2128 = !DILocation(line: 218, column: 10, scope: !2122, inlinedAt: !2127)
!2129 = !DILocation(line: 824, column: 60, scope: !2097, inlinedAt: !2110)
!2130 = !DILocation(line: 826, column: 32, scope: !2097, inlinedAt: !2110)
!2131 = !DILocation(line: 826, column: 47, scope: !2097, inlinedAt: !2110)
!2132 = !DILocation(line: 824, column: 3, scope: !2097, inlinedAt: !2110)
!2133 = !DILocation(line: 827, column: 9, scope: !2097, inlinedAt: !2110)
!2134 = !DILocation(line: 802, column: 3, scope: !2088)
!2135 = !DILocation(line: 0, scope: !2097)
!2136 = !DILocation(line: 815, column: 37, scope: !2097)
!2137 = !DILocation(line: 816, column: 11, scope: !2097)
!2138 = !DILocation(line: 818, column: 18, scope: !2097)
!2139 = !DILocation(line: 818, column: 27, scope: !2097)
!2140 = !DILocation(line: 818, column: 24, scope: !2097)
!2141 = !DILocation(line: 819, column: 69, scope: !2097)
!2142 = !DILocation(line: 820, column: 53, scope: !2097)
!2143 = !DILocation(line: 821, column: 49, scope: !2097)
!2144 = !DILocation(line: 822, column: 49, scope: !2097)
!2145 = !DILocation(line: 819, column: 20, scope: !2097)
!2146 = !DILocation(line: 822, column: 62, scope: !2097)
!2147 = !DILocation(line: 0, scope: !2122, inlinedAt: !2148)
!2148 = distinct !DILocation(line: 823, column: 15, scope: !2097)
!2149 = !DILocation(line: 218, column: 10, scope: !2122, inlinedAt: !2148)
!2150 = !DILocation(line: 824, column: 60, scope: !2097)
!2151 = !DILocation(line: 826, column: 32, scope: !2097)
!2152 = !DILocation(line: 826, column: 47, scope: !2097)
!2153 = !DILocation(line: 824, column: 3, scope: !2097)
!2154 = !DILocation(line: 827, column: 9, scope: !2097)
!2155 = !DILocation(line: 828, column: 7, scope: !2097)
!2156 = !DILocation(line: 829, column: 11, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2097, file: !59, line: 828, column: 7)
!2158 = !{!2159, !2159, i64 0}
!2159 = !{!"long", !616, i64 0}
!2160 = !DILocation(line: 829, column: 5, scope: !2157)
!2161 = !DILocation(line: 830, column: 3, scope: !2097)
!2162 = distinct !DISubprogram(name: "quotearg_free", scope: !59, file: !59, line: 848, type: !624, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2163)
!2163 = !{!2164, !2165}
!2164 = !DILocalVariable(name: "sv", scope: !2162, file: !59, line: 850, type: !128)
!2165 = !DILocalVariable(name: "i", scope: !2162, file: !59, line: 851, type: !22)
!2166 = !DILocation(line: 850, column: 24, scope: !2162)
!2167 = !DILocation(line: 0, scope: !2162)
!2168 = !DILocation(line: 852, column: 19, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !59, line: 852, column: 3)
!2170 = distinct !DILexicalBlock(scope: !2162, file: !59, line: 852, column: 3)
!2171 = !DILocation(line: 852, column: 17, scope: !2169)
!2172 = !DILocation(line: 852, column: 3, scope: !2170)
!2173 = !DILocation(line: 853, column: 17, scope: !2169)
!2174 = !{!2175, !615, i64 8}
!2175 = !{!"slotvec", !2159, i64 0, !615, i64 8}
!2176 = !DILocation(line: 853, column: 5, scope: !2169)
!2177 = !DILocation(line: 852, column: 28, scope: !2169)
!2178 = distinct !{!2178, !2172, !2179, !664}
!2179 = !DILocation(line: 853, column: 20, scope: !2170)
!2180 = !DILocation(line: 854, column: 13, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2162, file: !59, line: 854, column: 7)
!2182 = !DILocation(line: 854, column: 17, scope: !2181)
!2183 = !DILocation(line: 854, column: 7, scope: !2162)
!2184 = !DILocation(line: 856, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !59, line: 855, column: 5)
!2186 = !DILocation(line: 857, column: 21, scope: !2185)
!2187 = !{!2175, !2159, i64 0}
!2188 = !DILocation(line: 858, column: 20, scope: !2185)
!2189 = !DILocation(line: 859, column: 5, scope: !2185)
!2190 = !DILocation(line: 860, column: 10, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2162, file: !59, line: 860, column: 7)
!2192 = !DILocation(line: 860, column: 7, scope: !2162)
!2193 = !DILocation(line: 862, column: 13, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2191, file: !59, line: 861, column: 5)
!2195 = !DILocation(line: 862, column: 7, scope: !2194)
!2196 = !DILocation(line: 863, column: 15, scope: !2194)
!2197 = !DILocation(line: 864, column: 5, scope: !2194)
!2198 = !DILocation(line: 865, column: 10, scope: !2162)
!2199 = !DILocation(line: 866, column: 1, scope: !2162)
!2200 = distinct !DISubprogram(name: "quotearg_n", scope: !59, file: !59, line: 931, type: !746, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2201)
!2201 = !{!2202, !2203}
!2202 = !DILocalVariable(name: "n", arg: 1, scope: !2200, file: !59, line: 931, type: !22)
!2203 = !DILocalVariable(name: "arg", arg: 2, scope: !2200, file: !59, line: 931, type: !19)
!2204 = !DILocation(line: 0, scope: !2200)
!2205 = !DILocation(line: 933, column: 10, scope: !2200)
!2206 = !DILocation(line: 933, column: 3, scope: !2200)
!2207 = distinct !DISubprogram(name: "quotearg_n_options", scope: !59, file: !59, line: 877, type: !2208, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2210)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!6, !22, !19, !97, !1252}
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2220, !2221, !2223, !2224, !2225}
!2211 = !DILocalVariable(name: "n", arg: 1, scope: !2207, file: !59, line: 877, type: !22)
!2212 = !DILocalVariable(name: "arg", arg: 2, scope: !2207, file: !59, line: 877, type: !19)
!2213 = !DILocalVariable(name: "argsize", arg: 3, scope: !2207, file: !59, line: 877, type: !97)
!2214 = !DILocalVariable(name: "options", arg: 4, scope: !2207, file: !59, line: 878, type: !1252)
!2215 = !DILocalVariable(name: "e", scope: !2207, file: !59, line: 880, type: !22)
!2216 = !DILocalVariable(name: "sv", scope: !2207, file: !59, line: 882, type: !128)
!2217 = !DILocalVariable(name: "preallocated", scope: !2218, file: !59, line: 889, type: !43)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !59, line: 888, column: 5)
!2219 = distinct !DILexicalBlock(scope: !2207, file: !59, line: 887, column: 7)
!2220 = !DILocalVariable(name: "nmax", scope: !2218, file: !59, line: 890, type: !22)
!2221 = !DILocalVariable(name: "size", scope: !2222, file: !59, line: 903, type: !97)
!2222 = distinct !DILexicalBlock(scope: !2207, file: !59, line: 902, column: 3)
!2223 = !DILocalVariable(name: "val", scope: !2222, file: !59, line: 904, type: !6)
!2224 = !DILocalVariable(name: "flags", scope: !2222, file: !59, line: 906, type: !22)
!2225 = !DILocalVariable(name: "qsize", scope: !2222, file: !59, line: 907, type: !97)
!2226 = !DILocation(line: 0, scope: !2207)
!2227 = !DILocation(line: 880, column: 11, scope: !2207)
!2228 = !DILocation(line: 882, column: 24, scope: !2207)
!2229 = !DILocation(line: 884, column: 9, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2207, file: !59, line: 884, column: 7)
!2231 = !DILocation(line: 884, column: 7, scope: !2207)
!2232 = !DILocation(line: 885, column: 5, scope: !2230)
!2233 = !DILocation(line: 887, column: 7, scope: !2219)
!2234 = !DILocation(line: 887, column: 14, scope: !2219)
!2235 = !DILocation(line: 887, column: 7, scope: !2207)
!2236 = !DILocation(line: 889, column: 31, scope: !2218)
!2237 = !DILocation(line: 0, scope: !2218)
!2238 = !DILocation(line: 892, column: 16, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2218, file: !59, line: 892, column: 11)
!2240 = !DILocation(line: 892, column: 11, scope: !2218)
!2241 = !DILocation(line: 893, column: 9, scope: !2239)
!2242 = !DILocation(line: 895, column: 32, scope: !2218)
!2243 = !DILocation(line: 895, column: 61, scope: !2218)
!2244 = !DILocation(line: 895, column: 66, scope: !2218)
!2245 = !DILocation(line: 895, column: 22, scope: !2218)
!2246 = !DILocation(line: 895, column: 15, scope: !2218)
!2247 = !DILocation(line: 896, column: 11, scope: !2218)
!2248 = !DILocation(line: 897, column: 15, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2218, file: !59, line: 896, column: 11)
!2250 = !{i64 0, i64 8, !2158, i64 8, i64 8, !614}
!2251 = !DILocation(line: 897, column: 9, scope: !2249)
!2252 = !DILocation(line: 898, column: 20, scope: !2218)
!2253 = !DILocation(line: 898, column: 18, scope: !2218)
!2254 = !DILocation(line: 898, column: 15, scope: !2218)
!2255 = !DILocation(line: 898, column: 38, scope: !2218)
!2256 = !DILocation(line: 898, column: 31, scope: !2218)
!2257 = !DILocation(line: 898, column: 48, scope: !2218)
!2258 = !DILocation(line: 0, scope: !1649, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 898, column: 7, scope: !2218)
!2260 = !DILocation(line: 59, column: 10, scope: !1649, inlinedAt: !2259)
!2261 = !DILocation(line: 899, column: 14, scope: !2218)
!2262 = !DILocation(line: 900, column: 5, scope: !2218)
!2263 = !DILocation(line: 903, column: 19, scope: !2222)
!2264 = !DILocation(line: 903, column: 25, scope: !2222)
!2265 = !DILocation(line: 0, scope: !2222)
!2266 = !DILocation(line: 904, column: 23, scope: !2222)
!2267 = !DILocation(line: 906, column: 26, scope: !2222)
!2268 = !DILocation(line: 906, column: 32, scope: !2222)
!2269 = !DILocation(line: 908, column: 55, scope: !2222)
!2270 = !DILocation(line: 909, column: 46, scope: !2222)
!2271 = !DILocation(line: 910, column: 55, scope: !2222)
!2272 = !DILocation(line: 911, column: 55, scope: !2222)
!2273 = !DILocation(line: 907, column: 20, scope: !2222)
!2274 = !DILocation(line: 913, column: 14, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2222, file: !59, line: 913, column: 9)
!2276 = !DILocation(line: 913, column: 9, scope: !2222)
!2277 = !DILocation(line: 915, column: 35, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2275, file: !59, line: 914, column: 7)
!2279 = !DILocation(line: 915, column: 20, scope: !2278)
!2280 = !DILocation(line: 916, column: 17, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !59, line: 916, column: 13)
!2282 = !DILocation(line: 916, column: 13, scope: !2278)
!2283 = !DILocation(line: 917, column: 11, scope: !2281)
!2284 = !DILocation(line: 0, scope: !2122, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 918, column: 27, scope: !2278)
!2286 = !DILocation(line: 218, column: 10, scope: !2122, inlinedAt: !2285)
!2287 = !DILocation(line: 918, column: 19, scope: !2278)
!2288 = !DILocation(line: 919, column: 69, scope: !2278)
!2289 = !DILocation(line: 921, column: 44, scope: !2278)
!2290 = !DILocation(line: 922, column: 44, scope: !2278)
!2291 = !DILocation(line: 919, column: 9, scope: !2278)
!2292 = !DILocation(line: 923, column: 7, scope: !2278)
!2293 = !DILocation(line: 925, column: 11, scope: !2222)
!2294 = !DILocation(line: 926, column: 5, scope: !2222)
!2295 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !59, file: !59, line: 937, type: !2296, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!6, !22, !19, !97}
!2298 = !{!2299, !2300, !2301}
!2299 = !DILocalVariable(name: "n", arg: 1, scope: !2295, file: !59, line: 937, type: !22)
!2300 = !DILocalVariable(name: "arg", arg: 2, scope: !2295, file: !59, line: 937, type: !19)
!2301 = !DILocalVariable(name: "argsize", arg: 3, scope: !2295, file: !59, line: 937, type: !97)
!2302 = !DILocation(line: 0, scope: !2295)
!2303 = !DILocation(line: 939, column: 10, scope: !2295)
!2304 = !DILocation(line: 939, column: 3, scope: !2295)
!2305 = distinct !DISubprogram(name: "quotearg", scope: !59, file: !59, line: 943, type: !1032, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2306)
!2306 = !{!2307}
!2307 = !DILocalVariable(name: "arg", arg: 1, scope: !2305, file: !59, line: 943, type: !19)
!2308 = !DILocation(line: 0, scope: !2305)
!2309 = !DILocation(line: 0, scope: !2200, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 945, column: 10, scope: !2305)
!2311 = !DILocation(line: 933, column: 10, scope: !2200, inlinedAt: !2310)
!2312 = !DILocation(line: 945, column: 3, scope: !2305)
!2313 = distinct !DISubprogram(name: "quotearg_mem", scope: !59, file: !59, line: 949, type: !2314, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2316)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!6, !19, !97}
!2316 = !{!2317, !2318}
!2317 = !DILocalVariable(name: "arg", arg: 1, scope: !2313, file: !59, line: 949, type: !19)
!2318 = !DILocalVariable(name: "argsize", arg: 2, scope: !2313, file: !59, line: 949, type: !97)
!2319 = !DILocation(line: 0, scope: !2313)
!2320 = !DILocation(line: 0, scope: !2295, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 951, column: 10, scope: !2313)
!2322 = !DILocation(line: 939, column: 10, scope: !2295, inlinedAt: !2321)
!2323 = !DILocation(line: 951, column: 3, scope: !2313)
!2324 = distinct !DISubprogram(name: "quotearg_n_style", scope: !59, file: !59, line: 955, type: !2325, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!6, !22, !61, !19}
!2327 = !{!2328, !2329, !2330, !2331}
!2328 = !DILocalVariable(name: "n", arg: 1, scope: !2324, file: !59, line: 955, type: !22)
!2329 = !DILocalVariable(name: "s", arg: 2, scope: !2324, file: !59, line: 955, type: !61)
!2330 = !DILocalVariable(name: "arg", arg: 3, scope: !2324, file: !59, line: 955, type: !19)
!2331 = !DILocalVariable(name: "o", scope: !2324, file: !59, line: 957, type: !1253)
!2332 = !DILocation(line: 0, scope: !2324)
!2333 = !DILocation(line: 957, column: 3, scope: !2324)
!2334 = !DILocation(line: 957, column: 32, scope: !2324)
!2335 = !{!2336}
!2336 = distinct !{!2336, !2337, !"quoting_options_from_style: argument 0"}
!2337 = distinct !{!2337, !"quoting_options_from_style"}
!2338 = !DILocation(line: 957, column: 36, scope: !2324)
!2339 = !DILocalVariable(name: "style", arg: 1, scope: !2340, file: !59, line: 193, type: !61)
!2340 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !59, file: !59, line: 193, type: !2341, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!109, !61}
!2343 = !{!2339, !2344}
!2344 = !DILocalVariable(name: "o", scope: !2340, file: !59, line: 195, type: !109)
!2345 = !DILocation(line: 0, scope: !2340, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 957, column: 36, scope: !2324)
!2347 = !DILocation(line: 195, column: 26, scope: !2340, inlinedAt: !2346)
!2348 = !DILocation(line: 196, column: 13, scope: !2349, inlinedAt: !2346)
!2349 = distinct !DILexicalBlock(scope: !2340, file: !59, line: 196, column: 7)
!2350 = !DILocation(line: 196, column: 7, scope: !2340, inlinedAt: !2346)
!2351 = !DILocation(line: 197, column: 5, scope: !2349, inlinedAt: !2346)
!2352 = !DILocation(line: 198, column: 5, scope: !2340, inlinedAt: !2346)
!2353 = !DILocation(line: 198, column: 11, scope: !2340, inlinedAt: !2346)
!2354 = !DILocation(line: 958, column: 10, scope: !2324)
!2355 = !DILocation(line: 959, column: 1, scope: !2324)
!2356 = !DILocation(line: 958, column: 3, scope: !2324)
!2357 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !59, file: !59, line: 962, type: !2358, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!6, !22, !61, !19, !97}
!2360 = !{!2361, !2362, !2363, !2364, !2365}
!2361 = !DILocalVariable(name: "n", arg: 1, scope: !2357, file: !59, line: 962, type: !22)
!2362 = !DILocalVariable(name: "s", arg: 2, scope: !2357, file: !59, line: 962, type: !61)
!2363 = !DILocalVariable(name: "arg", arg: 3, scope: !2357, file: !59, line: 963, type: !19)
!2364 = !DILocalVariable(name: "argsize", arg: 4, scope: !2357, file: !59, line: 963, type: !97)
!2365 = !DILocalVariable(name: "o", scope: !2357, file: !59, line: 965, type: !1253)
!2366 = !DILocation(line: 0, scope: !2357)
!2367 = !DILocation(line: 965, column: 3, scope: !2357)
!2368 = !DILocation(line: 965, column: 32, scope: !2357)
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"quoting_options_from_style: argument 0"}
!2371 = distinct !{!2371, !"quoting_options_from_style"}
!2372 = !DILocation(line: 965, column: 36, scope: !2357)
!2373 = !DILocation(line: 0, scope: !2340, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 965, column: 36, scope: !2357)
!2375 = !DILocation(line: 195, column: 26, scope: !2340, inlinedAt: !2374)
!2376 = !DILocation(line: 196, column: 13, scope: !2349, inlinedAt: !2374)
!2377 = !DILocation(line: 196, column: 7, scope: !2340, inlinedAt: !2374)
!2378 = !DILocation(line: 197, column: 5, scope: !2349, inlinedAt: !2374)
!2379 = !DILocation(line: 198, column: 5, scope: !2340, inlinedAt: !2374)
!2380 = !DILocation(line: 198, column: 11, scope: !2340, inlinedAt: !2374)
!2381 = !DILocation(line: 966, column: 10, scope: !2357)
!2382 = !DILocation(line: 967, column: 1, scope: !2357)
!2383 = !DILocation(line: 966, column: 3, scope: !2357)
!2384 = distinct !DISubprogram(name: "quotearg_style", scope: !59, file: !59, line: 970, type: !2385, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!6, !61, !19}
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "s", arg: 1, scope: !2384, file: !59, line: 970, type: !61)
!2389 = !DILocalVariable(name: "arg", arg: 2, scope: !2384, file: !59, line: 970, type: !19)
!2390 = !DILocation(line: 0, scope: !2384)
!2391 = !DILocation(line: 0, scope: !2324, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 972, column: 10, scope: !2384)
!2393 = !DILocation(line: 957, column: 3, scope: !2324, inlinedAt: !2392)
!2394 = !DILocation(line: 957, column: 32, scope: !2324, inlinedAt: !2392)
!2395 = !{!2396}
!2396 = distinct !{!2396, !2397, !"quoting_options_from_style: argument 0"}
!2397 = distinct !{!2397, !"quoting_options_from_style"}
!2398 = !DILocation(line: 957, column: 36, scope: !2324, inlinedAt: !2392)
!2399 = !DILocation(line: 0, scope: !2340, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 957, column: 36, scope: !2324, inlinedAt: !2392)
!2401 = !DILocation(line: 195, column: 26, scope: !2340, inlinedAt: !2400)
!2402 = !DILocation(line: 196, column: 13, scope: !2349, inlinedAt: !2400)
!2403 = !DILocation(line: 196, column: 7, scope: !2340, inlinedAt: !2400)
!2404 = !DILocation(line: 197, column: 5, scope: !2349, inlinedAt: !2400)
!2405 = !DILocation(line: 198, column: 5, scope: !2340, inlinedAt: !2400)
!2406 = !DILocation(line: 198, column: 11, scope: !2340, inlinedAt: !2400)
!2407 = !DILocation(line: 958, column: 10, scope: !2324, inlinedAt: !2392)
!2408 = !DILocation(line: 959, column: 1, scope: !2324, inlinedAt: !2392)
!2409 = !DILocation(line: 972, column: 3, scope: !2384)
!2410 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !59, file: !59, line: 976, type: !2411, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2413)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!6, !61, !19, !97}
!2413 = !{!2414, !2415, !2416}
!2414 = !DILocalVariable(name: "s", arg: 1, scope: !2410, file: !59, line: 976, type: !61)
!2415 = !DILocalVariable(name: "arg", arg: 2, scope: !2410, file: !59, line: 976, type: !19)
!2416 = !DILocalVariable(name: "argsize", arg: 3, scope: !2410, file: !59, line: 976, type: !97)
!2417 = !DILocation(line: 0, scope: !2410)
!2418 = !DILocation(line: 0, scope: !2357, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 978, column: 10, scope: !2410)
!2420 = !DILocation(line: 965, column: 3, scope: !2357, inlinedAt: !2419)
!2421 = !DILocation(line: 965, column: 32, scope: !2357, inlinedAt: !2419)
!2422 = !{!2423}
!2423 = distinct !{!2423, !2424, !"quoting_options_from_style: argument 0"}
!2424 = distinct !{!2424, !"quoting_options_from_style"}
!2425 = !DILocation(line: 965, column: 36, scope: !2357, inlinedAt: !2419)
!2426 = !DILocation(line: 0, scope: !2340, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 965, column: 36, scope: !2357, inlinedAt: !2419)
!2428 = !DILocation(line: 195, column: 26, scope: !2340, inlinedAt: !2427)
!2429 = !DILocation(line: 196, column: 13, scope: !2349, inlinedAt: !2427)
!2430 = !DILocation(line: 196, column: 7, scope: !2340, inlinedAt: !2427)
!2431 = !DILocation(line: 197, column: 5, scope: !2349, inlinedAt: !2427)
!2432 = !DILocation(line: 198, column: 5, scope: !2340, inlinedAt: !2427)
!2433 = !DILocation(line: 198, column: 11, scope: !2340, inlinedAt: !2427)
!2434 = !DILocation(line: 966, column: 10, scope: !2357, inlinedAt: !2419)
!2435 = !DILocation(line: 967, column: 1, scope: !2357, inlinedAt: !2419)
!2436 = !DILocation(line: 978, column: 3, scope: !2410)
!2437 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !59, file: !59, line: 982, type: !2438, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!6, !19, !97, !7}
!2440 = !{!2441, !2442, !2443, !2444}
!2441 = !DILocalVariable(name: "arg", arg: 1, scope: !2437, file: !59, line: 982, type: !19)
!2442 = !DILocalVariable(name: "argsize", arg: 2, scope: !2437, file: !59, line: 982, type: !97)
!2443 = !DILocalVariable(name: "ch", arg: 3, scope: !2437, file: !59, line: 982, type: !7)
!2444 = !DILocalVariable(name: "options", scope: !2437, file: !59, line: 984, type: !109)
!2445 = !DILocation(line: 0, scope: !2437)
!2446 = !DILocation(line: 984, column: 3, scope: !2437)
!2447 = !DILocation(line: 984, column: 26, scope: !2437)
!2448 = !DILocation(line: 985, column: 13, scope: !2437)
!2449 = !{i64 0, i64 4, !948, i64 4, i64 4, !779, i64 8, i64 32, !948, i64 40, i64 8, !614, i64 48, i64 8, !614}
!2450 = !DILocation(line: 0, scope: !1273, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 986, column: 3, scope: !2437)
!2452 = !DILocation(line: 156, column: 62, scope: !1273, inlinedAt: !2451)
!2453 = !DILocation(line: 156, column: 57, scope: !1273, inlinedAt: !2451)
!2454 = !DILocation(line: 157, column: 15, scope: !1273, inlinedAt: !2451)
!2455 = !DILocation(line: 158, column: 12, scope: !1273, inlinedAt: !2451)
!2456 = !DILocation(line: 158, column: 15, scope: !1273, inlinedAt: !2451)
!2457 = !DILocation(line: 158, column: 25, scope: !1273, inlinedAt: !2451)
!2458 = !DILocation(line: 159, column: 18, scope: !1273, inlinedAt: !2451)
!2459 = !DILocation(line: 159, column: 23, scope: !1273, inlinedAt: !2451)
!2460 = !DILocation(line: 159, column: 6, scope: !1273, inlinedAt: !2451)
!2461 = !DILocation(line: 987, column: 10, scope: !2437)
!2462 = !DILocation(line: 988, column: 1, scope: !2437)
!2463 = !DILocation(line: 987, column: 3, scope: !2437)
!2464 = distinct !DISubprogram(name: "quotearg_char", scope: !59, file: !59, line: 991, type: !2465, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!6, !19, !7}
!2467 = !{!2468, !2469}
!2468 = !DILocalVariable(name: "arg", arg: 1, scope: !2464, file: !59, line: 991, type: !19)
!2469 = !DILocalVariable(name: "ch", arg: 2, scope: !2464, file: !59, line: 991, type: !7)
!2470 = !DILocation(line: 0, scope: !2464)
!2471 = !DILocation(line: 0, scope: !2437, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 993, column: 10, scope: !2464)
!2473 = !DILocation(line: 984, column: 3, scope: !2437, inlinedAt: !2472)
!2474 = !DILocation(line: 984, column: 26, scope: !2437, inlinedAt: !2472)
!2475 = !DILocation(line: 985, column: 13, scope: !2437, inlinedAt: !2472)
!2476 = !DILocation(line: 0, scope: !1273, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 986, column: 3, scope: !2437, inlinedAt: !2472)
!2478 = !DILocation(line: 156, column: 62, scope: !1273, inlinedAt: !2477)
!2479 = !DILocation(line: 156, column: 57, scope: !1273, inlinedAt: !2477)
!2480 = !DILocation(line: 157, column: 15, scope: !1273, inlinedAt: !2477)
!2481 = !DILocation(line: 158, column: 12, scope: !1273, inlinedAt: !2477)
!2482 = !DILocation(line: 158, column: 15, scope: !1273, inlinedAt: !2477)
!2483 = !DILocation(line: 158, column: 25, scope: !1273, inlinedAt: !2477)
!2484 = !DILocation(line: 159, column: 18, scope: !1273, inlinedAt: !2477)
!2485 = !DILocation(line: 159, column: 23, scope: !1273, inlinedAt: !2477)
!2486 = !DILocation(line: 159, column: 6, scope: !1273, inlinedAt: !2477)
!2487 = !DILocation(line: 987, column: 10, scope: !2437, inlinedAt: !2472)
!2488 = !DILocation(line: 988, column: 1, scope: !2437, inlinedAt: !2472)
!2489 = !DILocation(line: 993, column: 3, scope: !2464)
!2490 = distinct !DISubprogram(name: "quotearg_colon", scope: !59, file: !59, line: 997, type: !1032, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2491)
!2491 = !{!2492}
!2492 = !DILocalVariable(name: "arg", arg: 1, scope: !2490, file: !59, line: 997, type: !19)
!2493 = !DILocation(line: 0, scope: !2490)
!2494 = !DILocation(line: 0, scope: !2464, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 999, column: 10, scope: !2490)
!2496 = !DILocation(line: 0, scope: !2437, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 993, column: 10, scope: !2464, inlinedAt: !2495)
!2498 = !DILocation(line: 984, column: 3, scope: !2437, inlinedAt: !2497)
!2499 = !DILocation(line: 984, column: 26, scope: !2437, inlinedAt: !2497)
!2500 = !DILocation(line: 985, column: 13, scope: !2437, inlinedAt: !2497)
!2501 = !DILocation(line: 0, scope: !1273, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 986, column: 3, scope: !2437, inlinedAt: !2497)
!2503 = !DILocation(line: 156, column: 57, scope: !1273, inlinedAt: !2502)
!2504 = !DILocation(line: 158, column: 12, scope: !1273, inlinedAt: !2502)
!2505 = !DILocation(line: 159, column: 6, scope: !1273, inlinedAt: !2502)
!2506 = !DILocation(line: 987, column: 10, scope: !2437, inlinedAt: !2497)
!2507 = !DILocation(line: 988, column: 1, scope: !2437, inlinedAt: !2497)
!2508 = !DILocation(line: 999, column: 3, scope: !2490)
!2509 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !59, file: !59, line: 1003, type: !2314, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2510)
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "arg", arg: 1, scope: !2509, file: !59, line: 1003, type: !19)
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2509, file: !59, line: 1003, type: !97)
!2513 = !DILocation(line: 0, scope: !2509)
!2514 = !DILocation(line: 0, scope: !2437, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 1005, column: 10, scope: !2509)
!2516 = !DILocation(line: 984, column: 3, scope: !2437, inlinedAt: !2515)
!2517 = !DILocation(line: 984, column: 26, scope: !2437, inlinedAt: !2515)
!2518 = !DILocation(line: 985, column: 13, scope: !2437, inlinedAt: !2515)
!2519 = !DILocation(line: 0, scope: !1273, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 986, column: 3, scope: !2437, inlinedAt: !2515)
!2521 = !DILocation(line: 156, column: 57, scope: !1273, inlinedAt: !2520)
!2522 = !DILocation(line: 158, column: 12, scope: !1273, inlinedAt: !2520)
!2523 = !DILocation(line: 159, column: 6, scope: !1273, inlinedAt: !2520)
!2524 = !DILocation(line: 987, column: 10, scope: !2437, inlinedAt: !2515)
!2525 = !DILocation(line: 988, column: 1, scope: !2437, inlinedAt: !2515)
!2526 = !DILocation(line: 1005, column: 3, scope: !2509)
!2527 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !59, file: !59, line: 1009, type: !2325, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2528)
!2528 = !{!2529, !2530, !2531, !2532}
!2529 = !DILocalVariable(name: "n", arg: 1, scope: !2527, file: !59, line: 1009, type: !22)
!2530 = !DILocalVariable(name: "s", arg: 2, scope: !2527, file: !59, line: 1009, type: !61)
!2531 = !DILocalVariable(name: "arg", arg: 3, scope: !2527, file: !59, line: 1009, type: !19)
!2532 = !DILocalVariable(name: "options", scope: !2527, file: !59, line: 1011, type: !109)
!2533 = !DILocation(line: 195, column: 26, scope: !2340, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 1012, column: 13, scope: !2527)
!2535 = !DILocation(line: 0, scope: !2527)
!2536 = !DILocation(line: 1011, column: 3, scope: !2527)
!2537 = !DILocation(line: 1011, column: 26, scope: !2527)
!2538 = !DILocation(line: 1012, column: 13, scope: !2527)
!2539 = !{!2540}
!2540 = distinct !{!2540, !2541, !"quoting_options_from_style: argument 0"}
!2541 = distinct !{!2541, !"quoting_options_from_style"}
!2542 = !DILocation(line: 0, scope: !2340, inlinedAt: !2534)
!2543 = !DILocation(line: 196, column: 13, scope: !2349, inlinedAt: !2534)
!2544 = !DILocation(line: 196, column: 7, scope: !2340, inlinedAt: !2534)
!2545 = !DILocation(line: 197, column: 5, scope: !2349, inlinedAt: !2534)
!2546 = !{i64 0, i64 4, !779, i64 4, i64 32, !948, i64 36, i64 8, !614, i64 44, i64 8, !614}
!2547 = !DILocation(line: 0, scope: !1273, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 1013, column: 3, scope: !2527)
!2549 = !DILocation(line: 156, column: 57, scope: !1273, inlinedAt: !2548)
!2550 = !DILocation(line: 158, column: 12, scope: !1273, inlinedAt: !2548)
!2551 = !DILocation(line: 159, column: 6, scope: !1273, inlinedAt: !2548)
!2552 = !DILocation(line: 1014, column: 10, scope: !2527)
!2553 = !DILocation(line: 1015, column: 1, scope: !2527)
!2554 = !DILocation(line: 1014, column: 3, scope: !2527)
!2555 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !59, file: !59, line: 1018, type: !2556, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!6, !22, !19, !19, !19}
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "n", arg: 1, scope: !2555, file: !59, line: 1018, type: !22)
!2560 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2555, file: !59, line: 1018, type: !19)
!2561 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2555, file: !59, line: 1019, type: !19)
!2562 = !DILocalVariable(name: "arg", arg: 4, scope: !2555, file: !59, line: 1019, type: !19)
!2563 = !DILocation(line: 0, scope: !2555)
!2564 = !DILocalVariable(name: "n", arg: 1, scope: !2565, file: !59, line: 1026, type: !22)
!2565 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !59, file: !59, line: 1026, type: !2566, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2568)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!6, !22, !19, !19, !19, !97}
!2568 = !{!2564, !2569, !2570, !2571, !2572, !2573}
!2569 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2565, file: !59, line: 1026, type: !19)
!2570 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2565, file: !59, line: 1027, type: !19)
!2571 = !DILocalVariable(name: "arg", arg: 4, scope: !2565, file: !59, line: 1028, type: !19)
!2572 = !DILocalVariable(name: "argsize", arg: 5, scope: !2565, file: !59, line: 1028, type: !97)
!2573 = !DILocalVariable(name: "o", scope: !2565, file: !59, line: 1030, type: !109)
!2574 = !DILocation(line: 0, scope: !2565, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 1021, column: 10, scope: !2555)
!2576 = !DILocation(line: 1030, column: 3, scope: !2565, inlinedAt: !2575)
!2577 = !DILocation(line: 1030, column: 26, scope: !2565, inlinedAt: !2575)
!2578 = !DILocation(line: 1030, column: 30, scope: !2565, inlinedAt: !2575)
!2579 = !DILocation(line: 0, scope: !1314, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1031, column: 3, scope: !2565, inlinedAt: !2575)
!2581 = !DILocation(line: 184, column: 6, scope: !1314, inlinedAt: !2580)
!2582 = !DILocation(line: 184, column: 12, scope: !1314, inlinedAt: !2580)
!2583 = !DILocation(line: 185, column: 8, scope: !1328, inlinedAt: !2580)
!2584 = !DILocation(line: 185, column: 19, scope: !1328, inlinedAt: !2580)
!2585 = !DILocation(line: 186, column: 5, scope: !1328, inlinedAt: !2580)
!2586 = !DILocation(line: 187, column: 6, scope: !1314, inlinedAt: !2580)
!2587 = !DILocation(line: 187, column: 17, scope: !1314, inlinedAt: !2580)
!2588 = !DILocation(line: 188, column: 6, scope: !1314, inlinedAt: !2580)
!2589 = !DILocation(line: 188, column: 18, scope: !1314, inlinedAt: !2580)
!2590 = !DILocation(line: 1032, column: 10, scope: !2565, inlinedAt: !2575)
!2591 = !DILocation(line: 1033, column: 1, scope: !2565, inlinedAt: !2575)
!2592 = !DILocation(line: 1021, column: 3, scope: !2555)
!2593 = !DILocation(line: 0, scope: !2565)
!2594 = !DILocation(line: 1030, column: 3, scope: !2565)
!2595 = !DILocation(line: 1030, column: 26, scope: !2565)
!2596 = !DILocation(line: 1030, column: 30, scope: !2565)
!2597 = !DILocation(line: 0, scope: !1314, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 1031, column: 3, scope: !2565)
!2599 = !DILocation(line: 184, column: 6, scope: !1314, inlinedAt: !2598)
!2600 = !DILocation(line: 184, column: 12, scope: !1314, inlinedAt: !2598)
!2601 = !DILocation(line: 185, column: 8, scope: !1328, inlinedAt: !2598)
!2602 = !DILocation(line: 185, column: 19, scope: !1328, inlinedAt: !2598)
!2603 = !DILocation(line: 186, column: 5, scope: !1328, inlinedAt: !2598)
!2604 = !DILocation(line: 187, column: 6, scope: !1314, inlinedAt: !2598)
!2605 = !DILocation(line: 187, column: 17, scope: !1314, inlinedAt: !2598)
!2606 = !DILocation(line: 188, column: 6, scope: !1314, inlinedAt: !2598)
!2607 = !DILocation(line: 188, column: 18, scope: !1314, inlinedAt: !2598)
!2608 = !DILocation(line: 1032, column: 10, scope: !2565)
!2609 = !DILocation(line: 1033, column: 1, scope: !2565)
!2610 = !DILocation(line: 1032, column: 3, scope: !2565)
!2611 = distinct !DISubprogram(name: "quotearg_custom", scope: !59, file: !59, line: 1036, type: !2612, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!6, !19, !19, !19}
!2614 = !{!2615, !2616, !2617}
!2615 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2611, file: !59, line: 1036, type: !19)
!2616 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2611, file: !59, line: 1036, type: !19)
!2617 = !DILocalVariable(name: "arg", arg: 3, scope: !2611, file: !59, line: 1037, type: !19)
!2618 = !DILocation(line: 0, scope: !2611)
!2619 = !DILocation(line: 0, scope: !2555, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1039, column: 10, scope: !2611)
!2621 = !DILocation(line: 0, scope: !2565, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1021, column: 10, scope: !2555, inlinedAt: !2620)
!2623 = !DILocation(line: 1030, column: 3, scope: !2565, inlinedAt: !2622)
!2624 = !DILocation(line: 1030, column: 26, scope: !2565, inlinedAt: !2622)
!2625 = !DILocation(line: 1030, column: 30, scope: !2565, inlinedAt: !2622)
!2626 = !DILocation(line: 0, scope: !1314, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1031, column: 3, scope: !2565, inlinedAt: !2622)
!2628 = !DILocation(line: 184, column: 6, scope: !1314, inlinedAt: !2627)
!2629 = !DILocation(line: 184, column: 12, scope: !1314, inlinedAt: !2627)
!2630 = !DILocation(line: 185, column: 8, scope: !1328, inlinedAt: !2627)
!2631 = !DILocation(line: 185, column: 19, scope: !1328, inlinedAt: !2627)
!2632 = !DILocation(line: 186, column: 5, scope: !1328, inlinedAt: !2627)
!2633 = !DILocation(line: 187, column: 6, scope: !1314, inlinedAt: !2627)
!2634 = !DILocation(line: 187, column: 17, scope: !1314, inlinedAt: !2627)
!2635 = !DILocation(line: 188, column: 6, scope: !1314, inlinedAt: !2627)
!2636 = !DILocation(line: 188, column: 18, scope: !1314, inlinedAt: !2627)
!2637 = !DILocation(line: 1032, column: 10, scope: !2565, inlinedAt: !2622)
!2638 = !DILocation(line: 1033, column: 1, scope: !2565, inlinedAt: !2622)
!2639 = !DILocation(line: 1039, column: 3, scope: !2611)
!2640 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !59, file: !59, line: 1043, type: !2641, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!6, !19, !19, !19, !97}
!2643 = !{!2644, !2645, !2646, !2647}
!2644 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2640, file: !59, line: 1043, type: !19)
!2645 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2640, file: !59, line: 1043, type: !19)
!2646 = !DILocalVariable(name: "arg", arg: 3, scope: !2640, file: !59, line: 1044, type: !19)
!2647 = !DILocalVariable(name: "argsize", arg: 4, scope: !2640, file: !59, line: 1044, type: !97)
!2648 = !DILocation(line: 0, scope: !2640)
!2649 = !DILocation(line: 0, scope: !2565, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1046, column: 10, scope: !2640)
!2651 = !DILocation(line: 1030, column: 3, scope: !2565, inlinedAt: !2650)
!2652 = !DILocation(line: 1030, column: 26, scope: !2565, inlinedAt: !2650)
!2653 = !DILocation(line: 1030, column: 30, scope: !2565, inlinedAt: !2650)
!2654 = !DILocation(line: 0, scope: !1314, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 1031, column: 3, scope: !2565, inlinedAt: !2650)
!2656 = !DILocation(line: 184, column: 6, scope: !1314, inlinedAt: !2655)
!2657 = !DILocation(line: 184, column: 12, scope: !1314, inlinedAt: !2655)
!2658 = !DILocation(line: 185, column: 8, scope: !1328, inlinedAt: !2655)
!2659 = !DILocation(line: 185, column: 19, scope: !1328, inlinedAt: !2655)
!2660 = !DILocation(line: 186, column: 5, scope: !1328, inlinedAt: !2655)
!2661 = !DILocation(line: 187, column: 6, scope: !1314, inlinedAt: !2655)
!2662 = !DILocation(line: 187, column: 17, scope: !1314, inlinedAt: !2655)
!2663 = !DILocation(line: 188, column: 6, scope: !1314, inlinedAt: !2655)
!2664 = !DILocation(line: 188, column: 18, scope: !1314, inlinedAt: !2655)
!2665 = !DILocation(line: 1032, column: 10, scope: !2565, inlinedAt: !2650)
!2666 = !DILocation(line: 1033, column: 1, scope: !2565, inlinedAt: !2650)
!2667 = !DILocation(line: 1046, column: 3, scope: !2640)
!2668 = distinct !DISubprogram(name: "quote_n_mem", scope: !59, file: !59, line: 1061, type: !2669, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!19, !22, !19, !97}
!2671 = !{!2672, !2673, !2674}
!2672 = !DILocalVariable(name: "n", arg: 1, scope: !2668, file: !59, line: 1061, type: !22)
!2673 = !DILocalVariable(name: "arg", arg: 2, scope: !2668, file: !59, line: 1061, type: !19)
!2674 = !DILocalVariable(name: "argsize", arg: 3, scope: !2668, file: !59, line: 1061, type: !97)
!2675 = !DILocation(line: 0, scope: !2668)
!2676 = !DILocation(line: 1063, column: 10, scope: !2668)
!2677 = !DILocation(line: 1063, column: 3, scope: !2668)
!2678 = distinct !DISubprogram(name: "quote_mem", scope: !59, file: !59, line: 1067, type: !2679, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!19, !19, !97}
!2681 = !{!2682, !2683}
!2682 = !DILocalVariable(name: "arg", arg: 1, scope: !2678, file: !59, line: 1067, type: !19)
!2683 = !DILocalVariable(name: "argsize", arg: 2, scope: !2678, file: !59, line: 1067, type: !97)
!2684 = !DILocation(line: 0, scope: !2678)
!2685 = !DILocation(line: 0, scope: !2668, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1069, column: 10, scope: !2678)
!2687 = !DILocation(line: 1063, column: 10, scope: !2668, inlinedAt: !2686)
!2688 = !DILocation(line: 1069, column: 3, scope: !2678)
!2689 = distinct !DISubprogram(name: "quote_n", scope: !59, file: !59, line: 1073, type: !2690, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!19, !22, !19}
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "n", arg: 1, scope: !2689, file: !59, line: 1073, type: !22)
!2694 = !DILocalVariable(name: "arg", arg: 2, scope: !2689, file: !59, line: 1073, type: !19)
!2695 = !DILocation(line: 0, scope: !2689)
!2696 = !DILocation(line: 0, scope: !2668, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1075, column: 10, scope: !2689)
!2698 = !DILocation(line: 1063, column: 10, scope: !2668, inlinedAt: !2697)
!2699 = !DILocation(line: 1075, column: 3, scope: !2689)
!2700 = distinct !DISubprogram(name: "quote", scope: !59, file: !59, line: 1079, type: !2701, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!19, !19}
!2703 = !{!2704}
!2704 = !DILocalVariable(name: "arg", arg: 1, scope: !2700, file: !59, line: 1079, type: !19)
!2705 = !DILocation(line: 0, scope: !2700)
!2706 = !DILocation(line: 0, scope: !2689, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1081, column: 10, scope: !2700)
!2708 = !DILocation(line: 0, scope: !2668, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1075, column: 10, scope: !2689, inlinedAt: !2707)
!2710 = !DILocation(line: 1063, column: 10, scope: !2668, inlinedAt: !2709)
!2711 = !DILocation(line: 1081, column: 3, scope: !2700)
!2712 = distinct !DISubprogram(name: "version_etc_arn", scope: !166, file: !166, line: 61, type: !2713, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2751)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2715, !19, !19, !19, !2750, !97}
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2717, line: 7, baseType: !2718)
!2717 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !694, line: 49, size: 1728, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2718, file: !694, line: 51, baseType: !22, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2718, file: !694, line: 54, baseType: !6, size: 64, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2718, file: !694, line: 55, baseType: !6, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2718, file: !694, line: 56, baseType: !6, size: 64, offset: 192)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2718, file: !694, line: 57, baseType: !6, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2718, file: !694, line: 58, baseType: !6, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2718, file: !694, line: 59, baseType: !6, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2718, file: !694, line: 60, baseType: !6, size: 64, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2718, file: !694, line: 61, baseType: !6, size: 64, offset: 512)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2718, file: !694, line: 64, baseType: !6, size: 64, offset: 576)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2718, file: !694, line: 65, baseType: !6, size: 64, offset: 640)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2718, file: !694, line: 66, baseType: !6, size: 64, offset: 704)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2718, file: !694, line: 68, baseType: !709, size: 64, offset: 768)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2718, file: !694, line: 70, baseType: !2734, size: 64, offset: 832)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2718, file: !694, line: 72, baseType: !22, size: 32, offset: 896)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2718, file: !694, line: 73, baseType: !22, size: 32, offset: 928)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2718, file: !694, line: 74, baseType: !715, size: 64, offset: 960)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2718, file: !694, line: 77, baseType: !96, size: 16, offset: 1024)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2718, file: !694, line: 78, baseType: !720, size: 8, offset: 1040)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2718, file: !694, line: 79, baseType: !722, size: 8, offset: 1048)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2718, file: !694, line: 81, baseType: !726, size: 64, offset: 1088)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2718, file: !694, line: 89, baseType: !729, size: 64, offset: 1152)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2718, file: !694, line: 91, baseType: !731, size: 64, offset: 1216)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2718, file: !694, line: 92, baseType: !734, size: 64, offset: 1280)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2718, file: !694, line: 93, baseType: !2734, size: 64, offset: 1344)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2718, file: !694, line: 94, baseType: !8, size: 64, offset: 1408)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2718, file: !694, line: 95, baseType: !97, size: 64, offset: 1472)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2718, file: !694, line: 96, baseType: !22, size: 32, offset: 1536)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2718, file: !694, line: 98, baseType: !741, size: 160, offset: 1568)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!2751 = !{!2752, !2753, !2754, !2755, !2756, !2757}
!2752 = !DILocalVariable(name: "stream", arg: 1, scope: !2712, file: !166, line: 61, type: !2715)
!2753 = !DILocalVariable(name: "command_name", arg: 2, scope: !2712, file: !166, line: 62, type: !19)
!2754 = !DILocalVariable(name: "package", arg: 3, scope: !2712, file: !166, line: 62, type: !19)
!2755 = !DILocalVariable(name: "version", arg: 4, scope: !2712, file: !166, line: 63, type: !19)
!2756 = !DILocalVariable(name: "authors", arg: 5, scope: !2712, file: !166, line: 64, type: !2750)
!2757 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2712, file: !166, line: 64, type: !97)
!2758 = !DILocation(line: 0, scope: !2712)
!2759 = !DILocation(line: 66, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2712, file: !166, line: 66, column: 7)
!2761 = !DILocation(line: 66, column: 7, scope: !2712)
!2762 = !DILocation(line: 67, column: 5, scope: !2760)
!2763 = !DILocation(line: 69, column: 5, scope: !2760)
!2764 = !DILocation(line: 83, column: 3, scope: !2712)
!2765 = !DILocation(line: 85, column: 3, scope: !2712)
!2766 = !DILocation(line: 88, column: 3, scope: !2712)
!2767 = !DILocation(line: 95, column: 3, scope: !2712)
!2768 = !DILocation(line: 97, column: 3, scope: !2712)
!2769 = !DILocation(line: 105, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2712, file: !166, line: 98, column: 5)
!2771 = !DILocation(line: 106, column: 7, scope: !2770)
!2772 = !DILocation(line: 109, column: 7, scope: !2770)
!2773 = !DILocation(line: 110, column: 7, scope: !2770)
!2774 = !DILocation(line: 113, column: 7, scope: !2770)
!2775 = !DILocation(line: 115, column: 7, scope: !2770)
!2776 = !DILocation(line: 120, column: 7, scope: !2770)
!2777 = !DILocation(line: 122, column: 7, scope: !2770)
!2778 = !DILocation(line: 127, column: 7, scope: !2770)
!2779 = !DILocation(line: 129, column: 7, scope: !2770)
!2780 = !DILocation(line: 134, column: 7, scope: !2770)
!2781 = !DILocation(line: 137, column: 7, scope: !2770)
!2782 = !DILocation(line: 142, column: 7, scope: !2770)
!2783 = !DILocation(line: 145, column: 7, scope: !2770)
!2784 = !DILocation(line: 150, column: 7, scope: !2770)
!2785 = !DILocation(line: 154, column: 7, scope: !2770)
!2786 = !DILocation(line: 159, column: 7, scope: !2770)
!2787 = !DILocation(line: 163, column: 7, scope: !2770)
!2788 = !DILocation(line: 170, column: 7, scope: !2770)
!2789 = !DILocation(line: 174, column: 7, scope: !2770)
!2790 = !DILocation(line: 176, column: 1, scope: !2712)
!2791 = distinct !DISubprogram(name: "version_etc_ar", scope: !166, file: !166, line: 183, type: !2792, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2715, !19, !19, !19, !2750}
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800}
!2795 = !DILocalVariable(name: "stream", arg: 1, scope: !2791, file: !166, line: 183, type: !2715)
!2796 = !DILocalVariable(name: "command_name", arg: 2, scope: !2791, file: !166, line: 184, type: !19)
!2797 = !DILocalVariable(name: "package", arg: 3, scope: !2791, file: !166, line: 184, type: !19)
!2798 = !DILocalVariable(name: "version", arg: 4, scope: !2791, file: !166, line: 185, type: !19)
!2799 = !DILocalVariable(name: "authors", arg: 5, scope: !2791, file: !166, line: 185, type: !2750)
!2800 = !DILocalVariable(name: "n_authors", scope: !2791, file: !166, line: 187, type: !97)
!2801 = !DILocation(line: 0, scope: !2791)
!2802 = !DILocation(line: 189, column: 8, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2791, file: !166, line: 189, column: 3)
!2804 = !DILocation(line: 0, scope: !2803)
!2805 = !DILocation(line: 189, column: 23, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2803, file: !166, line: 189, column: 3)
!2807 = !DILocation(line: 189, column: 3, scope: !2803)
!2808 = !DILocation(line: 189, column: 52, scope: !2806)
!2809 = distinct !{!2809, !2807, !2810, !664}
!2810 = !DILocation(line: 190, column: 5, scope: !2803)
!2811 = !DILocation(line: 191, column: 3, scope: !2791)
!2812 = !DILocation(line: 192, column: 1, scope: !2791)
!2813 = distinct !DISubprogram(name: "version_etc_va", scope: !166, file: !166, line: 199, type: !2814, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2823)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !2715, !19, !19, !19, !2816}
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2817, file: !166, line: 192, baseType: !9, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2817, file: !166, line: 192, baseType: !9, size: 32, offset: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2817, file: !166, line: 192, baseType: !8, size: 64, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2817, file: !166, line: 192, baseType: !8, size: 64, offset: 128)
!2823 = !{!2824, !2825, !2826, !2827, !2828, !2829, !2830}
!2824 = !DILocalVariable(name: "stream", arg: 1, scope: !2813, file: !166, line: 199, type: !2715)
!2825 = !DILocalVariable(name: "command_name", arg: 2, scope: !2813, file: !166, line: 200, type: !19)
!2826 = !DILocalVariable(name: "package", arg: 3, scope: !2813, file: !166, line: 200, type: !19)
!2827 = !DILocalVariable(name: "version", arg: 4, scope: !2813, file: !166, line: 201, type: !19)
!2828 = !DILocalVariable(name: "authors", arg: 5, scope: !2813, file: !166, line: 201, type: !2816)
!2829 = !DILocalVariable(name: "n_authors", scope: !2813, file: !166, line: 203, type: !97)
!2830 = !DILocalVariable(name: "authtab", scope: !2813, file: !166, line: 204, type: !2831)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 640, elements: !105)
!2832 = !DILocation(line: 0, scope: !2813)
!2833 = !DILocation(line: 204, column: 3, scope: !2813)
!2834 = !DILocation(line: 204, column: 15, scope: !2813)
!2835 = !DILocation(line: 208, column: 35, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !166, line: 206, column: 3)
!2837 = distinct !DILexicalBlock(scope: !2813, file: !166, line: 206, column: 3)
!2838 = !DILocation(line: 208, column: 14, scope: !2836)
!2839 = !DILocation(line: 208, column: 33, scope: !2836)
!2840 = !DILocation(line: 208, column: 67, scope: !2836)
!2841 = !DILocation(line: 206, column: 3, scope: !2837)
!2842 = !DILocation(line: 0, scope: !2837)
!2843 = !DILocation(line: 211, column: 3, scope: !2813)
!2844 = !DILocation(line: 213, column: 1, scope: !2813)
!2845 = distinct !DISubprogram(name: "version_etc", scope: !166, file: !166, line: 230, type: !2846, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !2715, !19, !19, !19, null}
!2848 = !{!2849, !2850, !2851, !2852, !2853}
!2849 = !DILocalVariable(name: "stream", arg: 1, scope: !2845, file: !166, line: 230, type: !2715)
!2850 = !DILocalVariable(name: "command_name", arg: 2, scope: !2845, file: !166, line: 231, type: !19)
!2851 = !DILocalVariable(name: "package", arg: 3, scope: !2845, file: !166, line: 231, type: !19)
!2852 = !DILocalVariable(name: "version", arg: 4, scope: !2845, file: !166, line: 232, type: !19)
!2853 = !DILocalVariable(name: "authors", scope: !2845, file: !166, line: 234, type: !2854)
!2854 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !689, line: 52, baseType: !2855)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2856, line: 32, baseType: !2857)
!2856 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !166, baseType: !2858)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2817, size: 192, elements: !723)
!2859 = !DILocation(line: 0, scope: !2845)
!2860 = !DILocation(line: 234, column: 3, scope: !2845)
!2861 = !DILocation(line: 234, column: 11, scope: !2845)
!2862 = !DILocation(line: 236, column: 3, scope: !2845)
!2863 = !DILocation(line: 237, column: 3, scope: !2845)
!2864 = !DILocation(line: 238, column: 3, scope: !2845)
!2865 = !DILocation(line: 239, column: 1, scope: !2845)
!2866 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !166, file: !166, line: 242, type: !624, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !4)
!2867 = !DILocation(line: 244, column: 3, scope: !2866)
!2868 = !DILocation(line: 249, column: 3, scope: !2866)
!2869 = !DILocation(line: 255, column: 3, scope: !2866)
!2870 = !DILocation(line: 260, column: 3, scope: !2866)
!2871 = !DILocation(line: 262, column: 1, scope: !2866)
!2872 = distinct !DISubprogram(name: "xnmalloc", scope: !176, file: !176, line: 99, type: !2873, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!8, !97, !97}
!2875 = !{!2876, !2877}
!2876 = !DILocalVariable(name: "n", arg: 1, scope: !2872, file: !176, line: 99, type: !97)
!2877 = !DILocalVariable(name: "s", arg: 2, scope: !2872, file: !176, line: 99, type: !97)
!2878 = !DILocation(line: 0, scope: !2872)
!2879 = !DILocation(line: 101, column: 7, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2872, file: !176, line: 101, column: 7)
!2881 = !DILocation(line: 101, column: 7, scope: !2872)
!2882 = !DILocation(line: 102, column: 5, scope: !2880)
!2883 = !DILocation(line: 103, column: 21, scope: !2872)
!2884 = !DILocalVariable(name: "n", arg: 1, scope: !2885, file: !173, line: 39, type: !97)
!2885 = distinct !DISubprogram(name: "xmalloc", scope: !173, file: !173, line: 39, type: !2886, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!8, !97}
!2888 = !{!2884, !2889}
!2889 = !DILocalVariable(name: "p", scope: !2885, file: !173, line: 41, type: !8)
!2890 = !DILocation(line: 0, scope: !2885, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 103, column: 10, scope: !2872)
!2892 = !DILocation(line: 41, column: 13, scope: !2885, inlinedAt: !2891)
!2893 = !DILocation(line: 42, column: 8, scope: !2894, inlinedAt: !2891)
!2894 = distinct !DILexicalBlock(scope: !2885, file: !173, line: 42, column: 7)
!2895 = !DILocation(line: 42, column: 10, scope: !2894, inlinedAt: !2891)
!2896 = !DILocation(line: 43, column: 5, scope: !2894, inlinedAt: !2891)
!2897 = !DILocation(line: 103, column: 3, scope: !2872)
!2898 = !DILocation(line: 0, scope: !2885)
!2899 = !DILocation(line: 41, column: 13, scope: !2885)
!2900 = !DILocation(line: 42, column: 8, scope: !2894)
!2901 = !DILocation(line: 42, column: 10, scope: !2894)
!2902 = !DILocation(line: 43, column: 5, scope: !2894)
!2903 = !DILocation(line: 44, column: 3, scope: !2885)
!2904 = distinct !DISubprogram(name: "xnrealloc", scope: !176, file: !176, line: 112, type: !2905, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!8, !8, !97, !97}
!2907 = !{!2908, !2909, !2910}
!2908 = !DILocalVariable(name: "p", arg: 1, scope: !2904, file: !176, line: 112, type: !8)
!2909 = !DILocalVariable(name: "n", arg: 2, scope: !2904, file: !176, line: 112, type: !97)
!2910 = !DILocalVariable(name: "s", arg: 3, scope: !2904, file: !176, line: 112, type: !97)
!2911 = !DILocation(line: 0, scope: !2904)
!2912 = !DILocation(line: 114, column: 7, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2904, file: !176, line: 114, column: 7)
!2914 = !DILocation(line: 114, column: 7, scope: !2904)
!2915 = !DILocation(line: 115, column: 5, scope: !2913)
!2916 = !DILocation(line: 116, column: 25, scope: !2904)
!2917 = !DILocalVariable(name: "p", arg: 1, scope: !2918, file: !173, line: 51, type: !8)
!2918 = distinct !DISubprogram(name: "xrealloc", scope: !173, file: !173, line: 51, type: !2919, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!8, !8, !97}
!2921 = !{!2917, !2922}
!2922 = !DILocalVariable(name: "n", arg: 2, scope: !2918, file: !173, line: 51, type: !97)
!2923 = !DILocation(line: 0, scope: !2918, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 116, column: 10, scope: !2904)
!2925 = !DILocation(line: 53, column: 8, scope: !2926, inlinedAt: !2924)
!2926 = distinct !DILexicalBlock(scope: !2918, file: !173, line: 53, column: 7)
!2927 = !DILocation(line: 53, column: 10, scope: !2926, inlinedAt: !2924)
!2928 = !DILocation(line: 57, column: 7, scope: !2929, inlinedAt: !2924)
!2929 = distinct !DILexicalBlock(scope: !2926, file: !173, line: 54, column: 5)
!2930 = !DILocation(line: 58, column: 7, scope: !2929, inlinedAt: !2924)
!2931 = !DILocation(line: 61, column: 7, scope: !2918, inlinedAt: !2924)
!2932 = !DILocation(line: 62, column: 8, scope: !2933, inlinedAt: !2924)
!2933 = distinct !DILexicalBlock(scope: !2918, file: !173, line: 62, column: 7)
!2934 = !DILocation(line: 62, column: 10, scope: !2933, inlinedAt: !2924)
!2935 = !DILocation(line: 63, column: 5, scope: !2933, inlinedAt: !2924)
!2936 = !DILocation(line: 116, column: 3, scope: !2904)
!2937 = !DILocation(line: 0, scope: !2918)
!2938 = !DILocation(line: 53, column: 8, scope: !2926)
!2939 = !DILocation(line: 53, column: 10, scope: !2926)
!2940 = !DILocation(line: 57, column: 7, scope: !2929)
!2941 = !DILocation(line: 58, column: 7, scope: !2929)
!2942 = !DILocation(line: 61, column: 7, scope: !2918)
!2943 = !DILocation(line: 62, column: 8, scope: !2933)
!2944 = !DILocation(line: 62, column: 10, scope: !2933)
!2945 = !DILocation(line: 63, column: 5, scope: !2933)
!2946 = !DILocation(line: 65, column: 1, scope: !2918)
!2947 = !DILocation(line: 0, scope: !177)
!2948 = !DILocation(line: 176, column: 14, scope: !177)
!2949 = !DILocation(line: 178, column: 9, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !177, file: !176, line: 178, column: 7)
!2951 = !DILocation(line: 178, column: 7, scope: !177)
!2952 = !DILocation(line: 180, column: 13, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !176, line: 180, column: 11)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !176, line: 179, column: 5)
!2955 = !DILocation(line: 180, column: 11, scope: !2954)
!2956 = !DILocation(line: 188, column: 30, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2953, file: !176, line: 181, column: 9)
!2958 = !DILocation(line: 189, column: 16, scope: !2957)
!2959 = !DILocation(line: 189, column: 13, scope: !2957)
!2960 = !DILocation(line: 190, column: 9, scope: !2957)
!2961 = !DILocation(line: 191, column: 11, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2954, file: !176, line: 191, column: 11)
!2963 = !DILocation(line: 191, column: 11, scope: !2954)
!2964 = !DILocation(line: 206, column: 7, scope: !177)
!2965 = !DILocation(line: 207, column: 25, scope: !177)
!2966 = !DILocation(line: 0, scope: !2918, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 207, column: 10, scope: !177)
!2968 = !DILocation(line: 53, column: 10, scope: !2926, inlinedAt: !2967)
!2969 = !DILocation(line: 192, column: 9, scope: !2962)
!2970 = !DILocation(line: 200, column: 69, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !176, line: 200, column: 11)
!2972 = distinct !DILexicalBlock(scope: !2950, file: !176, line: 195, column: 5)
!2973 = !DILocation(line: 201, column: 11, scope: !2971)
!2974 = !DILocation(line: 200, column: 11, scope: !2972)
!2975 = !DILocation(line: 202, column: 9, scope: !2971)
!2976 = !DILocation(line: 203, column: 14, scope: !2972)
!2977 = !DILocation(line: 203, column: 18, scope: !2972)
!2978 = !DILocation(line: 203, column: 9, scope: !2972)
!2979 = !DILocation(line: 53, column: 8, scope: !2926, inlinedAt: !2967)
!2980 = !DILocation(line: 57, column: 7, scope: !2929, inlinedAt: !2967)
!2981 = !DILocation(line: 58, column: 7, scope: !2929, inlinedAt: !2967)
!2982 = !DILocation(line: 61, column: 7, scope: !2918, inlinedAt: !2967)
!2983 = !DILocation(line: 62, column: 8, scope: !2933, inlinedAt: !2967)
!2984 = !DILocation(line: 62, column: 10, scope: !2933, inlinedAt: !2967)
!2985 = !DILocation(line: 63, column: 5, scope: !2933, inlinedAt: !2967)
!2986 = !DILocation(line: 207, column: 3, scope: !177)
!2987 = distinct !DISubprogram(name: "xcharalloc", scope: !176, file: !176, line: 216, type: !2123, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !2988)
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "n", arg: 1, scope: !2987, file: !176, line: 216, type: !97)
!2990 = !DILocation(line: 0, scope: !2987)
!2991 = !DILocation(line: 0, scope: !2885, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 218, column: 10, scope: !2987)
!2993 = !DILocation(line: 41, column: 13, scope: !2885, inlinedAt: !2992)
!2994 = !DILocation(line: 42, column: 8, scope: !2894, inlinedAt: !2992)
!2995 = !DILocation(line: 42, column: 10, scope: !2894, inlinedAt: !2992)
!2996 = !DILocation(line: 43, column: 5, scope: !2894, inlinedAt: !2992)
!2997 = !DILocation(line: 218, column: 3, scope: !2987)
!2998 = distinct !DISubprogram(name: "x2realloc", scope: !173, file: !173, line: 74, type: !2999, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!8, !8, !180}
!3001 = !{!3002, !3003}
!3002 = !DILocalVariable(name: "p", arg: 1, scope: !2998, file: !173, line: 74, type: !8)
!3003 = !DILocalVariable(name: "pn", arg: 2, scope: !2998, file: !173, line: 74, type: !180)
!3004 = !DILocation(line: 0, scope: !2998)
!3005 = !DILocation(line: 0, scope: !177, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 76, column: 10, scope: !2998)
!3007 = !DILocation(line: 176, column: 14, scope: !177, inlinedAt: !3006)
!3008 = !DILocation(line: 178, column: 9, scope: !2950, inlinedAt: !3006)
!3009 = !DILocation(line: 178, column: 7, scope: !177, inlinedAt: !3006)
!3010 = !DILocation(line: 180, column: 13, scope: !2953, inlinedAt: !3006)
!3011 = !DILocation(line: 180, column: 11, scope: !2954, inlinedAt: !3006)
!3012 = !DILocation(line: 191, column: 11, scope: !2962, inlinedAt: !3006)
!3013 = !DILocation(line: 191, column: 11, scope: !2954, inlinedAt: !3006)
!3014 = !DILocation(line: 192, column: 9, scope: !2962, inlinedAt: !3006)
!3015 = !DILocation(line: 201, column: 11, scope: !2971, inlinedAt: !3006)
!3016 = !DILocation(line: 200, column: 11, scope: !2972, inlinedAt: !3006)
!3017 = !DILocation(line: 202, column: 9, scope: !2971, inlinedAt: !3006)
!3018 = !DILocation(line: 203, column: 14, scope: !2972, inlinedAt: !3006)
!3019 = !DILocation(line: 203, column: 18, scope: !2972, inlinedAt: !3006)
!3020 = !DILocation(line: 203, column: 9, scope: !2972, inlinedAt: !3006)
!3021 = !DILocation(line: 0, scope: !2918, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 207, column: 10, scope: !177, inlinedAt: !3006)
!3023 = !DILocation(line: 53, column: 10, scope: !2926, inlinedAt: !3022)
!3024 = !DILocation(line: 206, column: 7, scope: !177, inlinedAt: !3006)
!3025 = !DILocation(line: 61, column: 7, scope: !2918, inlinedAt: !3022)
!3026 = !DILocation(line: 62, column: 8, scope: !2933, inlinedAt: !3022)
!3027 = !DILocation(line: 62, column: 10, scope: !2933, inlinedAt: !3022)
!3028 = !DILocation(line: 63, column: 5, scope: !2933, inlinedAt: !3022)
!3029 = !DILocation(line: 76, column: 3, scope: !2998)
!3030 = distinct !DISubprogram(name: "xzalloc", scope: !173, file: !173, line: 84, type: !2886, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3031)
!3031 = !{!3032}
!3032 = !DILocalVariable(name: "n", arg: 1, scope: !3030, file: !173, line: 84, type: !97)
!3033 = !DILocation(line: 0, scope: !3030)
!3034 = !DILocalVariable(name: "n", arg: 1, scope: !3035, file: !173, line: 93, type: !97)
!3035 = distinct !DISubprogram(name: "xcalloc", scope: !173, file: !173, line: 93, type: !2873, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3036)
!3036 = !{!3034, !3037, !3038}
!3037 = !DILocalVariable(name: "s", arg: 2, scope: !3035, file: !173, line: 93, type: !97)
!3038 = !DILocalVariable(name: "p", scope: !3035, file: !173, line: 95, type: !8)
!3039 = !DILocation(line: 0, scope: !3035, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 86, column: 10, scope: !3030)
!3041 = !DILocation(line: 100, column: 7, scope: !3042, inlinedAt: !3040)
!3042 = distinct !DILexicalBlock(scope: !3035, file: !173, line: 100, column: 7)
!3043 = !DILocation(line: 101, column: 7, scope: !3042, inlinedAt: !3040)
!3044 = !DILocation(line: 101, column: 18, scope: !3042, inlinedAt: !3040)
!3045 = !DILocation(line: 101, column: 16, scope: !3042, inlinedAt: !3040)
!3046 = !DILocation(line: 100, column: 7, scope: !3035, inlinedAt: !3040)
!3047 = !DILocation(line: 102, column: 5, scope: !3042, inlinedAt: !3040)
!3048 = !DILocation(line: 86, column: 3, scope: !3030)
!3049 = !DILocation(line: 0, scope: !3035)
!3050 = !DILocation(line: 100, column: 7, scope: !3042)
!3051 = !DILocation(line: 101, column: 7, scope: !3042)
!3052 = !DILocation(line: 101, column: 18, scope: !3042)
!3053 = !DILocation(line: 101, column: 16, scope: !3042)
!3054 = !DILocation(line: 100, column: 7, scope: !3035)
!3055 = !DILocation(line: 102, column: 5, scope: !3042)
!3056 = !DILocation(line: 103, column: 3, scope: !3035)
!3057 = distinct !DISubprogram(name: "xmemdup", scope: !173, file: !173, line: 111, type: !3058, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3062)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!8, !3060, !97}
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3062 = !{!3063, !3064}
!3063 = !DILocalVariable(name: "p", arg: 1, scope: !3057, file: !173, line: 111, type: !3060)
!3064 = !DILocalVariable(name: "s", arg: 2, scope: !3057, file: !173, line: 111, type: !97)
!3065 = !DILocation(line: 0, scope: !3057)
!3066 = !DILocation(line: 0, scope: !2885, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 113, column: 18, scope: !3057)
!3068 = !DILocation(line: 41, column: 13, scope: !2885, inlinedAt: !3067)
!3069 = !DILocation(line: 42, column: 8, scope: !2894, inlinedAt: !3067)
!3070 = !DILocation(line: 42, column: 10, scope: !2894, inlinedAt: !3067)
!3071 = !DILocation(line: 43, column: 5, scope: !2894, inlinedAt: !3067)
!3072 = !DILocalVariable(name: "__dest", arg: 1, scope: !3073, file: !1650, line: 26, type: !3076)
!3073 = distinct !DISubprogram(name: "memcpy", scope: !1650, file: !1650, line: 26, type: !3074, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3078)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!8, !3076, !3077, !97}
!3076 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!3077 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3060)
!3078 = !{!3072, !3079, !3080}
!3079 = !DILocalVariable(name: "__src", arg: 2, scope: !3073, file: !1650, line: 26, type: !3077)
!3080 = !DILocalVariable(name: "__len", arg: 3, scope: !3073, file: !1650, line: 26, type: !97)
!3081 = !DILocation(line: 0, scope: !3073, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 113, column: 10, scope: !3057)
!3083 = !DILocation(line: 29, column: 10, scope: !3073, inlinedAt: !3082)
!3084 = !DILocation(line: 113, column: 3, scope: !3057)
!3085 = distinct !DISubprogram(name: "xstrdup", scope: !173, file: !173, line: 119, type: !1032, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !3086)
!3086 = !{!3087}
!3087 = !DILocalVariable(name: "string", arg: 1, scope: !3085, file: !173, line: 119, type: !19)
!3088 = !DILocation(line: 0, scope: !3085)
!3089 = !DILocation(line: 121, column: 27, scope: !3085)
!3090 = !DILocation(line: 121, column: 43, scope: !3085)
!3091 = !DILocation(line: 0, scope: !3057, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 121, column: 10, scope: !3085)
!3093 = !DILocation(line: 0, scope: !2885, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 113, column: 18, scope: !3057, inlinedAt: !3092)
!3095 = !DILocation(line: 41, column: 13, scope: !2885, inlinedAt: !3094)
!3096 = !DILocation(line: 42, column: 8, scope: !2894, inlinedAt: !3094)
!3097 = !DILocation(line: 42, column: 10, scope: !2894, inlinedAt: !3094)
!3098 = !DILocation(line: 43, column: 5, scope: !2894, inlinedAt: !3094)
!3099 = !DILocation(line: 0, scope: !3073, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 113, column: 10, scope: !3057, inlinedAt: !3092)
!3101 = !DILocation(line: 29, column: 10, scope: !3073, inlinedAt: !3100)
!3102 = !DILocation(line: 121, column: 3, scope: !3085)
!3103 = distinct !DISubprogram(name: "xalloc_die", scope: !190, file: !190, line: 32, type: !624, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !4)
!3104 = !DILocation(line: 34, column: 10, scope: !3103)
!3105 = !DILocation(line: 34, column: 33, scope: !3103)
!3106 = !DILocation(line: 34, column: 3, scope: !3103)
!3107 = !DILocation(line: 40, column: 3, scope: !3103)
!3108 = distinct !DISubprogram(name: "rpl_calloc", scope: !192, file: !192, line: 42, type: !2873, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !191, retainedNodes: !3109)
!3109 = !{!3110, !3111, !3112, !3113}
!3110 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !192, line: 42, type: !97)
!3111 = !DILocalVariable(name: "s", arg: 2, scope: !3108, file: !192, line: 42, type: !97)
!3112 = !DILocalVariable(name: "result", scope: !3108, file: !192, line: 44, type: !8)
!3113 = !DILocalVariable(name: "bytes", scope: !3114, file: !192, line: 56, type: !97)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !192, line: 53, column: 5)
!3115 = distinct !DILexicalBlock(scope: !3108, file: !192, line: 47, column: 7)
!3116 = !DILocation(line: 0, scope: !3108)
!3117 = !DILocation(line: 47, column: 9, scope: !3115)
!3118 = !DILocation(line: 47, column: 14, scope: !3115)
!3119 = !DILocation(line: 0, scope: !3114)
!3120 = !DILocation(line: 57, column: 21, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3114, file: !192, line: 57, column: 11)
!3122 = !DILocation(line: 57, column: 11, scope: !3114)
!3123 = !DILocation(line: 59, column: 11, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !192, line: 58, column: 9)
!3125 = !DILocation(line: 59, column: 17, scope: !3124)
!3126 = !DILocation(line: 65, column: 12, scope: !3108)
!3127 = !DILocation(line: 72, column: 3, scope: !3108)
!3128 = !DILocation(line: 73, column: 1, scope: !3108)
!3129 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !194, file: !194, line: 86, type: !3130, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !3144)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!97, !3132, !19, !97, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1403, line: 6, baseType: !3135)
!3135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1405, line: 21, baseType: !3136)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1405, line: 13, size: 64, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3136, file: !1405, line: 15, baseType: !22, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3136, file: !1405, line: 20, baseType: !3140, size: 32, offset: 32)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3136, file: !1405, line: 16, size: 32, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3140, file: !1405, line: 18, baseType: !9, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3140, file: !1405, line: 19, baseType: !1414, size: 32)
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150, !3151}
!3145 = !DILocalVariable(name: "pwc", arg: 1, scope: !3129, file: !194, line: 86, type: !3132)
!3146 = !DILocalVariable(name: "s", arg: 2, scope: !3129, file: !194, line: 86, type: !19)
!3147 = !DILocalVariable(name: "n", arg: 3, scope: !3129, file: !194, line: 86, type: !97)
!3148 = !DILocalVariable(name: "ps", arg: 4, scope: !3129, file: !194, line: 86, type: !3133)
!3149 = !DILocalVariable(name: "ret", scope: !3129, file: !194, line: 88, type: !97)
!3150 = !DILocalVariable(name: "wc", scope: !3129, file: !194, line: 89, type: !1419)
!3151 = !DILocalVariable(name: "uc", scope: !3152, file: !194, line: 156, type: !1281)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !194, line: 155, column: 5)
!3153 = distinct !DILexicalBlock(scope: !3129, file: !194, line: 154, column: 7)
!3154 = !DILocation(line: 0, scope: !3129)
!3155 = !DILocation(line: 89, column: 3, scope: !3129)
!3156 = !DILocation(line: 105, column: 9, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3129, file: !194, line: 105, column: 7)
!3158 = !DILocation(line: 105, column: 7, scope: !3129)
!3159 = !DILocation(line: 145, column: 9, scope: !3129)
!3160 = !DILocation(line: 154, column: 19, scope: !3153)
!3161 = !DILocation(line: 154, column: 26, scope: !3153)
!3162 = !DILocation(line: 154, column: 41, scope: !3153)
!3163 = !DILocation(line: 154, column: 7, scope: !3129)
!3164 = !DILocation(line: 156, column: 26, scope: !3152)
!3165 = !DILocation(line: 0, scope: !3152)
!3166 = !DILocation(line: 157, column: 14, scope: !3152)
!3167 = !DILocation(line: 157, column: 12, scope: !3152)
!3168 = !DILocation(line: 163, column: 1, scope: !3129)
!3169 = !DISubprogram(name: "mbrtowc", scope: !2083, file: !2083, line: 296, type: !3170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!99, !24, !19, !99, !3172}
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3173 = distinct !DISubprogram(name: "str2sig", scope: !152, file: !152, line: 304, type: !3174, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!22, !19, !24}
!3176 = !{!3177, !3178}
!3177 = !DILocalVariable(name: "signame", arg: 1, scope: !3173, file: !152, line: 304, type: !19)
!3178 = !DILocalVariable(name: "signum", arg: 2, scope: !3173, file: !152, line: 304, type: !24)
!3179 = !DILocation(line: 0, scope: !3173)
!3180 = !DILocalVariable(name: "signame", arg: 1, scope: !3181, file: !152, line: 261, type: !19)
!3181 = distinct !DISubprogram(name: "str2signum", scope: !152, file: !152, line: 261, type: !1052, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !3182)
!3182 = !{!3180, !3183, !3186, !3187, !3189, !3191, !3192, !3193, !3196}
!3183 = !DILocalVariable(name: "endp", scope: !3184, file: !152, line: 265, type: !6)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !152, line: 264, column: 5)
!3185 = distinct !DILexicalBlock(scope: !3181, file: !152, line: 263, column: 7)
!3186 = !DILocalVariable(name: "n", scope: !3184, file: !152, line: 266, type: !717)
!3187 = !DILocalVariable(name: "i", scope: !3188, file: !152, line: 272, type: !9)
!3188 = distinct !DILexicalBlock(scope: !3185, file: !152, line: 271, column: 5)
!3189 = !DILocalVariable(name: "endp", scope: !3190, file: !152, line: 278, type: !6)
!3190 = distinct !DILexicalBlock(scope: !3188, file: !152, line: 277, column: 7)
!3191 = !DILocalVariable(name: "rtmin", scope: !3190, file: !152, line: 279, type: !22)
!3192 = !DILocalVariable(name: "rtmax", scope: !3190, file: !152, line: 280, type: !22)
!3193 = !DILocalVariable(name: "n", scope: !3194, file: !152, line: 284, type: !717)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !152, line: 283, column: 11)
!3195 = distinct !DILexicalBlock(scope: !3190, file: !152, line: 282, column: 13)
!3196 = !DILocalVariable(name: "n", scope: !3197, file: !152, line: 290, type: !717)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !152, line: 289, column: 11)
!3198 = distinct !DILexicalBlock(scope: !3195, file: !152, line: 288, column: 18)
!3199 = !DILocation(line: 0, scope: !3181, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 306, column: 13, scope: !3173)
!3201 = !DILocation(line: 263, column: 7, scope: !3185, inlinedAt: !3200)
!3202 = !DILocation(line: 263, column: 7, scope: !3181, inlinedAt: !3200)
!3203 = !DILocation(line: 265, column: 7, scope: !3184, inlinedAt: !3200)
!3204 = !DILocation(line: 0, scope: !3184, inlinedAt: !3200)
!3205 = !DILocation(line: 266, column: 20, scope: !3184, inlinedAt: !3200)
!3206 = !DILocation(line: 267, column: 14, scope: !3207, inlinedAt: !3200)
!3207 = distinct !DILexicalBlock(scope: !3184, file: !152, line: 267, column: 11)
!3208 = !DILocation(line: 267, column: 13, scope: !3207, inlinedAt: !3200)
!3209 = !DILocation(line: 267, column: 19, scope: !3207, inlinedAt: !3200)
!3210 = !DILocation(line: 269, column: 5, scope: !3185, inlinedAt: !3200)
!3211 = !DILocation(line: 273, column: 41, scope: !3212, inlinedAt: !3200)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !152, line: 273, column: 7)
!3213 = distinct !DILexicalBlock(scope: !3188, file: !152, line: 273, column: 7)
!3214 = !DILocation(line: 0, scope: !3188, inlinedAt: !3200)
!3215 = !DILocation(line: 273, column: 21, scope: !3212, inlinedAt: !3200)
!3216 = !DILocation(line: 273, column: 7, scope: !3213, inlinedAt: !3200)
!3217 = distinct !{!3217, !3216, !3218, !664}
!3218 = !DILocation(line: 275, column: 35, scope: !3213, inlinedAt: !3200)
!3219 = !DILocation(line: 274, column: 21, scope: !3220, inlinedAt: !3200)
!3220 = distinct !DILexicalBlock(scope: !3212, file: !152, line: 274, column: 13)
!3221 = !DILocation(line: 274, column: 13, scope: !3220, inlinedAt: !3200)
!3222 = !DILocation(line: 274, column: 53, scope: !3220, inlinedAt: !3200)
!3223 = !DILocation(line: 274, column: 13, scope: !3212, inlinedAt: !3200)
!3224 = !DILocation(line: 273, column: 19, scope: !3212, inlinedAt: !3200)
!3225 = !DILocation(line: 275, column: 35, scope: !3220, inlinedAt: !3200)
!3226 = !{!3227, !780, i64 0}
!3227 = !{!"numname", !780, i64 0, !616, i64 4}
!3228 = !DILocation(line: 278, column: 9, scope: !3190, inlinedAt: !3200)
!3229 = !DILocation(line: 279, column: 21, scope: !3190, inlinedAt: !3200)
!3230 = !DILocation(line: 0, scope: !3190, inlinedAt: !3200)
!3231 = !DILocation(line: 280, column: 21, scope: !3190, inlinedAt: !3200)
!3232 = !DILocation(line: 282, column: 15, scope: !3195, inlinedAt: !3200)
!3233 = !DILocation(line: 282, column: 23, scope: !3195, inlinedAt: !3200)
!3234 = !DILocation(line: 282, column: 26, scope: !3195, inlinedAt: !3200)
!3235 = !DILocation(line: 282, column: 56, scope: !3195, inlinedAt: !3200)
!3236 = !DILocation(line: 282, column: 13, scope: !3190, inlinedAt: !3200)
!3237 = !DILocation(line: 284, column: 42, scope: !3194, inlinedAt: !3200)
!3238 = !DILocation(line: 284, column: 26, scope: !3194, inlinedAt: !3200)
!3239 = !DILocation(line: 0, scope: !3194, inlinedAt: !3200)
!3240 = !DILocation(line: 285, column: 20, scope: !3241, inlinedAt: !3200)
!3241 = distinct !DILexicalBlock(scope: !3194, file: !152, line: 285, column: 17)
!3242 = !DILocation(line: 285, column: 19, scope: !3241, inlinedAt: !3200)
!3243 = !DILocation(line: 285, column: 25, scope: !3241, inlinedAt: !3200)
!3244 = !DILocation(line: 285, column: 49, scope: !3241, inlinedAt: !3200)
!3245 = !DILocation(line: 285, column: 43, scope: !3241, inlinedAt: !3200)
!3246 = !DILocation(line: 285, column: 40, scope: !3241, inlinedAt: !3200)
!3247 = !DILocation(line: 285, column: 17, scope: !3194, inlinedAt: !3200)
!3248 = !DILocation(line: 288, column: 20, scope: !3198, inlinedAt: !3200)
!3249 = !DILocation(line: 288, column: 28, scope: !3198, inlinedAt: !3200)
!3250 = !DILocation(line: 288, column: 31, scope: !3198, inlinedAt: !3200)
!3251 = !DILocation(line: 288, column: 61, scope: !3198, inlinedAt: !3200)
!3252 = !DILocation(line: 288, column: 18, scope: !3195, inlinedAt: !3200)
!3253 = !DILocation(line: 290, column: 42, scope: !3197, inlinedAt: !3200)
!3254 = !DILocation(line: 290, column: 26, scope: !3197, inlinedAt: !3200)
!3255 = !DILocation(line: 0, scope: !3197, inlinedAt: !3200)
!3256 = !DILocation(line: 291, column: 20, scope: !3257, inlinedAt: !3200)
!3257 = distinct !DILexicalBlock(scope: !3197, file: !152, line: 291, column: 17)
!3258 = !DILocation(line: 291, column: 19, scope: !3257, inlinedAt: !3200)
!3259 = !DILocation(line: 291, column: 25, scope: !3257, inlinedAt: !3200)
!3260 = !DILocation(line: 291, column: 34, scope: !3257, inlinedAt: !3200)
!3261 = !DILocation(line: 291, column: 28, scope: !3257, inlinedAt: !3200)
!3262 = !DILocation(line: 291, column: 42, scope: !3257, inlinedAt: !3200)
!3263 = !DILocation(line: 291, column: 47, scope: !3257, inlinedAt: !3200)
!3264 = !DILocation(line: 294, column: 7, scope: !3188, inlinedAt: !3200)
!3265 = !DILocation(line: 0, scope: !3195, inlinedAt: !3200)
!3266 = !DILocation(line: 297, column: 3, scope: !3181, inlinedAt: !3200)
!3267 = !DILocation(line: 306, column: 11, scope: !3173)
!3268 = !DILocation(line: 307, column: 10, scope: !3173)
!3269 = !DILocation(line: 307, column: 3, scope: !3173)
!3270 = distinct !DISubprogram(name: "sig2str", scope: !152, file: !152, line: 315, type: !3271, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !3273)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!22, !22, !6}
!3273 = !{!3274, !3275, !3276, !3277, !3279, !3280, !3281}
!3274 = !DILocalVariable(name: "signum", arg: 1, scope: !3270, file: !152, line: 315, type: !22)
!3275 = !DILocalVariable(name: "signame", arg: 2, scope: !3270, file: !152, line: 315, type: !6)
!3276 = !DILocalVariable(name: "i", scope: !3270, file: !152, line: 317, type: !9)
!3277 = !DILocalVariable(name: "rtmin", scope: !3278, file: !152, line: 326, type: !22)
!3278 = distinct !DILexicalBlock(scope: !3270, file: !152, line: 325, column: 3)
!3279 = !DILocalVariable(name: "rtmax", scope: !3278, file: !152, line: 327, type: !22)
!3280 = !DILocalVariable(name: "base", scope: !3278, file: !152, line: 328, type: !22)
!3281 = !DILocalVariable(name: "delta", scope: !3278, file: !152, line: 328, type: !22)
!3282 = !DILocation(line: 0, scope: !3270)
!3283 = !DILocation(line: 318, column: 3, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3270, file: !152, line: 318, column: 3)
!3285 = !DILocation(line: 318, column: 37, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3284, file: !152, line: 318, column: 3)
!3287 = !DILocation(line: 319, column: 26, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3286, file: !152, line: 319, column: 9)
!3289 = !DILocation(line: 319, column: 30, scope: !3288)
!3290 = !DILocation(line: 319, column: 9, scope: !3286)
!3291 = !DILocation(line: 318, column: 15, scope: !3286)
!3292 = !DILocation(line: 321, column: 26, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3288, file: !152, line: 320, column: 7)
!3294 = !DILocalVariable(name: "__dest", arg: 1, scope: !3295, file: !1650, line: 77, type: !3298)
!3295 = distinct !DISubprogram(name: "strcpy", scope: !1650, file: !1650, line: 77, type: !3296, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !151, retainedNodes: !3300)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!6, !3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!3299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!3300 = !{!3294, !3301}
!3301 = !DILocalVariable(name: "__src", arg: 2, scope: !3295, file: !1650, line: 77, type: !3299)
!3302 = !DILocation(line: 0, scope: !3295, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 321, column: 9, scope: !3293)
!3304 = !DILocation(line: 79, column: 10, scope: !3295, inlinedAt: !3303)
!3305 = !DILocation(line: 322, column: 9, scope: !3293)
!3306 = !DILocation(line: 326, column: 17, scope: !3278)
!3307 = !DILocation(line: 0, scope: !3278)
!3308 = !DILocation(line: 327, column: 17, scope: !3278)
!3309 = !DILocation(line: 330, column: 18, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3278, file: !152, line: 330, column: 9)
!3311 = !DILocation(line: 330, column: 28, scope: !3310)
!3312 = !DILocation(line: 333, column: 34, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3278, file: !152, line: 333, column: 9)
!3314 = !DILocation(line: 333, column: 43, scope: !3313)
!3315 = !DILocation(line: 333, column: 25, scope: !3313)
!3316 = !DILocation(line: 333, column: 16, scope: !3313)
!3317 = !DILocation(line: 0, scope: !3295, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 340, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3313, file: !152, line: 339, column: 7)
!3320 = !DILocation(line: 0, scope: !3295, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 335, column: 9, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3313, file: !152, line: 334, column: 7)
!3323 = !DILocation(line: 333, column: 9, scope: !3278)
!3324 = !DILocation(line: 79, column: 10, scope: !3295, inlinedAt: !3321)
!3325 = !DILocation(line: 337, column: 7, scope: !3322)
!3326 = !DILocation(line: 79, column: 10, scope: !3295, inlinedAt: !3318)
!3327 = !DILocation(line: 0, scope: !3313)
!3328 = !DILocation(line: 344, column: 20, scope: !3278)
!3329 = !DILocation(line: 345, column: 15, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3278, file: !152, line: 345, column: 9)
!3331 = !DILocation(line: 345, column: 9, scope: !3278)
!3332 = !DILocation(line: 346, column: 7, scope: !3330)
!3333 = !DILocation(line: 349, column: 1, scope: !3270)
!3334 = !DILocation(line: 318, column: 17, scope: !3286)
!3335 = distinct !{!3335, !3283, !3336, !664}
!3336 = !DILocation(line: 323, column: 7, scope: !3284)
!3337 = distinct !DISubprogram(name: "close_stream", scope: !197, file: !197, line: 56, type: !3338, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !3374)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!22, !3340}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2717, line: 7, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !694, line: 49, size: 1728, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3342, file: !694, line: 51, baseType: !22, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3342, file: !694, line: 54, baseType: !6, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3342, file: !694, line: 55, baseType: !6, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3342, file: !694, line: 56, baseType: !6, size: 64, offset: 192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3342, file: !694, line: 57, baseType: !6, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3342, file: !694, line: 58, baseType: !6, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3342, file: !694, line: 59, baseType: !6, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3342, file: !694, line: 60, baseType: !6, size: 64, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3342, file: !694, line: 61, baseType: !6, size: 64, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3342, file: !694, line: 64, baseType: !6, size: 64, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3342, file: !694, line: 65, baseType: !6, size: 64, offset: 640)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3342, file: !694, line: 66, baseType: !6, size: 64, offset: 704)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3342, file: !694, line: 68, baseType: !709, size: 64, offset: 768)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3342, file: !694, line: 70, baseType: !3358, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3342, file: !694, line: 72, baseType: !22, size: 32, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3342, file: !694, line: 73, baseType: !22, size: 32, offset: 928)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3342, file: !694, line: 74, baseType: !715, size: 64, offset: 960)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3342, file: !694, line: 77, baseType: !96, size: 16, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3342, file: !694, line: 78, baseType: !720, size: 8, offset: 1040)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3342, file: !694, line: 79, baseType: !722, size: 8, offset: 1048)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3342, file: !694, line: 81, baseType: !726, size: 64, offset: 1088)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3342, file: !694, line: 89, baseType: !729, size: 64, offset: 1152)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3342, file: !694, line: 91, baseType: !731, size: 64, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3342, file: !694, line: 92, baseType: !734, size: 64, offset: 1280)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3342, file: !694, line: 93, baseType: !3358, size: 64, offset: 1344)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3342, file: !694, line: 94, baseType: !8, size: 64, offset: 1408)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3342, file: !694, line: 95, baseType: !97, size: 64, offset: 1472)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3342, file: !694, line: 96, baseType: !22, size: 32, offset: 1536)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3342, file: !694, line: 98, baseType: !741, size: 160, offset: 1568)
!3374 = !{!3375, !3376, !3378, !3379}
!3375 = !DILocalVariable(name: "stream", arg: 1, scope: !3337, file: !197, line: 56, type: !3340)
!3376 = !DILocalVariable(name: "some_pending", scope: !3337, file: !197, line: 58, type: !3377)
!3377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3378 = !DILocalVariable(name: "prev_fail", scope: !3337, file: !197, line: 59, type: !3377)
!3379 = !DILocalVariable(name: "fclose_fail", scope: !3337, file: !197, line: 60, type: !3377)
!3380 = !DILocation(line: 0, scope: !3337)
!3381 = !DILocation(line: 58, column: 30, scope: !3337)
!3382 = !DILocalVariable(name: "__stream", arg: 1, scope: !3383, file: !3384, line: 135, type: !3340)
!3383 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3384, file: !3384, line: 135, type: !3338, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !3385)
!3384 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3385 = !{!3382}
!3386 = !DILocation(line: 0, scope: !3383, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 59, column: 27, scope: !3337)
!3388 = !DILocation(line: 137, column: 10, scope: !3383, inlinedAt: !3387)
!3389 = !{!3390, !780, i64 0}
!3390 = !{!"_IO_FILE", !780, i64 0, !615, i64 8, !615, i64 16, !615, i64 24, !615, i64 32, !615, i64 40, !615, i64 48, !615, i64 56, !615, i64 64, !615, i64 72, !615, i64 80, !615, i64 88, !615, i64 96, !615, i64 104, !780, i64 112, !780, i64 116, !2159, i64 120, !1642, i64 128, !616, i64 130, !616, i64 131, !615, i64 136, !2159, i64 144, !615, i64 152, !615, i64 160, !615, i64 168, !615, i64 176, !2159, i64 184, !780, i64 192, !616, i64 196}
!3391 = !DILocation(line: 59, column: 43, scope: !3337)
!3392 = !DILocation(line: 60, column: 29, scope: !3337)
!3393 = !DILocation(line: 60, column: 45, scope: !3337)
!3394 = !DILocation(line: 70, column: 17, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3337, file: !197, line: 70, column: 7)
!3396 = !DILocation(line: 58, column: 50, scope: !3337)
!3397 = !DILocation(line: 70, column: 33, scope: !3395)
!3398 = !DILocation(line: 70, column: 53, scope: !3395)
!3399 = !DILocation(line: 70, column: 59, scope: !3395)
!3400 = !DILocation(line: 70, column: 7, scope: !3337)
!3401 = !DILocation(line: 72, column: 11, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !197, line: 71, column: 5)
!3403 = !DILocation(line: 73, column: 9, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3402, file: !197, line: 72, column: 11)
!3405 = !DILocation(line: 73, column: 15, scope: !3404)
!3406 = !DILocation(line: 78, column: 1, scope: !3337)
!3407 = distinct !DISubprogram(name: "hard_locale", scope: !199, file: !199, line: 27, type: !3408, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !198, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!43, !22}
!3410 = !{!3411, !3412}
!3411 = !DILocalVariable(name: "category", arg: 1, scope: !3407, file: !199, line: 27, type: !22)
!3412 = !DILocalVariable(name: "locale", scope: !3407, file: !199, line: 29, type: !3413)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2056, elements: !3414)
!3414 = !{!3415}
!3415 = !DISubrange(count: 257)
!3416 = !DILocation(line: 0, scope: !3407)
!3417 = !DILocation(line: 29, column: 3, scope: !3407)
!3418 = !DILocation(line: 29, column: 8, scope: !3407)
!3419 = !DILocation(line: 31, column: 7, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3407, file: !199, line: 31, column: 7)
!3421 = !DILocation(line: 31, column: 7, scope: !3407)
!3422 = !DILocation(line: 34, column: 12, scope: !3407)
!3423 = !DILocation(line: 34, column: 38, scope: !3407)
!3424 = !DILocation(line: 34, column: 41, scope: !3407)
!3425 = !DILocation(line: 34, column: 66, scope: !3407)
!3426 = !DILocation(line: 35, column: 1, scope: !3407)
!3427 = distinct !DISubprogram(name: "locale_charset", scope: !201, file: !201, line: 831, type: !3428, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !200, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!19}
!3430 = !{!3431}
!3431 = !DILocalVariable(name: "codeset", scope: !3427, file: !201, line: 833, type: !19)
!3432 = !DILocation(line: 847, column: 13, scope: !3427)
!3433 = !DILocation(line: 0, scope: !3427)
!3434 = !DILocation(line: 911, column: 15, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3427, file: !201, line: 911, column: 7)
!3436 = !DILocation(line: 911, column: 7, scope: !3427)
!3437 = !DILocation(line: 1070, column: 13, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !201, line: 1070, column: 13)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !201, line: 1060, column: 7)
!3440 = distinct !DILexicalBlock(scope: !3427, file: !201, line: 1019, column: 3)
!3441 = !DILocation(line: 1070, column: 24, scope: !3438)
!3442 = !DILocation(line: 1070, column: 13, scope: !3439)
!3443 = !DILocation(line: 1158, column: 3, scope: !3427)
!3444 = !DISubprogram(name: "nl_langinfo", scope: !204, file: !204, line: 661, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3445 = distinct !DISubprogram(name: "setlocale_null_r", scope: !590, file: !590, line: 269, type: !3446, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!22, !22, !6, !97}
!3448 = !{!3449, !3450, !3451}
!3449 = !DILocalVariable(name: "category", arg: 1, scope: !3445, file: !590, line: 269, type: !22)
!3450 = !DILocalVariable(name: "buf", arg: 2, scope: !3445, file: !590, line: 269, type: !6)
!3451 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3445, file: !590, line: 269, type: !97)
!3452 = !DILocation(line: 0, scope: !3445)
!3453 = !DILocalVariable(name: "category", arg: 1, scope: !3454, file: !590, line: 91, type: !22)
!3454 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !590, file: !590, line: 91, type: !3446, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3455)
!3455 = !{!3453, !3456, !3457, !3458, !3459}
!3456 = !DILocalVariable(name: "buf", arg: 2, scope: !3454, file: !590, line: 91, type: !6)
!3457 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3454, file: !590, line: 91, type: !97)
!3458 = !DILocalVariable(name: "result", scope: !3454, file: !590, line: 140, type: !19)
!3459 = !DILocalVariable(name: "length", scope: !3460, file: !590, line: 154, type: !97)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !590, line: 153, column: 5)
!3461 = distinct !DILexicalBlock(scope: !3454, file: !590, line: 142, column: 7)
!3462 = !DILocation(line: 0, scope: !3454, inlinedAt: !3463)
!3463 = distinct !DILocation(line: 274, column: 10, scope: !3445)
!3464 = !DILocalVariable(name: "category", arg: 1, scope: !3465, file: !590, line: 60, type: !22)
!3465 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !590, file: !590, line: 60, type: !3466, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!19, !22}
!3468 = !{!3464, !3469}
!3469 = !DILocalVariable(name: "result", scope: !3465, file: !590, line: 62, type: !19)
!3470 = !DILocation(line: 0, scope: !3465, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 140, column: 24, scope: !3454, inlinedAt: !3463)
!3472 = !DILocation(line: 62, column: 24, scope: !3465, inlinedAt: !3471)
!3473 = !DILocation(line: 142, column: 14, scope: !3461, inlinedAt: !3463)
!3474 = !DILocation(line: 142, column: 7, scope: !3454, inlinedAt: !3463)
!3475 = !DILocation(line: 145, column: 19, scope: !3476, inlinedAt: !3463)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !590, line: 145, column: 11)
!3477 = distinct !DILexicalBlock(scope: !3461, file: !590, line: 143, column: 5)
!3478 = !DILocation(line: 145, column: 11, scope: !3477, inlinedAt: !3463)
!3479 = !DILocation(line: 149, column: 16, scope: !3476, inlinedAt: !3463)
!3480 = !DILocation(line: 149, column: 9, scope: !3476, inlinedAt: !3463)
!3481 = !DILocation(line: 154, column: 23, scope: !3460, inlinedAt: !3463)
!3482 = !DILocation(line: 0, scope: !3460, inlinedAt: !3463)
!3483 = !DILocation(line: 155, column: 18, scope: !3484, inlinedAt: !3463)
!3484 = distinct !DILexicalBlock(scope: !3460, file: !590, line: 155, column: 11)
!3485 = !DILocation(line: 155, column: 11, scope: !3460, inlinedAt: !3463)
!3486 = !DILocation(line: 157, column: 39, scope: !3487, inlinedAt: !3463)
!3487 = distinct !DILexicalBlock(scope: !3484, file: !590, line: 156, column: 9)
!3488 = !DILocalVariable(name: "__dest", arg: 1, scope: !3489, file: !1650, line: 26, type: !3076)
!3489 = distinct !DISubprogram(name: "memcpy", scope: !1650, file: !1650, line: 26, type: !3074, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3490)
!3490 = !{!3488, !3491, !3492}
!3491 = !DILocalVariable(name: "__src", arg: 2, scope: !3489, file: !1650, line: 26, type: !3077)
!3492 = !DILocalVariable(name: "__len", arg: 3, scope: !3489, file: !1650, line: 26, type: !97)
!3493 = !DILocation(line: 0, scope: !3489, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 157, column: 11, scope: !3487, inlinedAt: !3463)
!3495 = !DILocation(line: 29, column: 10, scope: !3489, inlinedAt: !3494)
!3496 = !DILocation(line: 158, column: 11, scope: !3487, inlinedAt: !3463)
!3497 = !DILocation(line: 162, column: 23, scope: !3498, inlinedAt: !3463)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !590, line: 162, column: 15)
!3499 = distinct !DILexicalBlock(scope: !3484, file: !590, line: 161, column: 9)
!3500 = !DILocation(line: 162, column: 15, scope: !3499, inlinedAt: !3463)
!3501 = !DILocation(line: 167, column: 44, scope: !3502, inlinedAt: !3463)
!3502 = distinct !DILexicalBlock(scope: !3498, file: !590, line: 163, column: 13)
!3503 = !DILocation(line: 0, scope: !3489, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 167, column: 15, scope: !3502, inlinedAt: !3463)
!3505 = !DILocation(line: 29, column: 10, scope: !3489, inlinedAt: !3504)
!3506 = !DILocation(line: 168, column: 15, scope: !3502, inlinedAt: !3463)
!3507 = !DILocation(line: 168, column: 32, scope: !3502, inlinedAt: !3463)
!3508 = !DILocation(line: 169, column: 13, scope: !3502, inlinedAt: !3463)
!3509 = !DILocation(line: 0, scope: !3461, inlinedAt: !3463)
!3510 = !DILocation(line: 274, column: 3, scope: !3445)
!3511 = distinct !DISubprogram(name: "setlocale_null", scope: !590, file: !590, line: 301, type: !3466, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !589, retainedNodes: !3512)
!3512 = !{!3513}
!3513 = !DILocalVariable(name: "category", arg: 1, scope: !3511, file: !590, line: 301, type: !22)
!3514 = !DILocation(line: 0, scope: !3511)
!3515 = !DILocation(line: 0, scope: !3465, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 304, column: 10, scope: !3511)
!3517 = !DILocation(line: 62, column: 24, scope: !3465, inlinedAt: !3516)
!3518 = !DILocation(line: 304, column: 3, scope: !3511)
!3519 = distinct !DISubprogram(name: "rpl_fclose", scope: !592, file: !592, line: 58, type: !3520, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !591, retainedNodes: !3556)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!22, !3522}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2717, line: 7, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !694, line: 49, size: 1728, elements: !3525)
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3524, file: !694, line: 51, baseType: !22, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3524, file: !694, line: 54, baseType: !6, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3524, file: !694, line: 55, baseType: !6, size: 64, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3524, file: !694, line: 56, baseType: !6, size: 64, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3524, file: !694, line: 57, baseType: !6, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3524, file: !694, line: 58, baseType: !6, size: 64, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3524, file: !694, line: 59, baseType: !6, size: 64, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3524, file: !694, line: 60, baseType: !6, size: 64, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3524, file: !694, line: 61, baseType: !6, size: 64, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3524, file: !694, line: 64, baseType: !6, size: 64, offset: 576)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3524, file: !694, line: 65, baseType: !6, size: 64, offset: 640)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3524, file: !694, line: 66, baseType: !6, size: 64, offset: 704)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3524, file: !694, line: 68, baseType: !709, size: 64, offset: 768)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3524, file: !694, line: 70, baseType: !3540, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3524, file: !694, line: 72, baseType: !22, size: 32, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3524, file: !694, line: 73, baseType: !22, size: 32, offset: 928)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3524, file: !694, line: 74, baseType: !715, size: 64, offset: 960)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3524, file: !694, line: 77, baseType: !96, size: 16, offset: 1024)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3524, file: !694, line: 78, baseType: !720, size: 8, offset: 1040)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3524, file: !694, line: 79, baseType: !722, size: 8, offset: 1048)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3524, file: !694, line: 81, baseType: !726, size: 64, offset: 1088)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3524, file: !694, line: 89, baseType: !729, size: 64, offset: 1152)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3524, file: !694, line: 91, baseType: !731, size: 64, offset: 1216)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3524, file: !694, line: 92, baseType: !734, size: 64, offset: 1280)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3524, file: !694, line: 93, baseType: !3540, size: 64, offset: 1344)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3524, file: !694, line: 94, baseType: !8, size: 64, offset: 1408)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3524, file: !694, line: 95, baseType: !97, size: 64, offset: 1472)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3524, file: !694, line: 96, baseType: !22, size: 32, offset: 1536)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3524, file: !694, line: 98, baseType: !741, size: 160, offset: 1568)
!3556 = !{!3557, !3558, !3559, !3560}
!3557 = !DILocalVariable(name: "fp", arg: 1, scope: !3519, file: !592, line: 58, type: !3522)
!3558 = !DILocalVariable(name: "saved_errno", scope: !3519, file: !592, line: 60, type: !22)
!3559 = !DILocalVariable(name: "fd", scope: !3519, file: !592, line: 61, type: !22)
!3560 = !DILocalVariable(name: "result", scope: !3519, file: !592, line: 62, type: !22)
!3561 = !DILocation(line: 0, scope: !3519)
!3562 = !DILocation(line: 65, column: 8, scope: !3519)
!3563 = !DILocation(line: 66, column: 10, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3519, file: !592, line: 66, column: 7)
!3565 = !DILocation(line: 66, column: 7, scope: !3519)
!3566 = !DILocation(line: 67, column: 12, scope: !3564)
!3567 = !DILocation(line: 67, column: 5, scope: !3564)
!3568 = !DILocation(line: 72, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3519, file: !592, line: 72, column: 7)
!3570 = !DILocation(line: 72, column: 23, scope: !3569)
!3571 = !DILocation(line: 72, column: 33, scope: !3569)
!3572 = !DILocation(line: 72, column: 26, scope: !3569)
!3573 = !DILocation(line: 72, column: 59, scope: !3569)
!3574 = !DILocation(line: 73, column: 7, scope: !3569)
!3575 = !DILocation(line: 73, column: 10, scope: !3569)
!3576 = !DILocation(line: 72, column: 7, scope: !3519)
!3577 = !DILocation(line: 100, column: 12, scope: !3519)
!3578 = !DILocation(line: 105, column: 7, scope: !3519)
!3579 = !DILocation(line: 74, column: 19, scope: !3569)
!3580 = !DILocation(line: 105, column: 19, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3519, file: !592, line: 105, column: 7)
!3582 = !DILocation(line: 107, column: 13, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3581, file: !592, line: 106, column: 5)
!3584 = !DILocation(line: 109, column: 5, scope: !3583)
!3585 = !DILocation(line: 112, column: 1, scope: !3519)
!3586 = !DISubprogram(name: "fileno", scope: !689, file: !689, line: 785, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!22, !3540}
!3589 = !DISubprogram(name: "fclose", scope: !689, file: !689, line: 213, type: !3587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3590 = !DISubprogram(name: "lseek", scope: !3591, file: !3591, line: 334, type: !3592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3591 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!717, !22, !717, !22}
!3594 = distinct !DISubprogram(name: "rpl_fflush", scope: !594, file: !594, line: 129, type: !3595, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3631)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!22, !3597}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2717, line: 7, baseType: !3599)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !694, line: 49, size: 1728, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3599, file: !694, line: 51, baseType: !22, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3599, file: !694, line: 54, baseType: !6, size: 64, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3599, file: !694, line: 55, baseType: !6, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3599, file: !694, line: 56, baseType: !6, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3599, file: !694, line: 57, baseType: !6, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3599, file: !694, line: 58, baseType: !6, size: 64, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3599, file: !694, line: 59, baseType: !6, size: 64, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3599, file: !694, line: 60, baseType: !6, size: 64, offset: 448)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3599, file: !694, line: 61, baseType: !6, size: 64, offset: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3599, file: !694, line: 64, baseType: !6, size: 64, offset: 576)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3599, file: !694, line: 65, baseType: !6, size: 64, offset: 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3599, file: !694, line: 66, baseType: !6, size: 64, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3599, file: !694, line: 68, baseType: !709, size: 64, offset: 768)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3599, file: !694, line: 70, baseType: !3615, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3599, file: !694, line: 72, baseType: !22, size: 32, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3599, file: !694, line: 73, baseType: !22, size: 32, offset: 928)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3599, file: !694, line: 74, baseType: !715, size: 64, offset: 960)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3599, file: !694, line: 77, baseType: !96, size: 16, offset: 1024)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3599, file: !694, line: 78, baseType: !720, size: 8, offset: 1040)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3599, file: !694, line: 79, baseType: !722, size: 8, offset: 1048)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3599, file: !694, line: 81, baseType: !726, size: 64, offset: 1088)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3599, file: !694, line: 89, baseType: !729, size: 64, offset: 1152)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3599, file: !694, line: 91, baseType: !731, size: 64, offset: 1216)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3599, file: !694, line: 92, baseType: !734, size: 64, offset: 1280)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3599, file: !694, line: 93, baseType: !3615, size: 64, offset: 1344)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3599, file: !694, line: 94, baseType: !8, size: 64, offset: 1408)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3599, file: !694, line: 95, baseType: !97, size: 64, offset: 1472)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3599, file: !694, line: 96, baseType: !22, size: 32, offset: 1536)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3599, file: !694, line: 98, baseType: !741, size: 160, offset: 1568)
!3631 = !{!3632}
!3632 = !DILocalVariable(name: "stream", arg: 1, scope: !3594, file: !594, line: 129, type: !3597)
!3633 = !DILocation(line: 0, scope: !3594)
!3634 = !DILocation(line: 150, column: 14, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3594, file: !594, line: 150, column: 7)
!3636 = !DILocation(line: 150, column: 22, scope: !3635)
!3637 = !DILocation(line: 150, column: 27, scope: !3635)
!3638 = !DILocation(line: 150, column: 7, scope: !3594)
!3639 = !DILocation(line: 151, column: 12, scope: !3635)
!3640 = !DILocation(line: 151, column: 5, scope: !3635)
!3641 = !DILocalVariable(name: "fp", arg: 1, scope: !3642, file: !594, line: 41, type: !3597)
!3642 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !594, file: !594, line: 41, type: !3643, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !593, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{null, !3597}
!3645 = !{!3641}
!3646 = !DILocation(line: 0, scope: !3642, inlinedAt: !3647)
!3647 = distinct !DILocation(line: 156, column: 3, scope: !3594)
!3648 = !DILocation(line: 43, column: 11, scope: !3649, inlinedAt: !3647)
!3649 = distinct !DILexicalBlock(scope: !3642, file: !594, line: 43, column: 7)
!3650 = !DILocation(line: 43, column: 18, scope: !3649, inlinedAt: !3647)
!3651 = !DILocation(line: 43, column: 7, scope: !3642, inlinedAt: !3647)
!3652 = !DILocation(line: 45, column: 5, scope: !3649, inlinedAt: !3647)
!3653 = !DILocation(line: 158, column: 10, scope: !3594)
!3654 = !DILocation(line: 158, column: 3, scope: !3594)
!3655 = !DILocation(line: 235, column: 1, scope: !3594)
!3656 = !DISubprogram(name: "fflush", scope: !689, file: !689, line: 218, type: !3657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!22, !3615}
!3659 = distinct !DISubprogram(name: "rpl_fseeko", scope: !596, file: !596, line: 28, type: !3660, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !595, retainedNodes: !3697)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!22, !3662, !3696, !22}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2717, line: 7, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !694, line: 49, size: 1728, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3664, file: !694, line: 51, baseType: !22, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3664, file: !694, line: 54, baseType: !6, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3664, file: !694, line: 55, baseType: !6, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3664, file: !694, line: 56, baseType: !6, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3664, file: !694, line: 57, baseType: !6, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3664, file: !694, line: 58, baseType: !6, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3664, file: !694, line: 59, baseType: !6, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3664, file: !694, line: 60, baseType: !6, size: 64, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3664, file: !694, line: 61, baseType: !6, size: 64, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3664, file: !694, line: 64, baseType: !6, size: 64, offset: 576)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3664, file: !694, line: 65, baseType: !6, size: 64, offset: 640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3664, file: !694, line: 66, baseType: !6, size: 64, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3664, file: !694, line: 68, baseType: !709, size: 64, offset: 768)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3664, file: !694, line: 70, baseType: !3680, size: 64, offset: 832)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3664, file: !694, line: 72, baseType: !22, size: 32, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3664, file: !694, line: 73, baseType: !22, size: 32, offset: 928)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3664, file: !694, line: 74, baseType: !715, size: 64, offset: 960)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3664, file: !694, line: 77, baseType: !96, size: 16, offset: 1024)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3664, file: !694, line: 78, baseType: !720, size: 8, offset: 1040)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3664, file: !694, line: 79, baseType: !722, size: 8, offset: 1048)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3664, file: !694, line: 81, baseType: !726, size: 64, offset: 1088)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3664, file: !694, line: 89, baseType: !729, size: 64, offset: 1152)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3664, file: !694, line: 91, baseType: !731, size: 64, offset: 1216)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3664, file: !694, line: 92, baseType: !734, size: 64, offset: 1280)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3664, file: !694, line: 93, baseType: !3680, size: 64, offset: 1344)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3664, file: !694, line: 94, baseType: !8, size: 64, offset: 1408)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3664, file: !694, line: 95, baseType: !97, size: 64, offset: 1472)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3664, file: !694, line: 96, baseType: !22, size: 32, offset: 1536)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3664, file: !694, line: 98, baseType: !741, size: 160, offset: 1568)
!3696 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !689, line: 63, baseType: !715)
!3697 = !{!3698, !3699, !3700, !3701}
!3698 = !DILocalVariable(name: "fp", arg: 1, scope: !3659, file: !596, line: 28, type: !3662)
!3699 = !DILocalVariable(name: "offset", arg: 2, scope: !3659, file: !596, line: 28, type: !3696)
!3700 = !DILocalVariable(name: "whence", arg: 3, scope: !3659, file: !596, line: 28, type: !22)
!3701 = !DILocalVariable(name: "pos", scope: !3702, file: !596, line: 117, type: !3696)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !596, line: 113, column: 5)
!3703 = distinct !DILexicalBlock(scope: !3659, file: !596, line: 52, column: 7)
!3704 = !DILocation(line: 0, scope: !3659)
!3705 = !DILocation(line: 52, column: 11, scope: !3703)
!3706 = !{!3390, !615, i64 16}
!3707 = !DILocation(line: 52, column: 31, scope: !3703)
!3708 = !{!3390, !615, i64 8}
!3709 = !DILocation(line: 52, column: 24, scope: !3703)
!3710 = !DILocation(line: 53, column: 7, scope: !3703)
!3711 = !DILocation(line: 53, column: 14, scope: !3703)
!3712 = !{!3390, !615, i64 40}
!3713 = !DILocation(line: 53, column: 35, scope: !3703)
!3714 = !{!3390, !615, i64 32}
!3715 = !DILocation(line: 53, column: 28, scope: !3703)
!3716 = !DILocation(line: 54, column: 7, scope: !3703)
!3717 = !DILocation(line: 54, column: 14, scope: !3703)
!3718 = !{!3390, !615, i64 72}
!3719 = !DILocation(line: 54, column: 28, scope: !3703)
!3720 = !DILocation(line: 52, column: 7, scope: !3659)
!3721 = !DILocation(line: 117, column: 26, scope: !3702)
!3722 = !DILocation(line: 117, column: 19, scope: !3702)
!3723 = !DILocation(line: 0, scope: !3702)
!3724 = !DILocation(line: 118, column: 15, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3702, file: !596, line: 118, column: 11)
!3726 = !DILocation(line: 118, column: 11, scope: !3702)
!3727 = !DILocation(line: 129, column: 11, scope: !3702)
!3728 = !DILocation(line: 129, column: 18, scope: !3702)
!3729 = !DILocation(line: 130, column: 11, scope: !3702)
!3730 = !DILocation(line: 130, column: 19, scope: !3702)
!3731 = !{!3390, !2159, i64 144}
!3732 = !DILocation(line: 161, column: 7, scope: !3702)
!3733 = !DILocation(line: 163, column: 10, scope: !3659)
!3734 = !DILocation(line: 163, column: 3, scope: !3659)
!3735 = !DILocation(line: 164, column: 1, scope: !3659)
!3736 = !DISubprogram(name: "fseeko", scope: !689, file: !689, line: 712, type: !3737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!22, !3680, !717, !22}
