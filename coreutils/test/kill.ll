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
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !145
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), align 8, !dbg !153
@.str.49 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !158
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !202
@.str.52 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.53 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.54 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !205
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !211
@.str.61 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 16, !dbg !252
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !362
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !368
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !370
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.75 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.77 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.78 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.79 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.80 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !377
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !384
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !372
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !386
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !392
@.str.1.122 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@numname_table = internal global [35 x %struct.numname] [%struct.numname { i32 1, [8 x i8] c"HUP\00\00\00\00\00" }, %struct.numname { i32 2, [8 x i8] c"INT\00\00\00\00\00" }, %struct.numname { i32 3, [8 x i8] c"QUIT\00\00\00\00" }, %struct.numname { i32 4, [8 x i8] c"ILL\00\00\00\00\00" }, %struct.numname { i32 5, [8 x i8] c"TRAP\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"ABRT\00\00\00\00" }, %struct.numname { i32 8, [8 x i8] c"FPE\00\00\00\00\00" }, %struct.numname { i32 9, [8 x i8] c"KILL\00\00\00\00" }, %struct.numname { i32 11, [8 x i8] c"SEGV\00\00\00\00" }, %struct.numname { i32 7, [8 x i8] c"BUS\00\00\00\00\00" }, %struct.numname { i32 13, [8 x i8] c"PIPE\00\00\00\00" }, %struct.numname { i32 14, [8 x i8] c"ALRM\00\00\00\00" }, %struct.numname { i32 15, [8 x i8] c"TERM\00\00\00\00" }, %struct.numname { i32 10, [8 x i8] c"USR1\00\00\00\00" }, %struct.numname { i32 12, [8 x i8] c"USR2\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CHLD\00\00\00\00" }, %struct.numname { i32 23, [8 x i8] c"URG\00\00\00\00\00" }, %struct.numname { i32 19, [8 x i8] c"STOP\00\00\00\00" }, %struct.numname { i32 20, [8 x i8] c"TSTP\00\00\00\00" }, %struct.numname { i32 18, [8 x i8] c"CONT\00\00\00\00" }, %struct.numname { i32 21, [8 x i8] c"TTIN\00\00\00\00" }, %struct.numname { i32 22, [8 x i8] c"TTOU\00\00\00\00" }, %struct.numname { i32 31, [8 x i8] c"SYS\00\00\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"POLL\00\00\00\00" }, %struct.numname { i32 26, [8 x i8] c"VTALRM\00\00" }, %struct.numname { i32 27, [8 x i8] c"PROF\00\00\00\00" }, %struct.numname { i32 24, [8 x i8] c"XCPU\00\00\00\00" }, %struct.numname { i32 25, [8 x i8] c"XFSZ\00\00\00\00" }, %struct.numname { i32 6, [8 x i8] c"IOT\00\00\00\00\00" }, %struct.numname { i32 17, [8 x i8] c"CLD\00\00\00\00\00" }, %struct.numname { i32 30, [8 x i8] c"PWR\00\00\00\00\00" }, %struct.numname { i32 28, [8 x i8] c"WINCH\00\00\00" }, %struct.numname { i32 29, [8 x i8] c"IO\00\00\00\00\00\00" }, %struct.numname { i32 16, [8 x i8] c"STKFLT\00\00" }, %struct.numname { i32 0, [8 x i8] c"EXIT\00\00\00\00" }], align 16, !dbg !400
@.str.130 = private unnamed_addr constant [6 x i8] c"RTMIN\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"RTMAX\00", align 1
@.str.2.134 = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@.str.1.139 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.143 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1081 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1086, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i32 %0, metadata !1085, metadata !DIExpression()), !dbg !1107
  %3 = icmp eq i32 %0, 0, !dbg !1108
  br i1 %3, label %9, label %4, !dbg !1109

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1110, !tbaa !1112
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #18, !dbg !1110
  %7 = load i8*, i8** @program_name, align 8, !dbg !1110, !tbaa !1112
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #18, !dbg !1110
  br label %69, !dbg !1110

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 5) #18, !dbg !1116
  %11 = load i8*, i8** @program_name, align 8, !dbg !1116, !tbaa !1112
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11, i8* %11) #18, !dbg !1116
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #18, !dbg !1117
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1117, !tbaa !1112
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1117
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0), i32 5) #18, !dbg !1118
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1118, !tbaa !1112
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #18, !dbg !1118
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.3, i64 0, i64 0), i32 5) #18, !dbg !1121
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1121, !tbaa !1112
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1121
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #18, !dbg !1122
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1122, !tbaa !1112
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1122
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #18, !dbg !1123
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1123, !tbaa !1112
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !1123
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.6, i64 0, i64 0), i32 5) #18, !dbg !1124
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1124, !tbaa !1112
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !1124
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #18, !dbg !1125
  %32 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1125
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), metadata !1090, metadata !DIExpression()) #18, !dbg !1126
  %33 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %33) #18, !dbg !1127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %33, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #18, !dbg !1103
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), metadata !1091, metadata !DIExpression()) #18, !dbg !1126
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1092, metadata !DIExpression()) #18, !dbg !1126
  %34 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1128
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !1092, metadata !DIExpression()) #18, !dbg !1126
  br label %35, !dbg !1129

35:                                               ; preds = %40, %9
  %36 = phi i8* [ %43, %40 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %9 ]
  %37 = phi %struct.infomap* [ %41, %40 ], [ %34, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !1092, metadata !DIExpression()) #18, !dbg !1126
  %38 = tail call i32 @strcmp(i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %36) #22, !dbg !1130
  %39 = icmp eq i32 %38, 0, !dbg !1130
  br i1 %39, label %45, label %40, !dbg !1129

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 1, !dbg !1131
  call void @llvm.dbg.value(metadata %struct.infomap* %41, metadata !1092, metadata !DIExpression()) #18, !dbg !1126
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 0, !dbg !1132
  %43 = load i8*, i8** %42, align 8, !dbg !1132, !tbaa !1133
  %44 = icmp eq i8* %43, null, !dbg !1135
  br i1 %44, label %45, label %35, !dbg !1136, !llvm.loop !1137

45:                                               ; preds = %40, %35
  %46 = phi %struct.infomap* [ %41, %40 ], [ %37, %35 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !1092, metadata !DIExpression()) #18, !dbg !1126
  call void @llvm.dbg.value(metadata %struct.infomap* %46, metadata !1092, metadata !DIExpression()) #18, !dbg !1126
  %47 = getelementptr inbounds %struct.infomap, %struct.infomap* %46, i64 0, i32 1, !dbg !1138
  %48 = load i8*, i8** %47, align 8, !dbg !1138, !tbaa !1140
  %49 = icmp eq i8* %48, null, !dbg !1141
  %50 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %48, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %50, metadata !1091, metadata !DIExpression()) #18, !dbg !1126
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i32 5) #18, !dbg !1143
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0)) #18, !dbg !1143
  %53 = tail call i8* @setlocale(i32 5, i8* null) #18, !dbg !1144
  call void @llvm.dbg.value(metadata i8* %53, metadata !1099, metadata !DIExpression()) #18, !dbg !1126
  %54 = icmp eq i8* %53, null, !dbg !1145
  br i1 %54, label %62, label %55, !dbg !1147

55:                                               ; preds = %45
  %56 = tail call i32 @strncmp(i8* nonnull %53, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0), i64 3) #22, !dbg !1148
  %57 = icmp eq i32 %56, 0, !dbg !1148
  br i1 %57, label %62, label %58, !dbg !1149

58:                                               ; preds = %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i64 0, i64 0), i32 5) #18, !dbg !1150
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1150, !tbaa !1112
  %61 = tail call i32 @fputs_unlocked(i8* %59, %struct._IO_FILE* %60) #18, !dbg !1150
  br label %62, !dbg !1152

62:                                               ; preds = %45, %55, %58
  %63 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), i32 5) #18, !dbg !1153
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)) #18, !dbg !1153
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.33, i64 0, i64 0), i32 5) #18, !dbg !1154
  %66 = icmp eq i8* %50, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), !dbg !1154
  %67 = select i1 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !1154
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* %50, i8* %67) #18, !dbg !1154
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %33) #18, !dbg !1155
  br label %69

69:                                               ; preds = %62, %4
  tail call void @exit(i32 %0) #23, !dbg !1156
  unreachable, !dbg !1156
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
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1157 {
  %3 = alloca i8*, align 8
  %4 = alloca [19 x i8], align 16
  call void @llvm.dbg.declare(metadata [19 x i8]* %4, metadata !1173, metadata !DIExpression()), !dbg !1191
  %5 = alloca [19 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1162, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8** %1, metadata !1163, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 0, metadata !1165, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 0, metadata !1166, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 -1, metadata !1167, metadata !DIExpression()), !dbg !1193
  %6 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0, !dbg !1194
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %6) #18, !dbg !1194
  call void @llvm.dbg.declare(metadata [19 x i8]* %5, metadata !1168, metadata !DIExpression()), !dbg !1195
  %7 = load i8*, i8** %1, align 8, !dbg !1196, !tbaa !1112
  tail call void @set_program_name(i8* %7) #18, !dbg !1197
  %8 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #18, !dbg !1198
  %9 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #18, !dbg !1199
  %10 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #18, !dbg !1200
  %11 = tail call i32 @atexit(void ()* nonnull @close_stdout) #18, !dbg !1201
  br label %12, !dbg !1202

12:                                               ; preds = %2, %52
  %13 = phi i32 [ %54, %52 ], [ -1, %2 ], !dbg !1203
  call void @llvm.dbg.value(metadata i32 %13, metadata !1167, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 0, metadata !1166, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 0, metadata !1165, metadata !DIExpression()), !dbg !1193
  %14 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #18, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %14, metadata !1164, metadata !DIExpression()), !dbg !1193
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
  ], !dbg !1202

15:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %16 = load i32, i32* @optind, align 4, !dbg !1205, !tbaa !1208
  %17 = icmp eq i32 %16, 2, !dbg !1210
  br i1 %17, label %24, label %18, !dbg !1211

18:                                               ; preds = %220, %15
  %19 = phi i8 [ 0, %15 ], [ 1, %220 ]
  %20 = phi i8 [ 0, %15 ], [ %59, %220 ]
  %21 = phi i32 [ %13, %15 ], [ %216, %220 ], !dbg !1203
  %22 = phi i32 [ %16, %15 ], [ %221, %220 ], !dbg !1205
  call void @llvm.dbg.value(metadata i32 %21, metadata !1167, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %19, metadata !1165, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %20, metadata !1166, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %21, metadata !1167, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %19, metadata !1165, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %20, metadata !1166, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %21, metadata !1167, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %19, metadata !1165, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %20, metadata !1166, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %21, metadata !1167, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %19, metadata !1165, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %20, metadata !1166, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %21, metadata !1167, metadata !DIExpression()), !dbg !1193
  %23 = add nsw i32 %22, -1, !dbg !1212
  store i32 %23, i32* @optind, align 4, !dbg !1212, !tbaa !1208
  br label %65, !dbg !1214

24:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %15
  %25 = load i8*, i8** @optarg, align 8, !dbg !1215, !tbaa !1112
  %26 = icmp eq i8* %25, null, !dbg !1215
  %27 = load i32, i32* @optind, align 4, !dbg !1217, !tbaa !1208
  %28 = add nsw i32 %27, -1, !dbg !1217
  %29 = sext i32 %28 to i64, !dbg !1217
  br i1 %26, label %30, label %35, !dbg !1218

30:                                               ; preds = %24
  %31 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !1219
  %32 = load i8*, i8** %31, align 8, !dbg !1219, !tbaa !1112
  %33 = call i64 @strlen(i8* nonnull dereferenceable(1) %32) #22, !dbg !1220
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !1221
  store i8* %34, i8** @optarg, align 8, !dbg !1222, !tbaa !1112
  br label %35, !dbg !1223

35:                                               ; preds = %24, %30
  %36 = phi i8* [ %34, %30 ], [ %25, %24 ], !dbg !1224
  %37 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !1226
  %38 = load i8*, i8** %37, align 8, !dbg !1226, !tbaa !1112
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !1227
  %40 = icmp eq i8* %36, %39, !dbg !1228
  br i1 %40, label %44, label %41, !dbg !1229

41:                                               ; preds = %234, %35
  %42 = phi i32 [ %14, %35 ], [ %217, %234 ], !dbg !1204
  %43 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 5) #18, !dbg !1230
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %43, i32 %42) #18, !dbg !1232
  call void @usage(i32 1) #24, !dbg !1233
  unreachable, !dbg !1233

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !1234
  store i8* %45, i8** @optarg, align 8, !dbg !1234, !tbaa !1112
  br label %46, !dbg !1235

46:                                               ; preds = %12, %12, %44
  %47 = icmp sgt i32 %13, -1, !dbg !1236
  br i1 %47, label %48, label %52, !dbg !1238

48:                                               ; preds = %242, %46
  %49 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 5) #18, !dbg !1239
  %50 = load i8*, i8** @optarg, align 8, !dbg !1241, !tbaa !1112
  %51 = call i8* @quote(i8* %50) #18, !dbg !1242
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %49, i8* %51) #18, !dbg !1243
  call void @usage(i32 1) #24, !dbg !1244
  unreachable, !dbg !1244

52:                                               ; preds = %46
  %53 = load i8*, i8** @optarg, align 8, !dbg !1245, !tbaa !1112
  %54 = call i32 @operand2sig(i8* %53, i8* nonnull %6) #18, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %54, metadata !1167, metadata !DIExpression()), !dbg !1193
  %55 = icmp slt i32 %54, 0, !dbg !1247
  br i1 %55, label %56, label %12, !dbg !1249, !llvm.loop !1250

56:                                               ; preds = %244, %52
  call void @usage(i32 1) #24, !dbg !1252
  unreachable, !dbg !1252

57:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 %13, metadata !1167, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %13, metadata !1167, metadata !DIExpression()), !dbg !1193
  br label %58, !dbg !1253

58:                                               ; preds = %12, %12, %57
  %59 = phi i8 [ 0, %57 ], [ 1, %12 ], [ 1, %12 ], !dbg !1193
  call void @llvm.dbg.value(metadata i8 %59, metadata !1166, metadata !DIExpression()), !dbg !1193
  br label %215, !dbg !1202

60:                                               ; preds = %215, %12
  call void @usage(i32 0) #24, !dbg !1255
  unreachable, !dbg !1255

61:                                               ; preds = %215, %12
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1256, !tbaa !1112
  %63 = load i8*, i8** @Version, align 8, !dbg !1256, !tbaa !1112
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* null) #18, !dbg !1256
  call void @exit(i32 0) #23, !dbg !1256
  unreachable, !dbg !1256

64:                                               ; preds = %215, %12
  call void @usage(i32 1) #24, !dbg !1257
  unreachable, !dbg !1257

65:                                               ; preds = %12, %215, %18
  %66 = phi i8 [ %19, %18 ], [ 0, %12 ], [ 1, %215 ]
  %67 = phi i8 [ %20, %18 ], [ 0, %12 ], [ %59, %215 ]
  %68 = phi i32 [ %21, %18 ], [ %13, %12 ], [ %216, %215 ]
  call void @llvm.dbg.label(metadata !1172), !dbg !1258
  %69 = icmp slt i32 %68, 0, !dbg !1259
  br i1 %69, label %74, label %70, !dbg !1261

70:                                               ; preds = %65
  %71 = icmp eq i8 %66, 0, !dbg !1262
  br i1 %71, label %74, label %72, !dbg !1264

72:                                               ; preds = %70
  %73 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 5) #18, !dbg !1265
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %73) #18, !dbg !1267
  call void @usage(i32 1) #24, !dbg !1268
  unreachable, !dbg !1268

74:                                               ; preds = %65, %70
  %75 = phi i8 [ 0, %70 ], [ %66, %65 ], !dbg !1269
  %76 = phi i32 [ %68, %70 ], [ 15, %65 ], !dbg !1193
  call void @llvm.dbg.value(metadata i32 %76, metadata !1167, metadata !DIExpression()), !dbg !1193
  %77 = icmp ne i8 %75, 0, !dbg !1269
  %78 = load i32, i32* @optind, align 4, !dbg !1271
  %79 = icmp slt i32 %78, %0, !dbg !1272
  %80 = or i1 %77, %79, !dbg !1273
  br i1 %80, label %83, label %81, !dbg !1273

81:                                               ; preds = %74
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 5) #18, !dbg !1274
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82) #18, !dbg !1276
  call void @usage(i32 1) #24, !dbg !1277
  unreachable, !dbg !1277

83:                                               ; preds = %74
  br i1 %77, label %84, label %176, !dbg !1278

84:                                               ; preds = %83
  %85 = and i8 %67, 1, !dbg !1279
  %86 = icmp eq i8 %85, 0, !dbg !1279
  %87 = sext i32 %78 to i64, !dbg !1280
  %88 = getelementptr inbounds i8*, i8** %1, i64 %87, !dbg !1280
  %89 = select i1 %79, i8** %88, i8** null, !dbg !1280
  call void @llvm.dbg.value(metadata i1 %86, metadata !1178, metadata !DIExpression()) #18, !dbg !1281
  call void @llvm.dbg.value(metadata i8** %89, metadata !1179, metadata !DIExpression()) #18, !dbg !1281
  call void @llvm.dbg.value(metadata i32 0, metadata !1181, metadata !DIExpression()) #18, !dbg !1281
  %90 = getelementptr inbounds [19 x i8], [19 x i8]* %4, i64 0, i64 0, !dbg !1282
  call void @llvm.lifetime.start.p0i8(i64 19, i8* nonnull %90) #18, !dbg !1282
  br i1 %86, label %139, label %91, !dbg !1283

91:                                               ; preds = %84, %102
  %92 = phi i32 [ %103, %102 ], [ 0, %84 ]
  %93 = phi i32 [ %104, %102 ], [ 1, %84 ]
  call void @llvm.dbg.value(metadata i32 %92, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %93, metadata !1180, metadata !DIExpression()) #18, !dbg !1281
  %94 = call i32 @sig2str(i32 %93, i8* nonnull %90) #18, !dbg !1285
  %95 = icmp eq i32 %94, 0, !dbg !1286
  br i1 %95, label %96, label %102, !dbg !1287

96:                                               ; preds = %91
  %97 = call i64 @strlen(i8* nonnull %90) #22, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %97, metadata !1186, metadata !DIExpression()) #18, !dbg !1289
  %98 = zext i32 %92 to i64, !dbg !1290
  %99 = icmp ugt i64 %97, %98, !dbg !1292
  %100 = trunc i64 %97 to i32, !dbg !1293
  %101 = select i1 %99, i32 %100, i32 %92, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %101, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  br label %102, !dbg !1295

102:                                              ; preds = %96, %91
  %103 = phi i32 [ %101, %96 ], [ %92, %91 ], !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  %104 = add nuw nsw i32 %93, 1, !dbg !1296
  call void @llvm.dbg.value(metadata i32 %104, metadata !1180, metadata !DIExpression()) #18, !dbg !1281
  %105 = icmp eq i32 %104, 65, !dbg !1297
  br i1 %105, label %106, label %91, !dbg !1298, !llvm.loop !1299

106:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %103, metadata !1182, metadata !DIExpression()) #18, !dbg !1284
  %107 = icmp eq i8** %89, null, !dbg !1301
  br i1 %107, label %127, label %108, !dbg !1303

108:                                              ; preds = %106
  call void @llvm.dbg.value(metadata i8** %89, metadata !1179, metadata !DIExpression()) #18, !dbg !1281
  call void @llvm.dbg.value(metadata i32 0, metadata !1181, metadata !DIExpression()) #18, !dbg !1281
  %109 = load i8*, i8** %89, align 8, !dbg !1304, !tbaa !1112
  %110 = icmp eq i8* %109, null, !dbg !1307
  br i1 %110, label %174, label %111, !dbg !1307

111:                                              ; preds = %108, %122
  %112 = phi i8* [ %125, %122 ], [ %109, %108 ]
  %113 = phi i8** [ %124, %122 ], [ %88, %108 ]
  %114 = phi i32 [ %123, %122 ], [ 0, %108 ]
  call void @llvm.dbg.value(metadata i8** %113, metadata !1179, metadata !DIExpression()) #18, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %114, metadata !1181, metadata !DIExpression()) #18, !dbg !1281
  %115 = call i32 @operand2sig(i8* nonnull %112, i8* nonnull %90) #18, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %115, metadata !1180, metadata !DIExpression()) #18, !dbg !1281
  %116 = icmp slt i32 %115, 0, !dbg !1310
  br i1 %116, label %122, label %117, !dbg !1312

117:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i32 2, metadata !1313, metadata !DIExpression()) #18, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %115, metadata !1318, metadata !DIExpression()) #18, !dbg !1322
  call void @llvm.dbg.value(metadata i32 %103, metadata !1319, metadata !DIExpression()) #18, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %90, metadata !1320, metadata !DIExpression()) #18, !dbg !1322
  %118 = call i8* @strsignal(i32 %115) #18, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %118, metadata !1321, metadata !DIExpression()) #18, !dbg !1322
  %119 = icmp eq i8* %118, null, !dbg !1325
  %120 = select i1 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* %118, !dbg !1325
  %121 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %115, i32 %103, i8* nonnull %90, i8* %120) #18, !dbg !1325
  br label %122

122:                                              ; preds = %117, %111
  %123 = phi i32 [ %114, %117 ], [ 1, %111 ], !dbg !1281
  call void @llvm.dbg.value(metadata i32 %123, metadata !1181, metadata !DIExpression()) #18, !dbg !1281
  %124 = getelementptr inbounds i8*, i8** %113, i64 1, !dbg !1326
  call void @llvm.dbg.value(metadata i8** %124, metadata !1179, metadata !DIExpression()) #18, !dbg !1281
  %125 = load i8*, i8** %124, align 8, !dbg !1304, !tbaa !1112
  %126 = icmp eq i8* %125, null, !dbg !1307
  br i1 %126, label %174, label %111, !dbg !1307, !llvm.loop !1327

127:                                              ; preds = %106, %136
  %128 = phi i32 [ %137, %136 ], [ 1, %106 ]
  call void @llvm.dbg.value(metadata i32 %128, metadata !1180, metadata !DIExpression()) #18, !dbg !1281
  %129 = call i32 @sig2str(i32 %128, i8* nonnull %90) #18, !dbg !1329
  %130 = icmp eq i32 %129, 0, !dbg !1333
  br i1 %130, label %131, label %136, !dbg !1334

131:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i32 2, metadata !1313, metadata !DIExpression()) #18, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %128, metadata !1318, metadata !DIExpression()) #18, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %103, metadata !1319, metadata !DIExpression()) #18, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %90, metadata !1320, metadata !DIExpression()) #18, !dbg !1335
  %132 = call i8* @strsignal(i32 %128) #18, !dbg !1337
  call void @llvm.dbg.value(metadata i8* %132, metadata !1321, metadata !DIExpression()) #18, !dbg !1335
  %133 = icmp eq i8* %132, null, !dbg !1338
  %134 = select i1 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0), i8* %132, !dbg !1338
  %135 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i32 2, i32 %128, i32 %103, i8* nonnull %90, i8* %134) #18, !dbg !1338
  br label %136, !dbg !1339

136:                                              ; preds = %131, %127
  %137 = add nuw nsw i32 %128, 1, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %137, metadata !1180, metadata !DIExpression()) #18, !dbg !1281
  %138 = icmp eq i32 %137, 65, !dbg !1341
  br i1 %138, label %174, label %127, !dbg !1342, !llvm.loop !1343

139:                                              ; preds = %84
  %140 = icmp eq i8** %89, null, !dbg !1345
  br i1 %140, label %165, label %141, !dbg !1348

141:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i8** %89, metadata !1179, metadata !DIExpression()) #18, !dbg !1281
  call void @llvm.dbg.value(metadata i32 0, metadata !1181, metadata !DIExpression()) #18, !dbg !1281
  %142 = load i8*, i8** %89, align 8, !dbg !1349, !tbaa !1112
  %143 = icmp eq i8* %142, null, !dbg !1352
  br i1 %143, label %174, label %144, !dbg !1352

144:                                              ; preds = %141, %160
  %145 = phi i8* [ %163, %160 ], [ %142, %141 ]
  %146 = phi i8** [ %162, %160 ], [ %88, %141 ]
  %147 = phi i32 [ %161, %160 ], [ 0, %141 ]
  call void @llvm.dbg.value(metadata i8** %146, metadata !1179, metadata !DIExpression()) #18, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %147, metadata !1181, metadata !DIExpression()) #18, !dbg !1281
  %148 = call i32 @operand2sig(i8* nonnull %145, i8* nonnull %90) #18, !dbg !1353
  call void @llvm.dbg.value(metadata i32 %148, metadata !1180, metadata !DIExpression()) #18, !dbg !1281
  %149 = icmp slt i32 %148, 0, !dbg !1355
  br i1 %149, label %160, label %150, !dbg !1357

150:                                              ; preds = %144
  %151 = load i8*, i8** %146, align 8, !dbg !1358, !tbaa !1112
  %152 = load i8, i8* %151, align 1, !dbg !1358, !tbaa !1361
  %153 = sext i8 %152 to i32, !dbg !1358
  %154 = add nsw i32 %153, -48, !dbg !1358
  %155 = icmp ult i32 %154, 10, !dbg !1358
  br i1 %155, label %156, label %158, !dbg !1362

156:                                              ; preds = %150
  %157 = call i32 @puts(i8* nonnull %90) #18, !dbg !1363
  br label %160, !dbg !1363

158:                                              ; preds = %150
  %159 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i32 %148) #18, !dbg !1364
  br label %160

160:                                              ; preds = %158, %156, %144
  %161 = phi i32 [ %147, %156 ], [ %147, %158 ], [ 1, %144 ], !dbg !1281
  call void @llvm.dbg.value(metadata i32 %161, metadata !1181, metadata !DIExpression()) #18, !dbg !1281
  %162 = getelementptr inbounds i8*, i8** %146, i64 1, !dbg !1365
  call void @llvm.dbg.value(metadata i8** %162, metadata !1179, metadata !DIExpression()) #18, !dbg !1281
  %163 = load i8*, i8** %162, align 8, !dbg !1349, !tbaa !1112
  %164 = icmp eq i8* %163, null, !dbg !1352
  br i1 %164, label %174, label %144, !dbg !1352, !llvm.loop !1366

165:                                              ; preds = %139, %171
  %166 = phi i32 [ %172, %171 ], [ 1, %139 ]
  call void @llvm.dbg.value(metadata i32 %166, metadata !1180, metadata !DIExpression()) #18, !dbg !1281
  %167 = call i32 @sig2str(i32 %166, i8* nonnull %90) #18, !dbg !1368
  %168 = icmp eq i32 %167, 0, !dbg !1372
  br i1 %168, label %169, label %171, !dbg !1373

169:                                              ; preds = %165
  %170 = call i32 @puts(i8* nonnull %90) #18, !dbg !1374
  br label %171, !dbg !1374

171:                                              ; preds = %169, %165
  %172 = add nuw nsw i32 %166, 1, !dbg !1375
  call void @llvm.dbg.value(metadata i32 %172, metadata !1180, metadata !DIExpression()) #18, !dbg !1281
  %173 = icmp eq i32 %172, 65, !dbg !1376
  br i1 %173, label %174, label %165, !dbg !1377, !llvm.loop !1378

174:                                              ; preds = %122, %136, %160, %171, %108, %141
  %175 = phi i32 [ 0, %108 ], [ 0, %141 ], [ 0, %171 ], [ %161, %160 ], [ 0, %136 ], [ %123, %122 ], !dbg !1380
  call void @llvm.dbg.value(metadata i32 %175, metadata !1181, metadata !DIExpression()) #18, !dbg !1281
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %90) #18, !dbg !1381
  br label %213, !dbg !1278

176:                                              ; preds = %83
  %177 = sext i32 %78 to i64, !dbg !1382
  %178 = getelementptr inbounds i8*, i8** %1, i64 %177, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %76, metadata !1383, metadata !DIExpression()) #18, !dbg !1401
  call void @llvm.dbg.value(metadata i8** %178, metadata !1388, metadata !DIExpression()) #18, !dbg !1401
  call void @llvm.dbg.value(metadata i32 0, metadata !1389, metadata !DIExpression()) #18, !dbg !1401
  %179 = load i8*, i8** %178, align 8, !dbg !1403, !tbaa !1112
  call void @llvm.dbg.value(metadata i8* %179, metadata !1390, metadata !DIExpression()) #18, !dbg !1401
  %180 = bitcast i8** %3 to i8*, !dbg !1404
  %181 = tail call i32* @__errno_location() #25, !dbg !1404
  br label %182, !dbg !1405

182:                                              ; preds = %208, %176
  %183 = phi i8* [ %179, %176 ], [ %211, %208 ], !dbg !1401
  %184 = phi i32 [ 0, %176 ], [ %209, %208 ], !dbg !1401
  %185 = phi i8** [ %178, %176 ], [ %210, %208 ]
  call void @llvm.dbg.value(metadata i8** %185, metadata !1388, metadata !DIExpression()) #18, !dbg !1401
  call void @llvm.dbg.value(metadata i32 %184, metadata !1389, metadata !DIExpression()) #18, !dbg !1401
  call void @llvm.dbg.value(metadata i8* %183, metadata !1390, metadata !DIExpression()) #18, !dbg !1401
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %180) #18, !dbg !1406
  store i32 0, i32* %181, align 4, !dbg !1407, !tbaa !1208
  call void @llvm.dbg.value(metadata i8** %3, metadata !1391, metadata !DIExpression(DW_OP_deref)) #18, !dbg !1404
  call void @llvm.dbg.value(metadata i8* %183, metadata !1408, metadata !DIExpression()) #18, !dbg !1418
  call void @llvm.dbg.value(metadata i8** %3, metadata !1416, metadata !DIExpression()) #18, !dbg !1418
  call void @llvm.dbg.value(metadata i32 10, metadata !1417, metadata !DIExpression()) #18, !dbg !1418
  %186 = call i64 @__strtol_internal(i8* %183, i8** nonnull %3, i32 10, i32 0) #18, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %186, metadata !1393, metadata !DIExpression()) #18, !dbg !1404
  %187 = trunc i64 %186 to i32, !dbg !1421
  call void @llvm.dbg.value(metadata i32 %187, metadata !1397, metadata !DIExpression()) #18, !dbg !1404
  %188 = load i32, i32* %181, align 4, !dbg !1422, !tbaa !1208
  %189 = icmp eq i32 %188, 34, !dbg !1424
  %190 = add i64 %186, 2147483648, !dbg !1425
  %191 = icmp ugt i64 %190, 4294967295, !dbg !1425
  %192 = or i1 %189, %191, !dbg !1426
  br i1 %192, label %199, label %193, !dbg !1426

193:                                              ; preds = %182
  %194 = load i8*, i8** %3, align 8, !dbg !1427, !tbaa !1112
  call void @llvm.dbg.value(metadata i8* %194, metadata !1391, metadata !DIExpression()) #18, !dbg !1404
  %195 = icmp eq i8* %183, %194, !dbg !1428
  br i1 %195, label %199, label %196, !dbg !1429

196:                                              ; preds = %193
  %197 = load i8, i8* %194, align 1, !dbg !1430, !tbaa !1361
  %198 = icmp eq i8 %197, 0, !dbg !1430
  br i1 %198, label %202, label %199, !dbg !1431

199:                                              ; preds = %196, %193, %182
  %200 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 5) #18, !dbg !1432
  %201 = call i8* @quote(i8* %183) #18, !dbg !1434
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %200, i8* %201) #18, !dbg !1435
  call void @llvm.dbg.value(metadata i32 1, metadata !1389, metadata !DIExpression()) #18, !dbg !1401
  br label %208, !dbg !1436

202:                                              ; preds = %196
  %203 = call i32 @kill(i32 %187, i32 %76) #18, !dbg !1437
  %204 = icmp eq i32 %203, 0, !dbg !1439
  br i1 %204, label %208, label %205, !dbg !1440

205:                                              ; preds = %202
  %206 = load i32, i32* %181, align 4, !dbg !1441, !tbaa !1208
  %207 = call i8* @quote(i8* %183) #18, !dbg !1443
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i8* %207) #18, !dbg !1444
  call void @llvm.dbg.value(metadata i32 1, metadata !1389, metadata !DIExpression()) #18, !dbg !1401
  br label %208, !dbg !1445

208:                                              ; preds = %205, %202, %199
  %209 = phi i32 [ 1, %199 ], [ 1, %205 ], [ %184, %202 ], !dbg !1401
  call void @llvm.dbg.value(metadata i32 %209, metadata !1389, metadata !DIExpression()) #18, !dbg !1401
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %180) #18, !dbg !1446
  %210 = getelementptr inbounds i8*, i8** %185, i64 1, !dbg !1447
  call void @llvm.dbg.value(metadata i8** %210, metadata !1388, metadata !DIExpression()) #18, !dbg !1401
  %211 = load i8*, i8** %210, align 8, !dbg !1448, !tbaa !1112
  call void @llvm.dbg.value(metadata i8* %211, metadata !1390, metadata !DIExpression()) #18, !dbg !1401
  %212 = icmp eq i8* %211, null, !dbg !1449
  br i1 %212, label %213, label %182, !dbg !1449, !llvm.loop !1450

213:                                              ; preds = %208, %174
  %214 = phi i32 [ %175, %174 ], [ %209, %208 ], !dbg !1278
  call void @llvm.lifetime.end.p0i8(i64 19, i8* nonnull %6) #18, !dbg !1452
  ret i32 %214, !dbg !1452

215:                                              ; preds = %244, %58
  %216 = phi i32 [ %246, %244 ], [ %13, %58 ], !dbg !1203
  call void @llvm.dbg.value(metadata i32 %216, metadata !1167, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 %59, metadata !1166, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8 1, metadata !1165, metadata !DIExpression()), !dbg !1193
  %217 = call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @short_options, i64 0, i64 0), %struct.option* getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #18, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %217, metadata !1164, metadata !DIExpression()), !dbg !1193
  switch i32 %217, label %64 [
    i32 -1, label %65
    i32 48, label %220
    i32 49, label %220
    i32 50, label %220
    i32 51, label %220
    i32 52, label %220
    i32 53, label %220
    i32 54, label %220
    i32 55, label %220
    i32 56, label %220
    i32 57, label %220
    i32 65, label %223
    i32 66, label %223
    i32 67, label %223
    i32 68, label %223
    i32 69, label %223
    i32 70, label %223
    i32 71, label %223
    i32 72, label %223
    i32 73, label %223
    i32 74, label %223
    i32 75, label %223
    i32 77, label %223
    i32 78, label %223
    i32 79, label %223
    i32 80, label %223
    i32 81, label %223
    i32 82, label %223
    i32 83, label %223
    i32 84, label %223
    i32 85, label %223
    i32 86, label %223
    i32 87, label %223
    i32 88, label %223
    i32 89, label %223
    i32 90, label %223
    i32 110, label %242
    i32 115, label %242
    i32 76, label %218
    i32 116, label %218
    i32 108, label %218
    i32 -130, label %60
    i32 -131, label %61
  ], !dbg !1202

218:                                              ; preds = %215, %215, %215
  %219 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i32 5) #18, !dbg !1453
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %219) #18, !dbg !1455
  call void @usage(i32 1) #24, !dbg !1456
  unreachable, !dbg !1456

220:                                              ; preds = %215, %215, %215, %215, %215, %215, %215, %215, %215, %215
  %221 = load i32, i32* @optind, align 4, !dbg !1205, !tbaa !1208
  %222 = icmp eq i32 %221, 2, !dbg !1210
  br i1 %222, label %223, label %18, !dbg !1211

223:                                              ; preds = %220, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215, %215
  %224 = load i8*, i8** @optarg, align 8, !dbg !1215, !tbaa !1112
  %225 = icmp eq i8* %224, null, !dbg !1215
  %226 = load i32, i32* @optind, align 4, !dbg !1217, !tbaa !1208
  %227 = add nsw i32 %226, -1, !dbg !1217
  %228 = sext i32 %227 to i64, !dbg !1217
  br i1 %225, label %229, label %234, !dbg !1218

229:                                              ; preds = %223
  %230 = getelementptr inbounds i8*, i8** %1, i64 %228, !dbg !1219
  %231 = load i8*, i8** %230, align 8, !dbg !1219, !tbaa !1112
  %232 = call i64 @strlen(i8* nonnull dereferenceable(1) %231) #22, !dbg !1220
  %233 = getelementptr inbounds i8, i8* %231, i64 %232, !dbg !1221
  store i8* %233, i8** @optarg, align 8, !dbg !1222, !tbaa !1112
  br label %234, !dbg !1223

234:                                              ; preds = %229, %223
  %235 = phi i8* [ %233, %229 ], [ %224, %223 ], !dbg !1224
  %236 = getelementptr inbounds i8*, i8** %1, i64 %228, !dbg !1226
  %237 = load i8*, i8** %236, align 8, !dbg !1226, !tbaa !1112
  %238 = getelementptr inbounds i8, i8* %237, i64 2, !dbg !1227
  %239 = icmp eq i8* %235, %238, !dbg !1228
  br i1 %239, label %240, label %41, !dbg !1229

240:                                              ; preds = %234
  %241 = getelementptr inbounds i8, i8* %235, i64 -1, !dbg !1234
  store i8* %241, i8** @optarg, align 8, !dbg !1234, !tbaa !1112
  br label %242, !dbg !1235

242:                                              ; preds = %240, %215, %215
  %243 = icmp sgt i32 %216, -1, !dbg !1236
  br i1 %243, label %48, label %244, !dbg !1238

244:                                              ; preds = %242
  %245 = load i8*, i8** @optarg, align 8, !dbg !1245, !tbaa !1112
  %246 = call i32 @operand2sig(i8* %245, i8* nonnull %6) #18, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %246, metadata !1167, metadata !DIExpression()), !dbg !1193
  %247 = icmp slt i32 %246, 0, !dbg !1247
  br i1 %247, label %56, label %215, !dbg !1249, !llvm.loop !1250
}

; Function Attrs: nounwind
declare !dbg !84 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !87 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !90 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !97 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

declare !dbg !112 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !136 i8* @strsignal(i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !133 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !140 i32 @kill(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @operand2sig(i8* %0, i8* %1) local_unnamed_addr #8 !dbg !1457 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1459, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i8* %1, metadata !1460, metadata !DIExpression()), !dbg !1470
  %5 = bitcast i32* %3 to i8*, !dbg !1471
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #18, !dbg !1471
  %6 = load i8, i8* %0, align 1, !dbg !1472, !tbaa !1361
  %7 = sext i8 %6 to i32, !dbg !1472
  %8 = add nsw i32 %7, -48, !dbg !1472
  %9 = icmp ult i32 %8, 10, !dbg !1472
  br i1 %9, label %10, label %38, !dbg !1473

10:                                               ; preds = %2
  %11 = bitcast i8** %4 to i8*, !dbg !1474
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #18, !dbg !1474
  %12 = tail call i32* @__errno_location() #25, !dbg !1475
  store i32 0, i32* %12, align 4, !dbg !1476, !tbaa !1208
  call void @llvm.dbg.value(metadata i8** %4, metadata !1462, metadata !DIExpression(DW_OP_deref)), !dbg !1477
  %13 = call i64 @strtol(i8* nonnull %0, i8** nonnull %4, i32 10) #18, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %13, metadata !1465, metadata !DIExpression()), !dbg !1477
  %14 = trunc i64 %13 to i32, !dbg !1479
  call void @llvm.dbg.value(metadata i32 %14, metadata !1466, metadata !DIExpression()), !dbg !1477
  %15 = load i8*, i8** %4, align 8, !dbg !1480, !tbaa !1112
  call void @llvm.dbg.value(metadata i8* %15, metadata !1462, metadata !DIExpression()), !dbg !1477
  %16 = icmp eq i8* %15, %0, !dbg !1481
  br i1 %16, label %29, label %17, !dbg !1482

17:                                               ; preds = %10
  %18 = load i8, i8* %15, align 1, !dbg !1483, !tbaa !1361
  %19 = icmp eq i8 %18, 0, !dbg !1483
  br i1 %19, label %20, label %29, !dbg !1484

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4, !dbg !1485, !tbaa !1208
  %22 = icmp ne i32 %21, 0, !dbg !1485
  %23 = add i64 %13, 2147483648, !dbg !1486
  %24 = icmp ugt i64 %23, 4294967295, !dbg !1486
  %25 = or i1 %24, %22, !dbg !1487
  br i1 %25, label %29, label %26, !dbg !1487

26:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i32 %14, metadata !1461, metadata !DIExpression()), !dbg !1470
  %27 = icmp eq i32 %14, -1, !dbg !1488
  %28 = icmp slt i32 %14, 255, !dbg !1490
  br i1 %28, label %29, label %32, !dbg !1490

29:                                               ; preds = %20, %10, %17, %26
  %30 = phi i1 [ %27, %26 ], [ true, %20 ], [ true, %17 ], [ true, %10 ]
  %31 = phi i32 [ %14, %26 ], [ -1, %20 ], [ -1, %17 ], [ -1, %10 ]
  br label %32, !dbg !1490

32:                                               ; preds = %26, %29
  %33 = phi i1 [ %30, %29 ], [ %27, %26 ]
  %34 = phi i32 [ %31, %29 ], [ %14, %26 ]
  %35 = phi i32 [ 127, %29 ], [ 255, %26 ]
  %36 = select i1 %33, i32 -1, i32 %35, !dbg !1490
  %37 = and i32 %36, %34, !dbg !1490
  store i32 %37, i32* %3, align 4, !dbg !1477, !tbaa !1208
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #18, !dbg !1491
  br label %75, !dbg !1492

38:                                               ; preds = %2
  %39 = tail call noalias i8* @xstrdup(i8* nonnull %0) #18, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %39, metadata !1467, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i8* %39, metadata !1469, metadata !DIExpression()), !dbg !1494
  %40 = load i8, i8* %39, align 1, !dbg !1495, !tbaa !1361
  %41 = icmp eq i8 %40, 0, !dbg !1498
  br i1 %41, label %54, label %42, !dbg !1498

42:                                               ; preds = %38, %50
  %43 = phi i8 [ %52, %50 ], [ %40, %38 ]
  %44 = phi i8* [ %51, %50 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i8* %44, metadata !1469, metadata !DIExpression()), !dbg !1494
  %45 = sext i8 %43 to i32, !dbg !1499
  %46 = tail call i8* @memchr(i8* nonnull dereferenceable(27) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 %45, i64 27), !dbg !1501
  %47 = icmp eq i8* %46, null, !dbg !1501
  br i1 %47, label %50, label %48, !dbg !1502

48:                                               ; preds = %42
  %49 = add i8 %43, -32, !dbg !1503
  store i8 %49, i8* %44, align 1, !dbg !1503, !tbaa !1361
  br label %50, !dbg !1504

50:                                               ; preds = %42, %48
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1505
  call void @llvm.dbg.value(metadata i8* %51, metadata !1469, metadata !DIExpression()), !dbg !1494
  %52 = load i8, i8* %51, align 1, !dbg !1495, !tbaa !1361
  %53 = icmp eq i8 %52, 0, !dbg !1498
  br i1 %53, label %54, label %42, !dbg !1498, !llvm.loop !1506

54:                                               ; preds = %50, %38
  call void @llvm.dbg.value(metadata i32* %3, metadata !1461, metadata !DIExpression(DW_OP_deref)), !dbg !1470
  %55 = call i32 @str2sig(i8* nonnull %39, i32* nonnull %3) #18, !dbg !1508
  %56 = icmp eq i32 %55, 0, !dbg !1510
  br i1 %56, label %73, label %57, !dbg !1511

57:                                               ; preds = %54
  %58 = load i8, i8* %39, align 1, !dbg !1512, !tbaa !1361
  %59 = icmp eq i8 %58, 83, !dbg !1513
  br i1 %59, label %60, label %72, !dbg !1514

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1515
  %62 = load i8, i8* %61, align 1, !dbg !1515, !tbaa !1361
  %63 = icmp eq i8 %62, 73, !dbg !1516
  br i1 %63, label %64, label %72, !dbg !1517

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, i8* %39, i64 2, !dbg !1518
  %66 = load i8, i8* %65, align 1, !dbg !1518, !tbaa !1361
  %67 = icmp eq i8 %66, 71, !dbg !1519
  br i1 %67, label %68, label %72, !dbg !1520

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, i8* %39, i64 3, !dbg !1521
  call void @llvm.dbg.value(metadata i32* %3, metadata !1461, metadata !DIExpression(DW_OP_deref)), !dbg !1470
  %70 = call i32 @str2sig(i8* nonnull %69, i32* nonnull %3) #18, !dbg !1522
  %71 = icmp eq i32 %70, 0, !dbg !1523
  br i1 %71, label %73, label %72, !dbg !1524

72:                                               ; preds = %68, %64, %60, %57
  call void @llvm.dbg.value(metadata i32 -1, metadata !1461, metadata !DIExpression()), !dbg !1470
  store i32 -1, i32* %3, align 4, !dbg !1525, !tbaa !1208
  br label %73, !dbg !1526

73:                                               ; preds = %72, %68, %54
  call void @free(i8* %39) #18, !dbg !1527
  %74 = load i32, i32* %3, align 4, !dbg !1528, !tbaa !1208
  br label %75

75:                                               ; preds = %73, %32
  %76 = phi i32 [ %74, %73 ], [ %37, %32 ], !dbg !1528
  call void @llvm.dbg.value(metadata i32 %76, metadata !1461, metadata !DIExpression()), !dbg !1470
  %77 = icmp slt i32 %76, 0, !dbg !1530
  br i1 %77, label %81, label %78, !dbg !1531

78:                                               ; preds = %75
  %79 = call i32 @sig2str(i32 %76, i8* %1) #18, !dbg !1532
  %80 = icmp eq i32 %79, 0, !dbg !1533
  br i1 %80, label %84, label %81, !dbg !1534

81:                                               ; preds = %78, %75
  %82 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.46, i64 0, i64 0), i32 5) #18, !dbg !1535
  %83 = call i8* @quote(i8* nonnull %0) #18, !dbg !1537
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %82, i8* %83) #18, !dbg !1538
  br label %86, !dbg !1539

84:                                               ; preds = %78
  %85 = load i32, i32* %3, align 4, !dbg !1540, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %85, metadata !1461, metadata !DIExpression()), !dbg !1470
  br label %86, !dbg !1541

86:                                               ; preds = %84, %81
  %87 = phi i32 [ -1, %81 ], [ %85, %84 ], !dbg !1470
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #18, !dbg !1542
  ret i32 %87, !dbg !1542
}

; Function Attrs: nofree nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #4

; Function Attrs: nofree nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !313 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1543 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i8* %0, i8** @file_name, align 8, !dbg !1547, !tbaa !1112
  ret void, !dbg !1548
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1549 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1553, metadata !DIExpression()), !dbg !1554
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1555, !tbaa !1556
  ret void, !dbg !1558
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1559 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1564, !tbaa !1112
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #18, !dbg !1565
  %3 = icmp eq i32 %2, 0, !dbg !1566
  br i1 %3, label %22, label %4, !dbg !1567

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1568, !tbaa !1556, !range !1569
  %6 = icmp eq i8 %5, 0, !dbg !1568
  br i1 %6, label %11, label %7, !dbg !1570

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #25, !dbg !1571
  %9 = load i32, i32* %8, align 4, !dbg !1571, !tbaa !1208
  %10 = icmp eq i32 %9, 32, !dbg !1572
  br i1 %10, label %22, label %11, !dbg !1573

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i32 5) #18, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %12, metadata !1561, metadata !DIExpression()), !dbg !1575
  %13 = load i8*, i8** @file_name, align 8, !dbg !1576, !tbaa !1112
  %14 = icmp eq i8* %13, null, !dbg !1576
  %15 = tail call i32* @__errno_location() #25, !dbg !1578
  %16 = load i32, i32* %15, align 4, !dbg !1578, !tbaa !1208
  br i1 %14, label %19, label %17, !dbg !1579

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #18, !dbg !1580
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.53, i64 0, i64 0), i8* %18, i8* %12) #18, !dbg !1581
  br label %20, !dbg !1581

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.54, i64 0, i64 0), i8* %12) #18, !dbg !1582
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1583, !tbaa !1208
  tail call void @_exit(i32 %21) #23, !dbg !1584
  unreachable, !dbg !1584

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1585, !tbaa !1112
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #18, !dbg !1587
  %25 = icmp eq i32 %24, 0, !dbg !1588
  br i1 %25, label %28, label %26, !dbg !1589

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1590, !tbaa !1208
  tail call void @_exit(i32 %27) #23, !dbg !1591
  unreachable, !dbg !1591

28:                                               ; preds = %22
  ret void, !dbg !1592
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1593 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1595, metadata !DIExpression()), !dbg !1598
  %2 = icmp eq i8* %0, null, !dbg !1599
  br i1 %2, label %3, label %6, !dbg !1601

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1602, !tbaa !1112
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #26, !dbg !1604
  tail call void @abort() #23, !dbg !1605
  unreachable, !dbg !1605

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #22, !dbg !1606
  call void @llvm.dbg.value(metadata i8* %7, metadata !1596, metadata !DIExpression()), !dbg !1598
  %8 = icmp eq i8* %7, null, !dbg !1607
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1608
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1608
  call void @llvm.dbg.value(metadata i8* %10, metadata !1597, metadata !DIExpression()), !dbg !1598
  %11 = ptrtoint i8* %10 to i64, !dbg !1609
  %12 = ptrtoint i8* %0 to i64, !dbg !1609
  %13 = sub i64 %11, %12, !dbg !1609
  %14 = icmp sgt i64 %13, 6, !dbg !1611
  br i1 %14, label %15, label %24, !dbg !1612

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1613
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.62, i64 0, i64 0), i64 7) #22, !dbg !1614
  %18 = icmp eq i32 %17, 0, !dbg !1615
  br i1 %18, label %19, label %24, !dbg !1616

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1595, metadata !DIExpression()), !dbg !1598
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.63, i64 0, i64 0), i64 3) #22, !dbg !1617
  %21 = icmp eq i32 %20, 0, !dbg !1620
  br i1 %21, label %22, label %24, !dbg !1621

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1622
  call void @llvm.dbg.value(metadata i8* %23, metadata !1595, metadata !DIExpression()), !dbg !1598
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1624, !tbaa !1112
  br label %24, !dbg !1625

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1595, metadata !DIExpression()), !dbg !1598
  store i8* %25, i8** @program_name, align 8, !dbg !1626, !tbaa !1112
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1627, !tbaa !1112
  ret void, !dbg !1628
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1629 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1634, metadata !DIExpression()), !dbg !1637
  %2 = tail call i32* @__errno_location() #25, !dbg !1638
  %3 = load i32, i32* %2, align 4, !dbg !1638, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %3, metadata !1635, metadata !DIExpression()), !dbg !1637
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1639
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1639
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1639
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #18, !dbg !1640
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1640
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1636, metadata !DIExpression()), !dbg !1637
  store i32 %3, i32* %2, align 4, !dbg !1641, !tbaa !1208
  ret %struct.quoting_options* %8, !dbg !1642
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1643 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1647, metadata !DIExpression()), !dbg !1648
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1649
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1649
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1650
  %5 = load i32, i32* %4, align 8, !dbg !1650, !tbaa !1651
  ret i32 %5, !dbg !1653
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !1654 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1658, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %1, metadata !1659, metadata !DIExpression()), !dbg !1660
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1661
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1661
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1662
  store i32 %1, i32* %5, align 8, !dbg !1663, !tbaa !1651
  ret void, !dbg !1664
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1665 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1669, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i8 %1, metadata !1670, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i32 %2, metadata !1671, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i8 %1, metadata !1672, metadata !DIExpression()), !dbg !1678
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1679
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1679
  %6 = lshr i8 %1, 5, !dbg !1680
  %7 = zext i8 %6 to i64, !dbg !1680
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1681
  call void @llvm.dbg.value(metadata i32* %8, metadata !1674, metadata !DIExpression()), !dbg !1678
  %9 = and i8 %1, 31, !dbg !1682
  %10 = zext i8 %9 to i32, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %10, metadata !1676, metadata !DIExpression()), !dbg !1678
  %11 = load i32, i32* %8, align 4, !dbg !1683, !tbaa !1208
  %12 = lshr i32 %11, %10, !dbg !1684
  %13 = and i32 %12, 1, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %13, metadata !1677, metadata !DIExpression()), !dbg !1678
  %14 = and i32 %2, 1, !dbg !1686
  %15 = xor i32 %13, %14, !dbg !1687
  %16 = shl i32 %15, %10, !dbg !1688
  %17 = xor i32 %16, %11, !dbg !1689
  store i32 %17, i32* %8, align 4, !dbg !1689, !tbaa !1208
  ret i32 %13, !dbg !1690
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1691 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1695, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %1, metadata !1696, metadata !DIExpression()), !dbg !1698
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1699
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1695, metadata !DIExpression()), !dbg !1698
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1702
  %6 = load i32, i32* %5, align 4, !dbg !1702, !tbaa !1703
  call void @llvm.dbg.value(metadata i32 %6, metadata !1697, metadata !DIExpression()), !dbg !1698
  store i32 %1, i32* %5, align 4, !dbg !1704, !tbaa !1703
  ret i32 %6, !dbg !1705
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1706 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1710, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %1, metadata !1711, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8* %2, metadata !1712, metadata !DIExpression()), !dbg !1713
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1714
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1716
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1710, metadata !DIExpression()), !dbg !1713
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1717
  store i32 10, i32* %6, align 8, !dbg !1718, !tbaa !1651
  %7 = icmp ne i8* %1, null, !dbg !1719
  %8 = icmp ne i8* %2, null, !dbg !1721
  %9 = and i1 %7, %8, !dbg !1722
  br i1 %9, label %11, label %10, !dbg !1722

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !1723
  unreachable, !dbg !1723

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1724
  store i8* %1, i8** %12, align 8, !dbg !1725, !tbaa !1726
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1727
  store i8* %2, i8** %13, align 8, !dbg !1728, !tbaa !1729
  ret void, !dbg !1730
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1731 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1735, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %1, metadata !1736, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8* %2, metadata !1737, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %3, metadata !1738, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1739, metadata !DIExpression()), !dbg !1743
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1744
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1744
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1740, metadata !DIExpression()), !dbg !1743
  %8 = tail call i32* @__errno_location() #25, !dbg !1745
  %9 = load i32, i32* %8, align 4, !dbg !1745, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %9, metadata !1741, metadata !DIExpression()), !dbg !1743
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1746
  %11 = load i32, i32* %10, align 8, !dbg !1746, !tbaa !1651
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1747
  %13 = load i32, i32* %12, align 4, !dbg !1747, !tbaa !1703
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1748
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1749
  %16 = load i8*, i8** %15, align 8, !dbg !1749, !tbaa !1726
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1750
  %18 = load i8*, i8** %17, align 8, !dbg !1750, !tbaa !1729
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1751
  call void @llvm.dbg.value(metadata i64 %19, metadata !1742, metadata !DIExpression()), !dbg !1743
  store i32 %9, i32* %8, align 4, !dbg !1752, !tbaa !1208
  ret i64 %19, !dbg !1753
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1754 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1760, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %1, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %2, metadata !1762, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %3, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %4, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %5, metadata !1765, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32* %6, metadata !1766, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %7, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %8, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* null, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1773, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1818
  %13 = tail call i64 @__ctype_get_mb_cur_max() #18, !dbg !1819
  %14 = icmp eq i64 %13, 1, !dbg !1820
  call void @llvm.dbg.value(metadata i1 %14, metadata !1775, metadata !DIExpression()), !dbg !1818
  %15 = lshr i32 %5, 1, !dbg !1821
  %16 = trunc i32 %15 to i8, !dbg !1821
  %17 = and i8 %16, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i8 %17, metadata !1776, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, metadata !1779, metadata !DIExpression()), !dbg !1818
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1822
  %19 = and i32 %5, 4, !dbg !1824
  %20 = icmp eq i32 %19, 0, !dbg !1824
  %21 = and i32 %5, 1, !dbg !1827
  %22 = icmp eq i32 %21, 0, !dbg !1827
  %23 = bitcast i64* %10 to i8*, !dbg !1830
  %24 = bitcast i32* %12 to i8*, !dbg !1831
  %25 = icmp eq i32* %6, null, !dbg !1832
  br label %26, !dbg !1834

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1835
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1836
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1837
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1838
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1818
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1839
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1840
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1841
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %38, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %37, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %36, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %35, metadata !1776, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %34, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %33, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %32, metadata !1773, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %31, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %30, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %29, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %28, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %27, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.label(metadata !1812), !dbg !1842
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
  ], !dbg !1843

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %35, metadata !1776, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 5, metadata !1764, metadata !DIExpression()), !dbg !1818
  br label %92, !dbg !1844

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1776, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 5, metadata !1764, metadata !DIExpression()), !dbg !1818
  %42 = and i8 %35, 1, !dbg !1846
  %43 = icmp eq i8 %42, 0, !dbg !1846
  br i1 %43, label %44, label %92, !dbg !1844

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1848
  br i1 %45, label %92, label %46, !dbg !1851

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1848, !tbaa !1361
  br label %92, !dbg !1848

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 %27), !dbg !1852
  call void @llvm.dbg.value(metadata i8* %48, metadata !1767, metadata !DIExpression()), !dbg !1818
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), i32 %27), !dbg !1856
  call void @llvm.dbg.value(metadata i8* %49, metadata !1768, metadata !DIExpression()), !dbg !1818
  br label %50, !dbg !1857

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %51, metadata !1767, metadata !DIExpression()), !dbg !1818
  %53 = and i8 %35, 1, !dbg !1858
  %54 = icmp eq i8 %53, 0, !dbg !1858
  br i1 %54, label %55, label %70, !dbg !1860

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1770, metadata !DIExpression()), !dbg !1818
  %56 = load i8, i8* %51, align 1, !dbg !1861, !tbaa !1361
  %57 = icmp eq i8 %56, 0, !dbg !1864
  br i1 %57, label %70, label %58, !dbg !1864

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %61, metadata !1770, metadata !DIExpression()), !dbg !1818
  %62 = icmp ult i64 %61, %39, !dbg !1865
  br i1 %62, label %63, label %65, !dbg !1868

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1865
  store i8 %59, i8* %64, align 1, !dbg !1865, !tbaa !1361
  br label %65, !dbg !1865

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %66, metadata !1770, metadata !DIExpression()), !dbg !1818
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1869
  call void @llvm.dbg.value(metadata i8* %67, metadata !1772, metadata !DIExpression()), !dbg !1818
  %68 = load i8, i8* %67, align 1, !dbg !1861, !tbaa !1361
  %69 = icmp eq i8 %68, 0, !dbg !1864
  br i1 %69, label %70, label %58, !dbg !1864, !llvm.loop !1870

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1872
  call void @llvm.dbg.value(metadata i64 %71, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %52, metadata !1772, metadata !DIExpression()), !dbg !1818
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #22, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %72, metadata !1773, metadata !DIExpression()), !dbg !1818
  br label %92, !dbg !1874

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1818
  br label %74, !dbg !1875

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %75, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !1818
  br label %76, !dbg !1876

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1838
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %78, metadata !1776, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %77, metadata !1774, metadata !DIExpression()), !dbg !1818
  %79 = and i8 %78, 1, !dbg !1877
  %80 = icmp eq i8 %79, 0, !dbg !1877
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1879
  br label %82, !dbg !1879

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1818
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1821
  call void @llvm.dbg.value(metadata i8 %84, metadata !1776, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %83, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  %85 = and i8 %84, 1, !dbg !1880
  %86 = icmp eq i8 %85, 0, !dbg !1880
  br i1 %86, label %87, label %92, !dbg !1882

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1883
  br i1 %88, label %92, label %89, !dbg !1886

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1883, !tbaa !1361
  br label %92, !dbg !1883

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !1818
  br label %92, !dbg !1887

91:                                               ; preds = %26
  call void @abort() #23, !dbg !1888
  unreachable, !dbg !1888

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1872
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %40 ], !dbg !1818
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1818
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1818
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %100, metadata !1776, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %98, metadata !1773, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %96, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %93, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 0, metadata !1769, metadata !DIExpression()), !dbg !1818
  %101 = and i8 %99, 1, !dbg !1889
  %102 = icmp ne i8 %101, 0, !dbg !1889
  %103 = icmp ne i32 %93, 2, !dbg !1889
  %104 = and i1 %103, %102, !dbg !1889
  %105 = icmp ne i64 %98, 0, !dbg !1889
  %106 = and i1 %105, %104, !dbg !1889
  %107 = icmp ugt i64 %98, 1, !dbg !1889
  %108 = and i8 %100, 1, !dbg !1891
  %109 = icmp eq i8 %108, 0, !dbg !1891
  %110 = icmp eq i32 %93, 2, !dbg !1894
  %111 = or i1 %103, %109, !dbg !1896
  %112 = icmp ne i8 %108, 0, !dbg !1898
  %113 = and i1 %110, %112, !dbg !1898
  %114 = xor i1 %102, true, !dbg !1899
  %115 = xor i1 %104, true, !dbg !1832
  %116 = and i1 %109, %115, !dbg !1832
  %117 = or i1 %25, %116, !dbg !1832
  %118 = and i8 %99, %100, !dbg !1900
  %119 = and i8 %118, 1, !dbg !1900
  %120 = icmp ne i8 %119, 0, !dbg !1900
  %121 = and i1 %120, %105, !dbg !1900
  br label %122, !dbg !1902

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1903
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1872
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1835
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1839
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1840
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1841
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %126, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %123, metadata !1769, metadata !DIExpression()), !dbg !1818
  %131 = icmp eq i64 %126, -1, !dbg !1904
  br i1 %131, label %132, label %136, !dbg !1905

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1906
  %134 = load i8, i8* %133, align 1, !dbg !1906, !tbaa !1361
  %135 = icmp eq i8 %134, 0, !dbg !1907
  br i1 %135, label %581, label %138, !dbg !1908

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1909
  br i1 %137, label %581, label %138, !dbg !1908

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 0, metadata !1787, metadata !DIExpression()), !dbg !1910
  br i1 %106, label %139, label %154, !dbg !1911

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1912
  %141 = and i1 %107, %131, !dbg !1913
  br i1 %141, label %142, label %144, !dbg !1913

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %143, metadata !1763, metadata !DIExpression()), !dbg !1818
  br label %144, !dbg !1915

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1763, metadata !DIExpression()), !dbg !1818
  %146 = icmp ugt i64 %140, %145, !dbg !1916
  br i1 %146, label %154, label %147, !dbg !1917

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1918
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1919
  %150 = icmp ne i32 %149, 0, !dbg !1920
  %151 = or i1 %150, %109, !dbg !1921
  %152 = xor i1 %150, true, !dbg !1921
  %153 = zext i1 %152 to i8, !dbg !1921
  br i1 %151, label %154, label %639, !dbg !1921

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1910
  call void @llvm.dbg.value(metadata i8 %156, metadata !1785, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i64 %155, metadata !1763, metadata !DIExpression()), !dbg !1818
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1922
  %158 = load i8, i8* %157, align 1, !dbg !1922, !tbaa !1361
  call void @llvm.dbg.value(metadata i8 %158, metadata !1780, metadata !DIExpression()), !dbg !1910
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
  ], !dbg !1923

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1924

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1925

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1786, metadata !DIExpression()), !dbg !1910
  %162 = and i8 %127, 1, !dbg !1928
  %163 = icmp eq i8 %162, 0, !dbg !1928
  %164 = and i1 %110, %163, !dbg !1928
  br i1 %164, label %165, label %181, !dbg !1928

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1930
  br i1 %166, label %167, label %169, !dbg !1934

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1930
  store i8 39, i8* %168, align 1, !dbg !1930, !tbaa !1361
  br label %169, !dbg !1930

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %170, metadata !1770, metadata !DIExpression()), !dbg !1818
  %171 = icmp ult i64 %170, %130, !dbg !1935
  br i1 %171, label %172, label %174, !dbg !1938

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1935
  store i8 36, i8* %173, align 1, !dbg !1935, !tbaa !1361
  br label %174, !dbg !1935

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %175, metadata !1770, metadata !DIExpression()), !dbg !1818
  %176 = icmp ult i64 %175, %130, !dbg !1939
  br i1 %176, label %177, label %179, !dbg !1942

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1939
  store i8 39, i8* %178, align 1, !dbg !1939, !tbaa !1361
  br label %179, !dbg !1939

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %180, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, metadata !1777, metadata !DIExpression()), !dbg !1818
  br label %181, !dbg !1943

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1818
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %183, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %182, metadata !1770, metadata !DIExpression()), !dbg !1818
  %184 = icmp ult i64 %182, %130, !dbg !1944
  br i1 %184, label %185, label %187, !dbg !1947

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1944
  store i8 92, i8* %186, align 1, !dbg !1944, !tbaa !1361
  br label %187, !dbg !1944

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %188, metadata !1770, metadata !DIExpression()), !dbg !1818
  br i1 %103, label %189, label %463, !dbg !1948

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1950
  %191 = icmp ult i64 %190, %155, !dbg !1951
  br i1 %191, label %192, label %463, !dbg !1952

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1953
  %194 = load i8, i8* %193, align 1, !dbg !1953, !tbaa !1361
  %195 = add i8 %194, -48, !dbg !1954
  %196 = icmp ult i8 %195, 10, !dbg !1954
  br i1 %196, label %197, label %463, !dbg !1954

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1955
  br i1 %198, label %199, label %201, !dbg !1959

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1955
  store i8 48, i8* %200, align 1, !dbg !1955, !tbaa !1361
  br label %201, !dbg !1955

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %202, metadata !1770, metadata !DIExpression()), !dbg !1818
  %203 = icmp ult i64 %202, %130, !dbg !1960
  br i1 %203, label %204, label %206, !dbg !1963

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1960
  store i8 48, i8* %205, align 1, !dbg !1960, !tbaa !1361
  br label %206, !dbg !1960

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1963
  call void @llvm.dbg.value(metadata i64 %207, metadata !1770, metadata !DIExpression()), !dbg !1818
  br label %463, !dbg !1964

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1965

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1966

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1967

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1968

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1969
  %214 = icmp ult i64 %213, %155, !dbg !1970
  br i1 %214, label %215, label %463, !dbg !1971

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1972
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1973
  %218 = load i8, i8* %217, align 1, !dbg !1973, !tbaa !1361
  %219 = icmp eq i8 %218, 63, !dbg !1974
  br i1 %219, label %220, label %463, !dbg !1975

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1976
  %222 = load i8, i8* %221, align 1, !dbg !1976, !tbaa !1361
  %223 = sext i8 %222 to i32, !dbg !1976
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
  ], !dbg !1977

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1978

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i64 %213, metadata !1769, metadata !DIExpression()), !dbg !1818
  %226 = icmp ult i64 %124, %130, !dbg !1980
  br i1 %226, label %227, label %229, !dbg !1983

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1980
  store i8 63, i8* %228, align 1, !dbg !1980, !tbaa !1361
  br label %229, !dbg !1980

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %230, metadata !1770, metadata !DIExpression()), !dbg !1818
  %231 = icmp ult i64 %230, %130, !dbg !1984
  br i1 %231, label %232, label %234, !dbg !1987

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1984
  store i8 34, i8* %233, align 1, !dbg !1984, !tbaa !1361
  br label %234, !dbg !1984

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %235, metadata !1770, metadata !DIExpression()), !dbg !1818
  %236 = icmp ult i64 %235, %130, !dbg !1988
  br i1 %236, label %237, label %239, !dbg !1991

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1988
  store i8 34, i8* %238, align 1, !dbg !1988, !tbaa !1361
  br label %239, !dbg !1988

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %240, metadata !1770, metadata !DIExpression()), !dbg !1818
  %241 = icmp ult i64 %240, %130, !dbg !1992
  br i1 %241, label %242, label %244, !dbg !1995

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1992
  store i8 63, i8* %243, align 1, !dbg !1992, !tbaa !1361
  br label %244, !dbg !1992

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %245, metadata !1770, metadata !DIExpression()), !dbg !1818
  br label %463, !dbg !1996

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1784, metadata !DIExpression()), !dbg !1910
  br label %256, !dbg !1997

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1784, metadata !DIExpression()), !dbg !1910
  br label %256, !dbg !1998

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1784, metadata !DIExpression()), !dbg !1910
  br label %254, !dbg !1999

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1784, metadata !DIExpression()), !dbg !1910
  br label %254, !dbg !2000

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1784, metadata !DIExpression()), !dbg !1910
  br label %256, !dbg !2001

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1784, metadata !DIExpression()), !dbg !1910
  br i1 %110, label %252, label %253, !dbg !2002

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2003

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2006

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2007
  call void @llvm.dbg.value(metadata i8 %255, metadata !1784, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.label(metadata !1813), !dbg !2008
  br i1 %111, label %256, label %625, !dbg !2009

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2007
  call void @llvm.dbg.value(metadata i8 %257, metadata !1784, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.label(metadata !1814), !dbg !2011
  br i1 %102, label %488, label %463, !dbg !2012

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2013

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2014, !tbaa !1361
  %261 = icmp eq i8 %260, 0, !dbg !2015
  br i1 %261, label %262, label %463, !dbg !2016

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2017
  br i1 %263, label %264, label %463, !dbg !2019

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1787, metadata !DIExpression()), !dbg !1910
  br label %265, !dbg !2020

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1910
  call void @llvm.dbg.value(metadata i8 %266, metadata !1787, metadata !DIExpression()), !dbg !1910
  br i1 %111, label %463, label %625, !dbg !2021

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, metadata !1787, metadata !DIExpression()), !dbg !1910
  br i1 %110, label %268, label %463, !dbg !2022

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2023

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2025
  %271 = icmp ne i64 %125, 0, !dbg !2027
  %272 = or i1 %271, %270, !dbg !2028
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2028
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %274, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %273, metadata !1771, metadata !DIExpression()), !dbg !1818
  %275 = icmp ult i64 %124, %274, !dbg !2029
  br i1 %275, label %276, label %278, !dbg !2032

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2029
  store i8 39, i8* %277, align 1, !dbg !2029, !tbaa !1361
  br label %278, !dbg !2029

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %279, metadata !1770, metadata !DIExpression()), !dbg !1818
  %280 = icmp ult i64 %279, %274, !dbg !2033
  br i1 %280, label %281, label %283, !dbg !2036

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2033
  store i8 92, i8* %282, align 1, !dbg !2033, !tbaa !1361
  br label %283, !dbg !2033

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %284, metadata !1770, metadata !DIExpression()), !dbg !1818
  %285 = icmp ult i64 %284, %274, !dbg !2037
  br i1 %285, label %286, label %288, !dbg !2040

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2037
  store i8 39, i8* %287, align 1, !dbg !2037, !tbaa !1361
  br label %288, !dbg !2037

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %289, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1818
  br label %463, !dbg !2041

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2042

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1788, metadata !DIExpression()), !dbg !2043
  %292 = tail call i16** @__ctype_b_loc() #25, !dbg !2044
  %293 = load i16*, i16** %292, align 8, !dbg !2044, !tbaa !1112
  %294 = zext i8 %158 to i64, !dbg !2044
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2044
  %296 = load i16, i16* %295, align 2, !dbg !2044, !tbaa !2046
  %297 = lshr i16 %296, 14, !dbg !2048
  %298 = trunc i16 %297 to i8, !dbg !2048
  %299 = and i8 %298, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i8 %299, metadata !1791, metadata !DIExpression()), !dbg !2043
  br label %355, !dbg !2049

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2050
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1792, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8* %23, metadata !2052, metadata !DIExpression()) #18, !dbg !2060
  call void @llvm.dbg.value(metadata i32 0, metadata !2058, metadata !DIExpression()) #18, !dbg !2060
  call void @llvm.dbg.value(metadata i64 8, metadata !2059, metadata !DIExpression()) #18, !dbg !2060
  store i64 0, i64* %10, align 8, !dbg !2062
  call void @llvm.dbg.value(metadata i64 0, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 1, metadata !1791, metadata !DIExpression()), !dbg !2043
  %301 = icmp eq i64 %155, -1, !dbg !2063
  br i1 %301, label %302, label %304, !dbg !2065

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #22, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %303, metadata !1763, metadata !DIExpression()), !dbg !1818
  br label %304, !dbg !2067

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1910
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  br label %306, !dbg !2068

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2069
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2070
  call void @llvm.dbg.value(metadata i8 %308, metadata !1791, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2071
  %309 = add i64 %307, %123, !dbg !2072
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2073
  %311 = sub i64 %305, %309, !dbg !2074
  call void @llvm.dbg.value(metadata i32* %12, metadata !1798, metadata !DIExpression(DW_OP_deref)), !dbg !1831
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #18, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %312, metadata !1801, metadata !DIExpression()), !dbg !1831
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2076

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  %314 = icmp ugt i64 %305, %309, !dbg !2077
  br i1 %314, label %315, label %340, !dbg !2079

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2080
  br label %317, !dbg !2080

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1788, metadata !DIExpression()), !dbg !2043
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2081
  %321 = load i8, i8* %320, align 1, !dbg !2081, !tbaa !1361
  %322 = icmp eq i8 %321, 0, !dbg !2079
  br i1 %322, label %340, label %323, !dbg !2080

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %324, metadata !1788, metadata !DIExpression()), !dbg !2043
  %325 = add i64 %324, %123, !dbg !2083
  %326 = icmp ult i64 %325, %305, !dbg !2077
  br i1 %326, label %317, label %340, !dbg !2079, !llvm.loop !2084

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2085
  %329 = and i1 %113, %328, !dbg !2088
  call void @llvm.dbg.value(metadata i64 1, metadata !1802, metadata !DIExpression()), !dbg !2089
  br i1 %329, label %330, label %343, !dbg !2088

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1802, metadata !DIExpression()), !dbg !2089
  %332 = add i64 %331, %309, !dbg !2090
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2091
  %334 = load i8, i8* %333, align 1, !dbg !2091, !tbaa !1361
  %335 = sext i8 %334 to i32, !dbg !2091
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2092

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %337, metadata !1802, metadata !DIExpression()), !dbg !2089
  %338 = icmp eq i64 %337, %312, !dbg !2085
  br i1 %338, label %343, label %330, !dbg !2094, !llvm.loop !2095

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 %308, metadata !1791, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %307, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 %308, metadata !1791, metadata !DIExpression()), !dbg !2043
  br label %340, !dbg !2097

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2097
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2098, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %344, metadata !1798, metadata !DIExpression()), !dbg !1831
  %345 = call i32 @iswprint(i32 %344) #18, !dbg !2100
  %346 = icmp eq i32 %345, 0, !dbg !2100
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2101
  call void @llvm.dbg.value(metadata i8 %347, metadata !1791, metadata !DIExpression()), !dbg !2043
  %348 = add i64 %312, %307, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %348, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i8 %347, metadata !1791, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %348, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2097
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #22, !dbg !2103
  %350 = icmp eq i32 %349, 0, !dbg !2104
  br i1 %350, label %306, label %351, !dbg !2105, !llvm.loop !2106

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2108
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 2, metadata !1764, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %99, metadata !1774, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %305, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #18, !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #18, !dbg !2108
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1910
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2109
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2109
  call void @llvm.dbg.value(metadata i8 %358, metadata !1791, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %357, metadata !1788, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i64 %356, metadata !1763, metadata !DIExpression()), !dbg !1818
  %359 = and i8 %358, 1, !dbg !2110
  %360 = icmp ne i8 %359, 0, !dbg !2110
  call void @llvm.dbg.value(metadata i8 %359, metadata !1787, metadata !DIExpression()), !dbg !1910
  %361 = icmp ult i64 %357, 2, !dbg !2111
  %362 = or i1 %360, %114, !dbg !2112
  %363 = and i1 %361, %362, !dbg !2113
  br i1 %363, label %463, label %364, !dbg !2113

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2114
  call void @llvm.dbg.value(metadata i64 %365, metadata !1809, metadata !DIExpression()), !dbg !2115
  br label %366, !dbg !2116

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1903
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1818
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1839
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1910
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1910
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2117
  call void @llvm.dbg.value(metadata i8 %372, metadata !1786, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %371, metadata !1785, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %370, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %369, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %368, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %367, metadata !1769, metadata !DIExpression()), !dbg !1818
  br i1 %362, label %419, label %373, !dbg !2118

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2123

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1786, metadata !DIExpression()), !dbg !1910
  %375 = and i8 %369, 1, !dbg !2126
  %376 = icmp eq i8 %375, 0, !dbg !2126
  %377 = and i1 %110, %376, !dbg !2126
  br i1 %377, label %378, label %394, !dbg !2126

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2128
  br i1 %379, label %380, label %382, !dbg !2132

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2128
  store i8 39, i8* %381, align 1, !dbg !2128, !tbaa !1361
  br label %382, !dbg !2128

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %383, metadata !1770, metadata !DIExpression()), !dbg !1818
  %384 = icmp ult i64 %383, %130, !dbg !2133
  br i1 %384, label %385, label %387, !dbg !2136

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2133
  store i8 36, i8* %386, align 1, !dbg !2133, !tbaa !1361
  br label %387, !dbg !2133

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2136
  call void @llvm.dbg.value(metadata i64 %388, metadata !1770, metadata !DIExpression()), !dbg !1818
  %389 = icmp ult i64 %388, %130, !dbg !2137
  br i1 %389, label %390, label %392, !dbg !2140

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2137
  store i8 39, i8* %391, align 1, !dbg !2137, !tbaa !1361
  br label %392, !dbg !2137

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %393, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, metadata !1777, metadata !DIExpression()), !dbg !1818
  br label %394, !dbg !2141

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1818
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %396, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %395, metadata !1770, metadata !DIExpression()), !dbg !1818
  %397 = icmp ult i64 %395, %130, !dbg !2142
  br i1 %397, label %398, label %400, !dbg !2145

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2142
  store i8 92, i8* %399, align 1, !dbg !2142, !tbaa !1361
  br label %400, !dbg !2142

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %401, metadata !1770, metadata !DIExpression()), !dbg !1818
  %402 = icmp ult i64 %401, %130, !dbg !2146
  br i1 %402, label %403, label %407, !dbg !2149

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2146
  %405 = or i8 %404, 48, !dbg !2146
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2146
  store i8 %405, i8* %406, align 1, !dbg !2146, !tbaa !1361
  br label %407, !dbg !2146

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %408, metadata !1770, metadata !DIExpression()), !dbg !1818
  %409 = icmp ult i64 %408, %130, !dbg !2150
  br i1 %409, label %410, label %415, !dbg !2153

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2150
  %412 = and i8 %411, 7, !dbg !2150
  %413 = or i8 %412, 48, !dbg !2150
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2150
  store i8 %413, i8* %414, align 1, !dbg !2150, !tbaa !1361
  br label %415, !dbg !2150

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %416, metadata !1770, metadata !DIExpression()), !dbg !1818
  %417 = and i8 %370, 7, !dbg !2154
  %418 = or i8 %417, 48, !dbg !2155
  call void @llvm.dbg.value(metadata i8 %418, metadata !1780, metadata !DIExpression()), !dbg !1910
  br label %428, !dbg !2156

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2157
  %421 = icmp eq i8 %420, 0, !dbg !2157
  br i1 %421, label %428, label %422, !dbg !2159

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2160
  br i1 %423, label %424, label %426, !dbg !2164

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2160
  store i8 92, i8* %425, align 1, !dbg !2160, !tbaa !1361
  br label %426, !dbg !2160

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %427, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1910
  br label %428, !dbg !2165

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1818
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1839
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1910
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1910
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1910
  call void @llvm.dbg.value(metadata i8 %433, metadata !1786, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %432, metadata !1785, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %431, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %430, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %429, metadata !1770, metadata !DIExpression()), !dbg !1818
  %434 = add i64 %367, 1, !dbg !2166
  %435 = icmp ugt i64 %365, %434, !dbg !2168
  br i1 %435, label %436, label %526, !dbg !2169

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2170
  %438 = icmp ne i8 %437, 0, !dbg !2170
  %439 = and i8 %433, 1, !dbg !2170
  %440 = icmp eq i8 %439, 0, !dbg !2170
  %441 = and i1 %438, %440, !dbg !2170
  br i1 %441, label %442, label %453, !dbg !2170

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2173
  br i1 %443, label %444, label %446, !dbg !2177

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2173
  store i8 39, i8* %445, align 1, !dbg !2173, !tbaa !1361
  br label %446, !dbg !2173

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %447, metadata !1770, metadata !DIExpression()), !dbg !1818
  %448 = icmp ult i64 %447, %130, !dbg !2178
  br i1 %448, label %449, label %451, !dbg !2181

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2178
  store i8 39, i8* %450, align 1, !dbg !2178, !tbaa !1361
  br label %451, !dbg !2178

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %452, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1818
  br label %453, !dbg !2182

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2183
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %455, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %454, metadata !1770, metadata !DIExpression()), !dbg !1818
  %456 = icmp ult i64 %454, %130, !dbg !2184
  br i1 %456, label %457, label %459, !dbg !2187

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2184
  store i8 %431, i8* %458, align 1, !dbg !2184, !tbaa !1361
  br label %459, !dbg !2184

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %460, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %434, metadata !1769, metadata !DIExpression()), !dbg !1818
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2188
  %462 = load i8, i8* %461, align 1, !dbg !2188, !tbaa !1361
  call void @llvm.dbg.value(metadata i8 %462, metadata !1780, metadata !DIExpression()), !dbg !1910
  br label %366, !dbg !2189, !llvm.loop !2190

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1903
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1818
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1835
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2193
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1818
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1818
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1910
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1910
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1910
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %472, metadata !1787, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %471, metadata !1786, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %156, metadata !1785, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %470, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %469, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %468, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %467, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %466, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %465, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %464, metadata !1769, metadata !DIExpression()), !dbg !1818
  br i1 %117, label %486, label %474, !dbg !2194

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2195
  %476 = zext i8 %475 to i64, !dbg !2195
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2196
  %478 = load i32, i32* %477, align 4, !dbg !2196, !tbaa !1208
  %479 = and i8 %470, 31, !dbg !2197
  %480 = zext i8 %479 to i32, !dbg !2197
  %481 = shl nuw i32 1, %480, !dbg !2198
  %482 = and i32 %478, %481, !dbg !2198
  %483 = icmp eq i32 %482, 0, !dbg !2198
  %484 = icmp eq i8 %156, 0, !dbg !2199
  %485 = and i1 %484, %483, !dbg !2200
  br i1 %485, label %526, label %488, !dbg !2200

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2199
  br i1 %487, label %526, label %488, !dbg !2201

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2202
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1818
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1835
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2193
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1839
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1840
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1910
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1910
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %496, metadata !1787, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %495, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %494, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %493, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %492, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %491, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %490, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %489, metadata !1769, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.label(metadata !1815), !dbg !2203
  br i1 %109, label %498, label %629, !dbg !2204

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1786, metadata !DIExpression()), !dbg !1910
  %499 = and i8 %493, 1, !dbg !2206
  %500 = icmp eq i8 %499, 0, !dbg !2206
  %501 = and i1 %110, %500, !dbg !2206
  br i1 %501, label %502, label %518, !dbg !2206

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2208
  br i1 %503, label %504, label %506, !dbg !2212

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2208
  store i8 39, i8* %505, align 1, !dbg !2208, !tbaa !1361
  br label %506, !dbg !2208

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %507, metadata !1770, metadata !DIExpression()), !dbg !1818
  %508 = icmp ult i64 %507, %497, !dbg !2213
  br i1 %508, label %509, label %511, !dbg !2216

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2213
  store i8 36, i8* %510, align 1, !dbg !2213, !tbaa !1361
  br label %511, !dbg !2213

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %512, metadata !1770, metadata !DIExpression()), !dbg !1818
  %513 = icmp ult i64 %512, %497, !dbg !2217
  br i1 %513, label %514, label %516, !dbg !2220

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2217
  store i8 39, i8* %515, align 1, !dbg !2217, !tbaa !1361
  br label %516, !dbg !2217

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %517, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 1, metadata !1777, metadata !DIExpression()), !dbg !1818
  br label %518, !dbg !2221

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1910
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %520, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %519, metadata !1770, metadata !DIExpression()), !dbg !1818
  %521 = icmp ult i64 %519, %497, !dbg !2222
  br i1 %521, label %522, label %524, !dbg !2225

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2222
  store i8 92, i8* %523, align 1, !dbg !2222, !tbaa !1361
  br label %524, !dbg !2222

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %525, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %536, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %535, metadata !1787, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %534, metadata !1786, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %533, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %532, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %531, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %530, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %529, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %528, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %527, metadata !1769, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.label(metadata !1816), !dbg !2226
  br label %553, !dbg !2227

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2202
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1818
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1835
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2193
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1839
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1840
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2230
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1910
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1910
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %535, metadata !1787, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %534, metadata !1786, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %533, metadata !1780, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 %532, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %531, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %530, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %529, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %528, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %527, metadata !1769, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.label(metadata !1816), !dbg !2226
  %537 = and i8 %531, 1, !dbg !2227
  %538 = icmp ne i8 %537, 0, !dbg !2227
  %539 = and i8 %534, 1, !dbg !2227
  %540 = icmp eq i8 %539, 0, !dbg !2227
  %541 = and i1 %538, %540, !dbg !2227
  br i1 %541, label %542, label %553, !dbg !2227

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2231
  br i1 %543, label %544, label %546, !dbg !2235

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2231
  store i8 39, i8* %545, align 1, !dbg !2231, !tbaa !1361
  br label %546, !dbg !2231

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %547, metadata !1770, metadata !DIExpression()), !dbg !1818
  %548 = icmp ult i64 %547, %536, !dbg !2236
  br i1 %548, label %549, label %551, !dbg !2239

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2236
  store i8 39, i8* %550, align 1, !dbg !2236, !tbaa !1361
  br label %551, !dbg !2236

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %552, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1818
  br label %553, !dbg !2240

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1910
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1818
  call void @llvm.dbg.value(metadata i8 %562, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %561, metadata !1770, metadata !DIExpression()), !dbg !1818
  %563 = icmp ult i64 %561, %554, !dbg !2241
  br i1 %563, label %564, label %566, !dbg !2244

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2241
  store i8 %556, i8* %565, align 1, !dbg !2241, !tbaa !1361
  br label %566, !dbg !2241

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %567, metadata !1770, metadata !DIExpression()), !dbg !1818
  %568 = and i8 %555, 1, !dbg !2245
  %569 = icmp eq i8 %568, 0, !dbg !2245
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2247
  call void @llvm.dbg.value(metadata i8 %570, metadata !1779, metadata !DIExpression()), !dbg !1818
  br label %571, !dbg !2248

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2202
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1818
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1835
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2193
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1839
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1818
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1841
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %578, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %577, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %576, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %575, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %574, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %573, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %572, metadata !1769, metadata !DIExpression()), !dbg !1818
  %580 = add i64 %572, 1, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %580, metadata !1769, metadata !DIExpression()), !dbg !1818
  br label %122, !dbg !2250, !llvm.loop !2251

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %127, metadata !1777, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %128, metadata !1778, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 %129, metadata !1779, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  %583 = icmp eq i64 %124, 0, !dbg !2253
  %584 = and i1 %110, %583, !dbg !2255
  %585 = xor i1 %584, true, !dbg !2255
  %586 = or i1 %109, %585, !dbg !2255
  br i1 %586, label %587, label %629, !dbg !2255

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2256
  %589 = xor i1 %588, true, !dbg !2256
  %590 = and i8 %128, 1, !dbg !2258
  %591 = icmp eq i8 %590, 0, !dbg !2258
  %592 = or i1 %591, %589, !dbg !2256
  br i1 %592, label %602, label %593, !dbg !2256

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2259
  %595 = icmp eq i8 %594, 0, !dbg !2259
  br i1 %595, label %598, label %596, !dbg !2262

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %94, metadata !1767, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %95, metadata !1768, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %125, metadata !1771, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %582, metadata !1763, metadata !DIExpression()), !dbg !1818
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2263
  br label %645, !dbg !2264

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2265
  %600 = icmp ne i64 %125, 0, !dbg !2267
  %601 = and i1 %600, %599, !dbg !2268
  br i1 %601, label %26, label %602, !dbg !2268

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %130, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  %603 = icmp ne i8* %97, null, !dbg !2269
  %604 = and i1 %603, %109, !dbg !2271
  br i1 %604, label %605, label %620, !dbg !2271

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %124, metadata !1770, metadata !DIExpression()), !dbg !1818
  %606 = load i8, i8* %97, align 1, !dbg !2272, !tbaa !1361
  %607 = icmp eq i8 %606, 0, !dbg !2275
  br i1 %607, label %620, label %608, !dbg !2275

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1772, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %611, metadata !1770, metadata !DIExpression()), !dbg !1818
  %612 = icmp ult i64 %611, %130, !dbg !2276
  br i1 %612, label %613, label %615, !dbg !2279

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2276
  store i8 %609, i8* %614, align 1, !dbg !2276, !tbaa !1361
  br label %615, !dbg !2276

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %616, metadata !1770, metadata !DIExpression()), !dbg !1818
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2280
  call void @llvm.dbg.value(metadata i8* %617, metadata !1772, metadata !DIExpression()), !dbg !1818
  %618 = load i8, i8* %617, align 1, !dbg !2272, !tbaa !1361
  %619 = icmp eq i8 %618, 0, !dbg !2275
  br i1 %619, label %620, label %608, !dbg !2275, !llvm.loop !2281

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1872
  call void @llvm.dbg.value(metadata i64 %621, metadata !1770, metadata !DIExpression()), !dbg !1818
  %622 = icmp ult i64 %621, %130, !dbg !2283
  br i1 %622, label %623, label %645, !dbg !2285

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2286
  store i8 0, i8* %624, align 1, !dbg !2287, !tbaa !1361
  br label %645, !dbg !2286

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %630, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.label(metadata !1817), !dbg !2288
  %627 = icmp eq i8 %101, 0, !dbg !2289
  %628 = select i1 %627, i32 2, i32 4, !dbg !2289
  br label %635, !dbg !2289

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1761, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i64 %630, metadata !1763, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.label(metadata !1817), !dbg !2288
  %632 = icmp eq i32 %93, 2, !dbg !2291
  %633 = icmp eq i8 %101, 0, !dbg !2289
  %634 = select i1 %633, i32 2, i32 4, !dbg !2289
  br i1 %632, label %635, label %639, !dbg !2289

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2289

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1764, metadata !DIExpression()), !dbg !1818
  %643 = and i32 %5, -3, !dbg !2292
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2293
  br label %645, !dbg !2294

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2295
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2300, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i32 %1, metadata !2301, metadata !DIExpression()), !dbg !2304
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #18, !dbg !2305
  call void @llvm.dbg.value(metadata i8* %3, metadata !2302, metadata !DIExpression()), !dbg !2304
  %4 = icmp eq i8* %3, %0, !dbg !2306
  br i1 %4, label %5, label %71, !dbg !2308

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #18, !dbg !2309
  call void @llvm.dbg.value(metadata i8* %6, metadata !2303, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %6, metadata !2310, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* undef, metadata !2316, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 85, metadata !2317, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 84, metadata !2318, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 70, metadata !2319, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 45, metadata !2320, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 56, metadata !2321, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2322, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2323, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8 0, metadata !2325, metadata !DIExpression()), !dbg !2326
  %7 = load i8, i8* %6, align 1, !dbg !2329, !tbaa !1361
  %8 = and i8 %7, -33, !dbg !2329
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2329

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2331, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* undef, metadata !2336, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 84, metadata !2337, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 70, metadata !2338, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 45, metadata !2339, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 56, metadata !2340, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2345
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2349
  %11 = load i8, i8* %10, align 1, !dbg !2349, !tbaa !1361
  %12 = and i8 %11, -33, !dbg !2349
  %13 = icmp eq i8 %12, 84, !dbg !2349
  br i1 %13, label %14, label %68, !dbg !2349

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2351, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8* undef, metadata !2356, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 70, metadata !2357, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 45, metadata !2358, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 56, metadata !2359, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2364
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2368
  %16 = load i8, i8* %15, align 1, !dbg !2368, !tbaa !1361
  %17 = and i8 %16, -33, !dbg !2368
  %18 = icmp eq i8 %17, 70, !dbg !2368
  br i1 %18, label %19, label %68, !dbg !2368

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8* undef, metadata !2375, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 45, metadata !2376, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 56, metadata !2377, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2378, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2382
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2386
  %21 = load i8, i8* %20, align 1, !dbg !2386, !tbaa !1361
  %22 = icmp eq i8 %21, 45, !dbg !2386
  br i1 %22, label %23, label %68, !dbg !2388

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2389, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8* undef, metadata !2394, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 56, metadata !2395, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2396, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2400
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2404
  %25 = load i8, i8* %24, align 1, !dbg !2404, !tbaa !1361
  %26 = icmp eq i8 %25, 56, !dbg !2404
  br i1 %26, label %27, label %68, !dbg !2406

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2407, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8* undef, metadata !2412, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2413, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2414, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2417
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2421
  %29 = load i8, i8* %28, align 1, !dbg !2421, !tbaa !1361
  %30 = icmp eq i8 %29, 0, !dbg !2421
  br i1 %30, label %31, label %68, !dbg !2423

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2424, !tbaa !1361
  %33 = icmp eq i8 %32, 96, !dbg !2425
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.78, i64 0, i64 0), !dbg !2424
  br label %71, !dbg !2426

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2331, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* undef, metadata !2336, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 66, metadata !2337, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 49, metadata !2338, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 56, metadata !2339, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 48, metadata !2340, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 51, metadata !2341, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 48, metadata !2342, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2427
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2431
  %37 = load i8, i8* %36, align 1, !dbg !2431, !tbaa !1361
  %38 = and i8 %37, -33, !dbg !2431
  %39 = icmp eq i8 %38, 66, !dbg !2431
  br i1 %39, label %40, label %68, !dbg !2431

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2351, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8* undef, metadata !2356, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 49, metadata !2357, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 56, metadata !2358, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 48, metadata !2359, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 51, metadata !2360, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 48, metadata !2361, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2432
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2434
  %42 = load i8, i8* %41, align 1, !dbg !2434, !tbaa !1361
  %43 = icmp eq i8 %42, 49, !dbg !2434
  br i1 %43, label %44, label %68, !dbg !2435

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* undef, metadata !2375, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 56, metadata !2376, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 48, metadata !2377, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 51, metadata !2378, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 48, metadata !2379, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2436
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2438
  %46 = load i8, i8* %45, align 1, !dbg !2438, !tbaa !1361
  %47 = icmp eq i8 %46, 56, !dbg !2438
  br i1 %47, label %48, label %68, !dbg !2439

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2389, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8* undef, metadata !2394, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 48, metadata !2395, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 51, metadata !2396, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 48, metadata !2397, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2440
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2442
  %50 = load i8, i8* %49, align 1, !dbg !2442, !tbaa !1361
  %51 = icmp eq i8 %50, 48, !dbg !2442
  br i1 %51, label %52, label %68, !dbg !2443

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2407, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* undef, metadata !2412, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 51, metadata !2413, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 48, metadata !2414, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2444
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2446
  %54 = load i8, i8* %53, align 1, !dbg !2446, !tbaa !1361
  %55 = icmp eq i8 %54, 51, !dbg !2446
  br i1 %55, label %56, label %68, !dbg !2447

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2448, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* undef, metadata !2453, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 48, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 0, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8 0, metadata !2456, metadata !DIExpression()), !dbg !2457
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2461
  %58 = load i8, i8* %57, align 1, !dbg !2461, !tbaa !1361
  %59 = icmp eq i8 %58, 48, !dbg !2461
  br i1 %59, label %60, label %68, !dbg !2463

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2464, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* undef, metadata !2469, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 0, metadata !2470, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 0, metadata !2471, metadata !DIExpression()), !dbg !2472
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2476
  %62 = load i8, i8* %61, align 1, !dbg !2476, !tbaa !1361
  %63 = icmp eq i8 %62, 0, !dbg !2476
  br i1 %63, label %64, label %68, !dbg !2478

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2479, !tbaa !1361
  %66 = icmp eq i8 %65, 96, !dbg !2480
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.79, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.80, i64 0, i64 0), !dbg !2479
  br label %71, !dbg !2481

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2482
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.75, i64 0, i64 0), !dbg !2483
  br label %71, !dbg !2484

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2304
  ret i8* %72, !dbg !2485
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #11

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !336 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !340 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #17

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2486 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %1, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* %0, metadata !2494, metadata !DIExpression()) #18, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %1, metadata !2499, metadata !DIExpression()) #18, !dbg !2507
  call void @llvm.dbg.value(metadata i64* null, metadata !2500, metadata !DIExpression()) #18, !dbg !2507
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2501, metadata !DIExpression()) #18, !dbg !2507
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2509
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2509
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2502, metadata !DIExpression()) #18, !dbg !2507
  %6 = tail call i32* @__errno_location() #25, !dbg !2510
  %7 = load i32, i32* %6, align 4, !dbg !2510, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %7, metadata !2503, metadata !DIExpression()) #18, !dbg !2507
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2511
  %9 = load i32, i32* %8, align 4, !dbg !2511, !tbaa !1703
  %10 = or i32 %9, 1, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %10, metadata !2504, metadata !DIExpression()) #18, !dbg !2507
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2513
  %12 = load i32, i32* %11, align 8, !dbg !2513, !tbaa !1651
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2514
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2515
  %15 = load i8*, i8** %14, align 8, !dbg !2515, !tbaa !1726
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2516
  %17 = load i8*, i8** %16, align 8, !dbg !2516, !tbaa !1729
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #18, !dbg !2517
  %19 = add i64 %18, 1, !dbg !2518
  call void @llvm.dbg.value(metadata i64 %19, metadata !2505, metadata !DIExpression()) #18, !dbg !2507
  call void @llvm.dbg.value(metadata i64 %19, metadata !2519, metadata !DIExpression()) #18, !dbg !2524
  %20 = tail call noalias i8* @xmalloc(i64 %19) #18, !dbg !2526
  call void @llvm.dbg.value(metadata i8* %20, metadata !2506, metadata !DIExpression()) #18, !dbg !2507
  %21 = load i32, i32* %11, align 8, !dbg !2527, !tbaa !1651
  %22 = load i8*, i8** %14, align 8, !dbg !2528, !tbaa !1726
  %23 = load i8*, i8** %16, align 8, !dbg !2529, !tbaa !1729
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #18, !dbg !2530
  store i32 %7, i32* %6, align 4, !dbg !2531, !tbaa !1208
  ret i8* %20, !dbg !2532
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2495 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2494, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %1, metadata !2499, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64* %2, metadata !2500, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2501, metadata !DIExpression()), !dbg !2533
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2534
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2502, metadata !DIExpression()), !dbg !2533
  %7 = tail call i32* @__errno_location() #25, !dbg !2535
  %8 = load i32, i32* %7, align 4, !dbg !2535, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %8, metadata !2503, metadata !DIExpression()), !dbg !2533
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2536
  %10 = load i32, i32* %9, align 4, !dbg !2536, !tbaa !1703
  %11 = icmp ne i64* %2, null, !dbg !2537
  %12 = xor i1 %11, true, !dbg !2537
  %13 = zext i1 %12 to i32, !dbg !2537
  %14 = or i32 %10, %13, !dbg !2538
  call void @llvm.dbg.value(metadata i32 %14, metadata !2504, metadata !DIExpression()), !dbg !2533
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2539
  %16 = load i32, i32* %15, align 8, !dbg !2539, !tbaa !1651
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2540
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2541
  %19 = load i8*, i8** %18, align 8, !dbg !2541, !tbaa !1726
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2542
  %21 = load i8*, i8** %20, align 8, !dbg !2542, !tbaa !1729
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2543
  %23 = add i64 %22, 1, !dbg !2544
  call void @llvm.dbg.value(metadata i64 %23, metadata !2505, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %23, metadata !2519, metadata !DIExpression()) #18, !dbg !2545
  %24 = tail call noalias i8* @xmalloc(i64 %23) #18, !dbg !2547
  call void @llvm.dbg.value(metadata i8* %24, metadata !2506, metadata !DIExpression()), !dbg !2533
  %25 = load i32, i32* %15, align 8, !dbg !2548, !tbaa !1651
  %26 = load i8*, i8** %18, align 8, !dbg !2549, !tbaa !1726
  %27 = load i8*, i8** %20, align 8, !dbg !2550, !tbaa !1729
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2551
  store i32 %8, i32* %7, align 4, !dbg !2552, !tbaa !1208
  br i1 %11, label %29, label %30, !dbg !2553

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2554, !tbaa !2556
  br label %30, !dbg !2558

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2559
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2560 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2564, !tbaa !1112
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 1, metadata !2563, metadata !DIExpression()), !dbg !2565
  %2 = load i32, i32* @nslots, align 4, !dbg !2566, !tbaa !1208
  %3 = icmp sgt i32 %2, 1, !dbg !2569
  br i1 %3, label %4, label %12, !dbg !2570

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2563, metadata !DIExpression()), !dbg !2565
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2571
  %7 = load i8*, i8** %6, align 8, !dbg !2571, !tbaa !2572
  tail call void @free(i8* %7) #18, !dbg !2574
  %8 = add nuw nsw i64 %5, 1, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %8, metadata !2563, metadata !DIExpression()), !dbg !2565
  %9 = load i32, i32* @nslots, align 4, !dbg !2566, !tbaa !1208
  %10 = sext i32 %9 to i64, !dbg !2569
  %11 = icmp slt i64 %8, %10, !dbg !2569
  br i1 %11, label %4, label %12, !dbg !2570, !llvm.loop !2576

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2578
  %14 = load i8*, i8** %13, align 8, !dbg !2578, !tbaa !2572
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2580
  br i1 %15, label %17, label %16, !dbg !2581

16:                                               ; preds = %12
  tail call void @free(i8* %14) #18, !dbg !2582
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2584, !tbaa !2585
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2586, !tbaa !2572
  br label %17, !dbg !2587

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2588
  br i1 %18, label %21, label %19, !dbg !2590

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2591
  tail call void @free(i8* %20) #18, !dbg !2593
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2594, !tbaa !1112
  br label %21, !dbg !2595

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2596, !tbaa !1208
  ret void, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2598 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %1, metadata !2601, metadata !DIExpression()), !dbg !2602
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2603
  ret i8* %3, !dbg !2604
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2605 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2609, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %1, metadata !2610, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i64 %2, metadata !2611, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2612, metadata !DIExpression()), !dbg !2624
  %5 = tail call i32* @__errno_location() #25, !dbg !2625
  %6 = load i32, i32* %5, align 4, !dbg !2625, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %6, metadata !2613, metadata !DIExpression()), !dbg !2624
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2626, !tbaa !1112
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2614, metadata !DIExpression()), !dbg !2624
  %8 = icmp slt i32 %0, 0, !dbg !2627
  br i1 %8, label %9, label %10, !dbg !2629

9:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2630
  unreachable, !dbg !2630

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2631, !tbaa !1208
  %12 = icmp sgt i32 %11, %0, !dbg !2632
  br i1 %12, label %34, label %13, !dbg !2633

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2634
  call void @llvm.dbg.value(metadata i1 %14, metadata !2615, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2618, metadata !DIExpression()), !dbg !2635
  %15 = icmp eq i32 %0, 2147483647, !dbg !2636
  br i1 %15, label %16, label %17, !dbg !2638

16:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !2639
  unreachable, !dbg !2639

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2640
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2640
  %20 = add nuw nsw i32 %0, 1, !dbg !2641
  %21 = sext i32 %20 to i64, !dbg !2642
  %22 = shl nuw nsw i64 %21, 4, !dbg !2643
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #18, !dbg !2644
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2614, metadata !DIExpression()), !dbg !2624
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2645, !tbaa !1112
  br i1 %14, label %25, label %26, !dbg !2646

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2647, !tbaa.struct !2649
  br label %26, !dbg !2650

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2651, !tbaa !1208
  %28 = sext i32 %27 to i64, !dbg !2652
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2652
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2653
  %31 = sub nsw i32 %20, %27, !dbg !2654
  %32 = sext i32 %31 to i64, !dbg !2655
  %33 = shl nsw i64 %32, 4, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %30, metadata !2052, metadata !DIExpression()) #18, !dbg !2657
  call void @llvm.dbg.value(metadata i32 0, metadata !2058, metadata !DIExpression()) #18, !dbg !2657
  call void @llvm.dbg.value(metadata i64 %33, metadata !2059, metadata !DIExpression()) #18, !dbg !2657
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #18, !dbg !2659
  store i32 %20, i32* @nslots, align 4, !dbg !2660, !tbaa !1208
  br label %34, !dbg !2661

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2624
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2614, metadata !DIExpression()), !dbg !2624
  %36 = zext i32 %0 to i64, !dbg !2662
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2663
  %38 = load i64, i64* %37, align 8, !dbg !2663, !tbaa !2585
  call void @llvm.dbg.value(metadata i64 %38, metadata !2619, metadata !DIExpression()), !dbg !2664
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2665
  %40 = load i8*, i8** %39, align 8, !dbg !2665, !tbaa !2572
  call void @llvm.dbg.value(metadata i8* %40, metadata !2621, metadata !DIExpression()), !dbg !2664
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2666
  %42 = load i32, i32* %41, align 4, !dbg !2666, !tbaa !1703
  %43 = or i32 %42, 1, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %43, metadata !2622, metadata !DIExpression()), !dbg !2664
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2668
  %45 = load i32, i32* %44, align 8, !dbg !2668, !tbaa !1651
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2669
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2670
  %48 = load i8*, i8** %47, align 8, !dbg !2670, !tbaa !1726
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2671
  %50 = load i8*, i8** %49, align 8, !dbg !2671, !tbaa !1729
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2672
  call void @llvm.dbg.value(metadata i64 %51, metadata !2623, metadata !DIExpression()), !dbg !2664
  %52 = icmp ugt i64 %38, %51, !dbg !2673
  br i1 %52, label %63, label %53, !dbg !2675

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %54, metadata !2619, metadata !DIExpression()), !dbg !2664
  store i64 %54, i64* %37, align 8, !dbg !2678, !tbaa !2585
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2679
  br i1 %55, label %57, label %56, !dbg !2681

56:                                               ; preds = %53
  tail call void @free(i8* %40) #18, !dbg !2682
  br label %57, !dbg !2682

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2519, metadata !DIExpression()) #18, !dbg !2683
  %58 = tail call noalias i8* @xmalloc(i64 %54) #18, !dbg !2685
  call void @llvm.dbg.value(metadata i8* %58, metadata !2621, metadata !DIExpression()), !dbg !2664
  store i8* %58, i8** %39, align 8, !dbg !2686, !tbaa !2572
  %59 = load i32, i32* %44, align 8, !dbg !2687, !tbaa !1651
  %60 = load i8*, i8** %47, align 8, !dbg !2688, !tbaa !1726
  %61 = load i8*, i8** %49, align 8, !dbg !2689, !tbaa !1729
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2690
  br label %63, !dbg !2691

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2664
  call void @llvm.dbg.value(metadata i8* %64, metadata !2621, metadata !DIExpression()), !dbg !2664
  store i32 %6, i32* %5, align 4, !dbg !2692, !tbaa !1208
  ret i8* %64, !dbg !2693
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2694 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8* %1, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %2, metadata !2700, metadata !DIExpression()), !dbg !2701
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2702
  ret i8* %4, !dbg !2703
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2704 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 0, metadata !2600, metadata !DIExpression()) #18, !dbg !2708
  call void @llvm.dbg.value(metadata i8* %0, metadata !2601, metadata !DIExpression()) #18, !dbg !2708
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2710
  ret i8* %2, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2712 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %1, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2698, metadata !DIExpression()) #18, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %0, metadata !2699, metadata !DIExpression()) #18, !dbg !2719
  call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()) #18, !dbg !2719
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #18, !dbg !2721
  ret i8* %3, !dbg !2722
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2723 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2727, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 %1, metadata !2728, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %2, metadata !2729, metadata !DIExpression()), !dbg !2731
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2732
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2732
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2730, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %1, metadata !2734, metadata !DIExpression()) #18, !dbg !2740
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2739, metadata !DIExpression()) #18, !dbg !2742
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2742, !alias.scope !2743
  %6 = icmp eq i32 %1, 10, !dbg !2746
  br i1 %6, label %7, label %8, !dbg !2748

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2749, !noalias !2743
  unreachable, !dbg !2749

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2750
  store i32 %1, i32* %9, align 8, !dbg !2751, !tbaa !1651, !alias.scope !2743
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2752
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2753
  ret i8* %10, !dbg !2754
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2755 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2759, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %1, metadata !2760, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8* %2, metadata !2761, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %3, metadata !2762, metadata !DIExpression()), !dbg !2764
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2765
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2765
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2763, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %1, metadata !2734, metadata !DIExpression()) #18, !dbg !2767
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2739, metadata !DIExpression()) #18, !dbg !2769
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #18, !dbg !2769, !alias.scope !2770
  %7 = icmp eq i32 %1, 10, !dbg !2773
  br i1 %7, label %8, label %9, !dbg !2774

8:                                                ; preds = %4
  tail call void @abort() #23, !dbg !2775, !noalias !2770
  unreachable, !dbg !2775

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2776
  store i32 %1, i32* %10, align 8, !dbg !2777, !tbaa !1651, !alias.scope !2770
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2778
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2779
  ret i8* %11, !dbg !2780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2781 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2739, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2730, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 %0, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %1, metadata !2786, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2727, metadata !DIExpression()) #18, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %0, metadata !2728, metadata !DIExpression()) #18, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %1, metadata !2729, metadata !DIExpression()) #18, !dbg !2792
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2793
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %0, metadata !2734, metadata !DIExpression()) #18, !dbg !2794
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #18, !dbg !2787, !alias.scope !2795
  %5 = icmp eq i32 %0, 10, !dbg !2798
  br i1 %5, label %6, label %7, !dbg !2799

6:                                                ; preds = %2
  tail call void @abort() #23, !dbg !2800, !noalias !2795
  unreachable, !dbg !2800

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2801
  store i32 %0, i32* %8, align 8, !dbg !2802, !tbaa !1651, !alias.scope !2795
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2803
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2804
  ret i8* %9, !dbg !2805
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2806 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2739, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2763, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 %0, metadata !2810, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8* %1, metadata !2811, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i64 %2, metadata !2812, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 0, metadata !2759, metadata !DIExpression()) #18, !dbg !2818
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()) #18, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %1, metadata !2761, metadata !DIExpression()) #18, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %2, metadata !2762, metadata !DIExpression()) #18, !dbg !2818
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2819
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2819
  call void @llvm.dbg.value(metadata i32 %0, metadata !2734, metadata !DIExpression()) #18, !dbg !2820
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #18, !dbg !2813, !alias.scope !2821
  %6 = icmp eq i32 %0, 10, !dbg !2824
  br i1 %6, label %7, label %8, !dbg !2825

7:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2826, !noalias !2821
  unreachable, !dbg !2826

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2827
  store i32 %0, i32* %9, align 8, !dbg !2828, !tbaa !1651, !alias.scope !2821
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #18, !dbg !2829
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2830
  ret i8* %10, !dbg !2831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2832 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2836, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %1, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8 %2, metadata !2838, metadata !DIExpression()), !dbg !2840
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2841
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2839, metadata !DIExpression()), !dbg !2842
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2843, !tbaa.struct !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1669, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 %2, metadata !1670, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8 %2, metadata !1672, metadata !DIExpression()), !dbg !2845
  %6 = lshr i8 %2, 5, !dbg !2847
  %7 = zext i8 %6 to i64, !dbg !2847
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2848
  call void @llvm.dbg.value(metadata i32* %8, metadata !1674, metadata !DIExpression()), !dbg !2845
  %9 = and i8 %2, 31, !dbg !2849
  %10 = zext i8 %9 to i32, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %10, metadata !1676, metadata !DIExpression()), !dbg !2845
  %11 = load i32, i32* %8, align 4, !dbg !2850, !tbaa !1208
  %12 = lshr i32 %11, %10, !dbg !2851
  %13 = and i32 %12, 1, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %13, metadata !1677, metadata !DIExpression()), !dbg !2845
  %14 = xor i32 %13, 1, !dbg !2853
  %15 = shl i32 %14, %10, !dbg !2854
  %16 = xor i32 %15, %11, !dbg !2855
  store i32 %16, i32* %8, align 4, !dbg !2855, !tbaa !1208
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2856
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !2857
  ret i8* %17, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2859 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2839, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %0, metadata !2863, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8 %1, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %0, metadata !2836, metadata !DIExpression()) #18, !dbg !2868
  call void @llvm.dbg.value(metadata i64 -1, metadata !2837, metadata !DIExpression()) #18, !dbg !2868
  call void @llvm.dbg.value(metadata i8 %1, metadata !2838, metadata !DIExpression()) #18, !dbg !2868
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2869
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2870, !tbaa.struct !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1669, metadata !DIExpression()) #18, !dbg !2871
  call void @llvm.dbg.value(metadata i8 %1, metadata !1670, metadata !DIExpression()) #18, !dbg !2871
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()) #18, !dbg !2871
  call void @llvm.dbg.value(metadata i8 %1, metadata !1672, metadata !DIExpression()) #18, !dbg !2871
  %5 = lshr i8 %1, 5, !dbg !2873
  %6 = zext i8 %5 to i64, !dbg !2873
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2874
  call void @llvm.dbg.value(metadata i32* %7, metadata !1674, metadata !DIExpression()) #18, !dbg !2871
  %8 = and i8 %1, 31, !dbg !2875
  %9 = zext i8 %8 to i32, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %9, metadata !1676, metadata !DIExpression()) #18, !dbg !2871
  %10 = load i32, i32* %7, align 4, !dbg !2876, !tbaa !1208
  %11 = lshr i32 %10, %9, !dbg !2877
  %12 = and i32 %11, 1, !dbg !2878
  call void @llvm.dbg.value(metadata i32 %12, metadata !1677, metadata !DIExpression()) #18, !dbg !2871
  %13 = xor i32 %12, 1, !dbg !2879
  %14 = shl i32 %13, %9, !dbg !2880
  %15 = xor i32 %14, %10, !dbg !2881
  store i32 %15, i32* %7, align 4, !dbg !2881, !tbaa !1208
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #18, !dbg !2882
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2883
  ret i8* %16, !dbg !2884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2885 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2839, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %0, metadata !2887, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !2863, metadata !DIExpression()) #18, !dbg !2892
  call void @llvm.dbg.value(metadata i8 58, metadata !2864, metadata !DIExpression()) #18, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %0, metadata !2836, metadata !DIExpression()) #18, !dbg !2893
  call void @llvm.dbg.value(metadata i64 -1, metadata !2837, metadata !DIExpression()) #18, !dbg !2893
  call void @llvm.dbg.value(metadata i8 58, metadata !2838, metadata !DIExpression()) #18, !dbg !2893
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2894
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2895, !tbaa.struct !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1669, metadata !DIExpression()) #18, !dbg !2896
  call void @llvm.dbg.value(metadata i8 58, metadata !1670, metadata !DIExpression()) #18, !dbg !2896
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()) #18, !dbg !2896
  call void @llvm.dbg.value(metadata i8 58, metadata !1672, metadata !DIExpression()) #18, !dbg !2896
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2898
  call void @llvm.dbg.value(metadata i32* %4, metadata !1674, metadata !DIExpression()) #18, !dbg !2896
  call void @llvm.dbg.value(metadata i32 26, metadata !1676, metadata !DIExpression()) #18, !dbg !2896
  %5 = load i32, i32* %4, align 4, !dbg !2899, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %5, metadata !1677, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2896
  %6 = or i32 %5, 67108864, !dbg !2900
  store i32 %6, i32* %4, align 4, !dbg !2900, !tbaa !1208
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #18, !dbg !2901
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #18, !dbg !2902
  ret i8* %7, !dbg !2903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2904 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2839, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* %0, metadata !2906, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2907, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %0, metadata !2836, metadata !DIExpression()) #18, !dbg !2911
  call void @llvm.dbg.value(metadata i64 %1, metadata !2837, metadata !DIExpression()) #18, !dbg !2911
  call void @llvm.dbg.value(metadata i8 58, metadata !2838, metadata !DIExpression()) #18, !dbg !2911
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2912
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2912
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2913, !tbaa.struct !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1669, metadata !DIExpression()) #18, !dbg !2914
  call void @llvm.dbg.value(metadata i8 58, metadata !1670, metadata !DIExpression()) #18, !dbg !2914
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()) #18, !dbg !2914
  call void @llvm.dbg.value(metadata i8 58, metadata !1672, metadata !DIExpression()) #18, !dbg !2914
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2916
  call void @llvm.dbg.value(metadata i32* %5, metadata !1674, metadata !DIExpression()) #18, !dbg !2914
  call void @llvm.dbg.value(metadata i32 26, metadata !1676, metadata !DIExpression()) #18, !dbg !2914
  %6 = load i32, i32* %5, align 4, !dbg !2917, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %6, metadata !1677, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #18, !dbg !2914
  %7 = or i32 %6, 67108864, !dbg !2918
  store i32 %7, i32* %5, align 4, !dbg !2918, !tbaa !1208
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #18, !dbg !2919
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #18, !dbg !2920
  ret i8* %8, !dbg !2921
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2922 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2739, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2928
  call void @llvm.dbg.value(metadata i32 %0, metadata !2924, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %1, metadata !2925, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8* %2, metadata !2926, metadata !DIExpression()), !dbg !2930
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2931
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2931
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2927, metadata !DIExpression()), !dbg !2932
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2933
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2933
  call void @llvm.dbg.value(metadata i32 %1, metadata !2734, metadata !DIExpression()) #18, !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2934
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2928, !alias.scope !2935
  %8 = icmp eq i32 %1, 10, !dbg !2938
  br i1 %8, label %9, label %10, !dbg !2939

9:                                                ; preds = %3
  tail call void @abort() #23, !dbg !2940, !noalias !2935
  unreachable, !dbg !2940

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2934
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2933
  store i32 %1, i32* %11, align 8, !dbg !2933, !tbaa.struct !2844
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2933
  %13 = bitcast i32* %12 to i8*, !dbg !2933
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2933, !tbaa.struct !2844
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2933
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1669, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 58, metadata !1670, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 1, metadata !1671, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 58, metadata !1672, metadata !DIExpression()), !dbg !2941
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2943
  call void @llvm.dbg.value(metadata i32* %14, metadata !1674, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 26, metadata !1676, metadata !DIExpression()), !dbg !2941
  %15 = load i32, i32* %14, align 4, !dbg !2944, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %15, metadata !1677, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2941
  %16 = or i32 %15, 67108864, !dbg !2945
  store i32 %16, i32* %14, align 4, !dbg !2945, !tbaa !1208
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2946
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2947
  ret i8* %17, !dbg !2948
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2949 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2957, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %1, metadata !2954, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %2, metadata !2955, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i8* %3, metadata !2956, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()) #18, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %1, metadata !2963, metadata !DIExpression()) #18, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %2, metadata !2964, metadata !DIExpression()) #18, !dbg !2970
  call void @llvm.dbg.value(metadata i8* %3, metadata !2965, metadata !DIExpression()) #18, !dbg !2970
  call void @llvm.dbg.value(metadata i64 -1, metadata !2966, metadata !DIExpression()) #18, !dbg !2970
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2971
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2971
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !2972, !tbaa.struct !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1710, metadata !DIExpression()) #18, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %1, metadata !1711, metadata !DIExpression()) #18, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %2, metadata !1712, metadata !DIExpression()) #18, !dbg !2973
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1710, metadata !DIExpression()) #18, !dbg !2973
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2975
  store i32 10, i32* %7, align 8, !dbg !2976, !tbaa !1651
  %8 = icmp ne i8* %1, null, !dbg !2977
  %9 = icmp ne i8* %2, null, !dbg !2978
  %10 = and i1 %8, %9, !dbg !2979
  br i1 %10, label %12, label %11, !dbg !2979

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !2980
  unreachable, !dbg !2980

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2981
  store i8* %1, i8** %13, align 8, !dbg !2982, !tbaa !1726
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2983
  store i8* %2, i8** %14, align 8, !dbg !2984, !tbaa !1729
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #18, !dbg !2985
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !2986
  ret i8* %15, !dbg !2987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2958 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %1, metadata !2963, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %2, metadata !2964, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i8* %3, metadata !2965, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %4, metadata !2966, metadata !DIExpression()), !dbg !2988
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2989
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #18, !dbg !2989
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2957, metadata !DIExpression()), !dbg !2990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2991, !tbaa.struct !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1710, metadata !DIExpression()) #18, !dbg !2992
  call void @llvm.dbg.value(metadata i8* %1, metadata !1711, metadata !DIExpression()) #18, !dbg !2992
  call void @llvm.dbg.value(metadata i8* %2, metadata !1712, metadata !DIExpression()) #18, !dbg !2992
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1710, metadata !DIExpression()) #18, !dbg !2992
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2994
  store i32 10, i32* %8, align 8, !dbg !2995, !tbaa !1651
  %9 = icmp ne i8* %1, null, !dbg !2996
  %10 = icmp ne i8* %2, null, !dbg !2997
  %11 = and i1 %9, %10, !dbg !2998
  br i1 %11, label %13, label %12, !dbg !2998

12:                                               ; preds = %5
  tail call void @abort() #23, !dbg !2999
  unreachable, !dbg !2999

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3000
  store i8* %1, i8** %14, align 8, !dbg !3001, !tbaa !1726
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3002
  store i8* %2, i8** %15, align 8, !dbg !3003, !tbaa !1729
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3004
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #18, !dbg !3005
  ret i8* %16, !dbg !3006
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3007 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2957, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i8* %0, metadata !3011, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8* %1, metadata !3012, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i8* %2, metadata !3013, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i32 0, metadata !2953, metadata !DIExpression()) #18, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()) #18, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %1, metadata !2955, metadata !DIExpression()) #18, !dbg !3018
  call void @llvm.dbg.value(metadata i8* %2, metadata !2956, metadata !DIExpression()) #18, !dbg !3018
  call void @llvm.dbg.value(metadata i32 0, metadata !2962, metadata !DIExpression()) #18, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %0, metadata !2963, metadata !DIExpression()) #18, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %1, metadata !2964, metadata !DIExpression()) #18, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %2, metadata !2965, metadata !DIExpression()) #18, !dbg !3019
  call void @llvm.dbg.value(metadata i64 -1, metadata !2966, metadata !DIExpression()) #18, !dbg !3019
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3020
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3020
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3021, !tbaa.struct !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1710, metadata !DIExpression()) #18, !dbg !3022
  call void @llvm.dbg.value(metadata i8* %0, metadata !1711, metadata !DIExpression()) #18, !dbg !3022
  call void @llvm.dbg.value(metadata i8* %1, metadata !1712, metadata !DIExpression()) #18, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1710, metadata !DIExpression()) #18, !dbg !3022
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3024
  store i32 10, i32* %6, align 8, !dbg !3025, !tbaa !1651
  %7 = icmp ne i8* %0, null, !dbg !3026
  %8 = icmp ne i8* %1, null, !dbg !3027
  %9 = and i1 %7, %8, !dbg !3028
  br i1 %9, label %11, label %10, !dbg !3028

10:                                               ; preds = %3
  tail call void @abort() #23, !dbg !3029
  unreachable, !dbg !3029

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3030
  store i8* %0, i8** %12, align 8, !dbg !3031, !tbaa !1726
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3032
  store i8* %1, i8** %13, align 8, !dbg !3033, !tbaa !1729
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #18, !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #18, !dbg !3035
  ret i8* %14, !dbg !3036
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3037 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2957, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %0, metadata !3041, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %1, metadata !3042, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %2, metadata !3043, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %3, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i32 0, metadata !2962, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %0, metadata !2963, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %1, metadata !2964, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %2, metadata !2965, metadata !DIExpression()) #18, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %3, metadata !2966, metadata !DIExpression()) #18, !dbg !3048
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3049
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3049
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #18, !dbg !3050, !tbaa.struct !2844
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1710, metadata !DIExpression()) #18, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %0, metadata !1711, metadata !DIExpression()) #18, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %1, metadata !1712, metadata !DIExpression()) #18, !dbg !3051
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1710, metadata !DIExpression()) #18, !dbg !3051
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3053
  store i32 10, i32* %7, align 8, !dbg !3054, !tbaa !1651
  %8 = icmp ne i8* %0, null, !dbg !3055
  %9 = icmp ne i8* %1, null, !dbg !3056
  %10 = and i1 %8, %9, !dbg !3057
  br i1 %10, label %12, label %11, !dbg !3057

11:                                               ; preds = %4
  tail call void @abort() #23, !dbg !3058
  unreachable, !dbg !3058

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3059
  store i8* %0, i8** %13, align 8, !dbg !3060, !tbaa !1726
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3061
  store i8* %1, i8** %14, align 8, !dbg !3062, !tbaa !1729
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #18, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #18, !dbg !3064
  ret i8* %15, !dbg !3065
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3066 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3070, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i8* %1, metadata !3071, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %2, metadata !3072, metadata !DIExpression()), !dbg !3073
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3074
  ret i8* %4, !dbg !3075
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3076 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3080, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i32 0, metadata !3070, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %0, metadata !3071, metadata !DIExpression()) #18, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()) #18, !dbg !3083
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3085
  ret i8* %3, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3091, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8* %1, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i32 %0, metadata !3070, metadata !DIExpression()) #18, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3071, metadata !DIExpression()) #18, !dbg !3094
  call void @llvm.dbg.value(metadata i64 -1, metadata !3072, metadata !DIExpression()) #18, !dbg !3094
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3096
  ret i8* %3, !dbg !3097
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3098 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 0, metadata !3091, metadata !DIExpression()) #18, !dbg !3102
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()) #18, !dbg !3102
  call void @llvm.dbg.value(metadata i32 0, metadata !3070, metadata !DIExpression()) #18, !dbg !3104
  call void @llvm.dbg.value(metadata i8* %0, metadata !3071, metadata !DIExpression()) #18, !dbg !3104
  call void @llvm.dbg.value(metadata i64 -1, metadata !3072, metadata !DIExpression()) #18, !dbg !3104
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #18, !dbg !3106
  ret i8* %2, !dbg !3107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3108 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3116, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %1, metadata !3117, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %2, metadata !3118, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8* %3, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8** %4, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %5, metadata !3121, metadata !DIExpression()), !dbg !3122
  %7 = icmp eq i8* %1, null, !dbg !3123
  br i1 %7, label %10, label %8, !dbg !3125

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #18, !dbg !3126
  br label %12, !dbg !3126

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.86, i64 0, i64 0), i8* %2, i8* %3) #18, !dbg !3127
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.87, i64 0, i64 0), i32 5) #18, !dbg !3128
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #18, !dbg !3128
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.88, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3129
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.89, i64 0, i64 0), i32 5) #18, !dbg !3130
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.90, i64 0, i64 0)) #18, !dbg !3130
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.88, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3131
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
  ], !dbg !3132

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.91, i64 0, i64 0), i32 5) #18, !dbg !3133
  %21 = load i8*, i8** %4, align 8, !dbg !3133, !tbaa !1112
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #18, !dbg !3133
  br label %147, !dbg !3135

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.92, i64 0, i64 0), i32 5) #18, !dbg !3136
  %25 = load i8*, i8** %4, align 8, !dbg !3136, !tbaa !1112
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3136
  %27 = load i8*, i8** %26, align 8, !dbg !3136, !tbaa !1112
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #18, !dbg !3136
  br label %147, !dbg !3137

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.93, i64 0, i64 0), i32 5) #18, !dbg !3138
  %31 = load i8*, i8** %4, align 8, !dbg !3138, !tbaa !1112
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3138
  %33 = load i8*, i8** %32, align 8, !dbg !3138, !tbaa !1112
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3138
  %35 = load i8*, i8** %34, align 8, !dbg !3138, !tbaa !1112
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #18, !dbg !3138
  br label %147, !dbg !3139

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.94, i64 0, i64 0), i32 5) #18, !dbg !3140
  %39 = load i8*, i8** %4, align 8, !dbg !3140, !tbaa !1112
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3140
  %41 = load i8*, i8** %40, align 8, !dbg !3140, !tbaa !1112
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3140
  %43 = load i8*, i8** %42, align 8, !dbg !3140, !tbaa !1112
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3140
  %45 = load i8*, i8** %44, align 8, !dbg !3140, !tbaa !1112
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #18, !dbg !3140
  br label %147, !dbg !3141

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.95, i64 0, i64 0), i32 5) #18, !dbg !3142
  %49 = load i8*, i8** %4, align 8, !dbg !3142, !tbaa !1112
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3142
  %51 = load i8*, i8** %50, align 8, !dbg !3142, !tbaa !1112
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3142
  %53 = load i8*, i8** %52, align 8, !dbg !3142, !tbaa !1112
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3142
  %55 = load i8*, i8** %54, align 8, !dbg !3142, !tbaa !1112
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3142
  %57 = load i8*, i8** %56, align 8, !dbg !3142, !tbaa !1112
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #18, !dbg !3142
  br label %147, !dbg !3143

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.96, i64 0, i64 0), i32 5) #18, !dbg !3144
  %61 = load i8*, i8** %4, align 8, !dbg !3144, !tbaa !1112
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3144
  %63 = load i8*, i8** %62, align 8, !dbg !3144, !tbaa !1112
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3144
  %65 = load i8*, i8** %64, align 8, !dbg !3144, !tbaa !1112
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3144
  %67 = load i8*, i8** %66, align 8, !dbg !3144, !tbaa !1112
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3144
  %69 = load i8*, i8** %68, align 8, !dbg !3144, !tbaa !1112
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3144
  %71 = load i8*, i8** %70, align 8, !dbg !3144, !tbaa !1112
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #18, !dbg !3144
  br label %147, !dbg !3145

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.97, i64 0, i64 0), i32 5) #18, !dbg !3146
  %75 = load i8*, i8** %4, align 8, !dbg !3146, !tbaa !1112
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3146
  %77 = load i8*, i8** %76, align 8, !dbg !3146, !tbaa !1112
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3146
  %79 = load i8*, i8** %78, align 8, !dbg !3146, !tbaa !1112
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3146
  %81 = load i8*, i8** %80, align 8, !dbg !3146, !tbaa !1112
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3146
  %83 = load i8*, i8** %82, align 8, !dbg !3146, !tbaa !1112
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3146
  %85 = load i8*, i8** %84, align 8, !dbg !3146, !tbaa !1112
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3146
  %87 = load i8*, i8** %86, align 8, !dbg !3146, !tbaa !1112
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #18, !dbg !3146
  br label %147, !dbg !3147

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.98, i64 0, i64 0), i32 5) #18, !dbg !3148
  %91 = load i8*, i8** %4, align 8, !dbg !3148, !tbaa !1112
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3148
  %93 = load i8*, i8** %92, align 8, !dbg !3148, !tbaa !1112
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3148
  %95 = load i8*, i8** %94, align 8, !dbg !3148, !tbaa !1112
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3148
  %97 = load i8*, i8** %96, align 8, !dbg !3148, !tbaa !1112
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3148
  %99 = load i8*, i8** %98, align 8, !dbg !3148, !tbaa !1112
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3148
  %101 = load i8*, i8** %100, align 8, !dbg !3148, !tbaa !1112
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3148
  %103 = load i8*, i8** %102, align 8, !dbg !3148, !tbaa !1112
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3148
  %105 = load i8*, i8** %104, align 8, !dbg !3148, !tbaa !1112
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #18, !dbg !3148
  br label %147, !dbg !3149

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.99, i64 0, i64 0), i32 5) #18, !dbg !3150
  %109 = load i8*, i8** %4, align 8, !dbg !3150, !tbaa !1112
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3150
  %111 = load i8*, i8** %110, align 8, !dbg !3150, !tbaa !1112
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3150
  %113 = load i8*, i8** %112, align 8, !dbg !3150, !tbaa !1112
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3150
  %115 = load i8*, i8** %114, align 8, !dbg !3150, !tbaa !1112
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3150
  %117 = load i8*, i8** %116, align 8, !dbg !3150, !tbaa !1112
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3150
  %119 = load i8*, i8** %118, align 8, !dbg !3150, !tbaa !1112
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3150
  %121 = load i8*, i8** %120, align 8, !dbg !3150, !tbaa !1112
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3150
  %123 = load i8*, i8** %122, align 8, !dbg !3150, !tbaa !1112
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3150
  %125 = load i8*, i8** %124, align 8, !dbg !3150, !tbaa !1112
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #18, !dbg !3150
  br label %147, !dbg !3151

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.100, i64 0, i64 0), i32 5) #18, !dbg !3152
  %129 = load i8*, i8** %4, align 8, !dbg !3152, !tbaa !1112
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3152
  %131 = load i8*, i8** %130, align 8, !dbg !3152, !tbaa !1112
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3152
  %133 = load i8*, i8** %132, align 8, !dbg !3152, !tbaa !1112
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3152
  %135 = load i8*, i8** %134, align 8, !dbg !3152, !tbaa !1112
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3152
  %137 = load i8*, i8** %136, align 8, !dbg !3152, !tbaa !1112
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3152
  %139 = load i8*, i8** %138, align 8, !dbg !3152, !tbaa !1112
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3152
  %141 = load i8*, i8** %140, align 8, !dbg !3152, !tbaa !1112
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3152
  %143 = load i8*, i8** %142, align 8, !dbg !3152, !tbaa !1112
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3152
  %145 = load i8*, i8** %144, align 8, !dbg !3152, !tbaa !1112
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #18, !dbg !3152
  br label %147, !dbg !3153

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3155 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3159, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %1, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %2, metadata !3161, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8* %3, metadata !3162, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8** %4, metadata !3163, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 0, metadata !3164, metadata !DIExpression()), !dbg !3165
  br label %6, !dbg !3166

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3168
  call void @llvm.dbg.value(metadata i64 %7, metadata !3164, metadata !DIExpression()), !dbg !3165
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3169
  %9 = load i8*, i8** %8, align 8, !dbg !3169, !tbaa !1112
  %10 = icmp eq i8* %9, null, !dbg !3171
  %11 = add i64 %7, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %11, metadata !3164, metadata !DIExpression()), !dbg !3165
  br i1 %10, label %12, label %6, !dbg !3171, !llvm.loop !3173

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %7, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %7, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %7, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %7, metadata !3164, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %7, metadata !3164, metadata !DIExpression()), !dbg !3165
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3175
  ret void, !dbg !3176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3177 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3188, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %1, metadata !3189, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %2, metadata !3190, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8* %3, metadata !3191, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3192, metadata !DIExpression()), !dbg !3196
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3197
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3197
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3194, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 0, metadata !3193, metadata !DIExpression()), !dbg !3196
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3199
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3199
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3199
  %11 = load i32, i32* %8, align 8, !dbg !3202
  %12 = icmp ult i32 %11, 41, !dbg !3202
  br i1 %12, label %13, label %18, !dbg !3202

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3202
  %15 = zext i32 %11 to i64, !dbg !3202
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3202
  %17 = add nuw nsw i32 %11, 8, !dbg !3202
  store i32 %17, i32* %8, align 8, !dbg !3202
  br label %21, !dbg !3202

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3202
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3202
  store i8* %20, i8** %9, align 8, !dbg !3202
  br label %21, !dbg !3202

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3202
  %25 = load i8*, i8** %24, align 8, !dbg !3202
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3203
  store i8* %25, i8** %26, align 16, !dbg !3204, !tbaa !1112
  %27 = icmp eq i8* %25, null, !dbg !3205
  br i1 %27, label %30, label %28, !dbg !3206

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3193, metadata !DIExpression()), !dbg !3196
  %29 = icmp ult i32 %22, 41, !dbg !3202
  br i1 %29, label %35, label %32, !dbg !3202

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3207
  call void @llvm.dbg.value(metadata i64 %31, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %31, metadata !3193, metadata !DIExpression()), !dbg !3196
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3208
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #18, !dbg !3209
  ret void, !dbg !3209

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3202
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3202
  store i8* %34, i8** %9, align 8, !dbg !3202
  br label %40, !dbg !3202

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3202
  %37 = zext i32 %22 to i64, !dbg !3202
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3202
  %39 = add nuw nsw i32 %22, 8, !dbg !3202
  store i32 %39, i32* %8, align 8, !dbg !3202
  br label %40, !dbg !3202

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3202
  %44 = load i8*, i8** %43, align 8, !dbg !3202
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3203
  store i8* %44, i8** %45, align 8, !dbg !3204, !tbaa !1112
  %46 = icmp eq i8* %44, null, !dbg !3205
  br i1 %46, label %30, label %47, !dbg !3206

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3193, metadata !DIExpression()), !dbg !3196
  %48 = icmp ult i32 %41, 41, !dbg !3202
  br i1 %48, label %52, label %49, !dbg !3202

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3202
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3202
  store i8* %51, i8** %9, align 8, !dbg !3202
  br label %57, !dbg !3202

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3202
  %54 = zext i32 %41 to i64, !dbg !3202
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3202
  %56 = add nuw nsw i32 %41, 8, !dbg !3202
  store i32 %56, i32* %8, align 8, !dbg !3202
  br label %57, !dbg !3202

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3202
  %61 = load i8*, i8** %60, align 8, !dbg !3202
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3203
  store i8* %61, i8** %62, align 16, !dbg !3204, !tbaa !1112
  %63 = icmp eq i8* %61, null, !dbg !3205
  br i1 %63, label %30, label %64, !dbg !3206

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3193, metadata !DIExpression()), !dbg !3196
  %65 = icmp ult i32 %58, 41, !dbg !3202
  br i1 %65, label %69, label %66, !dbg !3202

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3202
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3202
  store i8* %68, i8** %9, align 8, !dbg !3202
  br label %74, !dbg !3202

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3202
  %71 = zext i32 %58 to i64, !dbg !3202
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3202
  %73 = add nuw nsw i32 %58, 8, !dbg !3202
  store i32 %73, i32* %8, align 8, !dbg !3202
  br label %74, !dbg !3202

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3202
  %78 = load i8*, i8** %77, align 8, !dbg !3202
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3203
  store i8* %78, i8** %79, align 8, !dbg !3204, !tbaa !1112
  %80 = icmp eq i8* %78, null, !dbg !3205
  br i1 %80, label %30, label %81, !dbg !3206

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3193, metadata !DIExpression()), !dbg !3196
  %82 = icmp ult i32 %75, 41, !dbg !3202
  br i1 %82, label %86, label %83, !dbg !3202

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3202
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3202
  store i8* %85, i8** %9, align 8, !dbg !3202
  br label %91, !dbg !3202

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3202
  %88 = zext i32 %75 to i64, !dbg !3202
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3202
  %90 = add nuw nsw i32 %75, 8, !dbg !3202
  store i32 %90, i32* %8, align 8, !dbg !3202
  br label %91, !dbg !3202

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3202
  %95 = load i8*, i8** %94, align 8, !dbg !3202
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3203
  store i8* %95, i8** %96, align 16, !dbg !3204, !tbaa !1112
  %97 = icmp eq i8* %95, null, !dbg !3205
  br i1 %97, label %30, label %98, !dbg !3206

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3193, metadata !DIExpression()), !dbg !3196
  %99 = icmp ult i32 %92, 41, !dbg !3202
  br i1 %99, label %103, label %100, !dbg !3202

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3202
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3202
  store i8* %102, i8** %9, align 8, !dbg !3202
  br label %108, !dbg !3202

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3202
  %105 = zext i32 %92 to i64, !dbg !3202
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3202
  %107 = add nuw nsw i32 %92, 8, !dbg !3202
  store i32 %107, i32* %8, align 8, !dbg !3202
  br label %108, !dbg !3202

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3202
  %111 = load i8*, i8** %110, align 8, !dbg !3202
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3203
  store i8* %111, i8** %112, align 8, !dbg !3204, !tbaa !1112
  %113 = icmp eq i8* %111, null, !dbg !3205
  br i1 %113, label %30, label %114, !dbg !3206

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3193, metadata !DIExpression()), !dbg !3196
  %115 = load i8*, i8** %9, align 8, !dbg !3202
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3202
  store i8* %116, i8** %9, align 8, !dbg !3202
  %117 = bitcast i8* %115 to i8**, !dbg !3202
  %118 = load i8*, i8** %117, align 8, !dbg !3202
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3203
  store i8* %118, i8** %119, align 16, !dbg !3204, !tbaa !1112
  %120 = icmp eq i8* %118, null, !dbg !3205
  br i1 %120, label %30, label %121, !dbg !3206

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3193, metadata !DIExpression()), !dbg !3196
  %122 = load i8*, i8** %9, align 8, !dbg !3202
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3202
  store i8* %123, i8** %9, align 8, !dbg !3202
  %124 = bitcast i8* %122 to i8**, !dbg !3202
  %125 = load i8*, i8** %124, align 8, !dbg !3202
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3203
  store i8* %125, i8** %126, align 8, !dbg !3204, !tbaa !1112
  %127 = icmp eq i8* %125, null, !dbg !3205
  br i1 %127, label %30, label %128, !dbg !3206

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3193, metadata !DIExpression()), !dbg !3196
  %129 = load i8*, i8** %9, align 8, !dbg !3202
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3202
  store i8* %130, i8** %9, align 8, !dbg !3202
  %131 = bitcast i8* %129 to i8**, !dbg !3202
  %132 = load i8*, i8** %131, align 8, !dbg !3202
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3203
  store i8* %132, i8** %133, align 16, !dbg !3204, !tbaa !1112
  %134 = icmp eq i8* %132, null, !dbg !3205
  br i1 %134, label %30, label %135, !dbg !3206

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3193, metadata !DIExpression()), !dbg !3196
  %136 = load i8*, i8** %9, align 8, !dbg !3202
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3202
  store i8* %137, i8** %9, align 8, !dbg !3202
  %138 = bitcast i8* %136 to i8**, !dbg !3202
  %139 = load i8*, i8** %138, align 8, !dbg !3202
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3203
  store i8* %139, i8** %140, align 8, !dbg !3204, !tbaa !1112
  %141 = icmp eq i8* %139, null, !dbg !3205
  %142 = select i1 %141, i64 9, i64 10, !dbg !3206
  br label %30, !dbg !3206
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3210 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3214, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8* %1, metadata !3215, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8* %2, metadata !3216, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8* %3, metadata !3217, metadata !DIExpression()), !dbg !3224
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3225
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3225
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3218, metadata !DIExpression()), !dbg !3226
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3227
  call void @llvm.va_start(i8* nonnull %6), !dbg !3227
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3228
  call void @llvm.va_end(i8* nonnull %6), !dbg !3229
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #18, !dbg !3230
  ret void, !dbg !3230
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #18

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3231 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3232, !tbaa !1112
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.88, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3232
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.103, i64 0, i64 0), i32 5) #18, !dbg !3233
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.104, i64 0, i64 0)) #18, !dbg !3233
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.105, i64 0, i64 0), i32 5) #18, !dbg !3234
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.106, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.107, i64 0, i64 0)) #18, !dbg !3234
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.108, i64 0, i64 0), i32 5) #18, !dbg !3235
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.109, i64 0, i64 0)) #18, !dbg !3235
  ret void, !dbg !3236
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3237 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3243
  %3 = udiv i64 9223372036854775807, %1, !dbg !3244
  %4 = icmp ult i64 %3, %0, !dbg !3244
  br i1 %4, label %5, label %6, !dbg !3246

5:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3247
  unreachable, !dbg !3247

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %7, metadata !3249, metadata !DIExpression()) #18, !dbg !3255
  %8 = tail call noalias i8* @malloc(i64 %7) #18, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %8, metadata !3254, metadata !DIExpression()) #18, !dbg !3255
  %9 = icmp eq i8* %8, null, !dbg !3258
  %10 = icmp ne i64 %7, 0, !dbg !3260
  %11 = and i1 %10, %9, !dbg !3261
  br i1 %11, label %12, label %13, !dbg !3261

12:                                               ; preds = %6
  tail call void @xalloc_die() #23, !dbg !3262
  unreachable, !dbg !3262

13:                                               ; preds = %6
  ret i8* %8, !dbg !3263
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3250 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3249, metadata !DIExpression()), !dbg !3264
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %2, metadata !3254, metadata !DIExpression()), !dbg !3264
  %3 = icmp eq i8* %2, null, !dbg !3266
  %4 = icmp ne i64 %0, 0, !dbg !3267
  %5 = and i1 %4, %3, !dbg !3268
  br i1 %5, label %6, label %7, !dbg !3268

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3269
  unreachable, !dbg !3269

7:                                                ; preds = %1
  ret i8* %2, !dbg !3270
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3271 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3275, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 %1, metadata !3276, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i64 %2, metadata !3277, metadata !DIExpression()), !dbg !3278
  %4 = udiv i64 9223372036854775807, %2, !dbg !3279
  %5 = icmp ult i64 %4, %1, !dbg !3279
  br i1 %5, label %6, label %7, !dbg !3281

6:                                                ; preds = %3
  tail call void @xalloc_die() #23, !dbg !3282
  unreachable, !dbg !3282

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #18, !dbg !3290
  call void @llvm.dbg.value(metadata i64 %8, metadata !3289, metadata !DIExpression()) #18, !dbg !3290
  %9 = icmp eq i64 %8, 0, !dbg !3292
  %10 = icmp ne i8* %0, null, !dbg !3294
  %11 = and i1 %10, %9, !dbg !3295
  br i1 %11, label %12, label %13, !dbg !3295

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #18, !dbg !3296
  br label %19, !dbg !3298

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #18, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %14, metadata !3284, metadata !DIExpression()) #18, !dbg !3290
  %15 = icmp eq i8* %14, null, !dbg !3300
  %16 = icmp ne i64 %8, 0, !dbg !3302
  %17 = and i1 %16, %15, !dbg !3303
  br i1 %17, label %18, label %19, !dbg !3303

18:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3304
  unreachable, !dbg !3304

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3290
  ret i8* %20, !dbg !3305
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3285 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3306
  %3 = icmp eq i64 %1, 0, !dbg !3307
  %4 = icmp ne i8* %0, null, !dbg !3308
  %5 = and i1 %4, %3, !dbg !3309
  br i1 %5, label %6, label %7, !dbg !3309

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #18, !dbg !3310
  br label %13, !dbg !3311

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #18, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %8, metadata !3284, metadata !DIExpression()), !dbg !3306
  %9 = icmp eq i8* %8, null, !dbg !3313
  %10 = icmp ne i64 %1, 0, !dbg !3314
  %11 = and i1 %10, %9, !dbg !3315
  br i1 %11, label %12, label %13, !dbg !3315

12:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3316
  unreachable, !dbg !3316

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3306
  ret i8* %14, !dbg !3317
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !467 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !472, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64* %1, metadata !473, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %2, metadata !474, metadata !DIExpression()), !dbg !3318
  %4 = load i64, i64* %1, align 8, !dbg !3319, !tbaa !2556
  call void @llvm.dbg.value(metadata i64 %4, metadata !475, metadata !DIExpression()), !dbg !3318
  %5 = icmp eq i8* %0, null, !dbg !3320
  br i1 %5, label %6, label %20, !dbg !3322

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3323
  br i1 %7, label %8, label %13, !dbg !3326

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %9, metadata !475, metadata !DIExpression()), !dbg !3318
  %10 = icmp ugt i64 %2, 128, !dbg !3329
  %11 = zext i1 %10 to i64, !dbg !3329
  %12 = add nuw nsw i64 %9, %11, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %12, metadata !475, metadata !DIExpression()), !dbg !3318
  br label %13, !dbg !3331

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3318
  call void @llvm.dbg.value(metadata i64 %14, metadata !475, metadata !DIExpression()), !dbg !3318
  %15 = udiv i64 9223372036854775807, %2, !dbg !3332
  %16 = icmp ult i64 %15, %14, !dbg !3332
  br i1 %16, label %19, label %17, !dbg !3334

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !475, metadata !DIExpression()), !dbg !3318
  store i64 %14, i64* %1, align 8, !dbg !3335, !tbaa !2556
  %18 = mul i64 %14, %2, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #18, !dbg !3337
  call void @llvm.dbg.value(metadata i64 %28, metadata !3289, metadata !DIExpression()) #18, !dbg !3337
  br label %31, !dbg !3339

19:                                               ; preds = %13
  tail call void @xalloc_die() #23, !dbg !3340
  unreachable, !dbg !3340

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3341
  %22 = icmp ugt i64 %21, %4, !dbg !3344
  br i1 %22, label %24, label %23, !dbg !3345

23:                                               ; preds = %20
  tail call void @xalloc_die() #23, !dbg !3346
  unreachable, !dbg !3346

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3347
  %26 = add nuw i64 %4, 1, !dbg !3348
  %27 = add i64 %26, %25, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %27, metadata !475, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %27, metadata !475, metadata !DIExpression()), !dbg !3318
  store i64 %27, i64* %1, align 8, !dbg !3335, !tbaa !2556
  %28 = mul i64 %27, %2, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #18, !dbg !3337
  call void @llvm.dbg.value(metadata i64 %28, metadata !3289, metadata !DIExpression()) #18, !dbg !3337
  %29 = icmp eq i64 %28, 0, !dbg !3350
  br i1 %29, label %30, label %31, !dbg !3339

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #18, !dbg !3351
  br label %38, !dbg !3352

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #18, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %33, metadata !3284, metadata !DIExpression()) #18, !dbg !3337
  %34 = icmp eq i8* %33, null, !dbg !3354
  %35 = icmp ne i64 %32, 0, !dbg !3355
  %36 = and i1 %35, %34, !dbg !3356
  br i1 %36, label %37, label %38, !dbg !3356

37:                                               ; preds = %31
  tail call void @xalloc_die() #23, !dbg !3357
  unreachable, !dbg !3357

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3337
  ret i8* %39, !dbg !3358
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3359 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3361, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i64 %0, metadata !3249, metadata !DIExpression()) #18, !dbg !3363
  %2 = tail call noalias i8* @malloc(i64 %0) #18, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %2, metadata !3254, metadata !DIExpression()) #18, !dbg !3363
  %3 = icmp eq i8* %2, null, !dbg !3366
  %4 = icmp ne i64 %0, 0, !dbg !3367
  %5 = and i1 %4, %3, !dbg !3368
  br i1 %5, label %6, label %7, !dbg !3368

6:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3369
  unreachable, !dbg !3369

7:                                                ; preds = %1
  ret i8* %2, !dbg !3370
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64* %1, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i8* %0, metadata !472, metadata !DIExpression()) #18, !dbg !3378
  call void @llvm.dbg.value(metadata i64* %1, metadata !473, metadata !DIExpression()) #18, !dbg !3378
  call void @llvm.dbg.value(metadata i64 1, metadata !474, metadata !DIExpression()) #18, !dbg !3378
  %3 = load i64, i64* %1, align 8, !dbg !3380, !tbaa !2556
  call void @llvm.dbg.value(metadata i64 %3, metadata !475, metadata !DIExpression()) #18, !dbg !3378
  %4 = icmp eq i8* %0, null, !dbg !3381
  br i1 %4, label %5, label %12, !dbg !3382

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3383
  br i1 %6, label %9, label %7, !dbg !3384

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !475, metadata !DIExpression()) #18, !dbg !3378
  %8 = icmp slt i64 %3, 0, !dbg !3385
  br i1 %8, label %11, label %9, !dbg !3386

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !475, metadata !DIExpression()) #18, !dbg !3378
  store i64 %10, i64* %1, align 8, !dbg !3387, !tbaa !2556
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #18, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %18, metadata !3289, metadata !DIExpression()) #18, !dbg !3388
  br label %21, !dbg !3390

11:                                               ; preds = %7
  tail call void @xalloc_die() #23, !dbg !3391
  unreachable, !dbg !3391

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3392
  br i1 %13, label %15, label %14, !dbg !3393

14:                                               ; preds = %12
  tail call void @xalloc_die() #23, !dbg !3394
  unreachable, !dbg !3394

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3395
  %17 = add nuw nsw i64 %3, 1, !dbg !3396
  %18 = add nuw nsw i64 %17, %16, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %18, metadata !475, metadata !DIExpression()) #18, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %18, metadata !475, metadata !DIExpression()) #18, !dbg !3378
  store i64 %18, i64* %1, align 8, !dbg !3387, !tbaa !2556
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()) #18, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %18, metadata !3289, metadata !DIExpression()) #18, !dbg !3388
  %19 = icmp eq i64 %18, 0, !dbg !3398
  br i1 %19, label %20, label %21, !dbg !3390

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #18, !dbg !3399
  br label %28, !dbg !3400

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #18, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %23, metadata !3284, metadata !DIExpression()) #18, !dbg !3388
  %24 = icmp eq i8* %23, null, !dbg !3402
  %25 = icmp ne i64 %22, 0, !dbg !3403
  %26 = and i1 %25, %24, !dbg !3404
  br i1 %26, label %27, label %28, !dbg !3404

27:                                               ; preds = %21
  tail call void @xalloc_die() #23, !dbg !3405
  unreachable, !dbg !3405

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3388
  ret i8* %29, !dbg !3406
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3407 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()) #18, !dbg !3416
  call void @llvm.dbg.value(metadata i64 1, metadata !3414, metadata !DIExpression()) #18, !dbg !3416
  %2 = icmp slt i64 %0, 0, !dbg !3418
  br i1 %2, label %6, label %3, !dbg !3420

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #18, !dbg !3421
  call void @llvm.dbg.value(metadata i8* %4, metadata !3415, metadata !DIExpression()) #18, !dbg !3416
  %5 = icmp eq i8* %4, null, !dbg !3422
  br i1 %5, label %6, label %7, !dbg !3423

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #23, !dbg !3424
  unreachable, !dbg !3424

7:                                                ; preds = %3
  ret i8* %4, !dbg !3425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3412 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3411, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %1, metadata !3414, metadata !DIExpression()), !dbg !3426
  %3 = udiv i64 9223372036854775807, %1, !dbg !3427
  %4 = icmp ult i64 %3, %0, !dbg !3427
  br i1 %4, label %8, label %5, !dbg !3428

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #18, !dbg !3429
  call void @llvm.dbg.value(metadata i8* %6, metadata !3415, metadata !DIExpression()), !dbg !3426
  %7 = icmp eq i8* %6, null, !dbg !3430
  br i1 %7, label %8, label %9, !dbg !3431

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #23, !dbg !3432
  unreachable, !dbg !3432

9:                                                ; preds = %5
  ret i8* %6, !dbg !3433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3434 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()) #18, !dbg !3441
  %3 = tail call noalias i8* @malloc(i64 %1) #18, !dbg !3443
  call void @llvm.dbg.value(metadata i8* %3, metadata !3254, metadata !DIExpression()) #18, !dbg !3441
  %4 = icmp eq i8* %3, null, !dbg !3444
  %5 = icmp ne i64 %1, 0, !dbg !3445
  %6 = and i1 %5, %4, !dbg !3446
  br i1 %6, label %7, label %8, !dbg !3446

7:                                                ; preds = %2
  tail call void @xalloc_die() #23, !dbg !3447
  unreachable, !dbg !3447

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3448, metadata !DIExpression()) #18, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %0, metadata !3455, metadata !DIExpression()) #18, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()) #18, !dbg !3457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #18, !dbg !3459
  ret i8* %3, !dbg !3460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3463, metadata !DIExpression()), !dbg !3464
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #22, !dbg !3465
  %3 = add i64 %2, 1, !dbg !3466
  call void @llvm.dbg.value(metadata i8* %0, metadata !3438, metadata !DIExpression()) #18, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %3, metadata !3439, metadata !DIExpression()) #18, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %3, metadata !3249, metadata !DIExpression()) #18, !dbg !3469
  %4 = tail call noalias i8* @malloc(i64 %3) #18, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %4, metadata !3254, metadata !DIExpression()) #18, !dbg !3469
  %5 = icmp eq i8* %4, null, !dbg !3472
  %6 = icmp ne i64 %3, 0, !dbg !3473
  %7 = and i1 %6, %5, !dbg !3474
  br i1 %7, label %8, label %9, !dbg !3474

8:                                                ; preds = %1
  tail call void @xalloc_die() #23, !dbg !3475
  unreachable, !dbg !3475

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3448, metadata !DIExpression()) #18, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %0, metadata !3455, metadata !DIExpression()) #18, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %3, metadata !3456, metadata !DIExpression()) #18, !dbg !3476
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #18, !dbg !3478
  ret i8* %4, !dbg !3479
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3480 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3481, !tbaa !1208
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.122, i64 0, i64 0), i32 5) #18, !dbg !3482
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i64 0, i64 0), i8* %2) #18, !dbg !3483
  tail call void @abort() #23, !dbg !3484
  unreachable, !dbg !3484
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3485 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3493
  %3 = icmp eq i64 %0, 0, !dbg !3494
  %4 = icmp eq i64 %1, 0, !dbg !3495
  %5 = or i1 %3, %4, !dbg !3496
  br i1 %5, label %11, label %6, !dbg !3496

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3490, metadata !DIExpression()), !dbg !3497
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3498
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3498
  br i1 %8, label %9, label %11, !dbg !3500

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #25, !dbg !3501
  store i32 12, i32* %10, align 4, !dbg !3503, !tbaa !1208
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3487, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata i64 %12, metadata !3488, metadata !DIExpression()), !dbg !3493
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #18, !dbg !3504
  call void @llvm.dbg.value(metadata i8* %14, metadata !3489, metadata !DIExpression()), !dbg !3493
  br label %15, !dbg !3505

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3493
  ret i8* %16, !dbg !3506
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3507 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3515, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i8* %1, metadata !3516, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i64 %2, metadata !3517, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3518, metadata !DIExpression()), !dbg !3524
  %6 = bitcast i32* %5 to i8*, !dbg !3525
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3525
  %7 = icmp eq i32* %0, null, !dbg !3526
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3528
  call void @llvm.dbg.value(metadata i32* %8, metadata !3515, metadata !DIExpression()), !dbg !3524
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #18, !dbg !3529
  call void @llvm.dbg.value(metadata i64 %9, metadata !3519, metadata !DIExpression()), !dbg !3524
  %10 = icmp ugt i64 %9, -3, !dbg !3530
  %11 = icmp ne i64 %2, 0, !dbg !3531
  %12 = and i1 %11, %10, !dbg !3532
  br i1 %12, label %13, label %18, !dbg !3532

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #18, !dbg !3533
  br i1 %14, label %18, label %15, !dbg !3534

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3535, !tbaa !1361
  call void @llvm.dbg.value(metadata i8 %16, metadata !3521, metadata !DIExpression()), !dbg !3536
  %17 = zext i8 %16 to i32, !dbg !3537
  store i32 %17, i32* %8, align 4, !dbg !3538, !tbaa !1208
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3524
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #18, !dbg !3539
  ret i64 %19, !dbg !3539
}

; Function Attrs: nounwind
declare !dbg !493 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @str2sig(i8* %0, i32* nocapture %1) local_unnamed_addr #8 !dbg !3540 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3542, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32* %1, metadata !3543, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8* %0, metadata !3545, metadata !DIExpression()) #18, !dbg !3564
  %5 = load i8, i8* %0, align 1, !dbg !3566, !tbaa !1361
  %6 = sext i8 %5 to i32, !dbg !3566
  %7 = add nsw i32 %6, -48, !dbg !3566
  %8 = icmp ult i32 %7, 10, !dbg !3566
  br i1 %8, label %9, label %21, !dbg !3567

9:                                                ; preds = %2
  %10 = bitcast i8** %3 to i8*, !dbg !3568
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #18, !dbg !3568
  call void @llvm.dbg.value(metadata i8** %3, metadata !3548, metadata !DIExpression(DW_OP_deref)) #18, !dbg !3569
  %11 = call i64 @strtol(i8* nonnull %0, i8** nonnull %3, i32 10) #18, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %11, metadata !3551, metadata !DIExpression()) #18, !dbg !3569
  %12 = load i8*, i8** %3, align 8, !dbg !3571, !tbaa !1112
  call void @llvm.dbg.value(metadata i8* %12, metadata !3548, metadata !DIExpression()) #18, !dbg !3569
  %13 = load i8, i8* %12, align 1, !dbg !3573, !tbaa !1361
  %14 = icmp ne i8 %13, 0, !dbg !3573
  %15 = icmp sgt i64 %11, 64, !dbg !3574
  %16 = trunc i64 %11 to i32, !dbg !3575
  %17 = or i1 %15, %14, !dbg !3576
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #18, !dbg !3577
  br i1 %17, label %73, label %74

18:                                               ; preds = %21
  %19 = add nuw nsw i64 %22, 1, !dbg !3578
  call void @llvm.dbg.value(metadata i64 %19, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %19, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  %20 = icmp eq i64 %19, 35, !dbg !3582
  br i1 %20, label %30, label %21, !dbg !3583, !llvm.loop !3584

21:                                               ; preds = %2, %18
  %22 = phi i64 [ %19, %18 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  %23 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %22, i32 1, i64 0, !dbg !3586
  %24 = tail call i32 @strcmp(i8* nonnull %23, i8* nonnull %0) #22, !dbg !3588
  %25 = icmp eq i32 %24, 0, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #18, !dbg !3581
  br i1 %25, label %26, label %18, !dbg !3590

26:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  %27 = and i64 %22, 4294967295, !dbg !3591
  call void @llvm.dbg.value(metadata i64 %22, metadata !3552, metadata !DIExpression()) #18, !dbg !3581
  %28 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %27, i32 0, !dbg !3592
  %29 = load i32, i32* %28, align 4, !dbg !3592, !tbaa !3593
  br label %74

30:                                               ; preds = %18
  %31 = bitcast i8** %4 to i8*, !dbg !3595
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #18, !dbg !3595
  %32 = tail call i32 @__libc_current_sigrtmin() #18, !dbg !3596
  call void @llvm.dbg.value(metadata i32 %32, metadata !3556, metadata !DIExpression()) #18, !dbg !3597
  %33 = tail call i32 @__libc_current_sigrtmax() #18, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %33, metadata !3557, metadata !DIExpression()) #18, !dbg !3597
  %34 = icmp sgt i32 %32, 0, !dbg !3599
  br i1 %34, label %35, label %50, !dbg !3600

35:                                               ; preds = %30
  %36 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i64 5) #22, !dbg !3601
  %37 = icmp eq i32 %36, 0, !dbg !3602
  br i1 %37, label %38, label %50, !dbg !3603

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3604
  call void @llvm.dbg.value(metadata i8** %4, metadata !3554, metadata !DIExpression(DW_OP_deref)) #18, !dbg !3597
  %40 = call i64 @strtol(i8* nonnull %39, i8** nonnull %4, i32 10) #18, !dbg !3605
  call void @llvm.dbg.value(metadata i64 %40, metadata !3558, metadata !DIExpression()) #18, !dbg !3606
  %41 = load i8*, i8** %4, align 8, !dbg !3607, !tbaa !1112
  call void @llvm.dbg.value(metadata i8* %41, metadata !3554, metadata !DIExpression()) #18, !dbg !3597
  %42 = load i8, i8* %41, align 1, !dbg !3609, !tbaa !1361
  %43 = icmp eq i8 %42, 0, !dbg !3609
  %44 = icmp sgt i64 %40, -1, !dbg !3610
  %45 = and i1 %44, %43, !dbg !3611
  br i1 %45, label %46, label %67, !dbg !3611

46:                                               ; preds = %38
  %47 = sub nsw i32 %33, %32, !dbg !3612
  %48 = sext i32 %47 to i64, !dbg !3613
  %49 = icmp sgt i64 %40, %48, !dbg !3614
  br i1 %49, label %67, label %68, !dbg !3615

50:                                               ; preds = %35, %30
  %51 = icmp sgt i32 %33, 0, !dbg !3616
  br i1 %51, label %52, label %67, !dbg !3617

52:                                               ; preds = %50
  %53 = tail call i32 @strncmp(i8* nonnull %0, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 5) #22, !dbg !3618
  %54 = icmp eq i32 %53, 0, !dbg !3619
  br i1 %54, label %55, label %67, !dbg !3620

55:                                               ; preds = %52
  %56 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !3621
  call void @llvm.dbg.value(metadata i8** %4, metadata !3554, metadata !DIExpression(DW_OP_deref)) #18, !dbg !3597
  %57 = call i64 @strtol(i8* nonnull %56, i8** nonnull %4, i32 10) #18, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %57, metadata !3561, metadata !DIExpression()) #18, !dbg !3623
  %58 = load i8*, i8** %4, align 8, !dbg !3624, !tbaa !1112
  call void @llvm.dbg.value(metadata i8* %58, metadata !3554, metadata !DIExpression()) #18, !dbg !3597
  %59 = load i8, i8* %58, align 1, !dbg !3626, !tbaa !1361
  %60 = icmp eq i8 %59, 0, !dbg !3626
  br i1 %60, label %61, label %67, !dbg !3627

61:                                               ; preds = %55
  %62 = sub nsw i32 %32, %33, !dbg !3628
  %63 = sext i32 %62 to i64, !dbg !3629
  %64 = icmp sge i64 %57, %63, !dbg !3630
  %65 = icmp slt i64 %57, 1, !dbg !3631
  %66 = and i1 %64, %65, !dbg !3632
  br i1 %66, label %68, label %67, !dbg !3632

67:                                               ; preds = %61, %55, %52, %50, %46, %38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #18, !dbg !3633
  br label %73

68:                                               ; preds = %61, %46
  %69 = phi i64 [ %40, %46 ], [ %57, %61 ]
  %70 = phi i32 [ %32, %46 ], [ %33, %61 ]
  %71 = trunc i64 %69 to i32, !dbg !3634
  %72 = add i32 %70, %71, !dbg !3634
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #18, !dbg !3633
  br label %74

73:                                               ; preds = %67, %9
  br label %74, !dbg !3635

74:                                               ; preds = %9, %26, %68, %73
  %75 = phi i32 [ -1, %73 ], [ %16, %9 ], [ %72, %68 ], [ %29, %26 ], !dbg !3564
  store i32 %75, i32* %1, align 4, !dbg !3636, !tbaa !1208
  %76 = ashr i32 %75, 31, !dbg !3637
  ret i32 %76, !dbg !3638
}

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmin() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__libc_current_sigrtmax() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @sig2str(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3641, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i8* %1, metadata !3642, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i32 0, metadata !3643, metadata !DIExpression()), !dbg !3649
  br label %8, !dbg !3650

3:                                                ; preds = %8
  %4 = add nuw nsw i64 %9, 1, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %4, metadata !3643, metadata !DIExpression()), !dbg !3649
  %5 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %4, i32 0, !dbg !3654
  %6 = load i32, i32* %5, align 4, !dbg !3654, !tbaa !3593
  %7 = icmp eq i32 %6, %0, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %4, metadata !3643, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3649
  br i1 %7, label %13, label %40, !dbg !3657

8:                                                ; preds = %55, %2
  %9 = phi i64 [ 0, %2 ], [ %56, %55 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !3643, metadata !DIExpression()), !dbg !3649
  %10 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %9, i32 0, !dbg !3654
  %11 = load i32, i32* %10, align 4, !dbg !3654, !tbaa !3593
  %12 = icmp eq i32 %11, %0, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %9, metadata !3643, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3649
  br i1 %12, label %13, label %3, !dbg !3657

13:                                               ; preds = %50, %45, %40, %3, %8
  %14 = phi i64 [ %9, %8 ], [ %4, %3 ], [ %41, %40 ], [ %46, %45 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3643, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %14, metadata !3643, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %14, metadata !3643, metadata !DIExpression()), !dbg !3649
  %15 = and i64 %14, 4294967295, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %14, metadata !3643, metadata !DIExpression()), !dbg !3649
  %16 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %15, i32 1, i64 0, !dbg !3659
  call void @llvm.dbg.value(metadata i8* %1, metadata !3661, metadata !DIExpression()) #18, !dbg !3668
  call void @llvm.dbg.value(metadata i8* %16, metadata !3667, metadata !DIExpression()) #18, !dbg !3668
  %17 = call i8* @strcpy(i8* nonnull dereferenceable(1) %1, i8* nonnull dereferenceable(1) %16), !dbg !3670
  br label %38, !dbg !3671

18:                                               ; preds = %55
  %19 = tail call i32 @__libc_current_sigrtmin() #18, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %19, metadata !3644, metadata !DIExpression()), !dbg !3673
  %20 = tail call i32 @__libc_current_sigrtmax() #18, !dbg !3674
  call void @llvm.dbg.value(metadata i32 %20, metadata !3646, metadata !DIExpression()), !dbg !3673
  %21 = icmp sgt i32 %19, %0, !dbg !3675
  %22 = icmp slt i32 %20, %0, !dbg !3677
  %23 = or i1 %21, %22, !dbg !3678
  br i1 %23, label %38, label %24, !dbg !3678

24:                                               ; preds = %18
  %25 = sub nsw i32 %20, %19, !dbg !3679
  %26 = sdiv i32 %25, 2, !dbg !3681
  %27 = add nsw i32 %26, %19, !dbg !3682
  %28 = icmp slt i32 %27, %0, !dbg !3683
  call void @llvm.dbg.value(metadata i8* %1, metadata !3661, metadata !DIExpression()) #18, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %1, metadata !3661, metadata !DIExpression()) #18, !dbg !3687
  br i1 %28, label %30, label %29, !dbg !3690

29:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), metadata !3667, metadata !DIExpression()) #18, !dbg !3687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i64 6, i1 false), !dbg !3691
  call void @llvm.dbg.value(metadata i32 %19, metadata !3647, metadata !DIExpression()), !dbg !3673
  br label %31, !dbg !3692

30:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), metadata !3667, metadata !DIExpression()) #18, !dbg !3684
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(6) %1, i8* nonnull align 1 dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6, i1 false), !dbg !3693
  call void @llvm.dbg.value(metadata i32 %20, metadata !3647, metadata !DIExpression()), !dbg !3673
  br label %31

31:                                               ; preds = %30, %29
  %32 = phi i32 [ %19, %29 ], [ %20, %30 ], !dbg !3694
  call void @llvm.dbg.value(metadata i32 %32, metadata !3647, metadata !DIExpression()), !dbg !3673
  %33 = sub nsw i32 %0, %32, !dbg !3695
  call void @llvm.dbg.value(metadata i32 %33, metadata !3648, metadata !DIExpression()), !dbg !3673
  %34 = icmp eq i32 %33, 0, !dbg !3696
  br i1 %34, label %38, label %35, !dbg !3698

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !3699
  %37 = tail call i32 (i8*, i32, i64, i8*, ...) @__sprintf_chk(i8* nonnull %36, i32 1, i64 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.134, i64 0, i64 0), i32 %33) #18, !dbg !3699
  br label %38, !dbg !3699

38:                                               ; preds = %18, %31, %35, %13
  %39 = phi i32 [ 0, %13 ], [ -1, %18 ], [ 0, %31 ], [ 0, %35 ], !dbg !3649
  ret i32 %39, !dbg !3700

40:                                               ; preds = %3
  %41 = add nuw nsw i64 %9, 2, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %41, metadata !3643, metadata !DIExpression()), !dbg !3649
  %42 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %41, i32 0, !dbg !3654
  %43 = load i32, i32* %42, align 4, !dbg !3654, !tbaa !3593
  %44 = icmp eq i32 %43, %0, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %41, metadata !3643, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3649
  br i1 %44, label %13, label %45, !dbg !3657

45:                                               ; preds = %40
  %46 = add nuw nsw i64 %9, 3, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %46, metadata !3643, metadata !DIExpression()), !dbg !3649
  %47 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %46, i32 0, !dbg !3654
  %48 = load i32, i32* %47, align 4, !dbg !3654, !tbaa !3593
  %49 = icmp eq i32 %48, %0, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %46, metadata !3643, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3649
  br i1 %49, label %13, label %50, !dbg !3657

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %9, 4, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %51, metadata !3643, metadata !DIExpression()), !dbg !3649
  %52 = getelementptr inbounds [35 x %struct.numname], [35 x %struct.numname]* @numname_table, i64 0, i64 %51, i32 0, !dbg !3654
  %53 = load i32, i32* %52, align 4, !dbg !3654, !tbaa !3593
  %54 = icmp eq i32 %53, %0, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %51, metadata !3643, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3649
  br i1 %54, label %13, label %55, !dbg !3657

55:                                               ; preds = %50
  %56 = add nuw nsw i64 %9, 5, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %56, metadata !3643, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %56, metadata !3643, metadata !DIExpression()), !dbg !3649
  %57 = icmp eq i64 %56, 35, !dbg !3701
  br i1 %57, label %18, label %8, !dbg !3650, !llvm.loop !3702
}

; Function Attrs: nofree nounwind
declare i8* @strcpy(i8* noalias returned, i8* noalias nocapture readonly) #14

; Function Attrs: nofree
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3704 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3710, metadata !DIExpression()), !dbg !3715
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #18, !dbg !3716
  call void @llvm.dbg.value(metadata i1 undef, metadata !3711, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3717, metadata !DIExpression()), !dbg !3721
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3723
  %4 = load i32, i32* %3, align 8, !dbg !3723, !tbaa !3724
  %5 = and i32 %4, 32, !dbg !3723
  %6 = icmp eq i32 %5, 0, !dbg !3726
  call void @llvm.dbg.value(metadata i1 %6, metadata !3713, metadata !DIExpression()), !dbg !3715
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #18, !dbg !3727
  %8 = icmp ne i32 %7, 0, !dbg !3728
  call void @llvm.dbg.value(metadata i1 %8, metadata !3714, metadata !DIExpression()), !dbg !3715
  br i1 %6, label %9, label %19, !dbg !3729

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3731
  call void @llvm.dbg.value(metadata i1 %10, metadata !3711, metadata !DIExpression()), !dbg !3715
  %11 = xor i1 %8, true, !dbg !3732
  %12 = or i1 %10, %11, !dbg !3732
  %13 = sext i1 %8 to i32, !dbg !3732
  br i1 %12, label %22, label %14, !dbg !3732

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #25, !dbg !3733
  %16 = load i32, i32* %15, align 4, !dbg !3733, !tbaa !1208
  %17 = icmp ne i32 %16, 9, !dbg !3734
  %18 = sext i1 %17 to i32, !dbg !3735
  br label %22, !dbg !3735

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3736

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #25, !dbg !3738
  store i32 0, i32* %21, align 4, !dbg !3740, !tbaa !1208
  br label %22, !dbg !3738

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3715
  ret i32 %23, !dbg !3741
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3742 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3744, metadata !DIExpression()), !dbg !3749
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3750
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3750
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3745, metadata !DIExpression()), !dbg !3751
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #18, !dbg !3752
  %5 = icmp eq i32 %4, 0, !dbg !3752
  br i1 %5, label %6, label %13, !dbg !3754

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3755
  %8 = load i16, i16* %7, align 16, !dbg !3755
  %9 = icmp eq i16 %8, 67, !dbg !3755
  br i1 %9, label %13, label %10, !dbg !3756

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.139, i64 0, i64 0), i64 6), !dbg !3757
  %12 = icmp ne i32 %11, 0, !dbg !3758
  br label %13, !dbg !3756

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3749
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #18, !dbg !3759
  ret i1 %14, !dbg !3759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3760 {
  %1 = tail call i8* @nl_langinfo(i32 14) #18, !dbg !3763
  call void @llvm.dbg.value(metadata i8* %1, metadata !3762, metadata !DIExpression()), !dbg !3764
  %2 = icmp eq i8* %1, null, !dbg !3765
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.142, i64 0, i64 0), i8* %1, !dbg !3767
  call void @llvm.dbg.value(metadata i8* %3, metadata !3762, metadata !DIExpression()), !dbg !3764
  %4 = load i8, i8* %3, align 1, !dbg !3768, !tbaa !1361
  %5 = icmp eq i8 %4, 0, !dbg !3772
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.143, i64 0, i64 0), i8* %3, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %6, metadata !3762, metadata !DIExpression()), !dbg !3764
  ret i8* %6, !dbg !3774
}

; Function Attrs: nounwind
declare !dbg !945 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3779, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i8* %1, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i64 %2, metadata !3781, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 %0, metadata !3783, metadata !DIExpression()) #18, !dbg !3792
  call void @llvm.dbg.value(metadata i8* %1, metadata !3786, metadata !DIExpression()) #18, !dbg !3792
  call void @llvm.dbg.value(metadata i64 %2, metadata !3787, metadata !DIExpression()) #18, !dbg !3792
  call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()) #18, !dbg !3800
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3802
  call void @llvm.dbg.value(metadata i8* %4, metadata !3799, metadata !DIExpression()) #18, !dbg !3800
  call void @llvm.dbg.value(metadata i8* %4, metadata !3788, metadata !DIExpression()) #18, !dbg !3792
  %5 = icmp eq i8* %4, null, !dbg !3803
  br i1 %5, label %6, label %9, !dbg !3804

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3805
  br i1 %7, label %19, label %8, !dbg !3808

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3809, !tbaa !1361
  br label %19, !dbg !3810

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #22, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %10, metadata !3789, metadata !DIExpression()) #18, !dbg !3812
  %11 = icmp ult i64 %10, %2, !dbg !3813
  br i1 %11, label %12, label %14, !dbg !3815

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3816
  call void @llvm.dbg.value(metadata i8* %1, metadata !3818, metadata !DIExpression()) #18, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %4, metadata !3821, metadata !DIExpression()) #18, !dbg !3823
  call void @llvm.dbg.value(metadata i64 %13, metadata !3822, metadata !DIExpression()) #18, !dbg !3823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #18, !dbg !3825
  br label %19, !dbg !3826

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3827
  br i1 %15, label %19, label %16, !dbg !3830

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3831
  call void @llvm.dbg.value(metadata i8* %1, metadata !3818, metadata !DIExpression()) #18, !dbg !3833
  call void @llvm.dbg.value(metadata i8* %4, metadata !3821, metadata !DIExpression()) #18, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %17, metadata !3822, metadata !DIExpression()) #18, !dbg !3833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #18, !dbg !3835
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3836
  store i8 0, i8* %18, align 1, !dbg !3837, !tbaa !1361
  br label %19, !dbg !3838

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3839
  ret i32 %20, !dbg !3840
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3841 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3843, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()) #18, !dbg !3845
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #18, !dbg !3847
  call void @llvm.dbg.value(metadata i8* %2, metadata !3799, metadata !DIExpression()) #18, !dbg !3845
  ret i8* %2, !dbg !3848
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3849 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3855, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3858, metadata !DIExpression()), !dbg !3859
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3860
  call void @llvm.dbg.value(metadata i32 %2, metadata !3857, metadata !DIExpression()), !dbg !3859
  %3 = icmp slt i32 %2, 0, !dbg !3861
  br i1 %3, label %4, label %6, !dbg !3863

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3864
  br label %24, !dbg !3865

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3866
  %8 = icmp eq i32 %7, 0, !dbg !3866
  br i1 %8, label %13, label %9, !dbg !3868

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3869
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #18, !dbg !3870
  %12 = icmp eq i64 %11, -1, !dbg !3871
  br i1 %12, label %16, label %13, !dbg !3872

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #18, !dbg !3873
  %15 = icmp eq i32 %14, 0, !dbg !3873
  br i1 %15, label %16, label %18, !dbg !3874

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3856, metadata !DIExpression()), !dbg !3859
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %21, metadata !3858, metadata !DIExpression()), !dbg !3859
  br label %24, !dbg !3876

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #25, !dbg !3877
  %20 = load i32, i32* %19, align 4, !dbg !3877, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 %20, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 %20, metadata !3856, metadata !DIExpression()), !dbg !3859
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3875
  call void @llvm.dbg.value(metadata i32 %21, metadata !3858, metadata !DIExpression()), !dbg !3859
  %22 = icmp eq i32 %20, 0, !dbg !3878
  br i1 %22, label %24, label %23, !dbg !3876

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3880, !tbaa !1208
  call void @llvm.dbg.value(metadata i32 -1, metadata !3858, metadata !DIExpression()), !dbg !3859
  br label %24, !dbg !3882

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3859
  ret i32 %25, !dbg !3883
}

; Function Attrs: nofree nounwind
declare !dbg !952 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !987 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !988 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3884 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3890, metadata !DIExpression()), !dbg !3891
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3892
  br i1 %2, label %6, label %3, !dbg !3894

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #18, !dbg !3895
  %5 = icmp eq i32 %4, 0, !dbg !3895
  br i1 %5, label %6, label %8, !dbg !3896

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3897
  br label %17, !dbg !3898

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3899, metadata !DIExpression()) #18, !dbg !3904
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3906
  %10 = load i32, i32* %9, align 8, !dbg !3906, !tbaa !3724
  %11 = and i32 %10, 256, !dbg !3908
  %12 = icmp eq i32 %11, 0, !dbg !3908
  br i1 %12, label %15, label %13, !dbg !3909

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #18, !dbg !3910
  br label %15, !dbg !3910

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3911
  br label %17, !dbg !3912

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3891
  ret i32 %18, !dbg !3913
}

; Function Attrs: nofree nounwind
declare !dbg !996 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3914 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3921, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i64 %1, metadata !3922, metadata !DIExpression()), !dbg !3927
  call void @llvm.dbg.value(metadata i32 %2, metadata !3923, metadata !DIExpression()), !dbg !3927
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3928
  %5 = load i8*, i8** %4, align 8, !dbg !3928, !tbaa !3929
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3930
  %7 = load i8*, i8** %6, align 8, !dbg !3930, !tbaa !3931
  %8 = icmp eq i8* %5, %7, !dbg !3932
  br i1 %8, label %9, label %28, !dbg !3933

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3934
  %11 = load i8*, i8** %10, align 8, !dbg !3934, !tbaa !3935
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3936
  %13 = load i8*, i8** %12, align 8, !dbg !3936, !tbaa !3937
  %14 = icmp eq i8* %11, %13, !dbg !3938
  br i1 %14, label %15, label %28, !dbg !3939

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3940
  %17 = load i8*, i8** %16, align 8, !dbg !3940, !tbaa !3941
  %18 = icmp eq i8* %17, null, !dbg !3942
  br i1 %18, label %19, label %28, !dbg !3943

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #18, !dbg !3944
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #18, !dbg !3945
  call void @llvm.dbg.value(metadata i64 %21, metadata !3924, metadata !DIExpression()), !dbg !3946
  %22 = icmp eq i64 %21, -1, !dbg !3947
  br i1 %22, label %30, label %23, !dbg !3949

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3950
  %25 = load i32, i32* %24, align 8, !dbg !3951, !tbaa !3724
  %26 = and i32 %25, -17, !dbg !3951
  store i32 %26, i32* %24, align 8, !dbg !3951, !tbaa !3724
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3952
  store i64 %21, i64* %27, align 8, !dbg !3953, !tbaa !3954
  br label %30, !dbg !3955

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3956
  br label %30, !dbg !3957

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3927
  ret i32 %31, !dbg !3958
}

; Function Attrs: nofree nounwind
declare !dbg !1072 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

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
attributes #11 = { nofree nounwind readonly }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nounwind readonly }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind readnone }
attributes #26 = { cold }

!llvm.dbg.cu = !{!2, !414, !155, !160, !207, !213, !254, !421, !394, !463, !484, !487, !490, !402, !509, !548, !555, !946, !949, !993, !1034}
!llvm.ident = !{!1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075, !1075}
!llvm.module.flags = !{!1076, !1077, !1078, !1079, !1080}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "short_options", scope: !2, file: !3, line: 54, type: !150, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !144, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/kill.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{}
!5 = !{!6, !15, !76, !80, !84, !87, !90, !97, !112, !116, !120, !10, !66, !124, !128, !132, !133, !136, !140}
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
!116 = !DISubprogram(name: "quote", scope: !117, file: !117, line: 44, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!117 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!118 = !DISubroutineType(types: !119)
!119 = !{!12, !12}
!120 = !DISubprogram(name: "operand2sig", scope: !121, file: !121, line: 18, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!121 = !DIFile(filename: "src/operand2sig.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!122 = !DISubroutineType(types: !123)
!123 = !{!14, !12, !10}
!124 = !DISubprogram(name: "version_etc", scope: !125, file: !125, line: 69, type: !126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!125 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!126 = !DISubroutineType(types: !127)
!127 = !{null, !19, !12, !12, !12, null}
!128 = !DISubprogram(name: "sig2str", scope: !129, file: !129, line: 34, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!129 = !DIFile(filename: "./lib/sig2str.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!130 = !DISubroutineType(types: !131)
!131 = !{!14, !14, !10}
!132 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!133 = !DISubprogram(name: "puts", scope: !16, file: !16, line: 632, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!134 = !DISubroutineType(types: !135)
!135 = !{!14, !12}
!136 = !DISubprogram(name: "strsignal", scope: !137, file: !137, line: 447, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!137 = !DIFile(filename: "/usr/include/string.h", directory: "")
!138 = !DISubroutineType(types: !139)
!139 = !{!10, !14}
!140 = !DISubprogram(name: "kill", scope: !141, file: !141, line: 112, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!141 = !DIFile(filename: "/usr/include/signal.h", directory: "")
!142 = !DISubroutineType(types: !143)
!143 = !{!14, !14, !14}
!144 = !{!0, !145}
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 60, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1536, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 6)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 904, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 113)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "Version", scope: !155, file: !156, line: 2, type: !12, isLocal: false, isDefinition: true)
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !157, splitDebugInlining: false, nameTableKind: None)
!156 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!157 = !{!153}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "file_name", scope: !160, file: !161, line: 46, type: !12, isLocal: true, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !162, globals: !201, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !{!163, !6, !199, !112}
!163 = !DISubprogram(name: "close_stream", scope: !164, file: !164, line: 2, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!164 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!165 = !DISubroutineType(types: !166)
!166 = !{!14, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !168, file: !21, line: 51, baseType: !14, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !168, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !168, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !168, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !168, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !168, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !168, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !168, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !168, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !168, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !168, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !168, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !168, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !168, file: !21, line: 70, baseType: !167, size: 64, offset: 832)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !168, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !168, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !168, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !168, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !168, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !168, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !168, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !168, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !168, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !168, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !168, file: !21, line: 93, baseType: !167, size: 64, offset: 1344)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !168, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !168, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !168, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !168, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!199 = !DISubprogram(name: "quotearg_colon", scope: !200, file: !200, line: 391, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!200 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = !{!158, !202}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !160, file: !161, line: 56, type: !204, isLocal: true, isDefinition: true)
!204 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "exit_failure", scope: !207, file: !208, line: 24, type: !210, isLocal: false, isDefinition: true)
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !209, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = !{!205}
!210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "program_name", scope: !213, file: !214, line: 33, type: !12, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !215, globals: !251, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!215 = !{!66, !216, !10}
!216 = !DISubprogram(name: "fputs", scope: !16, file: !16, line: 626, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!217 = !DISubroutineType(types: !218)
!218 = !{!14, !12, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !220, file: !21, line: 51, baseType: !14, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !220, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !220, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !220, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !220, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !220, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !220, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !220, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !220, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !220, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !220, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !220, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !220, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !220, file: !21, line: 70, baseType: !219, size: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !220, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !220, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !220, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !220, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !220, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !220, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !220, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !220, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !220, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !220, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !220, file: !21, line: 93, baseType: !219, size: 64, offset: 1344)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !220, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !220, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !220, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !220, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!251 = !{!211}
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !254, file: !255, line: 85, type: !388, isLocal: false, isDefinition: true)
!254 = distinct !DICompileUnit(language: DW_LANG_C99, file: !255, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !256, retainedTypes: !290, globals: !361, splitDebugInlining: false, nameTableKind: None)
!255 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!256 = !{!257, !270, !275}
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !200, line: 32, baseType: !132, size: 32, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269}
!259 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!260 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!261 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!262 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!263 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!264 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!265 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!266 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!267 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!268 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!269 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !200, line: 242, baseType: !132, size: 32, elements: !271)
!271 = !{!272, !273, !274}
!272 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!273 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!274 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 46, baseType: !132, size: 32, elements: !277)
!276 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!278 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!279 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!280 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!281 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!282 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!283 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!284 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!285 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!286 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!287 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!288 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!289 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!290 = !{!291, !297, !313, !316, !14, !46, !319, !68, !336, !340, !6, !346, !350, !10, !354, !357, !358}
!291 = !DISubprogram(name: "xmemdup", scope: !292, file: !292, line: 62, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!292 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!293 = !DISubroutineType(types: !294)
!294 = !{!66, !295, !70}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!297 = !DISubprogram(name: "quotearg_alloc_mem", scope: !200, file: !200, line: 342, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!298 = !DISubroutineType(types: !299)
!299 = !{!10, !12, !70, !300, !301}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !255, line: 65, size: 448, elements: !304)
!304 = !{!305, !306, !307, !311, !312}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !303, file: !255, line: 68, baseType: !257, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !255, line: 71, baseType: !14, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !303, file: !255, line: 75, baseType: !308, size: 256, offset: 64)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 8)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !303, file: !255, line: 78, baseType: !12, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !303, file: !255, line: 81, baseType: !12, size: 64, offset: 384)
!313 = !DISubprogram(name: "free", scope: !91, file: !91, line: 565, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !66}
!316 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !200, file: !200, line: 408, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!317 = !DISubroutineType(types: !318)
!318 = !{!10, !14, !12, !12, !12, !70}
!319 = !DISubprogram(name: "rpl_mbrtowc", scope: !320, file: !320, line: 717, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!320 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!321 = !DISubroutineType(types: !322)
!322 = !{!70, !110, !12, !70, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 13, size: 64, elements: !326)
!325 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !324, file: !325, line: 15, baseType: !14, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !324, file: !325, line: 20, baseType: !329, size: 32, offset: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !325, line: 16, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !329, file: !325, line: 18, baseType: !132, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !329, file: !325, line: 19, baseType: !333, size: 32)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 32, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 4)
!336 = !DISubprogram(name: "iswprint", scope: !337, file: !337, line: 120, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!337 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!338 = !DISubroutineType(types: !339)
!339 = !{!14, !132}
!340 = !DISubprogram(name: "mbsinit", scope: !341, file: !341, line: 292, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!341 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!342 = !DISubroutineType(types: !343)
!343 = !{!14, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!346 = !DISubprogram(name: "locale_charset", scope: !347, file: !347, line: 35, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!347 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!348 = !DISubroutineType(types: !349)
!349 = !{!12}
!350 = !DISubprogram(name: "c_strcasecmp", scope: !351, file: !351, line: 42, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!351 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!352 = !DISubroutineType(types: !353)
!353 = !{!14, !12, !12}
!354 = !DISubprogram(name: "xmalloc", scope: !292, file: !292, line: 53, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!355 = !DISubroutineType(types: !356)
!356 = !{!66, !70}
!357 = !DISubprogram(name: "xalloc_die", scope: !292, file: !292, line: 51, type: !95, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !4)
!358 = !DISubprogram(name: "xrealloc", scope: !292, file: !292, line: 59, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!359 = !DISubroutineType(types: !360)
!360 = !{!66, !66, !70}
!361 = !{!252, !362, !368, !370, !372, !377, !384, !386}
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !254, file: !255, line: 101, type: !364, isLocal: false, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 320, elements: !366)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!366 = !{!367}
!367 = !DISubrange(count: 10)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !254, file: !255, line: 1052, type: !303, isLocal: false, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !254, file: !255, line: 116, type: !303, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "slot0", scope: !254, file: !255, line: 842, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 256)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "slotvec", scope: !254, file: !255, line: 845, type: !379, isLocal: true, isDefinition: true)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !255, line: 834, size: 128, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !380, file: !255, line: 836, baseType: !68, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !255, line: 837, baseType: !10, size: 64, offset: 64)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "nslots", scope: !254, file: !255, line: 843, type: !14, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "slotvec0", scope: !254, file: !255, line: 844, type: !380, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 704, elements: !390)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!390 = !{!391}
!391 = !DISubrange(count: 11)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !394, file: !395, line: 26, type: !397, isLocal: false, isDefinition: true)
!394 = distinct !DICompileUnit(language: DW_LANG_C99, file: !395, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !396, splitDebugInlining: false, nameTableKind: None)
!395 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!396 = !{!392}
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 376, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 47)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "numname_table", scope: !402, file: !403, line: 41, type: !406, isLocal: true, isDefinition: true)
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !404, globals: !405, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/sig2str.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!404 = !{!132}
!405 = !{!400}
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 3360, elements: !412)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "numname", file: !403, line: 41, size: 96, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !407, file: !403, line: 41, baseType: !14, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !403, line: 41, baseType: !411, size: 64, offset: 32)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !309)
!412 = !{!413}
!413 = !DISubrange(count: 35)
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !416, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "src/operand2sig.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!416 = !{!132, !417, !418, !313, !128, !6, !116, !112}
!417 = !DISubprogram(name: "xstrdup", scope: !292, file: !292, line: 64, type: !88, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!418 = !DISubprogram(name: "str2sig", scope: !129, file: !129, line: 35, type: !419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!419 = !DISubroutineType(types: !420)
!420 = !{!14, !12, !110}
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !423, retainedTypes: !427, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!423 = !{!424}
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !422, line: 40, baseType: !132, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!427 = !{!6, !428, !66}
!428 = !DISubprogram(name: "fputs_unlocked", scope: !16, file: !16, line: 662, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!429 = !DISubroutineType(types: !430)
!430 = !{!14, !12, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !432, file: !21, line: 51, baseType: !14, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !432, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !432, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !432, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !432, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !432, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !432, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !432, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !432, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !432, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !432, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !432, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !432, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !432, file: !21, line: 70, baseType: !431, size: 64, offset: 832)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !432, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !432, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !432, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !432, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !432, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !432, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !432, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !432, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !432, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !432, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !432, file: !21, line: 93, baseType: !431, size: 64, offset: 1344)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !432, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !432, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !432, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !432, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !465, retainedTypes: !478, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!465 = !{!466}
!466 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !467, file: !292, line: 186, baseType: !132, size: 32, elements: !476)
!467 = distinct !DISubprogram(name: "x2nrealloc", scope: !292, file: !292, line: 174, type: !468, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !471)
!468 = !DISubroutineType(types: !469)
!469 = !{!66, !66, !470, !68}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!471 = !{!472, !473, !474, !475}
!472 = !DILocalVariable(name: "p", arg: 1, scope: !467, file: !292, line: 174, type: !66)
!473 = !DILocalVariable(name: "pn", arg: 2, scope: !467, file: !292, line: 174, type: !470)
!474 = !DILocalVariable(name: "s", arg: 3, scope: !467, file: !292, line: 174, type: !68)
!475 = !DILocalVariable(name: "n", scope: !467, file: !292, line: 176, type: !68)
!476 = !{!477}
!477 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!478 = !{!68, !357, !354, !358, !10, !313, !66, !479, !482}
!479 = !DISubprogram(name: "xcalloc", scope: !292, file: !292, line: 57, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!480 = !DISubroutineType(types: !481)
!481 = !{!66, !70, !70}
!482 = !DISubprogram(name: "rpl_calloc", scope: !483, file: !483, line: 688, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!483 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!484 = distinct !DICompileUnit(language: DW_LANG_C99, file: !485, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !486, splitDebugInlining: false, nameTableKind: None)
!485 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!486 = !{!6, !112}
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !489, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!489 = !{!66}
!490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !491, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !492, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!492 = !{!493, !68, !505}
!493 = !DISubprogram(name: "mbrtowc", scope: !341, file: !341, line: 296, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!494 = !DISubroutineType(types: !495)
!495 = !{!70, !110, !12, !70, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 13, size: 64, elements: !498)
!498 = !{!499, !500}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !497, file: !325, line: 15, baseType: !14, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !497, file: !325, line: 20, baseType: !501, size: 32, offset: 32)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !497, file: !325, line: 16, size: 32, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !501, file: !325, line: 18, baseType: !132, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !501, file: !325, line: 19, baseType: !333, size: 32)
!505 = !DISubprogram(name: "hard_locale", scope: !506, file: !506, line: 26, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!506 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!507 = !DISubroutineType(types: !508)
!508 = !{!204, !14}
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !510, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !511, splitDebugInlining: false, nameTableKind: None)
!510 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!511 = !{!512}
!512 = !DISubprogram(name: "rpl_fclose", scope: !513, file: !513, line: 672, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!513 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!514 = !DISubroutineType(types: !515)
!515 = !{!14, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !517, file: !21, line: 51, baseType: !14, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !517, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !517, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !517, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !517, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !517, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !517, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !517, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !517, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !517, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !517, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !517, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !517, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !517, file: !21, line: 70, baseType: !516, size: 64, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !517, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !517, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !517, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !517, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !517, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !517, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !517, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !517, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !517, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !517, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !517, file: !21, line: 93, baseType: !516, size: 64, offset: 1344)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !517, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !517, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !517, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !517, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!548 = distinct !DICompileUnit(language: DW_LANG_C99, file: !549, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !550, splitDebugInlining: false, nameTableKind: None)
!549 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!550 = !{!551}
!551 = !DISubprogram(name: "setlocale_null_r", scope: !552, file: !552, line: 64, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!552 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!553 = !DISubroutineType(types: !554)
!554 = !{!14, !14, !10, !70}
!555 = distinct !DICompileUnit(language: DW_LANG_C99, file: !556, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !557, retainedTypes: !944, splitDebugInlining: false, nameTableKind: None)
!556 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!557 = !{!558}
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !559, line: 41, baseType: !132, size: 32, elements: !560)
!559 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943}
!561 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!562 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!563 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!564 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!565 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!566 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!567 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!568 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!569 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!570 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!571 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!572 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!573 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!574 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!575 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!576 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!577 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!578 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!579 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!580 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!581 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!582 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!583 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!584 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!585 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!586 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!587 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!588 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!589 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!590 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!591 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!592 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!593 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!594 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!595 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!596 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!597 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!598 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!599 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!600 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!601 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!602 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!603 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!604 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!605 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!606 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!607 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!608 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!609 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!610 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!669 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!672 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!673 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!674 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!675 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!676 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!677 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!678 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!679 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!680 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!681 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!682 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!683 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!737 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!738 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!739 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!740 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!741 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!746 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!747 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!748 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!749 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!756 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!805 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!806 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!807 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!808 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!809 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!810 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!811 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!812 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!813 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!814 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!815 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!816 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!817 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!818 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!819 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!820 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!821 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!829 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!830 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!831 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!832 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!833 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!834 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!835 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!836 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!837 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!838 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!839 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!840 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!841 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!842 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!843 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!845 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!846 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!847 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!848 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!849 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!850 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!876 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!877 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!878 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!879 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!880 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!883 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!884 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!885 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!886 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!887 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!888 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!889 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!890 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!891 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!892 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!893 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!894 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!944 = !{!945, !66}
!945 = !DISubprogram(name: "nl_langinfo", scope: !559, file: !559, line: 661, type: !138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!946 = distinct !DICompileUnit(language: DW_LANG_C99, file: !947, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !948, splitDebugInlining: false, nameTableKind: None)
!947 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!948 = !{!66, !80}
!949 = distinct !DICompileUnit(language: DW_LANG_C99, file: !950, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !951, splitDebugInlining: false, nameTableKind: None)
!950 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!951 = !{!952, !987, !988, !992}
!952 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!953 = !DISubroutineType(types: !954)
!954 = !{!14, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !957)
!957 = !{!958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !956, file: !21, line: 51, baseType: !14, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !956, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !956, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !956, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !956, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !956, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !956, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !956, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !956, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !956, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !956, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !956, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !956, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !956, file: !21, line: 70, baseType: !955, size: 64, offset: 832)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !956, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !956, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !956, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !956, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !956, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !956, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !956, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !956, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !956, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !956, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !956, file: !21, line: 93, baseType: !955, size: 64, offset: 1344)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !956, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !956, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !956, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !956, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!987 = !DISubprogram(name: "fclose", scope: !16, file: !16, line: 213, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!988 = !DISubprogram(name: "lseek", scope: !989, file: !989, line: 334, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!989 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!990 = !DISubroutineType(types: !991)
!991 = !{!44, !14, !44, !14}
!992 = !DISubprogram(name: "rpl_fflush", scope: !513, file: !513, line: 718, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!993 = distinct !DICompileUnit(language: DW_LANG_C99, file: !994, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !995, splitDebugInlining: false, nameTableKind: None)
!994 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!995 = !{!66, !996, !1031}
!996 = !DISubprogram(name: "fflush", scope: !16, file: !16, line: 218, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!997 = !DISubroutineType(types: !998)
!998 = !{!14, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1000, file: !21, line: 51, baseType: !14, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1000, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1000, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1000, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1000, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1000, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1000, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1000, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1000, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1000, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1000, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1000, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1000, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1000, file: !21, line: 70, baseType: !999, size: 64, offset: 832)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1000, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1000, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1000, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1000, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1000, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1000, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1000, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1000, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1000, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1000, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1000, file: !21, line: 93, baseType: !999, size: 64, offset: 1344)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1000, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1000, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1000, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1000, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1031 = !DISubprogram(name: "rpl_fseeko", scope: !513, file: !513, line: 1034, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!14, !999, !44, !14}
!1034 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1035, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !1036, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1036 = !{!66, !1037, !988, !1072}
!1037 = !DISubprogram(name: "fileno", scope: !16, file: !16, line: 786, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!14, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !21, line: 49, size: 1728, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1041, file: !21, line: 51, baseType: !14, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1041, file: !21, line: 54, baseType: !10, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1041, file: !21, line: 55, baseType: !10, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1041, file: !21, line: 56, baseType: !10, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1041, file: !21, line: 57, baseType: !10, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1041, file: !21, line: 58, baseType: !10, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1041, file: !21, line: 59, baseType: !10, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1041, file: !21, line: 60, baseType: !10, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1041, file: !21, line: 61, baseType: !10, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1041, file: !21, line: 64, baseType: !10, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1041, file: !21, line: 65, baseType: !10, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1041, file: !21, line: 66, baseType: !10, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1041, file: !21, line: 68, baseType: !36, size: 64, offset: 768)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1041, file: !21, line: 70, baseType: !1040, size: 64, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1041, file: !21, line: 72, baseType: !14, size: 32, offset: 896)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1041, file: !21, line: 73, baseType: !14, size: 32, offset: 928)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1041, file: !21, line: 74, baseType: !42, size: 64, offset: 960)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1041, file: !21, line: 77, baseType: !46, size: 16, offset: 1024)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1041, file: !21, line: 78, baseType: !48, size: 8, offset: 1040)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1041, file: !21, line: 79, baseType: !50, size: 8, offset: 1048)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1041, file: !21, line: 81, baseType: !54, size: 64, offset: 1088)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1041, file: !21, line: 89, baseType: !57, size: 64, offset: 1152)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1041, file: !21, line: 91, baseType: !59, size: 64, offset: 1216)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1041, file: !21, line: 92, baseType: !62, size: 64, offset: 1280)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1041, file: !21, line: 93, baseType: !1040, size: 64, offset: 1344)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1041, file: !21, line: 94, baseType: !66, size: 64, offset: 1408)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1041, file: !21, line: 95, baseType: !68, size: 64, offset: 1472)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1041, file: !21, line: 96, baseType: !14, size: 32, offset: 1536)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1041, file: !21, line: 98, baseType: !73, size: 160, offset: 1568)
!1072 = !DISubprogram(name: "fseeko", scope: !16, file: !16, line: 707, type: !1073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!14, !1040, !44, !14}
!1075 = !{!"clang version 10.0.0 "}
!1076 = !{i32 7, !"Dwarf Version", i32 4}
!1077 = !{i32 2, !"Debug Info Version", i32 3}
!1078 = !{i32 1, !"wchar_size", i32 4}
!1079 = !{i32 7, !"PIC Level", i32 2}
!1080 = !{i32 7, !"PIE Level", i32 2}
!1081 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 71, type: !1082, scopeLine: 72, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !14}
!1084 = !{!1085}
!1085 = !DILocalVariable(name: "status", arg: 1, scope: !1081, file: !3, line: 71, type: !14)
!1086 = !DILocalVariable(name: "infomap", scope: !1087, file: !1088, line: 636, type: !1100)
!1087 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1088, file: !1088, line: 634, type: !78, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1089)
!1088 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1089 = !{!1090, !1086, !1091, !1092, !1099}
!1090 = !DILocalVariable(name: "program", arg: 1, scope: !1087, file: !1088, line: 634, type: !12)
!1091 = !DILocalVariable(name: "node", scope: !1087, file: !1088, line: 646, type: !12)
!1092 = !DILocalVariable(name: "map_prog", scope: !1087, file: !1088, line: 647, type: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1087, file: !1088, line: 636, size: 128, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1095, file: !1088, line: 636, baseType: !12, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1095, file: !1088, line: 636, baseType: !12, size: 64, offset: 64)
!1099 = !DILocalVariable(name: "lc_messages", scope: !1087, file: !1088, line: 659, type: !12)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 896, elements: !1101)
!1101 = !{!1102}
!1102 = !DISubrange(count: 7)
!1103 = !DILocation(line: 636, column: 67, scope: !1087, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 103, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 76, column: 5)
!1106 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 73, column: 7)
!1107 = !DILocation(line: 0, scope: !1081)
!1108 = !DILocation(line: 73, column: 14, scope: !1106)
!1109 = !DILocation(line: 73, column: 7, scope: !1081)
!1110 = !DILocation(line: 74, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 74, column: 5)
!1112 = !{!1113, !1113, i64 0}
!1113 = !{!"any pointer", !1114, i64 0}
!1114 = !{!"omnipotent char", !1115, i64 0}
!1115 = !{!"Simple C/C++ TBAA"}
!1116 = !DILocation(line: 77, column: 7, scope: !1105)
!1117 = !DILocation(line: 83, column: 7, scope: !1105)
!1118 = !DILocation(line: 590, column: 3, scope: !1119, inlinedAt: !1120)
!1119 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !1088, file: !1088, line: 588, type: !95, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!1120 = distinct !DILocation(line: 87, column: 7, scope: !1105)
!1121 = !DILocation(line: 89, column: 7, scope: !1105)
!1122 = !DILocation(line: 95, column: 7, scope: !1105)
!1123 = !DILocation(line: 96, column: 7, scope: !1105)
!1124 = !DILocation(line: 97, column: 7, scope: !1105)
!1125 = !DILocation(line: 102, column: 7, scope: !1105)
!1126 = !DILocation(line: 0, scope: !1087, inlinedAt: !1104)
!1127 = !DILocation(line: 636, column: 3, scope: !1087, inlinedAt: !1104)
!1128 = !DILocation(line: 647, column: 36, scope: !1087, inlinedAt: !1104)
!1129 = !DILocation(line: 649, column: 3, scope: !1087, inlinedAt: !1104)
!1130 = !DILocation(line: 649, column: 33, scope: !1087, inlinedAt: !1104)
!1131 = !DILocation(line: 650, column: 13, scope: !1087, inlinedAt: !1104)
!1132 = !DILocation(line: 649, column: 20, scope: !1087, inlinedAt: !1104)
!1133 = !{!1134, !1113, i64 0}
!1134 = !{!"infomap", !1113, i64 0, !1113, i64 8}
!1135 = !DILocation(line: 649, column: 10, scope: !1087, inlinedAt: !1104)
!1136 = !DILocation(line: 649, column: 28, scope: !1087, inlinedAt: !1104)
!1137 = distinct !{!1137, !1129, !1131}
!1138 = !DILocation(line: 652, column: 17, scope: !1139, inlinedAt: !1104)
!1139 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 652, column: 7)
!1140 = !{!1134, !1113, i64 8}
!1141 = !DILocation(line: 652, column: 7, scope: !1139, inlinedAt: !1104)
!1142 = !DILocation(line: 652, column: 7, scope: !1087, inlinedAt: !1104)
!1143 = !DILocation(line: 655, column: 3, scope: !1087, inlinedAt: !1104)
!1144 = !DILocation(line: 659, column: 29, scope: !1087, inlinedAt: !1104)
!1145 = !DILocation(line: 660, column: 7, scope: !1146, inlinedAt: !1104)
!1146 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 660, column: 7)
!1147 = !DILocation(line: 660, column: 19, scope: !1146, inlinedAt: !1104)
!1148 = !DILocation(line: 660, column: 22, scope: !1146, inlinedAt: !1104)
!1149 = !DILocation(line: 660, column: 7, scope: !1087, inlinedAt: !1104)
!1150 = !DILocation(line: 666, column: 7, scope: !1151, inlinedAt: !1104)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !1088, line: 661, column: 5)
!1152 = !DILocation(line: 668, column: 5, scope: !1151, inlinedAt: !1104)
!1153 = !DILocation(line: 669, column: 3, scope: !1087, inlinedAt: !1104)
!1154 = !DILocation(line: 671, column: 3, scope: !1087, inlinedAt: !1104)
!1155 = !DILocation(line: 673, column: 1, scope: !1087, inlinedAt: !1104)
!1156 = !DILocation(line: 105, column: 3, scope: !1081)
!1157 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 221, type: !1158, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1161)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!14, !14, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1172}
!1162 = !DILocalVariable(name: "argc", arg: 1, scope: !1157, file: !3, line: 221, type: !14)
!1163 = !DILocalVariable(name: "argv", arg: 2, scope: !1157, file: !3, line: 221, type: !1160)
!1164 = !DILocalVariable(name: "optc", scope: !1157, file: !3, line: 223, type: !14)
!1165 = !DILocalVariable(name: "list", scope: !1157, file: !3, line: 224, type: !204)
!1166 = !DILocalVariable(name: "table", scope: !1157, file: !3, line: 225, type: !204)
!1167 = !DILocalVariable(name: "signum", scope: !1157, file: !3, line: 226, type: !14)
!1168 = !DILocalVariable(name: "signame", scope: !1157, file: !3, line: 227, type: !1169)
!1169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 152, elements: !1170)
!1170 = !{!1171}
!1171 = !DISubrange(count: 19)
!1172 = !DILabel(scope: !1157, name: "no_more_options", file: !3, line: 295)
!1173 = !DILocalVariable(name: "signame", scope: !1174, file: !3, line: 130, type: !1169)
!1174 = distinct !DISubprogram(name: "list_signals", scope: !3, file: !3, line: 126, type: !1175, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1177)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!14, !204, !101}
!1177 = !{!1178, !1179, !1180, !1181, !1173, !1182, !1185, !1186}
!1178 = !DILocalVariable(name: "table", arg: 1, scope: !1174, file: !3, line: 126, type: !204)
!1179 = !DILocalVariable(name: "argv", arg: 2, scope: !1174, file: !3, line: 126, type: !101)
!1180 = !DILocalVariable(name: "signum", scope: !1174, file: !3, line: 128, type: !14)
!1181 = !DILocalVariable(name: "status", scope: !1174, file: !3, line: 129, type: !14)
!1182 = !DILocalVariable(name: "name_width", scope: !1183, file: !3, line: 134, type: !132)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 133, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 132, column: 7)
!1185 = !DILocalVariable(name: "num_width", scope: !1183, file: !3, line: 137, type: !132)
!1186 = !DILocalVariable(name: "len", scope: !1187, file: !3, line: 145, type: !68)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 144, column: 11)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 143, column: 13)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 142, column: 7)
!1190 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 142, column: 7)
!1191 = !DILocation(line: 130, column: 8, scope: !1174, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 312, column: 13, scope: !1157)
!1193 = !DILocation(line: 0, scope: !1157)
!1194 = !DILocation(line: 227, column: 3, scope: !1157)
!1195 = !DILocation(line: 227, column: 8, scope: !1157)
!1196 = !DILocation(line: 230, column: 21, scope: !1157)
!1197 = !DILocation(line: 230, column: 3, scope: !1157)
!1198 = !DILocation(line: 231, column: 3, scope: !1157)
!1199 = !DILocation(line: 232, column: 3, scope: !1157)
!1200 = !DILocation(line: 233, column: 3, scope: !1157)
!1201 = !DILocation(line: 235, column: 3, scope: !1157)
!1202 = !DILocation(line: 237, column: 3, scope: !1157)
!1203 = !DILocation(line: 226, column: 7, scope: !1157)
!1204 = !DILocation(line: 237, column: 18, scope: !1157)
!1205 = !DILocation(line: 243, column: 13, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 243, column: 13)
!1207 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 240, column: 7)
!1208 = !{!1209, !1209, i64 0}
!1209 = !{!"int", !1114, i64 0}
!1210 = !DILocation(line: 243, column: 20, scope: !1206)
!1211 = !DILocation(line: 243, column: 13, scope: !1207)
!1212 = !DILocation(line: 246, column: 19, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 244, column: 11)
!1214 = !DILocation(line: 247, column: 13, scope: !1213)
!1215 = !DILocation(line: 256, column: 15, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 256, column: 13)
!1217 = !DILocation(line: 0, scope: !1207)
!1218 = !DILocation(line: 256, column: 13, scope: !1207)
!1219 = !DILocation(line: 257, column: 20, scope: !1216)
!1220 = !DILocation(line: 257, column: 39, scope: !1216)
!1221 = !DILocation(line: 257, column: 37, scope: !1216)
!1222 = !DILocation(line: 257, column: 18, scope: !1216)
!1223 = !DILocation(line: 257, column: 11, scope: !1216)
!1224 = !DILocation(line: 258, column: 13, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 258, column: 13)
!1226 = !DILocation(line: 258, column: 23, scope: !1225)
!1227 = !DILocation(line: 258, column: 40, scope: !1225)
!1228 = !DILocation(line: 258, column: 20, scope: !1225)
!1229 = !DILocation(line: 258, column: 13, scope: !1207)
!1230 = !DILocation(line: 260, column: 26, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 259, column: 11)
!1232 = !DILocation(line: 260, column: 13, scope: !1231)
!1233 = !DILocation(line: 261, column: 13, scope: !1231)
!1234 = !DILocation(line: 263, column: 15, scope: !1207)
!1235 = !DILocation(line: 264, column: 9, scope: !1207)
!1236 = !DILocation(line: 267, column: 15, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 267, column: 13)
!1238 = !DILocation(line: 267, column: 13, scope: !1207)
!1239 = !DILocation(line: 269, column: 26, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 268, column: 11)
!1241 = !DILocation(line: 269, column: 70, scope: !1240)
!1242 = !DILocation(line: 269, column: 63, scope: !1240)
!1243 = !DILocation(line: 269, column: 13, scope: !1240)
!1244 = !DILocation(line: 270, column: 13, scope: !1240)
!1245 = !DILocation(line: 272, column: 31, scope: !1207)
!1246 = !DILocation(line: 272, column: 18, scope: !1207)
!1247 = !DILocation(line: 273, column: 20, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 273, column: 13)
!1249 = !DILocation(line: 273, column: 13, scope: !1207)
!1250 = distinct !{!1250, !1202, !1251}
!1251 = !DILocation(line: 294, column: 7, scope: !1157)
!1252 = !DILocation(line: 274, column: 11, scope: !1248)
!1253 = !DILocation(line: 282, column: 13, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 282, column: 13)
!1255 = !DILocation(line: 290, column: 7, scope: !1207)
!1256 = !DILocation(line: 291, column: 7, scope: !1207)
!1257 = !DILocation(line: 293, column: 9, scope: !1207)
!1258 = !DILocation(line: 295, column: 2, scope: !1157)
!1259 = !DILocation(line: 297, column: 14, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 297, column: 7)
!1261 = !DILocation(line: 297, column: 7, scope: !1157)
!1262 = !DILocation(line: 299, column: 12, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 299, column: 12)
!1264 = !DILocation(line: 299, column: 12, scope: !1260)
!1265 = !DILocation(line: 301, column: 20, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 300, column: 5)
!1267 = !DILocation(line: 301, column: 7, scope: !1266)
!1268 = !DILocation(line: 302, column: 7, scope: !1266)
!1269 = !DILocation(line: 305, column: 10, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 305, column: 8)
!1271 = !DILocation(line: 305, column: 26, scope: !1270)
!1272 = !DILocation(line: 305, column: 23, scope: !1270)
!1273 = !DILocation(line: 305, column: 15, scope: !1270)
!1274 = !DILocation(line: 307, column: 20, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 306, column: 5)
!1276 = !DILocation(line: 307, column: 7, scope: !1275)
!1277 = !DILocation(line: 308, column: 7, scope: !1275)
!1278 = !DILocation(line: 311, column: 11, scope: !1157)
!1279 = !DILocation(line: 312, column: 27, scope: !1157)
!1280 = !DILocation(line: 312, column: 34, scope: !1157)
!1281 = !DILocation(line: 0, scope: !1174, inlinedAt: !1192)
!1282 = !DILocation(line: 130, column: 3, scope: !1174, inlinedAt: !1192)
!1283 = !DILocation(line: 132, column: 7, scope: !1174, inlinedAt: !1192)
!1284 = !DILocation(line: 0, scope: !1183, inlinedAt: !1192)
!1285 = !DILocation(line: 143, column: 13, scope: !1188, inlinedAt: !1192)
!1286 = !DILocation(line: 143, column: 39, scope: !1188, inlinedAt: !1192)
!1287 = !DILocation(line: 143, column: 13, scope: !1189, inlinedAt: !1192)
!1288 = !DILocation(line: 145, column: 26, scope: !1187, inlinedAt: !1192)
!1289 = !DILocation(line: 0, scope: !1187, inlinedAt: !1192)
!1290 = !DILocation(line: 146, column: 17, scope: !1291, inlinedAt: !1192)
!1291 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 146, column: 17)
!1292 = !DILocation(line: 146, column: 28, scope: !1291, inlinedAt: !1192)
!1293 = !DILocation(line: 147, column: 28, scope: !1291, inlinedAt: !1192)
!1294 = !DILocation(line: 146, column: 17, scope: !1187, inlinedAt: !1192)
!1295 = !DILocation(line: 148, column: 11, scope: !1187, inlinedAt: !1192)
!1296 = !DILocation(line: 142, column: 54, scope: !1189, inlinedAt: !1192)
!1297 = !DILocation(line: 142, column: 31, scope: !1189, inlinedAt: !1192)
!1298 = !DILocation(line: 142, column: 7, scope: !1190, inlinedAt: !1192)
!1299 = distinct !{!1299, !1298, !1300}
!1300 = !DILocation(line: 148, column: 11, scope: !1190, inlinedAt: !1192)
!1301 = !DILocation(line: 150, column: 11, scope: !1302, inlinedAt: !1192)
!1302 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 150, column: 11)
!1303 = !DILocation(line: 150, column: 11, scope: !1183, inlinedAt: !1192)
!1304 = !DILocation(line: 151, column: 16, scope: !1305, inlinedAt: !1192)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 151, column: 9)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 151, column: 9)
!1307 = !DILocation(line: 151, column: 9, scope: !1306, inlinedAt: !1192)
!1308 = !DILocation(line: 153, column: 22, scope: !1309, inlinedAt: !1192)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 152, column: 11)
!1310 = !DILocation(line: 154, column: 24, scope: !1311, inlinedAt: !1192)
!1311 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 154, column: 17)
!1312 = !DILocation(line: 154, column: 17, scope: !1309, inlinedAt: !1192)
!1313 = !DILocalVariable(name: "num_width", arg: 1, scope: !1314, file: !3, line: 113, type: !14)
!1314 = distinct !DISubprogram(name: "print_table_row", scope: !3, file: !3, line: 113, type: !1315, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1317)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !14, !14, !14, !12}
!1317 = !{!1313, !1318, !1319, !1320, !1321}
!1318 = !DILocalVariable(name: "signum", arg: 2, scope: !1314, file: !3, line: 113, type: !14)
!1319 = !DILocalVariable(name: "name_width", arg: 3, scope: !1314, file: !3, line: 114, type: !14)
!1320 = !DILocalVariable(name: "signame", arg: 4, scope: !1314, file: !3, line: 114, type: !12)
!1321 = !DILocalVariable(name: "description", scope: !1314, file: !3, line: 116, type: !12)
!1322 = !DILocation(line: 0, scope: !1314, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 157, column: 15, scope: !1311, inlinedAt: !1192)
!1324 = !DILocation(line: 116, column: 29, scope: !1314, inlinedAt: !1323)
!1325 = !DILocation(line: 117, column: 3, scope: !1314, inlinedAt: !1323)
!1326 = !DILocation(line: 151, column: 27, scope: !1305, inlinedAt: !1192)
!1327 = distinct !{!1327, !1307, !1328}
!1328 = !DILocation(line: 158, column: 11, scope: !1306, inlinedAt: !1192)
!1329 = !DILocation(line: 161, column: 15, scope: !1330, inlinedAt: !1192)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 161, column: 15)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 160, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 160, column: 9)
!1333 = !DILocation(line: 161, column: 41, scope: !1330, inlinedAt: !1192)
!1334 = !DILocation(line: 161, column: 15, scope: !1331, inlinedAt: !1192)
!1335 = !DILocation(line: 0, scope: !1314, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 162, column: 13, scope: !1330, inlinedAt: !1192)
!1337 = !DILocation(line: 116, column: 29, scope: !1314, inlinedAt: !1336)
!1338 = !DILocation(line: 117, column: 3, scope: !1314, inlinedAt: !1336)
!1339 = !DILocation(line: 162, column: 13, scope: !1330, inlinedAt: !1192)
!1340 = !DILocation(line: 160, column: 56, scope: !1331, inlinedAt: !1192)
!1341 = !DILocation(line: 160, column: 33, scope: !1331, inlinedAt: !1192)
!1342 = !DILocation(line: 160, column: 9, scope: !1332, inlinedAt: !1192)
!1343 = distinct !{!1343, !1342, !1344}
!1344 = !DILocation(line: 162, column: 68, scope: !1332, inlinedAt: !1192)
!1345 = !DILocation(line: 166, column: 11, scope: !1346, inlinedAt: !1192)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 166, column: 11)
!1347 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 165, column: 5)
!1348 = !DILocation(line: 166, column: 11, scope: !1347, inlinedAt: !1192)
!1349 = !DILocation(line: 167, column: 16, scope: !1350, inlinedAt: !1192)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 167, column: 9)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 167, column: 9)
!1352 = !DILocation(line: 167, column: 9, scope: !1351, inlinedAt: !1192)
!1353 = !DILocation(line: 169, column: 22, scope: !1354, inlinedAt: !1192)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 168, column: 11)
!1355 = !DILocation(line: 170, column: 24, scope: !1356, inlinedAt: !1192)
!1356 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 170, column: 17)
!1357 = !DILocation(line: 170, column: 17, scope: !1354, inlinedAt: !1192)
!1358 = !DILocation(line: 174, column: 21, scope: !1359, inlinedAt: !1192)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 174, column: 21)
!1360 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 173, column: 15)
!1361 = !{!1114, !1114, i64 0}
!1362 = !DILocation(line: 174, column: 21, scope: !1360, inlinedAt: !1192)
!1363 = !DILocation(line: 175, column: 19, scope: !1359, inlinedAt: !1192)
!1364 = !DILocation(line: 177, column: 19, scope: !1359, inlinedAt: !1192)
!1365 = !DILocation(line: 167, column: 27, scope: !1350, inlinedAt: !1192)
!1366 = distinct !{!1366, !1352, !1367}
!1367 = !DILocation(line: 179, column: 11, scope: !1351, inlinedAt: !1192)
!1368 = !DILocation(line: 182, column: 15, scope: !1369, inlinedAt: !1192)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 182, column: 15)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 181, column: 9)
!1371 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 181, column: 9)
!1372 = !DILocation(line: 182, column: 41, scope: !1369, inlinedAt: !1192)
!1373 = !DILocation(line: 182, column: 15, scope: !1370, inlinedAt: !1192)
!1374 = !DILocation(line: 183, column: 13, scope: !1369, inlinedAt: !1192)
!1375 = !DILocation(line: 181, column: 56, scope: !1370, inlinedAt: !1192)
!1376 = !DILocation(line: 181, column: 33, scope: !1370, inlinedAt: !1192)
!1377 = !DILocation(line: 181, column: 9, scope: !1371, inlinedAt: !1192)
!1378 = distinct !{!1378, !1377, !1379}
!1379 = !DILocation(line: 183, column: 26, scope: !1371, inlinedAt: !1192)
!1380 = !DILocation(line: 129, column: 7, scope: !1174, inlinedAt: !1192)
!1381 = !DILocation(line: 187, column: 1, scope: !1174, inlinedAt: !1192)
!1382 = !DILocation(line: 313, column: 40, scope: !1157)
!1383 = !DILocalVariable(name: "signum", arg: 1, scope: !1384, file: !3, line: 193, type: !14)
!1384 = distinct !DISubprogram(name: "send_signals", scope: !3, file: !3, line: 193, type: !1385, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!14, !14, !101}
!1387 = !{!1383, !1388, !1389, !1390, !1391, !1393, !1397}
!1388 = !DILocalVariable(name: "argv", arg: 2, scope: !1384, file: !3, line: 193, type: !101)
!1389 = !DILocalVariable(name: "status", scope: !1384, file: !3, line: 195, type: !14)
!1390 = !DILocalVariable(name: "arg", scope: !1384, file: !3, line: 196, type: !12)
!1391 = !DILocalVariable(name: "endp", scope: !1392, file: !3, line: 200, type: !10)
!1392 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 199, column: 5)
!1393 = !DILocalVariable(name: "n", scope: !1392, file: !3, line: 201, type: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1395, line: 101, baseType: !1396)
!1395 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !43, line: 72, baseType: !44)
!1397 = !DILocalVariable(name: "pid", scope: !1392, file: !3, line: 202, type: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1399, line: 97, baseType: !1400)
!1399 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !43, line: 154, baseType: !14)
!1401 = !DILocation(line: 0, scope: !1384, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 313, column: 13, scope: !1157)
!1403 = !DILocation(line: 196, column: 21, scope: !1384, inlinedAt: !1402)
!1404 = !DILocation(line: 0, scope: !1392, inlinedAt: !1402)
!1405 = !DILocation(line: 198, column: 3, scope: !1384, inlinedAt: !1402)
!1406 = !DILocation(line: 200, column: 7, scope: !1392, inlinedAt: !1402)
!1407 = !DILocation(line: 201, column: 27, scope: !1392, inlinedAt: !1402)
!1408 = !DILocalVariable(name: "nptr", arg: 1, scope: !1409, file: !1410, line: 324, type: !1413)
!1409 = distinct !DISubprogram(name: "strtoimax", scope: !1410, file: !1410, line: 324, type: !1411, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1415)
!1410 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!1394, !1413, !1414, !14}
!1413 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!1414 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1160)
!1415 = !{!1408, !1416, !1417}
!1416 = !DILocalVariable(name: "endptr", arg: 2, scope: !1409, file: !1410, line: 324, type: !1414)
!1417 = !DILocalVariable(name: "base", arg: 3, scope: !1409, file: !1410, line: 324, type: !14)
!1418 = !DILocation(line: 0, scope: !1409, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 201, column: 32, scope: !1392, inlinedAt: !1402)
!1420 = !DILocation(line: 327, column: 10, scope: !1409, inlinedAt: !1419)
!1421 = !DILocation(line: 202, column: 19, scope: !1392, inlinedAt: !1402)
!1422 = !DILocation(line: 204, column: 11, scope: !1423, inlinedAt: !1402)
!1423 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 204, column: 11)
!1424 = !DILocation(line: 204, column: 17, scope: !1423, inlinedAt: !1402)
!1425 = !DILocation(line: 204, column: 34, scope: !1423, inlinedAt: !1402)
!1426 = !DILocation(line: 204, column: 27, scope: !1423, inlinedAt: !1402)
!1427 = !DILocation(line: 204, column: 49, scope: !1423, inlinedAt: !1402)
!1428 = !DILocation(line: 204, column: 46, scope: !1423, inlinedAt: !1402)
!1429 = !DILocation(line: 204, column: 54, scope: !1423, inlinedAt: !1402)
!1430 = !DILocation(line: 204, column: 57, scope: !1423, inlinedAt: !1402)
!1431 = !DILocation(line: 204, column: 11, scope: !1392, inlinedAt: !1402)
!1432 = !DILocation(line: 206, column: 24, scope: !1433, inlinedAt: !1402)
!1433 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 205, column: 9)
!1434 = !DILocation(line: 206, column: 53, scope: !1433, inlinedAt: !1402)
!1435 = !DILocation(line: 206, column: 11, scope: !1433, inlinedAt: !1402)
!1436 = !DILocation(line: 208, column: 9, scope: !1433, inlinedAt: !1402)
!1437 = !DILocation(line: 209, column: 16, scope: !1438, inlinedAt: !1402)
!1438 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 209, column: 16)
!1439 = !DILocation(line: 209, column: 35, scope: !1438, inlinedAt: !1402)
!1440 = !DILocation(line: 209, column: 16, scope: !1423, inlinedAt: !1402)
!1441 = !DILocation(line: 211, column: 21, scope: !1442, inlinedAt: !1402)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 210, column: 9)
!1443 = !DILocation(line: 211, column: 34, scope: !1442, inlinedAt: !1402)
!1444 = !DILocation(line: 211, column: 11, scope: !1442, inlinedAt: !1402)
!1445 = !DILocation(line: 213, column: 9, scope: !1442, inlinedAt: !1402)
!1446 = !DILocation(line: 214, column: 5, scope: !1384, inlinedAt: !1402)
!1447 = !DILocation(line: 215, column: 18, scope: !1384, inlinedAt: !1402)
!1448 = !DILocation(line: 215, column: 17, scope: !1384, inlinedAt: !1402)
!1449 = !DILocation(line: 214, column: 5, scope: !1392, inlinedAt: !1402)
!1450 = distinct !{!1450, !1405, !1451}
!1451 = !DILocation(line: 215, column: 25, scope: !1384, inlinedAt: !1402)
!1452 = !DILocation(line: 314, column: 1, scope: !1157)
!1453 = !DILocation(line: 284, column: 26, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 283, column: 11)
!1455 = !DILocation(line: 284, column: 13, scope: !1454)
!1456 = !DILocation(line: 285, column: 13, scope: !1454)
!1457 = distinct !DISubprogram(name: "operand2sig", scope: !415, file: !415, line: 36, type: !122, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1458)
!1458 = !{!1459, !1460, !1461, !1462, !1465, !1466, !1467, !1469}
!1459 = !DILocalVariable(name: "operand", arg: 1, scope: !1457, file: !415, line: 36, type: !12)
!1460 = !DILocalVariable(name: "signame", arg: 2, scope: !1457, file: !415, line: 36, type: !10)
!1461 = !DILocalVariable(name: "signum", scope: !1457, file: !415, line: 38, type: !14)
!1462 = !DILocalVariable(name: "endp", scope: !1463, file: !415, line: 53, type: !10)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !415, line: 41, column: 5)
!1464 = distinct !DILexicalBlock(scope: !1457, file: !415, line: 40, column: 7)
!1465 = !DILocalVariable(name: "l", scope: !1463, file: !415, line: 54, type: !44)
!1466 = !DILocalVariable(name: "i", scope: !1463, file: !415, line: 55, type: !14)
!1467 = !DILocalVariable(name: "upcased", scope: !1468, file: !415, line: 70, type: !10)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !415, line: 67, column: 5)
!1469 = !DILocalVariable(name: "p", scope: !1468, file: !415, line: 71, type: !10)
!1470 = !DILocation(line: 0, scope: !1457)
!1471 = !DILocation(line: 38, column: 3, scope: !1457)
!1472 = !DILocation(line: 40, column: 7, scope: !1464)
!1473 = !DILocation(line: 40, column: 7, scope: !1457)
!1474 = !DILocation(line: 53, column: 7, scope: !1463)
!1475 = !DILocation(line: 54, column: 21, scope: !1463)
!1476 = !DILocation(line: 54, column: 27, scope: !1463)
!1477 = !DILocation(line: 0, scope: !1463)
!1478 = !DILocation(line: 54, column: 32, scope: !1463)
!1479 = !DILocation(line: 55, column: 15, scope: !1463)
!1480 = !DILocation(line: 56, column: 28, scope: !1463)
!1481 = !DILocation(line: 56, column: 25, scope: !1463)
!1482 = !DILocation(line: 56, column: 33, scope: !1463)
!1483 = !DILocation(line: 56, column: 36, scope: !1463)
!1484 = !DILocation(line: 56, column: 42, scope: !1463)
!1485 = !DILocation(line: 56, column: 45, scope: !1463)
!1486 = !DILocation(line: 56, column: 56, scope: !1463)
!1487 = !DILocation(line: 56, column: 51, scope: !1463)
!1488 = !DILocation(line: 58, column: 18, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1463, file: !415, line: 58, column: 11)
!1490 = !DILocation(line: 58, column: 11, scope: !1463)
!1491 = !DILocation(line: 65, column: 5, scope: !1464)
!1492 = !DILocation(line: 65, column: 5, scope: !1463)
!1493 = !DILocation(line: 70, column: 23, scope: !1468)
!1494 = !DILocation(line: 0, scope: !1468)
!1495 = !DILocation(line: 72, column: 25, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !415, line: 72, column: 7)
!1497 = distinct !DILexicalBlock(scope: !1468, file: !415, line: 72, column: 7)
!1498 = !DILocation(line: 72, column: 7, scope: !1497)
!1499 = !DILocation(line: 73, column: 51, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !415, line: 73, column: 13)
!1501 = !DILocation(line: 73, column: 13, scope: !1500)
!1502 = !DILocation(line: 73, column: 13, scope: !1496)
!1503 = !DILocation(line: 74, column: 14, scope: !1500)
!1504 = !DILocation(line: 74, column: 11, scope: !1500)
!1505 = !DILocation(line: 72, column: 30, scope: !1496)
!1506 = distinct !{!1506, !1498, !1507}
!1507 = !DILocation(line: 74, column: 23, scope: !1497)
!1508 = !DILocation(line: 78, column: 13, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1468, file: !415, line: 78, column: 11)
!1510 = !DILocation(line: 78, column: 40, scope: !1509)
!1511 = !DILocation(line: 79, column: 13, scope: !1509)
!1512 = !DILocation(line: 79, column: 17, scope: !1509)
!1513 = !DILocation(line: 79, column: 28, scope: !1509)
!1514 = !DILocation(line: 79, column: 35, scope: !1509)
!1515 = !DILocation(line: 79, column: 38, scope: !1509)
!1516 = !DILocation(line: 79, column: 49, scope: !1509)
!1517 = !DILocation(line: 79, column: 56, scope: !1509)
!1518 = !DILocation(line: 79, column: 59, scope: !1509)
!1519 = !DILocation(line: 79, column: 70, scope: !1509)
!1520 = !DILocation(line: 80, column: 17, scope: !1509)
!1521 = !DILocation(line: 80, column: 37, scope: !1509)
!1522 = !DILocation(line: 80, column: 20, scope: !1509)
!1523 = !DILocation(line: 80, column: 51, scope: !1509)
!1524 = !DILocation(line: 78, column: 11, scope: !1468)
!1525 = !DILocation(line: 81, column: 16, scope: !1509)
!1526 = !DILocation(line: 81, column: 9, scope: !1509)
!1527 = !DILocation(line: 83, column: 7, scope: !1468)
!1528 = !DILocation(line: 86, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1457, file: !415, line: 86, column: 7)
!1530 = !DILocation(line: 86, column: 14, scope: !1529)
!1531 = !DILocation(line: 86, column: 18, scope: !1529)
!1532 = !DILocation(line: 86, column: 21, scope: !1529)
!1533 = !DILocation(line: 86, column: 47, scope: !1529)
!1534 = !DILocation(line: 86, column: 7, scope: !1457)
!1535 = !DILocation(line: 88, column: 20, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1529, file: !415, line: 87, column: 5)
!1537 = !DILocation(line: 88, column: 45, scope: !1536)
!1538 = !DILocation(line: 88, column: 7, scope: !1536)
!1539 = !DILocation(line: 89, column: 7, scope: !1536)
!1540 = !DILocation(line: 92, column: 10, scope: !1457)
!1541 = !DILocation(line: 92, column: 3, scope: !1457)
!1542 = !DILocation(line: 93, column: 1, scope: !1457)
!1543 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !161, file: !161, line: 51, type: !78, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1544)
!1544 = !{!1545}
!1545 = !DILocalVariable(name: "file", arg: 1, scope: !1543, file: !161, line: 51, type: !12)
!1546 = !DILocation(line: 0, scope: !1543)
!1547 = !DILocation(line: 53, column: 13, scope: !1543)
!1548 = !DILocation(line: 54, column: 1, scope: !1543)
!1549 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !161, file: !161, line: 88, type: !1550, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1552)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !204}
!1552 = !{!1553}
!1553 = !DILocalVariable(name: "ignore", arg: 1, scope: !1549, file: !161, line: 88, type: !204)
!1554 = !DILocation(line: 0, scope: !1549)
!1555 = !DILocation(line: 90, column: 16, scope: !1549)
!1556 = !{!1557, !1557, i64 0}
!1557 = !{!"_Bool", !1114, i64 0}
!1558 = !DILocation(line: 91, column: 1, scope: !1549)
!1559 = distinct !DISubprogram(name: "close_stdout", scope: !161, file: !161, line: 117, type: !95, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !1560)
!1560 = !{!1561}
!1561 = !DILocalVariable(name: "write_error", scope: !1562, file: !161, line: 122, type: !12)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !161, line: 121, column: 5)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !161, line: 119, column: 7)
!1564 = !DILocation(line: 119, column: 21, scope: !1563)
!1565 = !DILocation(line: 119, column: 7, scope: !1563)
!1566 = !DILocation(line: 119, column: 29, scope: !1563)
!1567 = !DILocation(line: 120, column: 7, scope: !1563)
!1568 = !DILocation(line: 120, column: 12, scope: !1563)
!1569 = !{i8 0, i8 2}
!1570 = !DILocation(line: 120, column: 25, scope: !1563)
!1571 = !DILocation(line: 120, column: 28, scope: !1563)
!1572 = !DILocation(line: 120, column: 34, scope: !1563)
!1573 = !DILocation(line: 119, column: 7, scope: !1559)
!1574 = !DILocation(line: 122, column: 33, scope: !1562)
!1575 = !DILocation(line: 0, scope: !1562)
!1576 = !DILocation(line: 123, column: 11, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1562, file: !161, line: 123, column: 11)
!1578 = !DILocation(line: 0, scope: !1577)
!1579 = !DILocation(line: 123, column: 11, scope: !1562)
!1580 = !DILocation(line: 124, column: 36, scope: !1577)
!1581 = !DILocation(line: 124, column: 9, scope: !1577)
!1582 = !DILocation(line: 127, column: 9, scope: !1577)
!1583 = !DILocation(line: 129, column: 14, scope: !1562)
!1584 = !DILocation(line: 129, column: 7, scope: !1562)
!1585 = !DILocation(line: 134, column: 42, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1559, file: !161, line: 134, column: 7)
!1587 = !DILocation(line: 134, column: 28, scope: !1586)
!1588 = !DILocation(line: 134, column: 50, scope: !1586)
!1589 = !DILocation(line: 134, column: 7, scope: !1559)
!1590 = !DILocation(line: 135, column: 12, scope: !1586)
!1591 = !DILocation(line: 135, column: 5, scope: !1586)
!1592 = !DILocation(line: 136, column: 1, scope: !1559)
!1593 = distinct !DISubprogram(name: "set_program_name", scope: !214, file: !214, line: 39, type: !78, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1594)
!1594 = !{!1595, !1596, !1597}
!1595 = !DILocalVariable(name: "argv0", arg: 1, scope: !1593, file: !214, line: 39, type: !12)
!1596 = !DILocalVariable(name: "slash", scope: !1593, file: !214, line: 46, type: !12)
!1597 = !DILocalVariable(name: "base", scope: !1593, file: !214, line: 47, type: !12)
!1598 = !DILocation(line: 0, scope: !1593)
!1599 = !DILocation(line: 51, column: 13, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !214, line: 51, column: 7)
!1601 = !DILocation(line: 51, column: 7, scope: !1593)
!1602 = !DILocation(line: 55, column: 14, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !214, line: 52, column: 5)
!1604 = !DILocation(line: 54, column: 7, scope: !1603)
!1605 = !DILocation(line: 56, column: 7, scope: !1603)
!1606 = !DILocation(line: 59, column: 11, scope: !1593)
!1607 = !DILocation(line: 60, column: 17, scope: !1593)
!1608 = !DILocation(line: 60, column: 11, scope: !1593)
!1609 = !DILocation(line: 61, column: 12, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1593, file: !214, line: 61, column: 7)
!1611 = !DILocation(line: 61, column: 20, scope: !1610)
!1612 = !DILocation(line: 61, column: 25, scope: !1610)
!1613 = !DILocation(line: 61, column: 42, scope: !1610)
!1614 = !DILocation(line: 61, column: 28, scope: !1610)
!1615 = !DILocation(line: 61, column: 61, scope: !1610)
!1616 = !DILocation(line: 61, column: 7, scope: !1593)
!1617 = !DILocation(line: 64, column: 11, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !214, line: 64, column: 11)
!1619 = distinct !DILexicalBlock(scope: !1610, file: !214, line: 62, column: 5)
!1620 = !DILocation(line: 64, column: 36, scope: !1618)
!1621 = !DILocation(line: 64, column: 11, scope: !1619)
!1622 = !DILocation(line: 66, column: 24, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !214, line: 65, column: 9)
!1624 = !DILocation(line: 70, column: 41, scope: !1623)
!1625 = !DILocation(line: 72, column: 9, scope: !1623)
!1626 = !DILocation(line: 84, column: 16, scope: !1593)
!1627 = !DILocation(line: 90, column: 27, scope: !1593)
!1628 = !DILocation(line: 92, column: 1, scope: !1593)
!1629 = distinct !DISubprogram(name: "clone_quoting_options", scope: !255, file: !255, line: 122, type: !1630, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1633)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!1632, !1632}
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!1633 = !{!1634, !1635, !1636}
!1634 = !DILocalVariable(name: "o", arg: 1, scope: !1629, file: !255, line: 122, type: !1632)
!1635 = !DILocalVariable(name: "e", scope: !1629, file: !255, line: 124, type: !14)
!1636 = !DILocalVariable(name: "p", scope: !1629, file: !255, line: 125, type: !1632)
!1637 = !DILocation(line: 0, scope: !1629)
!1638 = !DILocation(line: 124, column: 11, scope: !1629)
!1639 = !DILocation(line: 125, column: 40, scope: !1629)
!1640 = !DILocation(line: 125, column: 31, scope: !1629)
!1641 = !DILocation(line: 127, column: 9, scope: !1629)
!1642 = !DILocation(line: 128, column: 3, scope: !1629)
!1643 = distinct !DISubprogram(name: "get_quoting_style", scope: !255, file: !255, line: 133, type: !1644, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!257, !301}
!1646 = !{!1647}
!1647 = !DILocalVariable(name: "o", arg: 1, scope: !1643, file: !255, line: 133, type: !301)
!1648 = !DILocation(line: 0, scope: !1643)
!1649 = !DILocation(line: 135, column: 11, scope: !1643)
!1650 = !DILocation(line: 135, column: 46, scope: !1643)
!1651 = !{!1652, !1114, i64 0}
!1652 = !{!"quoting_options", !1114, i64 0, !1209, i64 4, !1114, i64 8, !1113, i64 40, !1113, i64 48}
!1653 = !DILocation(line: 135, column: 3, scope: !1643)
!1654 = distinct !DISubprogram(name: "set_quoting_style", scope: !255, file: !255, line: 141, type: !1655, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{null, !1632, !257}
!1657 = !{!1658, !1659}
!1658 = !DILocalVariable(name: "o", arg: 1, scope: !1654, file: !255, line: 141, type: !1632)
!1659 = !DILocalVariable(name: "s", arg: 2, scope: !1654, file: !255, line: 141, type: !257)
!1660 = !DILocation(line: 0, scope: !1654)
!1661 = !DILocation(line: 143, column: 4, scope: !1654)
!1662 = !DILocation(line: 143, column: 39, scope: !1654)
!1663 = !DILocation(line: 143, column: 45, scope: !1654)
!1664 = !DILocation(line: 144, column: 1, scope: !1654)
!1665 = distinct !DISubprogram(name: "set_char_quoting", scope: !255, file: !255, line: 152, type: !1666, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1668)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!14, !1632, !11, !14}
!1668 = !{!1669, !1670, !1671, !1672, !1674, !1676, !1677}
!1669 = !DILocalVariable(name: "o", arg: 1, scope: !1665, file: !255, line: 152, type: !1632)
!1670 = !DILocalVariable(name: "c", arg: 2, scope: !1665, file: !255, line: 152, type: !11)
!1671 = !DILocalVariable(name: "i", arg: 3, scope: !1665, file: !255, line: 152, type: !14)
!1672 = !DILocalVariable(name: "uc", scope: !1665, file: !255, line: 154, type: !1673)
!1673 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1674 = !DILocalVariable(name: "p", scope: !1665, file: !255, line: 155, type: !1675)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!1676 = !DILocalVariable(name: "shift", scope: !1665, file: !255, line: 157, type: !14)
!1677 = !DILocalVariable(name: "r", scope: !1665, file: !255, line: 158, type: !14)
!1678 = !DILocation(line: 0, scope: !1665)
!1679 = !DILocation(line: 156, column: 6, scope: !1665)
!1680 = !DILocation(line: 156, column: 62, scope: !1665)
!1681 = !DILocation(line: 156, column: 57, scope: !1665)
!1682 = !DILocation(line: 157, column: 15, scope: !1665)
!1683 = !DILocation(line: 158, column: 12, scope: !1665)
!1684 = !DILocation(line: 158, column: 15, scope: !1665)
!1685 = !DILocation(line: 158, column: 25, scope: !1665)
!1686 = !DILocation(line: 159, column: 13, scope: !1665)
!1687 = !DILocation(line: 159, column: 18, scope: !1665)
!1688 = !DILocation(line: 159, column: 23, scope: !1665)
!1689 = !DILocation(line: 159, column: 6, scope: !1665)
!1690 = !DILocation(line: 160, column: 3, scope: !1665)
!1691 = distinct !DISubprogram(name: "set_quoting_flags", scope: !255, file: !255, line: 168, type: !1692, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!14, !1632, !14}
!1694 = !{!1695, !1696, !1697}
!1695 = !DILocalVariable(name: "o", arg: 1, scope: !1691, file: !255, line: 168, type: !1632)
!1696 = !DILocalVariable(name: "i", arg: 2, scope: !1691, file: !255, line: 168, type: !14)
!1697 = !DILocalVariable(name: "r", scope: !1691, file: !255, line: 170, type: !14)
!1698 = !DILocation(line: 0, scope: !1691)
!1699 = !DILocation(line: 171, column: 8, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1691, file: !255, line: 171, column: 7)
!1701 = !DILocation(line: 171, column: 7, scope: !1691)
!1702 = !DILocation(line: 173, column: 10, scope: !1691)
!1703 = !{!1652, !1209, i64 4}
!1704 = !DILocation(line: 174, column: 12, scope: !1691)
!1705 = !DILocation(line: 175, column: 3, scope: !1691)
!1706 = distinct !DISubprogram(name: "set_custom_quoting", scope: !255, file: !255, line: 179, type: !1707, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !1632, !12, !12}
!1709 = !{!1710, !1711, !1712}
!1710 = !DILocalVariable(name: "o", arg: 1, scope: !1706, file: !255, line: 179, type: !1632)
!1711 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1706, file: !255, line: 180, type: !12)
!1712 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1706, file: !255, line: 180, type: !12)
!1713 = !DILocation(line: 0, scope: !1706)
!1714 = !DILocation(line: 182, column: 8, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1706, file: !255, line: 182, column: 7)
!1716 = !DILocation(line: 182, column: 7, scope: !1706)
!1717 = !DILocation(line: 184, column: 6, scope: !1706)
!1718 = !DILocation(line: 184, column: 12, scope: !1706)
!1719 = !DILocation(line: 185, column: 8, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1706, file: !255, line: 185, column: 7)
!1721 = !DILocation(line: 185, column: 23, scope: !1720)
!1722 = !DILocation(line: 185, column: 19, scope: !1720)
!1723 = !DILocation(line: 186, column: 5, scope: !1720)
!1724 = !DILocation(line: 187, column: 6, scope: !1706)
!1725 = !DILocation(line: 187, column: 17, scope: !1706)
!1726 = !{!1652, !1113, i64 40}
!1727 = !DILocation(line: 188, column: 6, scope: !1706)
!1728 = !DILocation(line: 188, column: 18, scope: !1706)
!1729 = !{!1652, !1113, i64 48}
!1730 = !DILocation(line: 189, column: 1, scope: !1706)
!1731 = distinct !DISubprogram(name: "quotearg_buffer", scope: !255, file: !255, line: 784, type: !1732, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!68, !10, !68, !12, !68, !301}
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742}
!1735 = !DILocalVariable(name: "buffer", arg: 1, scope: !1731, file: !255, line: 784, type: !10)
!1736 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1731, file: !255, line: 784, type: !68)
!1737 = !DILocalVariable(name: "arg", arg: 3, scope: !1731, file: !255, line: 785, type: !12)
!1738 = !DILocalVariable(name: "argsize", arg: 4, scope: !1731, file: !255, line: 785, type: !68)
!1739 = !DILocalVariable(name: "o", arg: 5, scope: !1731, file: !255, line: 786, type: !301)
!1740 = !DILocalVariable(name: "p", scope: !1731, file: !255, line: 788, type: !301)
!1741 = !DILocalVariable(name: "e", scope: !1731, file: !255, line: 789, type: !14)
!1742 = !DILocalVariable(name: "r", scope: !1731, file: !255, line: 790, type: !68)
!1743 = !DILocation(line: 0, scope: !1731)
!1744 = !DILocation(line: 788, column: 37, scope: !1731)
!1745 = !DILocation(line: 789, column: 11, scope: !1731)
!1746 = !DILocation(line: 791, column: 43, scope: !1731)
!1747 = !DILocation(line: 791, column: 53, scope: !1731)
!1748 = !DILocation(line: 791, column: 60, scope: !1731)
!1749 = !DILocation(line: 792, column: 43, scope: !1731)
!1750 = !DILocation(line: 792, column: 58, scope: !1731)
!1751 = !DILocation(line: 790, column: 14, scope: !1731)
!1752 = !DILocation(line: 793, column: 9, scope: !1731)
!1753 = !DILocation(line: 794, column: 3, scope: !1731)
!1754 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !255, file: !255, line: 256, type: !1755, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !1759)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!68, !10, !68, !12, !68, !257, !14, !1757, !12, !12}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1759 = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1784, !1785, !1786, !1787, !1788, !1791, !1792, !1798, !1801, !1802, !1809, !1812, !1813, !1814, !1815, !1816, !1817}
!1760 = !DILocalVariable(name: "buffer", arg: 1, scope: !1754, file: !255, line: 256, type: !10)
!1761 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1754, file: !255, line: 256, type: !68)
!1762 = !DILocalVariable(name: "arg", arg: 3, scope: !1754, file: !255, line: 257, type: !12)
!1763 = !DILocalVariable(name: "argsize", arg: 4, scope: !1754, file: !255, line: 257, type: !68)
!1764 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1754, file: !255, line: 258, type: !257)
!1765 = !DILocalVariable(name: "flags", arg: 6, scope: !1754, file: !255, line: 258, type: !14)
!1766 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1754, file: !255, line: 259, type: !1757)
!1767 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1754, file: !255, line: 260, type: !12)
!1768 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1754, file: !255, line: 261, type: !12)
!1769 = !DILocalVariable(name: "i", scope: !1754, file: !255, line: 263, type: !68)
!1770 = !DILocalVariable(name: "len", scope: !1754, file: !255, line: 264, type: !68)
!1771 = !DILocalVariable(name: "orig_buffersize", scope: !1754, file: !255, line: 265, type: !68)
!1772 = !DILocalVariable(name: "quote_string", scope: !1754, file: !255, line: 266, type: !12)
!1773 = !DILocalVariable(name: "quote_string_len", scope: !1754, file: !255, line: 267, type: !68)
!1774 = !DILocalVariable(name: "backslash_escapes", scope: !1754, file: !255, line: 268, type: !204)
!1775 = !DILocalVariable(name: "unibyte_locale", scope: !1754, file: !255, line: 269, type: !204)
!1776 = !DILocalVariable(name: "elide_outer_quotes", scope: !1754, file: !255, line: 270, type: !204)
!1777 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1754, file: !255, line: 271, type: !204)
!1778 = !DILocalVariable(name: "encountered_single_quote", scope: !1754, file: !255, line: 272, type: !204)
!1779 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1754, file: !255, line: 273, type: !204)
!1780 = !DILocalVariable(name: "c", scope: !1781, file: !255, line: 402, type: !1673)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !255, line: 401, column: 5)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !255, line: 400, column: 3)
!1783 = distinct !DILexicalBlock(scope: !1754, file: !255, line: 400, column: 3)
!1784 = !DILocalVariable(name: "esc", scope: !1781, file: !255, line: 403, type: !1673)
!1785 = !DILocalVariable(name: "is_right_quote", scope: !1781, file: !255, line: 404, type: !204)
!1786 = !DILocalVariable(name: "escaping", scope: !1781, file: !255, line: 405, type: !204)
!1787 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1781, file: !255, line: 406, type: !204)
!1788 = !DILocalVariable(name: "m", scope: !1789, file: !255, line: 610, type: !68)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 608, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1781, file: !255, line: 426, column: 9)
!1791 = !DILocalVariable(name: "printable", scope: !1789, file: !255, line: 612, type: !204)
!1792 = !DILocalVariable(name: "mbstate", scope: !1793, file: !255, line: 621, type: !1795)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !255, line: 620, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1789, file: !255, line: 614, column: 17)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1796, line: 6, baseType: !1797)
!1796 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !325, line: 21, baseType: !324)
!1798 = !DILocalVariable(name: "w", scope: !1799, file: !255, line: 631, type: !1800)
!1799 = distinct !DILexicalBlock(scope: !1793, file: !255, line: 630, column: 19)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !14)
!1801 = !DILocalVariable(name: "bytes", scope: !1799, file: !255, line: 632, type: !68)
!1802 = !DILocalVariable(name: "j", scope: !1803, file: !255, line: 657, type: !68)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !255, line: 656, column: 27)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !255, line: 654, column: 29)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !255, line: 649, column: 23)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !255, line: 641, column: 30)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !255, line: 636, column: 30)
!1808 = distinct !DILexicalBlock(scope: !1799, file: !255, line: 634, column: 25)
!1809 = !DILocalVariable(name: "ilim", scope: !1810, file: !255, line: 684, type: !68)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !255, line: 681, column: 15)
!1811 = distinct !DILexicalBlock(scope: !1789, file: !255, line: 680, column: 17)
!1812 = !DILabel(scope: !1754, name: "process_input", file: !255, line: 314)
!1813 = !DILabel(scope: !1790, name: "c_and_shell_escape", file: !255, line: 512)
!1814 = !DILabel(scope: !1790, name: "c_escape", file: !255, line: 517)
!1815 = !DILabel(scope: !1781, name: "store_escape", file: !255, line: 719)
!1816 = !DILabel(scope: !1781, name: "store_c", file: !255, line: 722)
!1817 = !DILabel(scope: !1754, name: "force_outer_quoting_style", file: !255, line: 763)
!1818 = !DILocation(line: 0, scope: !1754)
!1819 = !DILocation(line: 269, column: 25, scope: !1754)
!1820 = !DILocation(line: 269, column: 36, scope: !1754)
!1821 = !DILocation(line: 270, column: 8, scope: !1754)
!1822 = !DILocation(line: 0, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 526, column: 15)
!1824 = !DILocation(line: 0, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !255, line: 462, column: 19)
!1826 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 455, column: 13)
!1827 = !DILocation(line: 0, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !255, line: 449, column: 20)
!1829 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 428, column: 15)
!1830 = !DILocation(line: 0, scope: !1793)
!1831 = !DILocation(line: 0, scope: !1799)
!1832 = !DILocation(line: 0, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1781, file: !255, line: 712, column: 11)
!1834 = !DILocation(line: 273, column: 3, scope: !1754)
!1835 = !DILocation(line: 265, column: 10, scope: !1754)
!1836 = !DILocation(line: 266, column: 15, scope: !1754)
!1837 = !DILocation(line: 267, column: 10, scope: !1754)
!1838 = !DILocation(line: 268, column: 8, scope: !1754)
!1839 = !DILocation(line: 271, column: 8, scope: !1754)
!1840 = !DILocation(line: 272, column: 8, scope: !1754)
!1841 = !DILocation(line: 273, column: 8, scope: !1754)
!1842 = !DILocation(line: 314, column: 2, scope: !1754)
!1843 = !DILocation(line: 316, column: 3, scope: !1754)
!1844 = !DILocation(line: 323, column: 11, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1754, file: !255, line: 317, column: 5)
!1846 = !DILocation(line: 323, column: 12, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 323, column: 11)
!1848 = !DILocation(line: 324, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !255, line: 324, column: 9)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !255, line: 324, column: 9)
!1851 = !DILocation(line: 324, column: 9, scope: !1850)
!1852 = !DILocation(line: 362, column: 26, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !255, line: 340, column: 11)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 339, column: 13)
!1855 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 338, column: 7)
!1856 = !DILocation(line: 363, column: 27, scope: !1853)
!1857 = !DILocation(line: 364, column: 11, scope: !1853)
!1858 = !DILocation(line: 365, column: 14, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1855, file: !255, line: 365, column: 13)
!1860 = !DILocation(line: 365, column: 13, scope: !1855)
!1861 = !DILocation(line: 366, column: 43, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !255, line: 366, column: 11)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !255, line: 366, column: 11)
!1864 = !DILocation(line: 366, column: 11, scope: !1863)
!1865 = !DILocation(line: 367, column: 13, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !255, line: 367, column: 13)
!1867 = distinct !DILexicalBlock(scope: !1862, file: !255, line: 367, column: 13)
!1868 = !DILocation(line: 367, column: 13, scope: !1867)
!1869 = !DILocation(line: 366, column: 70, scope: !1862)
!1870 = distinct !{!1870, !1864, !1871}
!1871 = !DILocation(line: 367, column: 13, scope: !1863)
!1872 = !DILocation(line: 264, column: 10, scope: !1754)
!1873 = !DILocation(line: 370, column: 28, scope: !1855)
!1874 = !DILocation(line: 372, column: 7, scope: !1845)
!1875 = !DILocation(line: 376, column: 7, scope: !1845)
!1876 = !DILocation(line: 379, column: 7, scope: !1845)
!1877 = !DILocation(line: 381, column: 12, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 381, column: 11)
!1879 = !DILocation(line: 381, column: 11, scope: !1845)
!1880 = !DILocation(line: 386, column: 12, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1845, file: !255, line: 386, column: 11)
!1882 = !DILocation(line: 386, column: 11, scope: !1845)
!1883 = !DILocation(line: 387, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !255, line: 387, column: 9)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !255, line: 387, column: 9)
!1886 = !DILocation(line: 387, column: 9, scope: !1885)
!1887 = !DILocation(line: 394, column: 7, scope: !1845)
!1888 = !DILocation(line: 397, column: 7, scope: !1845)
!1889 = !DILocation(line: 0, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1781, file: !255, line: 408, column: 11)
!1891 = !DILocation(line: 0, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !255, line: 419, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1890, file: !255, line: 418, column: 9)
!1894 = !DILocation(line: 0, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 556, column: 15)
!1896 = !DILocation(line: 0, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 548, column: 15)
!1898 = !DILocation(line: 0, scope: !1804)
!1899 = !DILocation(line: 0, scope: !1811)
!1900 = !DILocation(line: 0, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 509, column: 15)
!1902 = !DILocation(line: 400, column: 8, scope: !1783)
!1903 = !DILocation(line: 0, scope: !1783)
!1904 = !DILocation(line: 400, column: 27, scope: !1782)
!1905 = !DILocation(line: 400, column: 19, scope: !1782)
!1906 = !DILocation(line: 400, column: 41, scope: !1782)
!1907 = !DILocation(line: 400, column: 48, scope: !1782)
!1908 = !DILocation(line: 400, column: 3, scope: !1783)
!1909 = !DILocation(line: 400, column: 60, scope: !1782)
!1910 = !DILocation(line: 0, scope: !1781)
!1911 = !DILocation(line: 409, column: 11, scope: !1890)
!1912 = !DILocation(line: 411, column: 17, scope: !1890)
!1913 = !DILocation(line: 412, column: 39, scope: !1890)
!1914 = !DILocation(line: 416, column: 32, scope: !1890)
!1915 = !DILocation(line: 412, column: 19, scope: !1890)
!1916 = !DILocation(line: 412, column: 15, scope: !1890)
!1917 = !DILocation(line: 417, column: 11, scope: !1890)
!1918 = !DILocation(line: 417, column: 26, scope: !1890)
!1919 = !DILocation(line: 417, column: 14, scope: !1890)
!1920 = !DILocation(line: 417, column: 63, scope: !1890)
!1921 = !DILocation(line: 408, column: 11, scope: !1781)
!1922 = !DILocation(line: 424, column: 11, scope: !1781)
!1923 = !DILocation(line: 425, column: 7, scope: !1781)
!1924 = !DILocation(line: 428, column: 15, scope: !1790)
!1925 = !DILocation(line: 430, column: 15, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !255, line: 430, column: 15)
!1927 = distinct !DILexicalBlock(scope: !1829, file: !255, line: 429, column: 13)
!1928 = !DILocation(line: 430, column: 15, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1926, file: !255, line: 430, column: 15)
!1930 = !DILocation(line: 430, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !255, line: 430, column: 15)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !255, line: 430, column: 15)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !255, line: 430, column: 15)
!1934 = !DILocation(line: 430, column: 15, scope: !1932)
!1935 = !DILocation(line: 430, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !255, line: 430, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !255, line: 430, column: 15)
!1938 = !DILocation(line: 430, column: 15, scope: !1937)
!1939 = !DILocation(line: 430, column: 15, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !255, line: 430, column: 15)
!1941 = distinct !DILexicalBlock(scope: !1933, file: !255, line: 430, column: 15)
!1942 = !DILocation(line: 430, column: 15, scope: !1941)
!1943 = !DILocation(line: 430, column: 15, scope: !1933)
!1944 = !DILocation(line: 430, column: 15, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !255, line: 430, column: 15)
!1946 = distinct !DILexicalBlock(scope: !1926, file: !255, line: 430, column: 15)
!1947 = !DILocation(line: 430, column: 15, scope: !1946)
!1948 = !DILocation(line: 438, column: 19, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1927, file: !255, line: 437, column: 19)
!1950 = !DILocation(line: 438, column: 24, scope: !1949)
!1951 = !DILocation(line: 438, column: 28, scope: !1949)
!1952 = !DILocation(line: 438, column: 38, scope: !1949)
!1953 = !DILocation(line: 438, column: 48, scope: !1949)
!1954 = !DILocation(line: 438, column: 59, scope: !1949)
!1955 = !DILocation(line: 440, column: 19, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !255, line: 440, column: 19)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !255, line: 440, column: 19)
!1958 = distinct !DILexicalBlock(scope: !1949, file: !255, line: 439, column: 17)
!1959 = !DILocation(line: 440, column: 19, scope: !1957)
!1960 = !DILocation(line: 441, column: 19, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !255, line: 441, column: 19)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !255, line: 441, column: 19)
!1963 = !DILocation(line: 441, column: 19, scope: !1962)
!1964 = !DILocation(line: 442, column: 17, scope: !1958)
!1965 = !DILocation(line: 449, column: 20, scope: !1829)
!1966 = !DILocation(line: 454, column: 11, scope: !1790)
!1967 = !DILocation(line: 457, column: 19, scope: !1826)
!1968 = !DILocation(line: 463, column: 19, scope: !1825)
!1969 = !DILocation(line: 463, column: 24, scope: !1825)
!1970 = !DILocation(line: 463, column: 28, scope: !1825)
!1971 = !DILocation(line: 463, column: 38, scope: !1825)
!1972 = !DILocation(line: 463, column: 47, scope: !1825)
!1973 = !DILocation(line: 463, column: 41, scope: !1825)
!1974 = !DILocation(line: 463, column: 52, scope: !1825)
!1975 = !DILocation(line: 462, column: 19, scope: !1826)
!1976 = !DILocation(line: 464, column: 25, scope: !1825)
!1977 = !DILocation(line: 464, column: 17, scope: !1825)
!1978 = !DILocation(line: 471, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1825, file: !255, line: 465, column: 19)
!1980 = !DILocation(line: 475, column: 21, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !255, line: 475, column: 21)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !255, line: 475, column: 21)
!1983 = !DILocation(line: 475, column: 21, scope: !1982)
!1984 = !DILocation(line: 476, column: 21, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !255, line: 476, column: 21)
!1986 = distinct !DILexicalBlock(scope: !1979, file: !255, line: 476, column: 21)
!1987 = !DILocation(line: 476, column: 21, scope: !1986)
!1988 = !DILocation(line: 477, column: 21, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !255, line: 477, column: 21)
!1990 = distinct !DILexicalBlock(scope: !1979, file: !255, line: 477, column: 21)
!1991 = !DILocation(line: 477, column: 21, scope: !1990)
!1992 = !DILocation(line: 478, column: 21, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !255, line: 478, column: 21)
!1994 = distinct !DILexicalBlock(scope: !1979, file: !255, line: 478, column: 21)
!1995 = !DILocation(line: 478, column: 21, scope: !1994)
!1996 = !DILocation(line: 479, column: 21, scope: !1979)
!1997 = !DILocation(line: 492, column: 31, scope: !1790)
!1998 = !DILocation(line: 493, column: 31, scope: !1790)
!1999 = !DILocation(line: 495, column: 31, scope: !1790)
!2000 = !DILocation(line: 496, column: 31, scope: !1790)
!2001 = !DILocation(line: 497, column: 31, scope: !1790)
!2002 = !DILocation(line: 500, column: 15, scope: !1790)
!2003 = !DILocation(line: 502, column: 19, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !255, line: 501, column: 13)
!2005 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 500, column: 15)
!2006 = !DILocation(line: 509, column: 33, scope: !1901)
!2007 = !DILocation(line: 0, scope: !1790)
!2008 = !DILocation(line: 512, column: 9, scope: !1790)
!2009 = !DILocation(line: 514, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 513, column: 15)
!2011 = !DILocation(line: 517, column: 9, scope: !1790)
!2012 = !DILocation(line: 518, column: 15, scope: !1790)
!2013 = !DILocation(line: 526, column: 15, scope: !1790)
!2014 = !DILocation(line: 526, column: 40, scope: !1823)
!2015 = !DILocation(line: 526, column: 47, scope: !1823)
!2016 = !DILocation(line: 526, column: 18, scope: !1823)
!2017 = !DILocation(line: 530, column: 17, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1790, file: !255, line: 530, column: 15)
!2019 = !DILocation(line: 530, column: 15, scope: !1790)
!2020 = !DILocation(line: 535, column: 11, scope: !1790)
!2021 = !DILocation(line: 549, column: 15, scope: !1897)
!2022 = !DILocation(line: 556, column: 15, scope: !1790)
!2023 = !DILocation(line: 558, column: 19, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1895, file: !255, line: 557, column: 13)
!2025 = !DILocation(line: 561, column: 19, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2024, file: !255, line: 561, column: 19)
!2027 = !DILocation(line: 561, column: 35, scope: !2026)
!2028 = !DILocation(line: 561, column: 30, scope: !2026)
!2029 = !DILocation(line: 570, column: 15, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !255, line: 570, column: 15)
!2031 = distinct !DILexicalBlock(scope: !2024, file: !255, line: 570, column: 15)
!2032 = !DILocation(line: 570, column: 15, scope: !2031)
!2033 = !DILocation(line: 571, column: 15, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !255, line: 571, column: 15)
!2035 = distinct !DILexicalBlock(scope: !2024, file: !255, line: 571, column: 15)
!2036 = !DILocation(line: 571, column: 15, scope: !2035)
!2037 = !DILocation(line: 572, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !255, line: 572, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2024, file: !255, line: 572, column: 15)
!2040 = !DILocation(line: 572, column: 15, scope: !2039)
!2041 = !DILocation(line: 574, column: 13, scope: !2024)
!2042 = !DILocation(line: 614, column: 17, scope: !1789)
!2043 = !DILocation(line: 0, scope: !1789)
!2044 = !DILocation(line: 617, column: 29, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1794, file: !255, line: 615, column: 15)
!2046 = !{!2047, !2047, i64 0}
!2047 = !{!"short", !1114, i64 0}
!2048 = !DILocation(line: 617, column: 27, scope: !2045)
!2049 = !DILocation(line: 618, column: 15, scope: !2045)
!2050 = !DILocation(line: 621, column: 17, scope: !1793)
!2051 = !DILocation(line: 621, column: 27, scope: !1793)
!2052 = !DILocalVariable(name: "__dest", arg: 1, scope: !2053, file: !2054, line: 59, type: !66)
!2053 = distinct !DISubprogram(name: "memset", scope: !2054, file: !2054, line: 59, type: !2055, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2057)
!2054 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!66, !66, !14, !68}
!2057 = !{!2052, !2058, !2059}
!2058 = !DILocalVariable(name: "__ch", arg: 2, scope: !2053, file: !2054, line: 59, type: !14)
!2059 = !DILocalVariable(name: "__len", arg: 3, scope: !2053, file: !2054, line: 59, type: !68)
!2060 = !DILocation(line: 0, scope: !2053, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 622, column: 17, scope: !1793)
!2062 = !DILocation(line: 71, column: 10, scope: !2053, inlinedAt: !2061)
!2063 = !DILocation(line: 626, column: 29, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1793, file: !255, line: 626, column: 21)
!2065 = !DILocation(line: 626, column: 21, scope: !1793)
!2066 = !DILocation(line: 627, column: 29, scope: !2064)
!2067 = !DILocation(line: 627, column: 19, scope: !2064)
!2068 = !DILocation(line: 629, column: 17, scope: !1793)
!2069 = !DILocation(line: 624, column: 19, scope: !1793)
!2070 = !DILocation(line: 625, column: 27, scope: !1793)
!2071 = !DILocation(line: 631, column: 21, scope: !1799)
!2072 = !DILocation(line: 632, column: 56, scope: !1799)
!2073 = !DILocation(line: 632, column: 50, scope: !1799)
!2074 = !DILocation(line: 633, column: 53, scope: !1799)
!2075 = !DILocation(line: 632, column: 36, scope: !1799)
!2076 = !DILocation(line: 634, column: 25, scope: !1799)
!2077 = !DILocation(line: 644, column: 38, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1806, file: !255, line: 642, column: 23)
!2079 = !DILocation(line: 644, column: 48, scope: !2078)
!2080 = !DILocation(line: 644, column: 25, scope: !2078)
!2081 = !DILocation(line: 644, column: 51, scope: !2078)
!2082 = !DILocation(line: 645, column: 28, scope: !2078)
!2083 = !DILocation(line: 644, column: 34, scope: !2078)
!2084 = distinct !{!2084, !2080, !2082}
!2085 = !DILocation(line: 658, column: 43, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !255, line: 658, column: 29)
!2087 = distinct !DILexicalBlock(scope: !1803, file: !255, line: 658, column: 29)
!2088 = !DILocation(line: 655, column: 29, scope: !1804)
!2089 = !DILocation(line: 0, scope: !1803)
!2090 = !DILocation(line: 659, column: 49, scope: !2086)
!2091 = !DILocation(line: 659, column: 39, scope: !2086)
!2092 = !DILocation(line: 659, column: 31, scope: !2086)
!2093 = !DILocation(line: 658, column: 53, scope: !2086)
!2094 = !DILocation(line: 658, column: 29, scope: !2087)
!2095 = distinct !{!2095, !2094, !2096}
!2096 = !DILocation(line: 667, column: 33, scope: !2087)
!2097 = !DILocation(line: 674, column: 19, scope: !1793)
!2098 = !DILocation(line: 670, column: 41, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1805, file: !255, line: 670, column: 29)
!2100 = !DILocation(line: 670, column: 31, scope: !2099)
!2101 = !DILocation(line: 670, column: 29, scope: !1805)
!2102 = !DILocation(line: 672, column: 27, scope: !1805)
!2103 = !DILocation(line: 675, column: 26, scope: !1793)
!2104 = !DILocation(line: 675, column: 24, scope: !1793)
!2105 = !DILocation(line: 674, column: 19, scope: !1799)
!2106 = distinct !{!2106, !2068, !2107}
!2107 = !DILocation(line: 675, column: 44, scope: !1793)
!2108 = !DILocation(line: 676, column: 15, scope: !1794)
!2109 = !DILocation(line: 0, scope: !1794)
!2110 = !DILocation(line: 678, column: 40, scope: !1789)
!2111 = !DILocation(line: 680, column: 19, scope: !1811)
!2112 = !DILocation(line: 680, column: 45, scope: !1811)
!2113 = !DILocation(line: 680, column: 23, scope: !1811)
!2114 = !DILocation(line: 684, column: 33, scope: !1810)
!2115 = !DILocation(line: 0, scope: !1810)
!2116 = !DILocation(line: 686, column: 17, scope: !1810)
!2117 = !DILocation(line: 405, column: 12, scope: !1781)
!2118 = !DILocation(line: 688, column: 43, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !255, line: 688, column: 25)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !255, line: 687, column: 19)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !255, line: 686, column: 17)
!2122 = distinct !DILexicalBlock(scope: !1810, file: !255, line: 686, column: 17)
!2123 = !DILocation(line: 690, column: 25, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !255, line: 690, column: 25)
!2125 = distinct !DILexicalBlock(scope: !2119, file: !255, line: 689, column: 23)
!2126 = !DILocation(line: 690, column: 25, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !255, line: 690, column: 25)
!2128 = !DILocation(line: 690, column: 25, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !255, line: 690, column: 25)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !255, line: 690, column: 25)
!2131 = distinct !DILexicalBlock(scope: !2127, file: !255, line: 690, column: 25)
!2132 = !DILocation(line: 690, column: 25, scope: !2130)
!2133 = !DILocation(line: 690, column: 25, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !255, line: 690, column: 25)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !255, line: 690, column: 25)
!2136 = !DILocation(line: 690, column: 25, scope: !2135)
!2137 = !DILocation(line: 690, column: 25, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !255, line: 690, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2131, file: !255, line: 690, column: 25)
!2140 = !DILocation(line: 690, column: 25, scope: !2139)
!2141 = !DILocation(line: 690, column: 25, scope: !2131)
!2142 = !DILocation(line: 690, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !255, line: 690, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2124, file: !255, line: 690, column: 25)
!2145 = !DILocation(line: 690, column: 25, scope: !2144)
!2146 = !DILocation(line: 691, column: 25, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !255, line: 691, column: 25)
!2148 = distinct !DILexicalBlock(scope: !2125, file: !255, line: 691, column: 25)
!2149 = !DILocation(line: 691, column: 25, scope: !2148)
!2150 = !DILocation(line: 692, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !255, line: 692, column: 25)
!2152 = distinct !DILexicalBlock(scope: !2125, file: !255, line: 692, column: 25)
!2153 = !DILocation(line: 692, column: 25, scope: !2152)
!2154 = !DILocation(line: 693, column: 38, scope: !2125)
!2155 = !DILocation(line: 693, column: 33, scope: !2125)
!2156 = !DILocation(line: 694, column: 23, scope: !2125)
!2157 = !DILocation(line: 695, column: 30, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2119, file: !255, line: 695, column: 30)
!2159 = !DILocation(line: 695, column: 30, scope: !2119)
!2160 = !DILocation(line: 697, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !255, line: 697, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !255, line: 697, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !255, line: 696, column: 23)
!2164 = !DILocation(line: 697, column: 25, scope: !2162)
!2165 = !DILocation(line: 699, column: 23, scope: !2163)
!2166 = !DILocation(line: 700, column: 35, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2120, file: !255, line: 700, column: 25)
!2168 = !DILocation(line: 700, column: 30, scope: !2167)
!2169 = !DILocation(line: 700, column: 25, scope: !2120)
!2170 = !DILocation(line: 702, column: 21, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !255, line: 702, column: 21)
!2172 = distinct !DILexicalBlock(scope: !2120, file: !255, line: 702, column: 21)
!2173 = !DILocation(line: 702, column: 21, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !255, line: 702, column: 21)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !255, line: 702, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2171, file: !255, line: 702, column: 21)
!2177 = !DILocation(line: 702, column: 21, scope: !2175)
!2178 = !DILocation(line: 702, column: 21, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !255, line: 702, column: 21)
!2180 = distinct !DILexicalBlock(scope: !2176, file: !255, line: 702, column: 21)
!2181 = !DILocation(line: 702, column: 21, scope: !2180)
!2182 = !DILocation(line: 702, column: 21, scope: !2176)
!2183 = !DILocation(line: 0, scope: !2120)
!2184 = !DILocation(line: 703, column: 21, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !255, line: 703, column: 21)
!2186 = distinct !DILexicalBlock(scope: !2120, file: !255, line: 703, column: 21)
!2187 = !DILocation(line: 703, column: 21, scope: !2186)
!2188 = !DILocation(line: 704, column: 25, scope: !2120)
!2189 = !DILocation(line: 686, column: 17, scope: !2121)
!2190 = distinct !{!2190, !2191, !2192}
!2191 = !DILocation(line: 686, column: 17, scope: !2122)
!2192 = !DILocation(line: 705, column: 19, scope: !2122)
!2193 = !DILocation(line: 416, column: 30, scope: !1890)
!2194 = !DILocation(line: 712, column: 34, scope: !1833)
!2195 = !DILocation(line: 715, column: 35, scope: !1833)
!2196 = !DILocation(line: 715, column: 17, scope: !1833)
!2197 = !DILocation(line: 715, column: 47, scope: !1833)
!2198 = !DILocation(line: 715, column: 65, scope: !1833)
!2199 = !DILocation(line: 716, column: 15, scope: !1833)
!2200 = !DILocation(line: 716, column: 11, scope: !1833)
!2201 = !DILocation(line: 712, column: 11, scope: !1781)
!2202 = !DILocation(line: 400, column: 10, scope: !1783)
!2203 = !DILocation(line: 719, column: 5, scope: !1781)
!2204 = !DILocation(line: 720, column: 7, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !1781, file: !255, line: 720, column: 7)
!2206 = !DILocation(line: 720, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2205, file: !255, line: 720, column: 7)
!2208 = !DILocation(line: 720, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !255, line: 720, column: 7)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !255, line: 720, column: 7)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !255, line: 720, column: 7)
!2212 = !DILocation(line: 720, column: 7, scope: !2210)
!2213 = !DILocation(line: 720, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !255, line: 720, column: 7)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !255, line: 720, column: 7)
!2216 = !DILocation(line: 720, column: 7, scope: !2215)
!2217 = !DILocation(line: 720, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !255, line: 720, column: 7)
!2219 = distinct !DILexicalBlock(scope: !2211, file: !255, line: 720, column: 7)
!2220 = !DILocation(line: 720, column: 7, scope: !2219)
!2221 = !DILocation(line: 720, column: 7, scope: !2211)
!2222 = !DILocation(line: 720, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !255, line: 720, column: 7)
!2224 = distinct !DILexicalBlock(scope: !2205, file: !255, line: 720, column: 7)
!2225 = !DILocation(line: 720, column: 7, scope: !2224)
!2226 = !DILocation(line: 722, column: 5, scope: !1781)
!2227 = !DILocation(line: 723, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !255, line: 723, column: 7)
!2229 = distinct !DILexicalBlock(scope: !1781, file: !255, line: 723, column: 7)
!2230 = !DILocation(line: 424, column: 9, scope: !1781)
!2231 = !DILocation(line: 723, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !255, line: 723, column: 7)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !255, line: 723, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2228, file: !255, line: 723, column: 7)
!2235 = !DILocation(line: 723, column: 7, scope: !2233)
!2236 = !DILocation(line: 723, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !255, line: 723, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !255, line: 723, column: 7)
!2239 = !DILocation(line: 723, column: 7, scope: !2238)
!2240 = !DILocation(line: 723, column: 7, scope: !2234)
!2241 = !DILocation(line: 724, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !255, line: 724, column: 7)
!2243 = distinct !DILexicalBlock(scope: !1781, file: !255, line: 724, column: 7)
!2244 = !DILocation(line: 724, column: 7, scope: !2243)
!2245 = !DILocation(line: 726, column: 13, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !1781, file: !255, line: 726, column: 11)
!2247 = !DILocation(line: 726, column: 11, scope: !1781)
!2248 = !DILocation(line: 728, column: 5, scope: !1782)
!2249 = !DILocation(line: 400, column: 75, scope: !1782)
!2250 = !DILocation(line: 400, column: 3, scope: !1782)
!2251 = distinct !{!2251, !1908, !2252}
!2252 = !DILocation(line: 728, column: 5, scope: !1783)
!2253 = !DILocation(line: 730, column: 11, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !1754, file: !255, line: 730, column: 7)
!2255 = !DILocation(line: 730, column: 16, scope: !2254)
!2256 = !DILocation(line: 738, column: 51, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1754, file: !255, line: 738, column: 7)
!2258 = !DILocation(line: 739, column: 10, scope: !2257)
!2259 = !DILocation(line: 741, column: 11, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !255, line: 741, column: 11)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !255, line: 740, column: 5)
!2262 = !DILocation(line: 741, column: 11, scope: !2261)
!2263 = !DILocation(line: 742, column: 16, scope: !2260)
!2264 = !DILocation(line: 742, column: 9, scope: !2260)
!2265 = !DILocation(line: 746, column: 18, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2260, file: !255, line: 746, column: 16)
!2267 = !DILocation(line: 746, column: 32, scope: !2266)
!2268 = !DILocation(line: 746, column: 29, scope: !2266)
!2269 = !DILocation(line: 755, column: 7, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1754, file: !255, line: 755, column: 7)
!2271 = !DILocation(line: 755, column: 20, scope: !2270)
!2272 = !DILocation(line: 756, column: 12, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !255, line: 756, column: 5)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !255, line: 756, column: 5)
!2275 = !DILocation(line: 756, column: 5, scope: !2274)
!2276 = !DILocation(line: 757, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !255, line: 757, column: 7)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !255, line: 757, column: 7)
!2279 = !DILocation(line: 757, column: 7, scope: !2278)
!2280 = !DILocation(line: 756, column: 39, scope: !2273)
!2281 = distinct !{!2281, !2275, !2282}
!2282 = !DILocation(line: 757, column: 7, scope: !2274)
!2283 = !DILocation(line: 759, column: 11, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !1754, file: !255, line: 759, column: 7)
!2285 = !DILocation(line: 759, column: 7, scope: !1754)
!2286 = !DILocation(line: 760, column: 5, scope: !2284)
!2287 = !DILocation(line: 760, column: 17, scope: !2284)
!2288 = !DILocation(line: 763, column: 2, scope: !1754)
!2289 = !DILocation(line: 766, column: 51, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !1754, file: !255, line: 766, column: 7)
!2291 = !DILocation(line: 766, column: 21, scope: !2290)
!2292 = !DILocation(line: 770, column: 42, scope: !1754)
!2293 = !DILocation(line: 768, column: 10, scope: !1754)
!2294 = !DILocation(line: 768, column: 3, scope: !1754)
!2295 = !DILocation(line: 772, column: 1, scope: !1754)
!2296 = distinct !DISubprogram(name: "gettext_quote", scope: !255, file: !255, line: 207, type: !2297, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2299)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!12, !12, !257}
!2299 = !{!2300, !2301, !2302, !2303}
!2300 = !DILocalVariable(name: "msgid", arg: 1, scope: !2296, file: !255, line: 207, type: !12)
!2301 = !DILocalVariable(name: "s", arg: 2, scope: !2296, file: !255, line: 207, type: !257)
!2302 = !DILocalVariable(name: "translation", scope: !2296, file: !255, line: 209, type: !12)
!2303 = !DILocalVariable(name: "locale_code", scope: !2296, file: !255, line: 210, type: !12)
!2304 = !DILocation(line: 0, scope: !2296)
!2305 = !DILocation(line: 209, column: 29, scope: !2296)
!2306 = !DILocation(line: 212, column: 19, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2296, file: !255, line: 212, column: 7)
!2308 = !DILocation(line: 212, column: 7, scope: !2296)
!2309 = !DILocation(line: 233, column: 17, scope: !2296)
!2310 = !DILocalVariable(name: "s1", arg: 1, scope: !2311, file: !2312, line: 160, type: !12)
!2311 = distinct !DISubprogram(name: "strcaseeq0", scope: !2312, file: !2312, line: 160, type: !2313, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2315)
!2312 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11, !11}
!2315 = !{!2310, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2316 = !DILocalVariable(name: "s2", arg: 2, scope: !2311, file: !2312, line: 160, type: !12)
!2317 = !DILocalVariable(name: "s20", arg: 3, scope: !2311, file: !2312, line: 160, type: !11)
!2318 = !DILocalVariable(name: "s21", arg: 4, scope: !2311, file: !2312, line: 160, type: !11)
!2319 = !DILocalVariable(name: "s22", arg: 5, scope: !2311, file: !2312, line: 160, type: !11)
!2320 = !DILocalVariable(name: "s23", arg: 6, scope: !2311, file: !2312, line: 160, type: !11)
!2321 = !DILocalVariable(name: "s24", arg: 7, scope: !2311, file: !2312, line: 160, type: !11)
!2322 = !DILocalVariable(name: "s25", arg: 8, scope: !2311, file: !2312, line: 160, type: !11)
!2323 = !DILocalVariable(name: "s26", arg: 9, scope: !2311, file: !2312, line: 160, type: !11)
!2324 = !DILocalVariable(name: "s27", arg: 10, scope: !2311, file: !2312, line: 160, type: !11)
!2325 = !DILocalVariable(name: "s28", arg: 11, scope: !2311, file: !2312, line: 160, type: !11)
!2326 = !DILocation(line: 0, scope: !2311, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 234, column: 7, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2296, file: !255, line: 234, column: 7)
!2329 = !DILocation(line: 162, column: 7, scope: !2330, inlinedAt: !2327)
!2330 = distinct !DILexicalBlock(scope: !2311, file: !2312, line: 162, column: 7)
!2331 = !DILocalVariable(name: "s1", arg: 1, scope: !2332, file: !2312, line: 146, type: !12)
!2332 = distinct !DISubprogram(name: "strcaseeq1", scope: !2312, file: !2312, line: 146, type: !2333, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11, !11}
!2335 = !{!2331, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2336 = !DILocalVariable(name: "s2", arg: 2, scope: !2332, file: !2312, line: 146, type: !12)
!2337 = !DILocalVariable(name: "s21", arg: 3, scope: !2332, file: !2312, line: 146, type: !11)
!2338 = !DILocalVariable(name: "s22", arg: 4, scope: !2332, file: !2312, line: 146, type: !11)
!2339 = !DILocalVariable(name: "s23", arg: 5, scope: !2332, file: !2312, line: 146, type: !11)
!2340 = !DILocalVariable(name: "s24", arg: 6, scope: !2332, file: !2312, line: 146, type: !11)
!2341 = !DILocalVariable(name: "s25", arg: 7, scope: !2332, file: !2312, line: 146, type: !11)
!2342 = !DILocalVariable(name: "s26", arg: 8, scope: !2332, file: !2312, line: 146, type: !11)
!2343 = !DILocalVariable(name: "s27", arg: 9, scope: !2332, file: !2312, line: 146, type: !11)
!2344 = !DILocalVariable(name: "s28", arg: 10, scope: !2332, file: !2312, line: 146, type: !11)
!2345 = !DILocation(line: 0, scope: !2332, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 167, column: 16, scope: !2347, inlinedAt: !2327)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !2312, line: 164, column: 11)
!2348 = distinct !DILexicalBlock(scope: !2330, file: !2312, line: 163, column: 5)
!2349 = !DILocation(line: 148, column: 7, scope: !2350, inlinedAt: !2346)
!2350 = distinct !DILexicalBlock(scope: !2332, file: !2312, line: 148, column: 7)
!2351 = !DILocalVariable(name: "s1", arg: 1, scope: !2352, file: !2312, line: 132, type: !12)
!2352 = distinct !DISubprogram(name: "strcaseeq2", scope: !2312, file: !2312, line: 132, type: !2353, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11, !11}
!2355 = !{!2351, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363}
!2356 = !DILocalVariable(name: "s2", arg: 2, scope: !2352, file: !2312, line: 132, type: !12)
!2357 = !DILocalVariable(name: "s22", arg: 3, scope: !2352, file: !2312, line: 132, type: !11)
!2358 = !DILocalVariable(name: "s23", arg: 4, scope: !2352, file: !2312, line: 132, type: !11)
!2359 = !DILocalVariable(name: "s24", arg: 5, scope: !2352, file: !2312, line: 132, type: !11)
!2360 = !DILocalVariable(name: "s25", arg: 6, scope: !2352, file: !2312, line: 132, type: !11)
!2361 = !DILocalVariable(name: "s26", arg: 7, scope: !2352, file: !2312, line: 132, type: !11)
!2362 = !DILocalVariable(name: "s27", arg: 8, scope: !2352, file: !2312, line: 132, type: !11)
!2363 = !DILocalVariable(name: "s28", arg: 9, scope: !2352, file: !2312, line: 132, type: !11)
!2364 = !DILocation(line: 0, scope: !2352, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 153, column: 16, scope: !2366, inlinedAt: !2346)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2312, line: 150, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2350, file: !2312, line: 149, column: 5)
!2368 = !DILocation(line: 134, column: 7, scope: !2369, inlinedAt: !2365)
!2369 = distinct !DILexicalBlock(scope: !2352, file: !2312, line: 134, column: 7)
!2370 = !DILocalVariable(name: "s1", arg: 1, scope: !2371, file: !2312, line: 118, type: !12)
!2371 = distinct !DISubprogram(name: "strcaseeq3", scope: !2312, file: !2312, line: 118, type: !2372, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!14, !12, !12, !11, !11, !11, !11, !11, !11}
!2374 = !{!2370, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2375 = !DILocalVariable(name: "s2", arg: 2, scope: !2371, file: !2312, line: 118, type: !12)
!2376 = !DILocalVariable(name: "s23", arg: 3, scope: !2371, file: !2312, line: 118, type: !11)
!2377 = !DILocalVariable(name: "s24", arg: 4, scope: !2371, file: !2312, line: 118, type: !11)
!2378 = !DILocalVariable(name: "s25", arg: 5, scope: !2371, file: !2312, line: 118, type: !11)
!2379 = !DILocalVariable(name: "s26", arg: 6, scope: !2371, file: !2312, line: 118, type: !11)
!2380 = !DILocalVariable(name: "s27", arg: 7, scope: !2371, file: !2312, line: 118, type: !11)
!2381 = !DILocalVariable(name: "s28", arg: 8, scope: !2371, file: !2312, line: 118, type: !11)
!2382 = !DILocation(line: 0, scope: !2371, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 139, column: 16, scope: !2384, inlinedAt: !2365)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !2312, line: 136, column: 11)
!2385 = distinct !DILexicalBlock(scope: !2369, file: !2312, line: 135, column: 5)
!2386 = !DILocation(line: 120, column: 7, scope: !2387, inlinedAt: !2383)
!2387 = distinct !DILexicalBlock(scope: !2371, file: !2312, line: 120, column: 7)
!2388 = !DILocation(line: 120, column: 7, scope: !2371, inlinedAt: !2383)
!2389 = !DILocalVariable(name: "s1", arg: 1, scope: !2390, file: !2312, line: 104, type: !12)
!2390 = distinct !DISubprogram(name: "strcaseeq4", scope: !2312, file: !2312, line: 104, type: !2391, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!14, !12, !12, !11, !11, !11, !11, !11}
!2393 = !{!2389, !2394, !2395, !2396, !2397, !2398, !2399}
!2394 = !DILocalVariable(name: "s2", arg: 2, scope: !2390, file: !2312, line: 104, type: !12)
!2395 = !DILocalVariable(name: "s24", arg: 3, scope: !2390, file: !2312, line: 104, type: !11)
!2396 = !DILocalVariable(name: "s25", arg: 4, scope: !2390, file: !2312, line: 104, type: !11)
!2397 = !DILocalVariable(name: "s26", arg: 5, scope: !2390, file: !2312, line: 104, type: !11)
!2398 = !DILocalVariable(name: "s27", arg: 6, scope: !2390, file: !2312, line: 104, type: !11)
!2399 = !DILocalVariable(name: "s28", arg: 7, scope: !2390, file: !2312, line: 104, type: !11)
!2400 = !DILocation(line: 0, scope: !2390, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 125, column: 16, scope: !2402, inlinedAt: !2383)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !2312, line: 122, column: 11)
!2403 = distinct !DILexicalBlock(scope: !2387, file: !2312, line: 121, column: 5)
!2404 = !DILocation(line: 106, column: 7, scope: !2405, inlinedAt: !2401)
!2405 = distinct !DILexicalBlock(scope: !2390, file: !2312, line: 106, column: 7)
!2406 = !DILocation(line: 106, column: 7, scope: !2390, inlinedAt: !2401)
!2407 = !DILocalVariable(name: "s1", arg: 1, scope: !2408, file: !2312, line: 90, type: !12)
!2408 = distinct !DISubprogram(name: "strcaseeq5", scope: !2312, file: !2312, line: 90, type: !2409, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!14, !12, !12, !11, !11, !11, !11}
!2411 = !{!2407, !2412, !2413, !2414, !2415, !2416}
!2412 = !DILocalVariable(name: "s2", arg: 2, scope: !2408, file: !2312, line: 90, type: !12)
!2413 = !DILocalVariable(name: "s25", arg: 3, scope: !2408, file: !2312, line: 90, type: !11)
!2414 = !DILocalVariable(name: "s26", arg: 4, scope: !2408, file: !2312, line: 90, type: !11)
!2415 = !DILocalVariable(name: "s27", arg: 5, scope: !2408, file: !2312, line: 90, type: !11)
!2416 = !DILocalVariable(name: "s28", arg: 6, scope: !2408, file: !2312, line: 90, type: !11)
!2417 = !DILocation(line: 0, scope: !2408, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 111, column: 16, scope: !2419, inlinedAt: !2401)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !2312, line: 108, column: 11)
!2420 = distinct !DILexicalBlock(scope: !2405, file: !2312, line: 107, column: 5)
!2421 = !DILocation(line: 92, column: 7, scope: !2422, inlinedAt: !2418)
!2422 = distinct !DILexicalBlock(scope: !2408, file: !2312, line: 92, column: 7)
!2423 = !DILocation(line: 92, column: 7, scope: !2408, inlinedAt: !2418)
!2424 = !DILocation(line: 235, column: 12, scope: !2328)
!2425 = !DILocation(line: 235, column: 21, scope: !2328)
!2426 = !DILocation(line: 235, column: 5, scope: !2328)
!2427 = !DILocation(line: 0, scope: !2332, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 167, column: 16, scope: !2347, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 236, column: 7, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2296, file: !255, line: 236, column: 7)
!2431 = !DILocation(line: 148, column: 7, scope: !2350, inlinedAt: !2428)
!2432 = !DILocation(line: 0, scope: !2352, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 153, column: 16, scope: !2366, inlinedAt: !2428)
!2434 = !DILocation(line: 134, column: 7, scope: !2369, inlinedAt: !2433)
!2435 = !DILocation(line: 134, column: 7, scope: !2352, inlinedAt: !2433)
!2436 = !DILocation(line: 0, scope: !2371, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 139, column: 16, scope: !2384, inlinedAt: !2433)
!2438 = !DILocation(line: 120, column: 7, scope: !2387, inlinedAt: !2437)
!2439 = !DILocation(line: 120, column: 7, scope: !2371, inlinedAt: !2437)
!2440 = !DILocation(line: 0, scope: !2390, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 125, column: 16, scope: !2402, inlinedAt: !2437)
!2442 = !DILocation(line: 106, column: 7, scope: !2405, inlinedAt: !2441)
!2443 = !DILocation(line: 106, column: 7, scope: !2390, inlinedAt: !2441)
!2444 = !DILocation(line: 0, scope: !2408, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 111, column: 16, scope: !2419, inlinedAt: !2441)
!2446 = !DILocation(line: 92, column: 7, scope: !2422, inlinedAt: !2445)
!2447 = !DILocation(line: 92, column: 7, scope: !2408, inlinedAt: !2445)
!2448 = !DILocalVariable(name: "s1", arg: 1, scope: !2449, file: !2312, line: 76, type: !12)
!2449 = distinct !DISubprogram(name: "strcaseeq6", scope: !2312, file: !2312, line: 76, type: !2450, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!14, !12, !12, !11, !11, !11}
!2452 = !{!2448, !2453, !2454, !2455, !2456}
!2453 = !DILocalVariable(name: "s2", arg: 2, scope: !2449, file: !2312, line: 76, type: !12)
!2454 = !DILocalVariable(name: "s26", arg: 3, scope: !2449, file: !2312, line: 76, type: !11)
!2455 = !DILocalVariable(name: "s27", arg: 4, scope: !2449, file: !2312, line: 76, type: !11)
!2456 = !DILocalVariable(name: "s28", arg: 5, scope: !2449, file: !2312, line: 76, type: !11)
!2457 = !DILocation(line: 0, scope: !2449, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 97, column: 16, scope: !2459, inlinedAt: !2445)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !2312, line: 94, column: 11)
!2460 = distinct !DILexicalBlock(scope: !2422, file: !2312, line: 93, column: 5)
!2461 = !DILocation(line: 78, column: 7, scope: !2462, inlinedAt: !2458)
!2462 = distinct !DILexicalBlock(scope: !2449, file: !2312, line: 78, column: 7)
!2463 = !DILocation(line: 78, column: 7, scope: !2449, inlinedAt: !2458)
!2464 = !DILocalVariable(name: "s1", arg: 1, scope: !2465, file: !2312, line: 62, type: !12)
!2465 = distinct !DISubprogram(name: "strcaseeq7", scope: !2312, file: !2312, line: 62, type: !2466, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!14, !12, !12, !11, !11}
!2468 = !{!2464, !2469, !2470, !2471}
!2469 = !DILocalVariable(name: "s2", arg: 2, scope: !2465, file: !2312, line: 62, type: !12)
!2470 = !DILocalVariable(name: "s27", arg: 3, scope: !2465, file: !2312, line: 62, type: !11)
!2471 = !DILocalVariable(name: "s28", arg: 4, scope: !2465, file: !2312, line: 62, type: !11)
!2472 = !DILocation(line: 0, scope: !2465, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 83, column: 16, scope: !2474, inlinedAt: !2458)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !2312, line: 80, column: 11)
!2475 = distinct !DILexicalBlock(scope: !2462, file: !2312, line: 79, column: 5)
!2476 = !DILocation(line: 64, column: 7, scope: !2477, inlinedAt: !2473)
!2477 = distinct !DILexicalBlock(scope: !2465, file: !2312, line: 64, column: 7)
!2478 = !DILocation(line: 236, column: 7, scope: !2296)
!2479 = !DILocation(line: 237, column: 12, scope: !2430)
!2480 = !DILocation(line: 237, column: 21, scope: !2430)
!2481 = !DILocation(line: 237, column: 5, scope: !2430)
!2482 = !DILocation(line: 239, column: 13, scope: !2296)
!2483 = !DILocation(line: 239, column: 11, scope: !2296)
!2484 = !DILocation(line: 239, column: 3, scope: !2296)
!2485 = !DILocation(line: 240, column: 1, scope: !2296)
!2486 = distinct !DISubprogram(name: "quotearg_alloc", scope: !255, file: !255, line: 799, type: !2487, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!10, !12, !68, !301}
!2489 = !{!2490, !2491, !2492}
!2490 = !DILocalVariable(name: "arg", arg: 1, scope: !2486, file: !255, line: 799, type: !12)
!2491 = !DILocalVariable(name: "argsize", arg: 2, scope: !2486, file: !255, line: 799, type: !68)
!2492 = !DILocalVariable(name: "o", arg: 3, scope: !2486, file: !255, line: 800, type: !301)
!2493 = !DILocation(line: 0, scope: !2486)
!2494 = !DILocalVariable(name: "arg", arg: 1, scope: !2495, file: !255, line: 812, type: !12)
!2495 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !255, file: !255, line: 812, type: !2496, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!10, !12, !68, !470, !301}
!2498 = !{!2494, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2499 = !DILocalVariable(name: "argsize", arg: 2, scope: !2495, file: !255, line: 812, type: !68)
!2500 = !DILocalVariable(name: "size", arg: 3, scope: !2495, file: !255, line: 812, type: !470)
!2501 = !DILocalVariable(name: "o", arg: 4, scope: !2495, file: !255, line: 813, type: !301)
!2502 = !DILocalVariable(name: "p", scope: !2495, file: !255, line: 815, type: !301)
!2503 = !DILocalVariable(name: "e", scope: !2495, file: !255, line: 816, type: !14)
!2504 = !DILocalVariable(name: "flags", scope: !2495, file: !255, line: 818, type: !14)
!2505 = !DILocalVariable(name: "bufsize", scope: !2495, file: !255, line: 819, type: !68)
!2506 = !DILocalVariable(name: "buf", scope: !2495, file: !255, line: 823, type: !10)
!2507 = !DILocation(line: 0, scope: !2495, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 802, column: 10, scope: !2486)
!2509 = !DILocation(line: 815, column: 37, scope: !2495, inlinedAt: !2508)
!2510 = !DILocation(line: 816, column: 11, scope: !2495, inlinedAt: !2508)
!2511 = !DILocation(line: 818, column: 18, scope: !2495, inlinedAt: !2508)
!2512 = !DILocation(line: 818, column: 24, scope: !2495, inlinedAt: !2508)
!2513 = !DILocation(line: 819, column: 69, scope: !2495, inlinedAt: !2508)
!2514 = !DILocation(line: 820, column: 53, scope: !2495, inlinedAt: !2508)
!2515 = !DILocation(line: 821, column: 49, scope: !2495, inlinedAt: !2508)
!2516 = !DILocation(line: 822, column: 49, scope: !2495, inlinedAt: !2508)
!2517 = !DILocation(line: 819, column: 20, scope: !2495, inlinedAt: !2508)
!2518 = !DILocation(line: 822, column: 62, scope: !2495, inlinedAt: !2508)
!2519 = !DILocalVariable(name: "n", arg: 1, scope: !2520, file: !292, line: 216, type: !68)
!2520 = distinct !DISubprogram(name: "xcharalloc", scope: !292, file: !292, line: 216, type: !2521, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!10, !68}
!2523 = !{!2519}
!2524 = !DILocation(line: 0, scope: !2520, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 823, column: 15, scope: !2495, inlinedAt: !2508)
!2526 = !DILocation(line: 218, column: 10, scope: !2520, inlinedAt: !2525)
!2527 = !DILocation(line: 824, column: 60, scope: !2495, inlinedAt: !2508)
!2528 = !DILocation(line: 826, column: 32, scope: !2495, inlinedAt: !2508)
!2529 = !DILocation(line: 826, column: 47, scope: !2495, inlinedAt: !2508)
!2530 = !DILocation(line: 824, column: 3, scope: !2495, inlinedAt: !2508)
!2531 = !DILocation(line: 827, column: 9, scope: !2495, inlinedAt: !2508)
!2532 = !DILocation(line: 802, column: 3, scope: !2486)
!2533 = !DILocation(line: 0, scope: !2495)
!2534 = !DILocation(line: 815, column: 37, scope: !2495)
!2535 = !DILocation(line: 816, column: 11, scope: !2495)
!2536 = !DILocation(line: 818, column: 18, scope: !2495)
!2537 = !DILocation(line: 818, column: 27, scope: !2495)
!2538 = !DILocation(line: 818, column: 24, scope: !2495)
!2539 = !DILocation(line: 819, column: 69, scope: !2495)
!2540 = !DILocation(line: 820, column: 53, scope: !2495)
!2541 = !DILocation(line: 821, column: 49, scope: !2495)
!2542 = !DILocation(line: 822, column: 49, scope: !2495)
!2543 = !DILocation(line: 819, column: 20, scope: !2495)
!2544 = !DILocation(line: 822, column: 62, scope: !2495)
!2545 = !DILocation(line: 0, scope: !2520, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 823, column: 15, scope: !2495)
!2547 = !DILocation(line: 218, column: 10, scope: !2520, inlinedAt: !2546)
!2548 = !DILocation(line: 824, column: 60, scope: !2495)
!2549 = !DILocation(line: 826, column: 32, scope: !2495)
!2550 = !DILocation(line: 826, column: 47, scope: !2495)
!2551 = !DILocation(line: 824, column: 3, scope: !2495)
!2552 = !DILocation(line: 827, column: 9, scope: !2495)
!2553 = !DILocation(line: 828, column: 7, scope: !2495)
!2554 = !DILocation(line: 829, column: 11, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2495, file: !255, line: 828, column: 7)
!2556 = !{!2557, !2557, i64 0}
!2557 = !{!"long", !1114, i64 0}
!2558 = !DILocation(line: 829, column: 5, scope: !2555)
!2559 = !DILocation(line: 830, column: 3, scope: !2495)
!2560 = distinct !DISubprogram(name: "quotearg_free", scope: !255, file: !255, line: 848, type: !95, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2561)
!2561 = !{!2562, !2563}
!2562 = !DILocalVariable(name: "sv", scope: !2560, file: !255, line: 850, type: !379)
!2563 = !DILocalVariable(name: "i", scope: !2560, file: !255, line: 851, type: !14)
!2564 = !DILocation(line: 850, column: 24, scope: !2560)
!2565 = !DILocation(line: 0, scope: !2560)
!2566 = !DILocation(line: 852, column: 19, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !255, line: 852, column: 3)
!2568 = distinct !DILexicalBlock(scope: !2560, file: !255, line: 852, column: 3)
!2569 = !DILocation(line: 852, column: 17, scope: !2567)
!2570 = !DILocation(line: 852, column: 3, scope: !2568)
!2571 = !DILocation(line: 853, column: 17, scope: !2567)
!2572 = !{!2573, !1113, i64 8}
!2573 = !{!"slotvec", !2557, i64 0, !1113, i64 8}
!2574 = !DILocation(line: 853, column: 5, scope: !2567)
!2575 = !DILocation(line: 852, column: 28, scope: !2567)
!2576 = distinct !{!2576, !2570, !2577}
!2577 = !DILocation(line: 853, column: 20, scope: !2568)
!2578 = !DILocation(line: 854, column: 13, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2560, file: !255, line: 854, column: 7)
!2580 = !DILocation(line: 854, column: 17, scope: !2579)
!2581 = !DILocation(line: 854, column: 7, scope: !2560)
!2582 = !DILocation(line: 856, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !255, line: 855, column: 5)
!2584 = !DILocation(line: 857, column: 21, scope: !2583)
!2585 = !{!2573, !2557, i64 0}
!2586 = !DILocation(line: 858, column: 20, scope: !2583)
!2587 = !DILocation(line: 859, column: 5, scope: !2583)
!2588 = !DILocation(line: 860, column: 10, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2560, file: !255, line: 860, column: 7)
!2590 = !DILocation(line: 860, column: 7, scope: !2560)
!2591 = !DILocation(line: 862, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2589, file: !255, line: 861, column: 5)
!2593 = !DILocation(line: 862, column: 7, scope: !2592)
!2594 = !DILocation(line: 863, column: 15, scope: !2592)
!2595 = !DILocation(line: 864, column: 5, scope: !2592)
!2596 = !DILocation(line: 865, column: 10, scope: !2560)
!2597 = !DILocation(line: 866, column: 1, scope: !2560)
!2598 = distinct !DISubprogram(name: "quotearg_n", scope: !255, file: !255, line: 931, type: !82, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2599)
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !255, line: 931, type: !14)
!2601 = !DILocalVariable(name: "arg", arg: 2, scope: !2598, file: !255, line: 931, type: !12)
!2602 = !DILocation(line: 0, scope: !2598)
!2603 = !DILocation(line: 933, column: 10, scope: !2598)
!2604 = !DILocation(line: 933, column: 3, scope: !2598)
!2605 = distinct !DISubprogram(name: "quotearg_n_options", scope: !255, file: !255, line: 877, type: !2606, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!10, !14, !12, !68, !301}
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2618, !2619, !2621, !2622, !2623}
!2609 = !DILocalVariable(name: "n", arg: 1, scope: !2605, file: !255, line: 877, type: !14)
!2610 = !DILocalVariable(name: "arg", arg: 2, scope: !2605, file: !255, line: 877, type: !12)
!2611 = !DILocalVariable(name: "argsize", arg: 3, scope: !2605, file: !255, line: 877, type: !68)
!2612 = !DILocalVariable(name: "options", arg: 4, scope: !2605, file: !255, line: 878, type: !301)
!2613 = !DILocalVariable(name: "e", scope: !2605, file: !255, line: 880, type: !14)
!2614 = !DILocalVariable(name: "sv", scope: !2605, file: !255, line: 882, type: !379)
!2615 = !DILocalVariable(name: "preallocated", scope: !2616, file: !255, line: 889, type: !204)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !255, line: 888, column: 5)
!2617 = distinct !DILexicalBlock(scope: !2605, file: !255, line: 887, column: 7)
!2618 = !DILocalVariable(name: "nmax", scope: !2616, file: !255, line: 890, type: !14)
!2619 = !DILocalVariable(name: "size", scope: !2620, file: !255, line: 903, type: !68)
!2620 = distinct !DILexicalBlock(scope: !2605, file: !255, line: 902, column: 3)
!2621 = !DILocalVariable(name: "val", scope: !2620, file: !255, line: 904, type: !10)
!2622 = !DILocalVariable(name: "flags", scope: !2620, file: !255, line: 906, type: !14)
!2623 = !DILocalVariable(name: "qsize", scope: !2620, file: !255, line: 907, type: !68)
!2624 = !DILocation(line: 0, scope: !2605)
!2625 = !DILocation(line: 880, column: 11, scope: !2605)
!2626 = !DILocation(line: 882, column: 24, scope: !2605)
!2627 = !DILocation(line: 884, column: 9, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2605, file: !255, line: 884, column: 7)
!2629 = !DILocation(line: 884, column: 7, scope: !2605)
!2630 = !DILocation(line: 885, column: 5, scope: !2628)
!2631 = !DILocation(line: 887, column: 7, scope: !2617)
!2632 = !DILocation(line: 887, column: 14, scope: !2617)
!2633 = !DILocation(line: 887, column: 7, scope: !2605)
!2634 = !DILocation(line: 889, column: 31, scope: !2616)
!2635 = !DILocation(line: 0, scope: !2616)
!2636 = !DILocation(line: 892, column: 16, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2616, file: !255, line: 892, column: 11)
!2638 = !DILocation(line: 892, column: 11, scope: !2616)
!2639 = !DILocation(line: 893, column: 9, scope: !2637)
!2640 = !DILocation(line: 895, column: 32, scope: !2616)
!2641 = !DILocation(line: 895, column: 61, scope: !2616)
!2642 = !DILocation(line: 895, column: 58, scope: !2616)
!2643 = !DILocation(line: 895, column: 66, scope: !2616)
!2644 = !DILocation(line: 895, column: 22, scope: !2616)
!2645 = !DILocation(line: 895, column: 15, scope: !2616)
!2646 = !DILocation(line: 896, column: 11, scope: !2616)
!2647 = !DILocation(line: 897, column: 15, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2616, file: !255, line: 896, column: 11)
!2649 = !{i64 0, i64 8, !2556, i64 8, i64 8, !1112}
!2650 = !DILocation(line: 897, column: 9, scope: !2648)
!2651 = !DILocation(line: 898, column: 20, scope: !2616)
!2652 = !DILocation(line: 898, column: 18, scope: !2616)
!2653 = !DILocation(line: 898, column: 15, scope: !2616)
!2654 = !DILocation(line: 898, column: 38, scope: !2616)
!2655 = !DILocation(line: 898, column: 31, scope: !2616)
!2656 = !DILocation(line: 898, column: 48, scope: !2616)
!2657 = !DILocation(line: 0, scope: !2053, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 898, column: 7, scope: !2616)
!2659 = !DILocation(line: 71, column: 10, scope: !2053, inlinedAt: !2658)
!2660 = !DILocation(line: 899, column: 14, scope: !2616)
!2661 = !DILocation(line: 900, column: 5, scope: !2616)
!2662 = !DILocation(line: 903, column: 19, scope: !2620)
!2663 = !DILocation(line: 903, column: 25, scope: !2620)
!2664 = !DILocation(line: 0, scope: !2620)
!2665 = !DILocation(line: 904, column: 23, scope: !2620)
!2666 = !DILocation(line: 906, column: 26, scope: !2620)
!2667 = !DILocation(line: 906, column: 32, scope: !2620)
!2668 = !DILocation(line: 908, column: 55, scope: !2620)
!2669 = !DILocation(line: 909, column: 46, scope: !2620)
!2670 = !DILocation(line: 910, column: 55, scope: !2620)
!2671 = !DILocation(line: 911, column: 55, scope: !2620)
!2672 = !DILocation(line: 907, column: 20, scope: !2620)
!2673 = !DILocation(line: 913, column: 14, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2620, file: !255, line: 913, column: 9)
!2675 = !DILocation(line: 913, column: 9, scope: !2620)
!2676 = !DILocation(line: 915, column: 35, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2674, file: !255, line: 914, column: 7)
!2678 = !DILocation(line: 915, column: 20, scope: !2677)
!2679 = !DILocation(line: 916, column: 17, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !255, line: 916, column: 13)
!2681 = !DILocation(line: 916, column: 13, scope: !2677)
!2682 = !DILocation(line: 917, column: 11, scope: !2680)
!2683 = !DILocation(line: 0, scope: !2520, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 918, column: 27, scope: !2677)
!2685 = !DILocation(line: 218, column: 10, scope: !2520, inlinedAt: !2684)
!2686 = !DILocation(line: 918, column: 19, scope: !2677)
!2687 = !DILocation(line: 919, column: 69, scope: !2677)
!2688 = !DILocation(line: 921, column: 44, scope: !2677)
!2689 = !DILocation(line: 922, column: 44, scope: !2677)
!2690 = !DILocation(line: 919, column: 9, scope: !2677)
!2691 = !DILocation(line: 923, column: 7, scope: !2677)
!2692 = !DILocation(line: 925, column: 11, scope: !2620)
!2693 = !DILocation(line: 926, column: 5, scope: !2620)
!2694 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !255, file: !255, line: 937, type: !2695, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!10, !14, !12, !68}
!2697 = !{!2698, !2699, !2700}
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2694, file: !255, line: 937, type: !14)
!2699 = !DILocalVariable(name: "arg", arg: 2, scope: !2694, file: !255, line: 937, type: !12)
!2700 = !DILocalVariable(name: "argsize", arg: 3, scope: !2694, file: !255, line: 937, type: !68)
!2701 = !DILocation(line: 0, scope: !2694)
!2702 = !DILocation(line: 939, column: 10, scope: !2694)
!2703 = !DILocation(line: 939, column: 3, scope: !2694)
!2704 = distinct !DISubprogram(name: "quotearg", scope: !255, file: !255, line: 943, type: !88, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2705)
!2705 = !{!2706}
!2706 = !DILocalVariable(name: "arg", arg: 1, scope: !2704, file: !255, line: 943, type: !12)
!2707 = !DILocation(line: 0, scope: !2704)
!2708 = !DILocation(line: 0, scope: !2598, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 945, column: 10, scope: !2704)
!2710 = !DILocation(line: 933, column: 10, scope: !2598, inlinedAt: !2709)
!2711 = !DILocation(line: 945, column: 3, scope: !2704)
!2712 = distinct !DISubprogram(name: "quotearg_mem", scope: !255, file: !255, line: 949, type: !2713, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!10, !12, !68}
!2715 = !{!2716, !2717}
!2716 = !DILocalVariable(name: "arg", arg: 1, scope: !2712, file: !255, line: 949, type: !12)
!2717 = !DILocalVariable(name: "argsize", arg: 2, scope: !2712, file: !255, line: 949, type: !68)
!2718 = !DILocation(line: 0, scope: !2712)
!2719 = !DILocation(line: 0, scope: !2694, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 951, column: 10, scope: !2712)
!2721 = !DILocation(line: 939, column: 10, scope: !2694, inlinedAt: !2720)
!2722 = !DILocation(line: 951, column: 3, scope: !2712)
!2723 = distinct !DISubprogram(name: "quotearg_n_style", scope: !255, file: !255, line: 955, type: !2724, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!10, !14, !257, !12}
!2726 = !{!2727, !2728, !2729, !2730}
!2727 = !DILocalVariable(name: "n", arg: 1, scope: !2723, file: !255, line: 955, type: !14)
!2728 = !DILocalVariable(name: "s", arg: 2, scope: !2723, file: !255, line: 955, type: !257)
!2729 = !DILocalVariable(name: "arg", arg: 3, scope: !2723, file: !255, line: 955, type: !12)
!2730 = !DILocalVariable(name: "o", scope: !2723, file: !255, line: 957, type: !302)
!2731 = !DILocation(line: 0, scope: !2723)
!2732 = !DILocation(line: 957, column: 3, scope: !2723)
!2733 = !DILocation(line: 957, column: 32, scope: !2723)
!2734 = !DILocalVariable(name: "style", arg: 1, scope: !2735, file: !255, line: 193, type: !257)
!2735 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !255, file: !255, line: 193, type: !2736, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!303, !257}
!2738 = !{!2734, !2739}
!2739 = !DILocalVariable(name: "o", scope: !2735, file: !255, line: 195, type: !303)
!2740 = !DILocation(line: 0, scope: !2735, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 957, column: 36, scope: !2723)
!2742 = !DILocation(line: 195, column: 26, scope: !2735, inlinedAt: !2741)
!2743 = !{!2744}
!2744 = distinct !{!2744, !2745, !"quoting_options_from_style: argument 0"}
!2745 = distinct !{!2745, !"quoting_options_from_style"}
!2746 = !DILocation(line: 196, column: 13, scope: !2747, inlinedAt: !2741)
!2747 = distinct !DILexicalBlock(scope: !2735, file: !255, line: 196, column: 7)
!2748 = !DILocation(line: 196, column: 7, scope: !2735, inlinedAt: !2741)
!2749 = !DILocation(line: 197, column: 5, scope: !2747, inlinedAt: !2741)
!2750 = !DILocation(line: 198, column: 5, scope: !2735, inlinedAt: !2741)
!2751 = !DILocation(line: 198, column: 11, scope: !2735, inlinedAt: !2741)
!2752 = !DILocation(line: 958, column: 10, scope: !2723)
!2753 = !DILocation(line: 959, column: 1, scope: !2723)
!2754 = !DILocation(line: 958, column: 3, scope: !2723)
!2755 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !255, file: !255, line: 962, type: !2756, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!10, !14, !257, !12, !68}
!2758 = !{!2759, !2760, !2761, !2762, !2763}
!2759 = !DILocalVariable(name: "n", arg: 1, scope: !2755, file: !255, line: 962, type: !14)
!2760 = !DILocalVariable(name: "s", arg: 2, scope: !2755, file: !255, line: 962, type: !257)
!2761 = !DILocalVariable(name: "arg", arg: 3, scope: !2755, file: !255, line: 963, type: !12)
!2762 = !DILocalVariable(name: "argsize", arg: 4, scope: !2755, file: !255, line: 963, type: !68)
!2763 = !DILocalVariable(name: "o", scope: !2755, file: !255, line: 965, type: !302)
!2764 = !DILocation(line: 0, scope: !2755)
!2765 = !DILocation(line: 965, column: 3, scope: !2755)
!2766 = !DILocation(line: 965, column: 32, scope: !2755)
!2767 = !DILocation(line: 0, scope: !2735, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 965, column: 36, scope: !2755)
!2769 = !DILocation(line: 195, column: 26, scope: !2735, inlinedAt: !2768)
!2770 = !{!2771}
!2771 = distinct !{!2771, !2772, !"quoting_options_from_style: argument 0"}
!2772 = distinct !{!2772, !"quoting_options_from_style"}
!2773 = !DILocation(line: 196, column: 13, scope: !2747, inlinedAt: !2768)
!2774 = !DILocation(line: 196, column: 7, scope: !2735, inlinedAt: !2768)
!2775 = !DILocation(line: 197, column: 5, scope: !2747, inlinedAt: !2768)
!2776 = !DILocation(line: 198, column: 5, scope: !2735, inlinedAt: !2768)
!2777 = !DILocation(line: 198, column: 11, scope: !2735, inlinedAt: !2768)
!2778 = !DILocation(line: 966, column: 10, scope: !2755)
!2779 = !DILocation(line: 967, column: 1, scope: !2755)
!2780 = !DILocation(line: 966, column: 3, scope: !2755)
!2781 = distinct !DISubprogram(name: "quotearg_style", scope: !255, file: !255, line: 970, type: !2782, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!10, !257, !12}
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "s", arg: 1, scope: !2781, file: !255, line: 970, type: !257)
!2786 = !DILocalVariable(name: "arg", arg: 2, scope: !2781, file: !255, line: 970, type: !12)
!2787 = !DILocation(line: 195, column: 26, scope: !2735, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 957, column: 36, scope: !2723, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 972, column: 10, scope: !2781)
!2790 = !DILocation(line: 957, column: 32, scope: !2723, inlinedAt: !2789)
!2791 = !DILocation(line: 0, scope: !2781)
!2792 = !DILocation(line: 0, scope: !2723, inlinedAt: !2789)
!2793 = !DILocation(line: 957, column: 3, scope: !2723, inlinedAt: !2789)
!2794 = !DILocation(line: 0, scope: !2735, inlinedAt: !2788)
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"quoting_options_from_style: argument 0"}
!2797 = distinct !{!2797, !"quoting_options_from_style"}
!2798 = !DILocation(line: 196, column: 13, scope: !2747, inlinedAt: !2788)
!2799 = !DILocation(line: 196, column: 7, scope: !2735, inlinedAt: !2788)
!2800 = !DILocation(line: 197, column: 5, scope: !2747, inlinedAt: !2788)
!2801 = !DILocation(line: 198, column: 5, scope: !2735, inlinedAt: !2788)
!2802 = !DILocation(line: 198, column: 11, scope: !2735, inlinedAt: !2788)
!2803 = !DILocation(line: 958, column: 10, scope: !2723, inlinedAt: !2789)
!2804 = !DILocation(line: 959, column: 1, scope: !2723, inlinedAt: !2789)
!2805 = !DILocation(line: 972, column: 3, scope: !2781)
!2806 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !255, file: !255, line: 976, type: !2807, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!10, !257, !12, !68}
!2809 = !{!2810, !2811, !2812}
!2810 = !DILocalVariable(name: "s", arg: 1, scope: !2806, file: !255, line: 976, type: !257)
!2811 = !DILocalVariable(name: "arg", arg: 2, scope: !2806, file: !255, line: 976, type: !12)
!2812 = !DILocalVariable(name: "argsize", arg: 3, scope: !2806, file: !255, line: 976, type: !68)
!2813 = !DILocation(line: 195, column: 26, scope: !2735, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 965, column: 36, scope: !2755, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 978, column: 10, scope: !2806)
!2816 = !DILocation(line: 965, column: 32, scope: !2755, inlinedAt: !2815)
!2817 = !DILocation(line: 0, scope: !2806)
!2818 = !DILocation(line: 0, scope: !2755, inlinedAt: !2815)
!2819 = !DILocation(line: 965, column: 3, scope: !2755, inlinedAt: !2815)
!2820 = !DILocation(line: 0, scope: !2735, inlinedAt: !2814)
!2821 = !{!2822}
!2822 = distinct !{!2822, !2823, !"quoting_options_from_style: argument 0"}
!2823 = distinct !{!2823, !"quoting_options_from_style"}
!2824 = !DILocation(line: 196, column: 13, scope: !2747, inlinedAt: !2814)
!2825 = !DILocation(line: 196, column: 7, scope: !2735, inlinedAt: !2814)
!2826 = !DILocation(line: 197, column: 5, scope: !2747, inlinedAt: !2814)
!2827 = !DILocation(line: 198, column: 5, scope: !2735, inlinedAt: !2814)
!2828 = !DILocation(line: 198, column: 11, scope: !2735, inlinedAt: !2814)
!2829 = !DILocation(line: 966, column: 10, scope: !2755, inlinedAt: !2815)
!2830 = !DILocation(line: 967, column: 1, scope: !2755, inlinedAt: !2815)
!2831 = !DILocation(line: 978, column: 3, scope: !2806)
!2832 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !255, file: !255, line: 982, type: !2833, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!10, !12, !68, !11}
!2835 = !{!2836, !2837, !2838, !2839}
!2836 = !DILocalVariable(name: "arg", arg: 1, scope: !2832, file: !255, line: 982, type: !12)
!2837 = !DILocalVariable(name: "argsize", arg: 2, scope: !2832, file: !255, line: 982, type: !68)
!2838 = !DILocalVariable(name: "ch", arg: 3, scope: !2832, file: !255, line: 982, type: !11)
!2839 = !DILocalVariable(name: "options", scope: !2832, file: !255, line: 984, type: !303)
!2840 = !DILocation(line: 0, scope: !2832)
!2841 = !DILocation(line: 984, column: 3, scope: !2832)
!2842 = !DILocation(line: 984, column: 26, scope: !2832)
!2843 = !DILocation(line: 985, column: 13, scope: !2832)
!2844 = !{i64 0, i64 4, !1361, i64 4, i64 4, !1208, i64 8, i64 32, !1361, i64 40, i64 8, !1112, i64 48, i64 8, !1112}
!2845 = !DILocation(line: 0, scope: !1665, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 986, column: 3, scope: !2832)
!2847 = !DILocation(line: 156, column: 62, scope: !1665, inlinedAt: !2846)
!2848 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2846)
!2849 = !DILocation(line: 157, column: 15, scope: !1665, inlinedAt: !2846)
!2850 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2846)
!2851 = !DILocation(line: 158, column: 15, scope: !1665, inlinedAt: !2846)
!2852 = !DILocation(line: 158, column: 25, scope: !1665, inlinedAt: !2846)
!2853 = !DILocation(line: 159, column: 18, scope: !1665, inlinedAt: !2846)
!2854 = !DILocation(line: 159, column: 23, scope: !1665, inlinedAt: !2846)
!2855 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2846)
!2856 = !DILocation(line: 987, column: 10, scope: !2832)
!2857 = !DILocation(line: 988, column: 1, scope: !2832)
!2858 = !DILocation(line: 987, column: 3, scope: !2832)
!2859 = distinct !DISubprogram(name: "quotearg_char", scope: !255, file: !255, line: 991, type: !2860, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2862)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!10, !12, !11}
!2862 = !{!2863, !2864}
!2863 = !DILocalVariable(name: "arg", arg: 1, scope: !2859, file: !255, line: 991, type: !12)
!2864 = !DILocalVariable(name: "ch", arg: 2, scope: !2859, file: !255, line: 991, type: !11)
!2865 = !DILocation(line: 984, column: 26, scope: !2832, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 993, column: 10, scope: !2859)
!2867 = !DILocation(line: 0, scope: !2859)
!2868 = !DILocation(line: 0, scope: !2832, inlinedAt: !2866)
!2869 = !DILocation(line: 984, column: 3, scope: !2832, inlinedAt: !2866)
!2870 = !DILocation(line: 985, column: 13, scope: !2832, inlinedAt: !2866)
!2871 = !DILocation(line: 0, scope: !1665, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 986, column: 3, scope: !2832, inlinedAt: !2866)
!2873 = !DILocation(line: 156, column: 62, scope: !1665, inlinedAt: !2872)
!2874 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2872)
!2875 = !DILocation(line: 157, column: 15, scope: !1665, inlinedAt: !2872)
!2876 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2872)
!2877 = !DILocation(line: 158, column: 15, scope: !1665, inlinedAt: !2872)
!2878 = !DILocation(line: 158, column: 25, scope: !1665, inlinedAt: !2872)
!2879 = !DILocation(line: 159, column: 18, scope: !1665, inlinedAt: !2872)
!2880 = !DILocation(line: 159, column: 23, scope: !1665, inlinedAt: !2872)
!2881 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2872)
!2882 = !DILocation(line: 987, column: 10, scope: !2832, inlinedAt: !2866)
!2883 = !DILocation(line: 988, column: 1, scope: !2832, inlinedAt: !2866)
!2884 = !DILocation(line: 993, column: 3, scope: !2859)
!2885 = distinct !DISubprogram(name: "quotearg_colon", scope: !255, file: !255, line: 997, type: !88, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2886)
!2886 = !{!2887}
!2887 = !DILocalVariable(name: "arg", arg: 1, scope: !2885, file: !255, line: 997, type: !12)
!2888 = !DILocation(line: 984, column: 26, scope: !2832, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 993, column: 10, scope: !2859, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 999, column: 10, scope: !2885)
!2891 = !DILocation(line: 0, scope: !2885)
!2892 = !DILocation(line: 0, scope: !2859, inlinedAt: !2890)
!2893 = !DILocation(line: 0, scope: !2832, inlinedAt: !2889)
!2894 = !DILocation(line: 984, column: 3, scope: !2832, inlinedAt: !2889)
!2895 = !DILocation(line: 985, column: 13, scope: !2832, inlinedAt: !2889)
!2896 = !DILocation(line: 0, scope: !1665, inlinedAt: !2897)
!2897 = distinct !DILocation(line: 986, column: 3, scope: !2832, inlinedAt: !2889)
!2898 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2897)
!2899 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2897)
!2900 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2897)
!2901 = !DILocation(line: 987, column: 10, scope: !2832, inlinedAt: !2889)
!2902 = !DILocation(line: 988, column: 1, scope: !2832, inlinedAt: !2889)
!2903 = !DILocation(line: 999, column: 3, scope: !2885)
!2904 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !255, file: !255, line: 1003, type: !2713, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2905)
!2905 = !{!2906, !2907}
!2906 = !DILocalVariable(name: "arg", arg: 1, scope: !2904, file: !255, line: 1003, type: !12)
!2907 = !DILocalVariable(name: "argsize", arg: 2, scope: !2904, file: !255, line: 1003, type: !68)
!2908 = !DILocation(line: 984, column: 26, scope: !2832, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 1005, column: 10, scope: !2904)
!2910 = !DILocation(line: 0, scope: !2904)
!2911 = !DILocation(line: 0, scope: !2832, inlinedAt: !2909)
!2912 = !DILocation(line: 984, column: 3, scope: !2832, inlinedAt: !2909)
!2913 = !DILocation(line: 985, column: 13, scope: !2832, inlinedAt: !2909)
!2914 = !DILocation(line: 0, scope: !1665, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 986, column: 3, scope: !2832, inlinedAt: !2909)
!2916 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2915)
!2917 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2915)
!2918 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2915)
!2919 = !DILocation(line: 987, column: 10, scope: !2832, inlinedAt: !2909)
!2920 = !DILocation(line: 988, column: 1, scope: !2832, inlinedAt: !2909)
!2921 = !DILocation(line: 1005, column: 3, scope: !2904)
!2922 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !255, file: !255, line: 1009, type: !2724, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2923)
!2923 = !{!2924, !2925, !2926, !2927}
!2924 = !DILocalVariable(name: "n", arg: 1, scope: !2922, file: !255, line: 1009, type: !14)
!2925 = !DILocalVariable(name: "s", arg: 2, scope: !2922, file: !255, line: 1009, type: !257)
!2926 = !DILocalVariable(name: "arg", arg: 3, scope: !2922, file: !255, line: 1009, type: !12)
!2927 = !DILocalVariable(name: "options", scope: !2922, file: !255, line: 1011, type: !303)
!2928 = !DILocation(line: 195, column: 26, scope: !2735, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 1012, column: 13, scope: !2922)
!2930 = !DILocation(line: 0, scope: !2922)
!2931 = !DILocation(line: 1011, column: 3, scope: !2922)
!2932 = !DILocation(line: 1011, column: 26, scope: !2922)
!2933 = !DILocation(line: 1012, column: 13, scope: !2922)
!2934 = !DILocation(line: 0, scope: !2735, inlinedAt: !2929)
!2935 = !{!2936}
!2936 = distinct !{!2936, !2937, !"quoting_options_from_style: argument 0"}
!2937 = distinct !{!2937, !"quoting_options_from_style"}
!2938 = !DILocation(line: 196, column: 13, scope: !2747, inlinedAt: !2929)
!2939 = !DILocation(line: 196, column: 7, scope: !2735, inlinedAt: !2929)
!2940 = !DILocation(line: 197, column: 5, scope: !2747, inlinedAt: !2929)
!2941 = !DILocation(line: 0, scope: !1665, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1013, column: 3, scope: !2922)
!2943 = !DILocation(line: 156, column: 57, scope: !1665, inlinedAt: !2942)
!2944 = !DILocation(line: 158, column: 12, scope: !1665, inlinedAt: !2942)
!2945 = !DILocation(line: 159, column: 6, scope: !1665, inlinedAt: !2942)
!2946 = !DILocation(line: 1014, column: 10, scope: !2922)
!2947 = !DILocation(line: 1015, column: 1, scope: !2922)
!2948 = !DILocation(line: 1014, column: 3, scope: !2922)
!2949 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !255, file: !255, line: 1018, type: !2950, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!10, !14, !12, !12, !12}
!2952 = !{!2953, !2954, !2955, !2956}
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !255, line: 1018, type: !14)
!2954 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2949, file: !255, line: 1018, type: !12)
!2955 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2949, file: !255, line: 1019, type: !12)
!2956 = !DILocalVariable(name: "arg", arg: 4, scope: !2949, file: !255, line: 1019, type: !12)
!2957 = !DILocalVariable(name: "o", scope: !2958, file: !255, line: 1030, type: !303)
!2958 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !255, file: !255, line: 1026, type: !2959, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!10, !14, !12, !12, !12, !68}
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2957}
!2962 = !DILocalVariable(name: "n", arg: 1, scope: !2958, file: !255, line: 1026, type: !14)
!2963 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2958, file: !255, line: 1026, type: !12)
!2964 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2958, file: !255, line: 1027, type: !12)
!2965 = !DILocalVariable(name: "arg", arg: 4, scope: !2958, file: !255, line: 1028, type: !12)
!2966 = !DILocalVariable(name: "argsize", arg: 5, scope: !2958, file: !255, line: 1028, type: !68)
!2967 = !DILocation(line: 1030, column: 26, scope: !2958, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1021, column: 10, scope: !2949)
!2969 = !DILocation(line: 0, scope: !2949)
!2970 = !DILocation(line: 0, scope: !2958, inlinedAt: !2968)
!2971 = !DILocation(line: 1030, column: 3, scope: !2958, inlinedAt: !2968)
!2972 = !DILocation(line: 1030, column: 30, scope: !2958, inlinedAt: !2968)
!2973 = !DILocation(line: 0, scope: !1706, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 1031, column: 3, scope: !2958, inlinedAt: !2968)
!2975 = !DILocation(line: 184, column: 6, scope: !1706, inlinedAt: !2974)
!2976 = !DILocation(line: 184, column: 12, scope: !1706, inlinedAt: !2974)
!2977 = !DILocation(line: 185, column: 8, scope: !1720, inlinedAt: !2974)
!2978 = !DILocation(line: 185, column: 23, scope: !1720, inlinedAt: !2974)
!2979 = !DILocation(line: 185, column: 19, scope: !1720, inlinedAt: !2974)
!2980 = !DILocation(line: 186, column: 5, scope: !1720, inlinedAt: !2974)
!2981 = !DILocation(line: 187, column: 6, scope: !1706, inlinedAt: !2974)
!2982 = !DILocation(line: 187, column: 17, scope: !1706, inlinedAt: !2974)
!2983 = !DILocation(line: 188, column: 6, scope: !1706, inlinedAt: !2974)
!2984 = !DILocation(line: 188, column: 18, scope: !1706, inlinedAt: !2974)
!2985 = !DILocation(line: 1032, column: 10, scope: !2958, inlinedAt: !2968)
!2986 = !DILocation(line: 1033, column: 1, scope: !2958, inlinedAt: !2968)
!2987 = !DILocation(line: 1021, column: 3, scope: !2949)
!2988 = !DILocation(line: 0, scope: !2958)
!2989 = !DILocation(line: 1030, column: 3, scope: !2958)
!2990 = !DILocation(line: 1030, column: 26, scope: !2958)
!2991 = !DILocation(line: 1030, column: 30, scope: !2958)
!2992 = !DILocation(line: 0, scope: !1706, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 1031, column: 3, scope: !2958)
!2994 = !DILocation(line: 184, column: 6, scope: !1706, inlinedAt: !2993)
!2995 = !DILocation(line: 184, column: 12, scope: !1706, inlinedAt: !2993)
!2996 = !DILocation(line: 185, column: 8, scope: !1720, inlinedAt: !2993)
!2997 = !DILocation(line: 185, column: 23, scope: !1720, inlinedAt: !2993)
!2998 = !DILocation(line: 185, column: 19, scope: !1720, inlinedAt: !2993)
!2999 = !DILocation(line: 186, column: 5, scope: !1720, inlinedAt: !2993)
!3000 = !DILocation(line: 187, column: 6, scope: !1706, inlinedAt: !2993)
!3001 = !DILocation(line: 187, column: 17, scope: !1706, inlinedAt: !2993)
!3002 = !DILocation(line: 188, column: 6, scope: !1706, inlinedAt: !2993)
!3003 = !DILocation(line: 188, column: 18, scope: !1706, inlinedAt: !2993)
!3004 = !DILocation(line: 1032, column: 10, scope: !2958)
!3005 = !DILocation(line: 1033, column: 1, scope: !2958)
!3006 = !DILocation(line: 1032, column: 3, scope: !2958)
!3007 = distinct !DISubprogram(name: "quotearg_custom", scope: !255, file: !255, line: 1036, type: !3008, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!10, !12, !12, !12}
!3010 = !{!3011, !3012, !3013}
!3011 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3007, file: !255, line: 1036, type: !12)
!3012 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3007, file: !255, line: 1036, type: !12)
!3013 = !DILocalVariable(name: "arg", arg: 3, scope: !3007, file: !255, line: 1037, type: !12)
!3014 = !DILocation(line: 1030, column: 26, scope: !2958, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 1021, column: 10, scope: !2949, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 1039, column: 10, scope: !3007)
!3017 = !DILocation(line: 0, scope: !3007)
!3018 = !DILocation(line: 0, scope: !2949, inlinedAt: !3016)
!3019 = !DILocation(line: 0, scope: !2958, inlinedAt: !3015)
!3020 = !DILocation(line: 1030, column: 3, scope: !2958, inlinedAt: !3015)
!3021 = !DILocation(line: 1030, column: 30, scope: !2958, inlinedAt: !3015)
!3022 = !DILocation(line: 0, scope: !1706, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 1031, column: 3, scope: !2958, inlinedAt: !3015)
!3024 = !DILocation(line: 184, column: 6, scope: !1706, inlinedAt: !3023)
!3025 = !DILocation(line: 184, column: 12, scope: !1706, inlinedAt: !3023)
!3026 = !DILocation(line: 185, column: 8, scope: !1720, inlinedAt: !3023)
!3027 = !DILocation(line: 185, column: 23, scope: !1720, inlinedAt: !3023)
!3028 = !DILocation(line: 185, column: 19, scope: !1720, inlinedAt: !3023)
!3029 = !DILocation(line: 186, column: 5, scope: !1720, inlinedAt: !3023)
!3030 = !DILocation(line: 187, column: 6, scope: !1706, inlinedAt: !3023)
!3031 = !DILocation(line: 187, column: 17, scope: !1706, inlinedAt: !3023)
!3032 = !DILocation(line: 188, column: 6, scope: !1706, inlinedAt: !3023)
!3033 = !DILocation(line: 188, column: 18, scope: !1706, inlinedAt: !3023)
!3034 = !DILocation(line: 1032, column: 10, scope: !2958, inlinedAt: !3015)
!3035 = !DILocation(line: 1033, column: 1, scope: !2958, inlinedAt: !3015)
!3036 = !DILocation(line: 1039, column: 3, scope: !3007)
!3037 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !255, file: !255, line: 1043, type: !3038, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!10, !12, !12, !12, !68}
!3040 = !{!3041, !3042, !3043, !3044}
!3041 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3037, file: !255, line: 1043, type: !12)
!3042 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3037, file: !255, line: 1043, type: !12)
!3043 = !DILocalVariable(name: "arg", arg: 3, scope: !3037, file: !255, line: 1044, type: !12)
!3044 = !DILocalVariable(name: "argsize", arg: 4, scope: !3037, file: !255, line: 1044, type: !68)
!3045 = !DILocation(line: 1030, column: 26, scope: !2958, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 1046, column: 10, scope: !3037)
!3047 = !DILocation(line: 0, scope: !3037)
!3048 = !DILocation(line: 0, scope: !2958, inlinedAt: !3046)
!3049 = !DILocation(line: 1030, column: 3, scope: !2958, inlinedAt: !3046)
!3050 = !DILocation(line: 1030, column: 30, scope: !2958, inlinedAt: !3046)
!3051 = !DILocation(line: 0, scope: !1706, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 1031, column: 3, scope: !2958, inlinedAt: !3046)
!3053 = !DILocation(line: 184, column: 6, scope: !1706, inlinedAt: !3052)
!3054 = !DILocation(line: 184, column: 12, scope: !1706, inlinedAt: !3052)
!3055 = !DILocation(line: 185, column: 8, scope: !1720, inlinedAt: !3052)
!3056 = !DILocation(line: 185, column: 23, scope: !1720, inlinedAt: !3052)
!3057 = !DILocation(line: 185, column: 19, scope: !1720, inlinedAt: !3052)
!3058 = !DILocation(line: 186, column: 5, scope: !1720, inlinedAt: !3052)
!3059 = !DILocation(line: 187, column: 6, scope: !1706, inlinedAt: !3052)
!3060 = !DILocation(line: 187, column: 17, scope: !1706, inlinedAt: !3052)
!3061 = !DILocation(line: 188, column: 6, scope: !1706, inlinedAt: !3052)
!3062 = !DILocation(line: 188, column: 18, scope: !1706, inlinedAt: !3052)
!3063 = !DILocation(line: 1032, column: 10, scope: !2958, inlinedAt: !3046)
!3064 = !DILocation(line: 1033, column: 1, scope: !2958, inlinedAt: !3046)
!3065 = !DILocation(line: 1046, column: 3, scope: !3037)
!3066 = distinct !DISubprogram(name: "quote_n_mem", scope: !255, file: !255, line: 1061, type: !3067, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !3069)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!12, !14, !12, !68}
!3069 = !{!3070, !3071, !3072}
!3070 = !DILocalVariable(name: "n", arg: 1, scope: !3066, file: !255, line: 1061, type: !14)
!3071 = !DILocalVariable(name: "arg", arg: 2, scope: !3066, file: !255, line: 1061, type: !12)
!3072 = !DILocalVariable(name: "argsize", arg: 3, scope: !3066, file: !255, line: 1061, type: !68)
!3073 = !DILocation(line: 0, scope: !3066)
!3074 = !DILocation(line: 1063, column: 10, scope: !3066)
!3075 = !DILocation(line: 1063, column: 3, scope: !3066)
!3076 = distinct !DISubprogram(name: "quote_mem", scope: !255, file: !255, line: 1067, type: !3077, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!12, !12, !68}
!3079 = !{!3080, !3081}
!3080 = !DILocalVariable(name: "arg", arg: 1, scope: !3076, file: !255, line: 1067, type: !12)
!3081 = !DILocalVariable(name: "argsize", arg: 2, scope: !3076, file: !255, line: 1067, type: !68)
!3082 = !DILocation(line: 0, scope: !3076)
!3083 = !DILocation(line: 0, scope: !3066, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 1069, column: 10, scope: !3076)
!3085 = !DILocation(line: 1063, column: 10, scope: !3066, inlinedAt: !3084)
!3086 = !DILocation(line: 1069, column: 3, scope: !3076)
!3087 = distinct !DISubprogram(name: "quote_n", scope: !255, file: !255, line: 1073, type: !3088, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!12, !14, !12}
!3090 = !{!3091, !3092}
!3091 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !255, line: 1073, type: !14)
!3092 = !DILocalVariable(name: "arg", arg: 2, scope: !3087, file: !255, line: 1073, type: !12)
!3093 = !DILocation(line: 0, scope: !3087)
!3094 = !DILocation(line: 0, scope: !3066, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 1075, column: 10, scope: !3087)
!3096 = !DILocation(line: 1063, column: 10, scope: !3066, inlinedAt: !3095)
!3097 = !DILocation(line: 1075, column: 3, scope: !3087)
!3098 = distinct !DISubprogram(name: "quote", scope: !255, file: !255, line: 1079, type: !118, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !254, retainedNodes: !3099)
!3099 = !{!3100}
!3100 = !DILocalVariable(name: "arg", arg: 1, scope: !3098, file: !255, line: 1079, type: !12)
!3101 = !DILocation(line: 0, scope: !3098)
!3102 = !DILocation(line: 0, scope: !3087, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 1081, column: 10, scope: !3098)
!3104 = !DILocation(line: 0, scope: !3066, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1075, column: 10, scope: !3087, inlinedAt: !3103)
!3106 = !DILocation(line: 1063, column: 10, scope: !3066, inlinedAt: !3105)
!3107 = !DILocation(line: 1081, column: 3, scope: !3098)
!3108 = distinct !DISubprogram(name: "version_etc_arn", scope: !422, file: !422, line: 61, type: !3109, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3115)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !3111, !12, !12, !12, !3114, !68}
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3113, line: 7, baseType: !432)
!3113 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121}
!3116 = !DILocalVariable(name: "stream", arg: 1, scope: !3108, file: !422, line: 61, type: !3111)
!3117 = !DILocalVariable(name: "command_name", arg: 2, scope: !3108, file: !422, line: 62, type: !12)
!3118 = !DILocalVariable(name: "package", arg: 3, scope: !3108, file: !422, line: 62, type: !12)
!3119 = !DILocalVariable(name: "version", arg: 4, scope: !3108, file: !422, line: 63, type: !12)
!3120 = !DILocalVariable(name: "authors", arg: 5, scope: !3108, file: !422, line: 64, type: !3114)
!3121 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3108, file: !422, line: 64, type: !68)
!3122 = !DILocation(line: 0, scope: !3108)
!3123 = !DILocation(line: 66, column: 7, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3108, file: !422, line: 66, column: 7)
!3125 = !DILocation(line: 66, column: 7, scope: !3108)
!3126 = !DILocation(line: 67, column: 5, scope: !3124)
!3127 = !DILocation(line: 69, column: 5, scope: !3124)
!3128 = !DILocation(line: 83, column: 3, scope: !3108)
!3129 = !DILocation(line: 85, column: 3, scope: !3108)
!3130 = !DILocation(line: 88, column: 3, scope: !3108)
!3131 = !DILocation(line: 95, column: 3, scope: !3108)
!3132 = !DILocation(line: 97, column: 3, scope: !3108)
!3133 = !DILocation(line: 105, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3108, file: !422, line: 98, column: 5)
!3135 = !DILocation(line: 106, column: 7, scope: !3134)
!3136 = !DILocation(line: 109, column: 7, scope: !3134)
!3137 = !DILocation(line: 110, column: 7, scope: !3134)
!3138 = !DILocation(line: 113, column: 7, scope: !3134)
!3139 = !DILocation(line: 115, column: 7, scope: !3134)
!3140 = !DILocation(line: 120, column: 7, scope: !3134)
!3141 = !DILocation(line: 122, column: 7, scope: !3134)
!3142 = !DILocation(line: 127, column: 7, scope: !3134)
!3143 = !DILocation(line: 129, column: 7, scope: !3134)
!3144 = !DILocation(line: 134, column: 7, scope: !3134)
!3145 = !DILocation(line: 137, column: 7, scope: !3134)
!3146 = !DILocation(line: 142, column: 7, scope: !3134)
!3147 = !DILocation(line: 145, column: 7, scope: !3134)
!3148 = !DILocation(line: 150, column: 7, scope: !3134)
!3149 = !DILocation(line: 154, column: 7, scope: !3134)
!3150 = !DILocation(line: 159, column: 7, scope: !3134)
!3151 = !DILocation(line: 163, column: 7, scope: !3134)
!3152 = !DILocation(line: 170, column: 7, scope: !3134)
!3153 = !DILocation(line: 174, column: 7, scope: !3134)
!3154 = !DILocation(line: 176, column: 1, scope: !3108)
!3155 = distinct !DISubprogram(name: "version_etc_ar", scope: !422, file: !422, line: 183, type: !3156, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !3111, !12, !12, !12, !3114}
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164}
!3159 = !DILocalVariable(name: "stream", arg: 1, scope: !3155, file: !422, line: 183, type: !3111)
!3160 = !DILocalVariable(name: "command_name", arg: 2, scope: !3155, file: !422, line: 184, type: !12)
!3161 = !DILocalVariable(name: "package", arg: 3, scope: !3155, file: !422, line: 184, type: !12)
!3162 = !DILocalVariable(name: "version", arg: 4, scope: !3155, file: !422, line: 185, type: !12)
!3163 = !DILocalVariable(name: "authors", arg: 5, scope: !3155, file: !422, line: 185, type: !3114)
!3164 = !DILocalVariable(name: "n_authors", scope: !3155, file: !422, line: 187, type: !68)
!3165 = !DILocation(line: 0, scope: !3155)
!3166 = !DILocation(line: 189, column: 8, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3155, file: !422, line: 189, column: 3)
!3168 = !DILocation(line: 0, scope: !3167)
!3169 = !DILocation(line: 189, column: 23, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3167, file: !422, line: 189, column: 3)
!3171 = !DILocation(line: 189, column: 3, scope: !3167)
!3172 = !DILocation(line: 189, column: 52, scope: !3170)
!3173 = distinct !{!3173, !3171, !3174}
!3174 = !DILocation(line: 190, column: 5, scope: !3167)
!3175 = !DILocation(line: 191, column: 3, scope: !3155)
!3176 = !DILocation(line: 192, column: 1, scope: !3155)
!3177 = distinct !DISubprogram(name: "version_etc_va", scope: !422, file: !422, line: 199, type: !3178, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3187)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !3111, !12, !12, !12, !3180}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !422, line: 192, size: 192, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3186}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3181, file: !422, line: 192, baseType: !132, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3181, file: !422, line: 192, baseType: !132, size: 32, offset: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3181, file: !422, line: 192, baseType: !66, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3181, file: !422, line: 192, baseType: !66, size: 64, offset: 128)
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193, !3194}
!3188 = !DILocalVariable(name: "stream", arg: 1, scope: !3177, file: !422, line: 199, type: !3111)
!3189 = !DILocalVariable(name: "command_name", arg: 2, scope: !3177, file: !422, line: 200, type: !12)
!3190 = !DILocalVariable(name: "package", arg: 3, scope: !3177, file: !422, line: 200, type: !12)
!3191 = !DILocalVariable(name: "version", arg: 4, scope: !3177, file: !422, line: 201, type: !12)
!3192 = !DILocalVariable(name: "authors", arg: 5, scope: !3177, file: !422, line: 201, type: !3180)
!3193 = !DILocalVariable(name: "n_authors", scope: !3177, file: !422, line: 203, type: !68)
!3194 = !DILocalVariable(name: "authtab", scope: !3177, file: !422, line: 204, type: !3195)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 640, elements: !366)
!3196 = !DILocation(line: 0, scope: !3177)
!3197 = !DILocation(line: 204, column: 3, scope: !3177)
!3198 = !DILocation(line: 204, column: 15, scope: !3177)
!3199 = !DILocation(line: 0, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !422, line: 206, column: 3)
!3201 = distinct !DILexicalBlock(scope: !3177, file: !422, line: 206, column: 3)
!3202 = !DILocation(line: 208, column: 35, scope: !3200)
!3203 = !DILocation(line: 208, column: 14, scope: !3200)
!3204 = !DILocation(line: 208, column: 33, scope: !3200)
!3205 = !DILocation(line: 208, column: 67, scope: !3200)
!3206 = !DILocation(line: 206, column: 3, scope: !3201)
!3207 = !DILocation(line: 0, scope: !3201)
!3208 = !DILocation(line: 211, column: 3, scope: !3177)
!3209 = !DILocation(line: 213, column: 1, scope: !3177)
!3210 = distinct !DISubprogram(name: "version_etc", scope: !422, file: !422, line: 230, type: !3211, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3111, !12, !12, !12, null}
!3213 = !{!3214, !3215, !3216, !3217, !3218}
!3214 = !DILocalVariable(name: "stream", arg: 1, scope: !3210, file: !422, line: 230, type: !3111)
!3215 = !DILocalVariable(name: "command_name", arg: 2, scope: !3210, file: !422, line: 231, type: !12)
!3216 = !DILocalVariable(name: "package", arg: 3, scope: !3210, file: !422, line: 231, type: !12)
!3217 = !DILocalVariable(name: "version", arg: 4, scope: !3210, file: !422, line: 232, type: !12)
!3218 = !DILocalVariable(name: "authors", scope: !3210, file: !422, line: 234, type: !3219)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !16, line: 52, baseType: !3220)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3221, line: 32, baseType: !3222)
!3221 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !422, line: 234, baseType: !3223)
!3223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3181, size: 192, elements: !51)
!3224 = !DILocation(line: 0, scope: !3210)
!3225 = !DILocation(line: 234, column: 3, scope: !3210)
!3226 = !DILocation(line: 234, column: 11, scope: !3210)
!3227 = !DILocation(line: 236, column: 3, scope: !3210)
!3228 = !DILocation(line: 237, column: 3, scope: !3210)
!3229 = !DILocation(line: 238, column: 3, scope: !3210)
!3230 = !DILocation(line: 239, column: 1, scope: !3210)
!3231 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !422, file: !422, line: 242, type: !95, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !4)
!3232 = !DILocation(line: 244, column: 3, scope: !3231)
!3233 = !DILocation(line: 249, column: 3, scope: !3231)
!3234 = !DILocation(line: 255, column: 3, scope: !3231)
!3235 = !DILocation(line: 260, column: 3, scope: !3231)
!3236 = !DILocation(line: 262, column: 1, scope: !3231)
!3237 = distinct !DISubprogram(name: "xnmalloc", scope: !292, file: !292, line: 99, type: !3238, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!66, !68, !68}
!3240 = !{!3241, !3242}
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !292, line: 99, type: !68)
!3242 = !DILocalVariable(name: "s", arg: 2, scope: !3237, file: !292, line: 99, type: !68)
!3243 = !DILocation(line: 0, scope: !3237)
!3244 = !DILocation(line: 101, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3237, file: !292, line: 101, column: 7)
!3246 = !DILocation(line: 101, column: 7, scope: !3237)
!3247 = !DILocation(line: 102, column: 5, scope: !3245)
!3248 = !DILocation(line: 103, column: 21, scope: !3237)
!3249 = !DILocalVariable(name: "n", arg: 1, scope: !3250, file: !464, line: 39, type: !68)
!3250 = distinct !DISubprogram(name: "xmalloc", scope: !464, file: !464, line: 39, type: !3251, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!66, !68}
!3253 = !{!3249, !3254}
!3254 = !DILocalVariable(name: "p", scope: !3250, file: !464, line: 41, type: !66)
!3255 = !DILocation(line: 0, scope: !3250, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 103, column: 10, scope: !3237)
!3257 = !DILocation(line: 41, column: 13, scope: !3250, inlinedAt: !3256)
!3258 = !DILocation(line: 42, column: 8, scope: !3259, inlinedAt: !3256)
!3259 = distinct !DILexicalBlock(scope: !3250, file: !464, line: 42, column: 7)
!3260 = !DILocation(line: 42, column: 15, scope: !3259, inlinedAt: !3256)
!3261 = !DILocation(line: 42, column: 10, scope: !3259, inlinedAt: !3256)
!3262 = !DILocation(line: 43, column: 5, scope: !3259, inlinedAt: !3256)
!3263 = !DILocation(line: 103, column: 3, scope: !3237)
!3264 = !DILocation(line: 0, scope: !3250)
!3265 = !DILocation(line: 41, column: 13, scope: !3250)
!3266 = !DILocation(line: 42, column: 8, scope: !3259)
!3267 = !DILocation(line: 42, column: 15, scope: !3259)
!3268 = !DILocation(line: 42, column: 10, scope: !3259)
!3269 = !DILocation(line: 43, column: 5, scope: !3259)
!3270 = !DILocation(line: 44, column: 3, scope: !3250)
!3271 = distinct !DISubprogram(name: "xnrealloc", scope: !292, file: !292, line: 112, type: !3272, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!66, !66, !68, !68}
!3274 = !{!3275, !3276, !3277}
!3275 = !DILocalVariable(name: "p", arg: 1, scope: !3271, file: !292, line: 112, type: !66)
!3276 = !DILocalVariable(name: "n", arg: 2, scope: !3271, file: !292, line: 112, type: !68)
!3277 = !DILocalVariable(name: "s", arg: 3, scope: !3271, file: !292, line: 112, type: !68)
!3278 = !DILocation(line: 0, scope: !3271)
!3279 = !DILocation(line: 114, column: 7, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3271, file: !292, line: 114, column: 7)
!3281 = !DILocation(line: 114, column: 7, scope: !3271)
!3282 = !DILocation(line: 115, column: 5, scope: !3280)
!3283 = !DILocation(line: 116, column: 25, scope: !3271)
!3284 = !DILocalVariable(name: "p", arg: 1, scope: !3285, file: !464, line: 51, type: !66)
!3285 = distinct !DISubprogram(name: "xrealloc", scope: !464, file: !464, line: 51, type: !3286, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!66, !66, !68}
!3288 = !{!3284, !3289}
!3289 = !DILocalVariable(name: "n", arg: 2, scope: !3285, file: !464, line: 51, type: !68)
!3290 = !DILocation(line: 0, scope: !3285, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 116, column: 10, scope: !3271)
!3292 = !DILocation(line: 53, column: 8, scope: !3293, inlinedAt: !3291)
!3293 = distinct !DILexicalBlock(scope: !3285, file: !464, line: 53, column: 7)
!3294 = !DILocation(line: 53, column: 13, scope: !3293, inlinedAt: !3291)
!3295 = !DILocation(line: 53, column: 10, scope: !3293, inlinedAt: !3291)
!3296 = !DILocation(line: 57, column: 7, scope: !3297, inlinedAt: !3291)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !464, line: 54, column: 5)
!3298 = !DILocation(line: 58, column: 7, scope: !3297, inlinedAt: !3291)
!3299 = !DILocation(line: 61, column: 7, scope: !3285, inlinedAt: !3291)
!3300 = !DILocation(line: 62, column: 8, scope: !3301, inlinedAt: !3291)
!3301 = distinct !DILexicalBlock(scope: !3285, file: !464, line: 62, column: 7)
!3302 = !DILocation(line: 62, column: 13, scope: !3301, inlinedAt: !3291)
!3303 = !DILocation(line: 62, column: 10, scope: !3301, inlinedAt: !3291)
!3304 = !DILocation(line: 63, column: 5, scope: !3301, inlinedAt: !3291)
!3305 = !DILocation(line: 116, column: 3, scope: !3271)
!3306 = !DILocation(line: 0, scope: !3285)
!3307 = !DILocation(line: 53, column: 8, scope: !3293)
!3308 = !DILocation(line: 53, column: 13, scope: !3293)
!3309 = !DILocation(line: 53, column: 10, scope: !3293)
!3310 = !DILocation(line: 57, column: 7, scope: !3297)
!3311 = !DILocation(line: 58, column: 7, scope: !3297)
!3312 = !DILocation(line: 61, column: 7, scope: !3285)
!3313 = !DILocation(line: 62, column: 8, scope: !3301)
!3314 = !DILocation(line: 62, column: 13, scope: !3301)
!3315 = !DILocation(line: 62, column: 10, scope: !3301)
!3316 = !DILocation(line: 63, column: 5, scope: !3301)
!3317 = !DILocation(line: 65, column: 1, scope: !3285)
!3318 = !DILocation(line: 0, scope: !467)
!3319 = !DILocation(line: 176, column: 14, scope: !467)
!3320 = !DILocation(line: 178, column: 9, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !467, file: !292, line: 178, column: 7)
!3322 = !DILocation(line: 178, column: 7, scope: !467)
!3323 = !DILocation(line: 180, column: 13, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !292, line: 180, column: 11)
!3325 = distinct !DILexicalBlock(scope: !3321, file: !292, line: 179, column: 5)
!3326 = !DILocation(line: 180, column: 11, scope: !3325)
!3327 = !DILocation(line: 188, column: 30, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3324, file: !292, line: 181, column: 9)
!3329 = !DILocation(line: 189, column: 16, scope: !3328)
!3330 = !DILocation(line: 189, column: 13, scope: !3328)
!3331 = !DILocation(line: 190, column: 9, scope: !3328)
!3332 = !DILocation(line: 191, column: 11, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3325, file: !292, line: 191, column: 11)
!3334 = !DILocation(line: 191, column: 11, scope: !3325)
!3335 = !DILocation(line: 206, column: 7, scope: !467)
!3336 = !DILocation(line: 207, column: 25, scope: !467)
!3337 = !DILocation(line: 0, scope: !3285, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 207, column: 10, scope: !467)
!3339 = !DILocation(line: 53, column: 10, scope: !3293, inlinedAt: !3338)
!3340 = !DILocation(line: 192, column: 9, scope: !3333)
!3341 = !DILocation(line: 200, column: 69, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !292, line: 200, column: 11)
!3343 = distinct !DILexicalBlock(scope: !3321, file: !292, line: 195, column: 5)
!3344 = !DILocation(line: 201, column: 11, scope: !3342)
!3345 = !DILocation(line: 200, column: 11, scope: !3343)
!3346 = !DILocation(line: 202, column: 9, scope: !3342)
!3347 = !DILocation(line: 203, column: 14, scope: !3343)
!3348 = !DILocation(line: 203, column: 18, scope: !3343)
!3349 = !DILocation(line: 203, column: 9, scope: !3343)
!3350 = !DILocation(line: 53, column: 8, scope: !3293, inlinedAt: !3338)
!3351 = !DILocation(line: 57, column: 7, scope: !3297, inlinedAt: !3338)
!3352 = !DILocation(line: 58, column: 7, scope: !3297, inlinedAt: !3338)
!3353 = !DILocation(line: 61, column: 7, scope: !3285, inlinedAt: !3338)
!3354 = !DILocation(line: 62, column: 8, scope: !3301, inlinedAt: !3338)
!3355 = !DILocation(line: 62, column: 13, scope: !3301, inlinedAt: !3338)
!3356 = !DILocation(line: 62, column: 10, scope: !3301, inlinedAt: !3338)
!3357 = !DILocation(line: 63, column: 5, scope: !3301, inlinedAt: !3338)
!3358 = !DILocation(line: 207, column: 3, scope: !467)
!3359 = distinct !DISubprogram(name: "xcharalloc", scope: !292, file: !292, line: 216, type: !2521, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3360)
!3360 = !{!3361}
!3361 = !DILocalVariable(name: "n", arg: 1, scope: !3359, file: !292, line: 216, type: !68)
!3362 = !DILocation(line: 0, scope: !3359)
!3363 = !DILocation(line: 0, scope: !3250, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 218, column: 10, scope: !3359)
!3365 = !DILocation(line: 41, column: 13, scope: !3250, inlinedAt: !3364)
!3366 = !DILocation(line: 42, column: 8, scope: !3259, inlinedAt: !3364)
!3367 = !DILocation(line: 42, column: 15, scope: !3259, inlinedAt: !3364)
!3368 = !DILocation(line: 42, column: 10, scope: !3259, inlinedAt: !3364)
!3369 = !DILocation(line: 43, column: 5, scope: !3259, inlinedAt: !3364)
!3370 = !DILocation(line: 218, column: 3, scope: !3359)
!3371 = distinct !DISubprogram(name: "x2realloc", scope: !464, file: !464, line: 74, type: !3372, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!66, !66, !470}
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "p", arg: 1, scope: !3371, file: !464, line: 74, type: !66)
!3376 = !DILocalVariable(name: "pn", arg: 2, scope: !3371, file: !464, line: 74, type: !470)
!3377 = !DILocation(line: 0, scope: !3371)
!3378 = !DILocation(line: 0, scope: !467, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 76, column: 10, scope: !3371)
!3380 = !DILocation(line: 176, column: 14, scope: !467, inlinedAt: !3379)
!3381 = !DILocation(line: 178, column: 9, scope: !3321, inlinedAt: !3379)
!3382 = !DILocation(line: 178, column: 7, scope: !467, inlinedAt: !3379)
!3383 = !DILocation(line: 180, column: 13, scope: !3324, inlinedAt: !3379)
!3384 = !DILocation(line: 180, column: 11, scope: !3325, inlinedAt: !3379)
!3385 = !DILocation(line: 191, column: 11, scope: !3333, inlinedAt: !3379)
!3386 = !DILocation(line: 191, column: 11, scope: !3325, inlinedAt: !3379)
!3387 = !DILocation(line: 206, column: 7, scope: !467, inlinedAt: !3379)
!3388 = !DILocation(line: 0, scope: !3285, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 207, column: 10, scope: !467, inlinedAt: !3379)
!3390 = !DILocation(line: 53, column: 10, scope: !3293, inlinedAt: !3389)
!3391 = !DILocation(line: 192, column: 9, scope: !3333, inlinedAt: !3379)
!3392 = !DILocation(line: 201, column: 11, scope: !3342, inlinedAt: !3379)
!3393 = !DILocation(line: 200, column: 11, scope: !3343, inlinedAt: !3379)
!3394 = !DILocation(line: 202, column: 9, scope: !3342, inlinedAt: !3379)
!3395 = !DILocation(line: 203, column: 14, scope: !3343, inlinedAt: !3379)
!3396 = !DILocation(line: 203, column: 18, scope: !3343, inlinedAt: !3379)
!3397 = !DILocation(line: 203, column: 9, scope: !3343, inlinedAt: !3379)
!3398 = !DILocation(line: 53, column: 8, scope: !3293, inlinedAt: !3389)
!3399 = !DILocation(line: 57, column: 7, scope: !3297, inlinedAt: !3389)
!3400 = !DILocation(line: 58, column: 7, scope: !3297, inlinedAt: !3389)
!3401 = !DILocation(line: 61, column: 7, scope: !3285, inlinedAt: !3389)
!3402 = !DILocation(line: 62, column: 8, scope: !3301, inlinedAt: !3389)
!3403 = !DILocation(line: 62, column: 13, scope: !3301, inlinedAt: !3389)
!3404 = !DILocation(line: 62, column: 10, scope: !3301, inlinedAt: !3389)
!3405 = !DILocation(line: 63, column: 5, scope: !3301, inlinedAt: !3389)
!3406 = !DILocation(line: 76, column: 3, scope: !3371)
!3407 = distinct !DISubprogram(name: "xzalloc", scope: !464, file: !464, line: 84, type: !3251, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3408)
!3408 = !{!3409}
!3409 = !DILocalVariable(name: "n", arg: 1, scope: !3407, file: !464, line: 84, type: !68)
!3410 = !DILocation(line: 0, scope: !3407)
!3411 = !DILocalVariable(name: "n", arg: 1, scope: !3412, file: !464, line: 93, type: !68)
!3412 = distinct !DISubprogram(name: "xcalloc", scope: !464, file: !464, line: 93, type: !3238, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3413)
!3413 = !{!3411, !3414, !3415}
!3414 = !DILocalVariable(name: "s", arg: 2, scope: !3412, file: !464, line: 93, type: !68)
!3415 = !DILocalVariable(name: "p", scope: !3412, file: !464, line: 95, type: !66)
!3416 = !DILocation(line: 0, scope: !3412, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 86, column: 10, scope: !3407)
!3418 = !DILocation(line: 100, column: 7, scope: !3419, inlinedAt: !3417)
!3419 = distinct !DILexicalBlock(scope: !3412, file: !464, line: 100, column: 7)
!3420 = !DILocation(line: 101, column: 7, scope: !3419, inlinedAt: !3417)
!3421 = !DILocation(line: 101, column: 18, scope: !3419, inlinedAt: !3417)
!3422 = !DILocation(line: 101, column: 16, scope: !3419, inlinedAt: !3417)
!3423 = !DILocation(line: 100, column: 7, scope: !3412, inlinedAt: !3417)
!3424 = !DILocation(line: 102, column: 5, scope: !3419, inlinedAt: !3417)
!3425 = !DILocation(line: 86, column: 3, scope: !3407)
!3426 = !DILocation(line: 0, scope: !3412)
!3427 = !DILocation(line: 100, column: 7, scope: !3419)
!3428 = !DILocation(line: 101, column: 7, scope: !3419)
!3429 = !DILocation(line: 101, column: 18, scope: !3419)
!3430 = !DILocation(line: 101, column: 16, scope: !3419)
!3431 = !DILocation(line: 100, column: 7, scope: !3412)
!3432 = !DILocation(line: 102, column: 5, scope: !3419)
!3433 = !DILocation(line: 103, column: 3, scope: !3412)
!3434 = distinct !DISubprogram(name: "xmemdup", scope: !464, file: !464, line: 111, type: !3435, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!66, !295, !68}
!3437 = !{!3438, !3439}
!3438 = !DILocalVariable(name: "p", arg: 1, scope: !3434, file: !464, line: 111, type: !295)
!3439 = !DILocalVariable(name: "s", arg: 2, scope: !3434, file: !464, line: 111, type: !68)
!3440 = !DILocation(line: 0, scope: !3434)
!3441 = !DILocation(line: 0, scope: !3250, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 113, column: 18, scope: !3434)
!3443 = !DILocation(line: 41, column: 13, scope: !3250, inlinedAt: !3442)
!3444 = !DILocation(line: 42, column: 8, scope: !3259, inlinedAt: !3442)
!3445 = !DILocation(line: 42, column: 15, scope: !3259, inlinedAt: !3442)
!3446 = !DILocation(line: 42, column: 10, scope: !3259, inlinedAt: !3442)
!3447 = !DILocation(line: 43, column: 5, scope: !3259, inlinedAt: !3442)
!3448 = !DILocalVariable(name: "__dest", arg: 1, scope: !3449, file: !2054, line: 31, type: !3452)
!3449 = distinct !DISubprogram(name: "memcpy", scope: !2054, file: !2054, line: 31, type: !3450, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3454)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!66, !3452, !3453, !68}
!3452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!3453 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !295)
!3454 = !{!3448, !3455, !3456}
!3455 = !DILocalVariable(name: "__src", arg: 2, scope: !3449, file: !2054, line: 31, type: !3453)
!3456 = !DILocalVariable(name: "__len", arg: 3, scope: !3449, file: !2054, line: 31, type: !68)
!3457 = !DILocation(line: 0, scope: !3449, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 113, column: 10, scope: !3434)
!3459 = !DILocation(line: 34, column: 10, scope: !3449, inlinedAt: !3458)
!3460 = !DILocation(line: 113, column: 3, scope: !3434)
!3461 = distinct !DISubprogram(name: "xstrdup", scope: !464, file: !464, line: 119, type: !88, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3462)
!3462 = !{!3463}
!3463 = !DILocalVariable(name: "string", arg: 1, scope: !3461, file: !464, line: 119, type: !12)
!3464 = !DILocation(line: 0, scope: !3461)
!3465 = !DILocation(line: 121, column: 27, scope: !3461)
!3466 = !DILocation(line: 121, column: 43, scope: !3461)
!3467 = !DILocation(line: 0, scope: !3434, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 121, column: 10, scope: !3461)
!3469 = !DILocation(line: 0, scope: !3250, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 113, column: 18, scope: !3434, inlinedAt: !3468)
!3471 = !DILocation(line: 41, column: 13, scope: !3250, inlinedAt: !3470)
!3472 = !DILocation(line: 42, column: 8, scope: !3259, inlinedAt: !3470)
!3473 = !DILocation(line: 42, column: 15, scope: !3259, inlinedAt: !3470)
!3474 = !DILocation(line: 42, column: 10, scope: !3259, inlinedAt: !3470)
!3475 = !DILocation(line: 43, column: 5, scope: !3259, inlinedAt: !3470)
!3476 = !DILocation(line: 0, scope: !3449, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 113, column: 10, scope: !3434, inlinedAt: !3468)
!3478 = !DILocation(line: 34, column: 10, scope: !3449, inlinedAt: !3477)
!3479 = !DILocation(line: 121, column: 3, scope: !3461)
!3480 = distinct !DISubprogram(name: "xalloc_die", scope: !485, file: !485, line: 32, type: !95, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4)
!3481 = !DILocation(line: 34, column: 10, scope: !3480)
!3482 = !DILocation(line: 34, column: 33, scope: !3480)
!3483 = !DILocation(line: 34, column: 3, scope: !3480)
!3484 = !DILocation(line: 40, column: 3, scope: !3480)
!3485 = distinct !DISubprogram(name: "rpl_calloc", scope: !488, file: !488, line: 42, type: !3238, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3486)
!3486 = !{!3487, !3488, !3489, !3490}
!3487 = !DILocalVariable(name: "n", arg: 1, scope: !3485, file: !488, line: 42, type: !68)
!3488 = !DILocalVariable(name: "s", arg: 2, scope: !3485, file: !488, line: 42, type: !68)
!3489 = !DILocalVariable(name: "result", scope: !3485, file: !488, line: 44, type: !66)
!3490 = !DILocalVariable(name: "bytes", scope: !3491, file: !488, line: 56, type: !68)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !488, line: 53, column: 5)
!3492 = distinct !DILexicalBlock(scope: !3485, file: !488, line: 47, column: 7)
!3493 = !DILocation(line: 0, scope: !3485)
!3494 = !DILocation(line: 47, column: 9, scope: !3492)
!3495 = !DILocation(line: 47, column: 19, scope: !3492)
!3496 = !DILocation(line: 47, column: 14, scope: !3492)
!3497 = !DILocation(line: 0, scope: !3491)
!3498 = !DILocation(line: 57, column: 21, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !488, line: 57, column: 11)
!3500 = !DILocation(line: 57, column: 11, scope: !3491)
!3501 = !DILocation(line: 59, column: 11, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3499, file: !488, line: 58, column: 9)
!3503 = !DILocation(line: 59, column: 17, scope: !3502)
!3504 = !DILocation(line: 65, column: 12, scope: !3485)
!3505 = !DILocation(line: 72, column: 3, scope: !3485)
!3506 = !DILocation(line: 73, column: 1, scope: !3485)
!3507 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !491, file: !491, line: 86, type: !3508, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !3514)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!68, !3510, !12, !68, !3511}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1796, line: 6, baseType: !3513)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !325, line: 21, baseType: !497)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521}
!3515 = !DILocalVariable(name: "pwc", arg: 1, scope: !3507, file: !491, line: 86, type: !3510)
!3516 = !DILocalVariable(name: "s", arg: 2, scope: !3507, file: !491, line: 86, type: !12)
!3517 = !DILocalVariable(name: "n", arg: 3, scope: !3507, file: !491, line: 86, type: !68)
!3518 = !DILocalVariable(name: "ps", arg: 4, scope: !3507, file: !491, line: 86, type: !3511)
!3519 = !DILocalVariable(name: "ret", scope: !3507, file: !491, line: 88, type: !68)
!3520 = !DILocalVariable(name: "wc", scope: !3507, file: !491, line: 89, type: !1800)
!3521 = !DILocalVariable(name: "uc", scope: !3522, file: !491, line: 156, type: !1673)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !491, line: 155, column: 5)
!3523 = distinct !DILexicalBlock(scope: !3507, file: !491, line: 154, column: 7)
!3524 = !DILocation(line: 0, scope: !3507)
!3525 = !DILocation(line: 89, column: 3, scope: !3507)
!3526 = !DILocation(line: 105, column: 9, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3507, file: !491, line: 105, column: 7)
!3528 = !DILocation(line: 105, column: 7, scope: !3507)
!3529 = !DILocation(line: 145, column: 9, scope: !3507)
!3530 = !DILocation(line: 154, column: 19, scope: !3523)
!3531 = !DILocation(line: 154, column: 31, scope: !3523)
!3532 = !DILocation(line: 154, column: 26, scope: !3523)
!3533 = !DILocation(line: 154, column: 41, scope: !3523)
!3534 = !DILocation(line: 154, column: 7, scope: !3507)
!3535 = !DILocation(line: 156, column: 26, scope: !3522)
!3536 = !DILocation(line: 0, scope: !3522)
!3537 = !DILocation(line: 157, column: 14, scope: !3522)
!3538 = !DILocation(line: 157, column: 12, scope: !3522)
!3539 = !DILocation(line: 163, column: 1, scope: !3507)
!3540 = distinct !DISubprogram(name: "str2sig", scope: !403, file: !403, line: 304, type: !419, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3541)
!3541 = !{!3542, !3543}
!3542 = !DILocalVariable(name: "signame", arg: 1, scope: !3540, file: !403, line: 304, type: !12)
!3543 = !DILocalVariable(name: "signum", arg: 2, scope: !3540, file: !403, line: 304, type: !110)
!3544 = !DILocation(line: 0, scope: !3540)
!3545 = !DILocalVariable(name: "signame", arg: 1, scope: !3546, file: !403, line: 261, type: !12)
!3546 = distinct !DISubprogram(name: "str2signum", scope: !403, file: !403, line: 261, type: !134, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3547)
!3547 = !{!3545, !3548, !3551, !3552, !3554, !3556, !3557, !3558, !3561}
!3548 = !DILocalVariable(name: "endp", scope: !3549, file: !403, line: 265, type: !10)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !403, line: 264, column: 5)
!3550 = distinct !DILexicalBlock(scope: !3546, file: !403, line: 263, column: 7)
!3551 = !DILocalVariable(name: "n", scope: !3549, file: !403, line: 266, type: !44)
!3552 = !DILocalVariable(name: "i", scope: !3553, file: !403, line: 272, type: !132)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !403, line: 271, column: 5)
!3554 = !DILocalVariable(name: "endp", scope: !3555, file: !403, line: 278, type: !10)
!3555 = distinct !DILexicalBlock(scope: !3553, file: !403, line: 277, column: 7)
!3556 = !DILocalVariable(name: "rtmin", scope: !3555, file: !403, line: 279, type: !14)
!3557 = !DILocalVariable(name: "rtmax", scope: !3555, file: !403, line: 280, type: !14)
!3558 = !DILocalVariable(name: "n", scope: !3559, file: !403, line: 284, type: !44)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !403, line: 283, column: 11)
!3560 = distinct !DILexicalBlock(scope: !3555, file: !403, line: 282, column: 13)
!3561 = !DILocalVariable(name: "n", scope: !3562, file: !403, line: 290, type: !44)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !403, line: 289, column: 11)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !403, line: 288, column: 18)
!3564 = !DILocation(line: 0, scope: !3546, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 306, column: 13, scope: !3540)
!3566 = !DILocation(line: 263, column: 7, scope: !3550, inlinedAt: !3565)
!3567 = !DILocation(line: 263, column: 7, scope: !3546, inlinedAt: !3565)
!3568 = !DILocation(line: 265, column: 7, scope: !3549, inlinedAt: !3565)
!3569 = !DILocation(line: 0, scope: !3549, inlinedAt: !3565)
!3570 = !DILocation(line: 266, column: 20, scope: !3549, inlinedAt: !3565)
!3571 = !DILocation(line: 267, column: 14, scope: !3572, inlinedAt: !3565)
!3572 = distinct !DILexicalBlock(scope: !3549, file: !403, line: 267, column: 11)
!3573 = !DILocation(line: 267, column: 13, scope: !3572, inlinedAt: !3565)
!3574 = !DILocation(line: 267, column: 24, scope: !3572, inlinedAt: !3565)
!3575 = !DILocation(line: 268, column: 16, scope: !3572, inlinedAt: !3565)
!3576 = !DILocation(line: 267, column: 19, scope: !3572, inlinedAt: !3565)
!3577 = !DILocation(line: 269, column: 5, scope: !3550, inlinedAt: !3565)
!3578 = !DILocation(line: 273, column: 41, scope: !3579, inlinedAt: !3565)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !403, line: 273, column: 7)
!3580 = distinct !DILexicalBlock(scope: !3553, file: !403, line: 273, column: 7)
!3581 = !DILocation(line: 0, scope: !3553, inlinedAt: !3565)
!3582 = !DILocation(line: 273, column: 21, scope: !3579, inlinedAt: !3565)
!3583 = !DILocation(line: 273, column: 7, scope: !3580, inlinedAt: !3565)
!3584 = distinct !{!3584, !3583, !3585}
!3585 = !DILocation(line: 275, column: 35, scope: !3580, inlinedAt: !3565)
!3586 = !DILocation(line: 274, column: 21, scope: !3587, inlinedAt: !3565)
!3587 = distinct !DILexicalBlock(scope: !3579, file: !403, line: 274, column: 13)
!3588 = !DILocation(line: 274, column: 13, scope: !3587, inlinedAt: !3565)
!3589 = !DILocation(line: 274, column: 53, scope: !3587, inlinedAt: !3565)
!3590 = !DILocation(line: 274, column: 13, scope: !3579, inlinedAt: !3565)
!3591 = !DILocation(line: 273, column: 19, scope: !3579, inlinedAt: !3565)
!3592 = !DILocation(line: 275, column: 35, scope: !3587, inlinedAt: !3565)
!3593 = !{!3594, !1209, i64 0}
!3594 = !{!"numname", !1209, i64 0, !1114, i64 4}
!3595 = !DILocation(line: 278, column: 9, scope: !3555, inlinedAt: !3565)
!3596 = !DILocation(line: 279, column: 21, scope: !3555, inlinedAt: !3565)
!3597 = !DILocation(line: 0, scope: !3555, inlinedAt: !3565)
!3598 = !DILocation(line: 280, column: 21, scope: !3555, inlinedAt: !3565)
!3599 = !DILocation(line: 282, column: 15, scope: !3560, inlinedAt: !3565)
!3600 = !DILocation(line: 282, column: 23, scope: !3560, inlinedAt: !3565)
!3601 = !DILocation(line: 282, column: 26, scope: !3560, inlinedAt: !3565)
!3602 = !DILocation(line: 282, column: 56, scope: !3560, inlinedAt: !3565)
!3603 = !DILocation(line: 282, column: 13, scope: !3555, inlinedAt: !3565)
!3604 = !DILocation(line: 284, column: 42, scope: !3559, inlinedAt: !3565)
!3605 = !DILocation(line: 284, column: 26, scope: !3559, inlinedAt: !3565)
!3606 = !DILocation(line: 0, scope: !3559, inlinedAt: !3565)
!3607 = !DILocation(line: 285, column: 20, scope: !3608, inlinedAt: !3565)
!3608 = distinct !DILexicalBlock(scope: !3559, file: !403, line: 285, column: 17)
!3609 = !DILocation(line: 285, column: 19, scope: !3608, inlinedAt: !3565)
!3610 = !DILocation(line: 285, column: 30, scope: !3608, inlinedAt: !3565)
!3611 = !DILocation(line: 285, column: 25, scope: !3608, inlinedAt: !3565)
!3612 = !DILocation(line: 285, column: 49, scope: !3608, inlinedAt: !3565)
!3613 = !DILocation(line: 285, column: 43, scope: !3608, inlinedAt: !3565)
!3614 = !DILocation(line: 285, column: 40, scope: !3608, inlinedAt: !3565)
!3615 = !DILocation(line: 285, column: 17, scope: !3559, inlinedAt: !3565)
!3616 = !DILocation(line: 288, column: 20, scope: !3563, inlinedAt: !3565)
!3617 = !DILocation(line: 288, column: 28, scope: !3563, inlinedAt: !3565)
!3618 = !DILocation(line: 288, column: 31, scope: !3563, inlinedAt: !3565)
!3619 = !DILocation(line: 288, column: 61, scope: !3563, inlinedAt: !3565)
!3620 = !DILocation(line: 288, column: 18, scope: !3560, inlinedAt: !3565)
!3621 = !DILocation(line: 290, column: 42, scope: !3562, inlinedAt: !3565)
!3622 = !DILocation(line: 290, column: 26, scope: !3562, inlinedAt: !3565)
!3623 = !DILocation(line: 0, scope: !3562, inlinedAt: !3565)
!3624 = !DILocation(line: 291, column: 20, scope: !3625, inlinedAt: !3565)
!3625 = distinct !DILexicalBlock(scope: !3562, file: !403, line: 291, column: 17)
!3626 = !DILocation(line: 291, column: 19, scope: !3625, inlinedAt: !3565)
!3627 = !DILocation(line: 291, column: 25, scope: !3625, inlinedAt: !3565)
!3628 = !DILocation(line: 291, column: 34, scope: !3625, inlinedAt: !3565)
!3629 = !DILocation(line: 291, column: 28, scope: !3625, inlinedAt: !3565)
!3630 = !DILocation(line: 291, column: 42, scope: !3625, inlinedAt: !3565)
!3631 = !DILocation(line: 291, column: 52, scope: !3625, inlinedAt: !3565)
!3632 = !DILocation(line: 291, column: 47, scope: !3625, inlinedAt: !3565)
!3633 = !DILocation(line: 294, column: 7, scope: !3553, inlinedAt: !3565)
!3634 = !DILocation(line: 0, scope: !3560, inlinedAt: !3565)
!3635 = !DILocation(line: 297, column: 3, scope: !3546, inlinedAt: !3565)
!3636 = !DILocation(line: 306, column: 11, scope: !3540)
!3637 = !DILocation(line: 307, column: 10, scope: !3540)
!3638 = !DILocation(line: 307, column: 3, scope: !3540)
!3639 = distinct !DISubprogram(name: "sig2str", scope: !403, file: !403, line: 315, type: !130, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3646, !3647, !3648}
!3641 = !DILocalVariable(name: "signum", arg: 1, scope: !3639, file: !403, line: 315, type: !14)
!3642 = !DILocalVariable(name: "signame", arg: 2, scope: !3639, file: !403, line: 315, type: !10)
!3643 = !DILocalVariable(name: "i", scope: !3639, file: !403, line: 317, type: !132)
!3644 = !DILocalVariable(name: "rtmin", scope: !3645, file: !403, line: 326, type: !14)
!3645 = distinct !DILexicalBlock(scope: !3639, file: !403, line: 325, column: 3)
!3646 = !DILocalVariable(name: "rtmax", scope: !3645, file: !403, line: 327, type: !14)
!3647 = !DILocalVariable(name: "base", scope: !3645, file: !403, line: 328, type: !14)
!3648 = !DILocalVariable(name: "delta", scope: !3645, file: !403, line: 328, type: !14)
!3649 = !DILocation(line: 0, scope: !3639)
!3650 = !DILocation(line: 318, column: 3, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3639, file: !403, line: 318, column: 3)
!3652 = !DILocation(line: 318, column: 37, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3651, file: !403, line: 318, column: 3)
!3654 = !DILocation(line: 319, column: 26, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3653, file: !403, line: 319, column: 9)
!3656 = !DILocation(line: 319, column: 30, scope: !3655)
!3657 = !DILocation(line: 319, column: 9, scope: !3653)
!3658 = !DILocation(line: 318, column: 15, scope: !3653)
!3659 = !DILocation(line: 321, column: 26, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3655, file: !403, line: 320, column: 7)
!3661 = !DILocalVariable(name: "__dest", arg: 1, scope: !3662, file: !2054, line: 88, type: !3665)
!3662 = distinct !DISubprogram(name: "strcpy", scope: !2054, file: !2054, line: 88, type: !3663, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !3666)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!10, !3665, !1413}
!3665 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!3666 = !{!3661, !3667}
!3667 = !DILocalVariable(name: "__src", arg: 2, scope: !3662, file: !2054, line: 88, type: !1413)
!3668 = !DILocation(line: 0, scope: !3662, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 321, column: 9, scope: !3660)
!3670 = !DILocation(line: 90, column: 10, scope: !3662, inlinedAt: !3669)
!3671 = !DILocation(line: 322, column: 9, scope: !3660)
!3672 = !DILocation(line: 326, column: 17, scope: !3645)
!3673 = !DILocation(line: 0, scope: !3645)
!3674 = !DILocation(line: 327, column: 17, scope: !3645)
!3675 = !DILocation(line: 330, column: 18, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3645, file: !403, line: 330, column: 9)
!3677 = !DILocation(line: 330, column: 38, scope: !3676)
!3678 = !DILocation(line: 330, column: 28, scope: !3676)
!3679 = !DILocation(line: 333, column: 34, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3645, file: !403, line: 333, column: 9)
!3681 = !DILocation(line: 333, column: 43, scope: !3680)
!3682 = !DILocation(line: 333, column: 25, scope: !3680)
!3683 = !DILocation(line: 333, column: 16, scope: !3680)
!3684 = !DILocation(line: 0, scope: !3662, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 340, column: 9, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3680, file: !403, line: 339, column: 7)
!3687 = !DILocation(line: 0, scope: !3662, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 335, column: 9, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3680, file: !403, line: 334, column: 7)
!3690 = !DILocation(line: 333, column: 9, scope: !3645)
!3691 = !DILocation(line: 90, column: 10, scope: !3662, inlinedAt: !3688)
!3692 = !DILocation(line: 337, column: 7, scope: !3689)
!3693 = !DILocation(line: 90, column: 10, scope: !3662, inlinedAt: !3685)
!3694 = !DILocation(line: 0, scope: !3680)
!3695 = !DILocation(line: 344, column: 20, scope: !3645)
!3696 = !DILocation(line: 345, column: 15, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3645, file: !403, line: 345, column: 9)
!3698 = !DILocation(line: 345, column: 9, scope: !3645)
!3699 = !DILocation(line: 346, column: 7, scope: !3697)
!3700 = !DILocation(line: 349, column: 1, scope: !3639)
!3701 = !DILocation(line: 318, column: 17, scope: !3653)
!3702 = distinct !{!3702, !3650, !3703}
!3703 = !DILocation(line: 323, column: 7, scope: !3651)
!3704 = distinct !DISubprogram(name: "close_stream", scope: !510, file: !510, line: 56, type: !3705, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3709)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!14, !3707}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3113, line: 7, baseType: !517)
!3709 = !{!3710, !3711, !3713, !3714}
!3710 = !DILocalVariable(name: "stream", arg: 1, scope: !3704, file: !510, line: 56, type: !3707)
!3711 = !DILocalVariable(name: "some_pending", scope: !3704, file: !510, line: 58, type: !3712)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!3713 = !DILocalVariable(name: "prev_fail", scope: !3704, file: !510, line: 59, type: !3712)
!3714 = !DILocalVariable(name: "fclose_fail", scope: !3704, file: !510, line: 60, type: !3712)
!3715 = !DILocation(line: 0, scope: !3704)
!3716 = !DILocation(line: 58, column: 30, scope: !3704)
!3717 = !DILocalVariable(name: "__stream", arg: 1, scope: !3718, file: !3719, line: 135, type: !3707)
!3718 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3719, file: !3719, line: 135, type: !3705, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !509, retainedNodes: !3720)
!3719 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!3720 = !{!3717}
!3721 = !DILocation(line: 0, scope: !3718, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 59, column: 27, scope: !3704)
!3723 = !DILocation(line: 137, column: 10, scope: !3718, inlinedAt: !3722)
!3724 = !{!3725, !1209, i64 0}
!3725 = !{!"_IO_FILE", !1209, i64 0, !1113, i64 8, !1113, i64 16, !1113, i64 24, !1113, i64 32, !1113, i64 40, !1113, i64 48, !1113, i64 56, !1113, i64 64, !1113, i64 72, !1113, i64 80, !1113, i64 88, !1113, i64 96, !1113, i64 104, !1209, i64 112, !1209, i64 116, !2557, i64 120, !2047, i64 128, !1114, i64 130, !1114, i64 131, !1113, i64 136, !2557, i64 144, !1113, i64 152, !1113, i64 160, !1113, i64 168, !1113, i64 176, !2557, i64 184, !1209, i64 192, !1114, i64 196}
!3726 = !DILocation(line: 59, column: 43, scope: !3704)
!3727 = !DILocation(line: 60, column: 29, scope: !3704)
!3728 = !DILocation(line: 60, column: 45, scope: !3704)
!3729 = !DILocation(line: 70, column: 17, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3704, file: !510, line: 70, column: 7)
!3731 = !DILocation(line: 58, column: 50, scope: !3704)
!3732 = !DILocation(line: 70, column: 33, scope: !3730)
!3733 = !DILocation(line: 70, column: 53, scope: !3730)
!3734 = !DILocation(line: 70, column: 59, scope: !3730)
!3735 = !DILocation(line: 70, column: 7, scope: !3704)
!3736 = !DILocation(line: 72, column: 11, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3730, file: !510, line: 71, column: 5)
!3738 = !DILocation(line: 73, column: 9, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3737, file: !510, line: 72, column: 11)
!3740 = !DILocation(line: 73, column: 15, scope: !3739)
!3741 = !DILocation(line: 78, column: 1, scope: !3704)
!3742 = distinct !DISubprogram(name: "hard_locale", scope: !549, file: !549, line: 27, type: !507, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !548, retainedNodes: !3743)
!3743 = !{!3744, !3745}
!3744 = !DILocalVariable(name: "category", arg: 1, scope: !3742, file: !549, line: 27, type: !14)
!3745 = !DILocalVariable(name: "locale", scope: !3742, file: !549, line: 29, type: !3746)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2056, elements: !3747)
!3747 = !{!3748}
!3748 = !DISubrange(count: 257)
!3749 = !DILocation(line: 0, scope: !3742)
!3750 = !DILocation(line: 29, column: 3, scope: !3742)
!3751 = !DILocation(line: 29, column: 8, scope: !3742)
!3752 = !DILocation(line: 31, column: 7, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3742, file: !549, line: 31, column: 7)
!3754 = !DILocation(line: 31, column: 7, scope: !3742)
!3755 = !DILocation(line: 34, column: 12, scope: !3742)
!3756 = !DILocation(line: 34, column: 38, scope: !3742)
!3757 = !DILocation(line: 34, column: 41, scope: !3742)
!3758 = !DILocation(line: 34, column: 66, scope: !3742)
!3759 = !DILocation(line: 35, column: 1, scope: !3742)
!3760 = distinct !DISubprogram(name: "locale_charset", scope: !556, file: !556, line: 831, type: !348, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !555, retainedNodes: !3761)
!3761 = !{!3762}
!3762 = !DILocalVariable(name: "codeset", scope: !3760, file: !556, line: 833, type: !12)
!3763 = !DILocation(line: 847, column: 13, scope: !3760)
!3764 = !DILocation(line: 0, scope: !3760)
!3765 = !DILocation(line: 911, column: 15, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3760, file: !556, line: 911, column: 7)
!3767 = !DILocation(line: 911, column: 7, scope: !3760)
!3768 = !DILocation(line: 1070, column: 13, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !556, line: 1070, column: 13)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !556, line: 1060, column: 7)
!3771 = distinct !DILexicalBlock(scope: !3760, file: !556, line: 1019, column: 3)
!3772 = !DILocation(line: 1070, column: 24, scope: !3769)
!3773 = !DILocation(line: 1070, column: 13, scope: !3770)
!3774 = !DILocation(line: 1158, column: 3, scope: !3760)
!3775 = distinct !DISubprogram(name: "setlocale_null_r", scope: !947, file: !947, line: 269, type: !3776, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!14, !14, !10, !68}
!3778 = !{!3779, !3780, !3781}
!3779 = !DILocalVariable(name: "category", arg: 1, scope: !3775, file: !947, line: 269, type: !14)
!3780 = !DILocalVariable(name: "buf", arg: 2, scope: !3775, file: !947, line: 269, type: !10)
!3781 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3775, file: !947, line: 269, type: !68)
!3782 = !DILocation(line: 0, scope: !3775)
!3783 = !DILocalVariable(name: "category", arg: 1, scope: !3784, file: !947, line: 91, type: !14)
!3784 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !947, file: !947, line: 91, type: !3776, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !3785)
!3785 = !{!3783, !3786, !3787, !3788, !3789}
!3786 = !DILocalVariable(name: "buf", arg: 2, scope: !3784, file: !947, line: 91, type: !10)
!3787 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3784, file: !947, line: 91, type: !68)
!3788 = !DILocalVariable(name: "result", scope: !3784, file: !947, line: 140, type: !12)
!3789 = !DILocalVariable(name: "length", scope: !3790, file: !947, line: 154, type: !68)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !947, line: 153, column: 5)
!3791 = distinct !DILexicalBlock(scope: !3784, file: !947, line: 142, column: 7)
!3792 = !DILocation(line: 0, scope: !3784, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 274, column: 10, scope: !3775)
!3794 = !DILocalVariable(name: "category", arg: 1, scope: !3795, file: !947, line: 60, type: !14)
!3795 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !947, file: !947, line: 60, type: !3796, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !3798)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!12, !14}
!3798 = !{!3794, !3799}
!3799 = !DILocalVariable(name: "result", scope: !3795, file: !947, line: 62, type: !12)
!3800 = !DILocation(line: 0, scope: !3795, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 140, column: 24, scope: !3784, inlinedAt: !3793)
!3802 = !DILocation(line: 62, column: 24, scope: !3795, inlinedAt: !3801)
!3803 = !DILocation(line: 142, column: 14, scope: !3791, inlinedAt: !3793)
!3804 = !DILocation(line: 142, column: 7, scope: !3784, inlinedAt: !3793)
!3805 = !DILocation(line: 145, column: 19, scope: !3806, inlinedAt: !3793)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !947, line: 145, column: 11)
!3807 = distinct !DILexicalBlock(scope: !3791, file: !947, line: 143, column: 5)
!3808 = !DILocation(line: 145, column: 11, scope: !3807, inlinedAt: !3793)
!3809 = !DILocation(line: 149, column: 16, scope: !3806, inlinedAt: !3793)
!3810 = !DILocation(line: 149, column: 9, scope: !3806, inlinedAt: !3793)
!3811 = !DILocation(line: 154, column: 23, scope: !3790, inlinedAt: !3793)
!3812 = !DILocation(line: 0, scope: !3790, inlinedAt: !3793)
!3813 = !DILocation(line: 155, column: 18, scope: !3814, inlinedAt: !3793)
!3814 = distinct !DILexicalBlock(scope: !3790, file: !947, line: 155, column: 11)
!3815 = !DILocation(line: 155, column: 11, scope: !3790, inlinedAt: !3793)
!3816 = !DILocation(line: 157, column: 39, scope: !3817, inlinedAt: !3793)
!3817 = distinct !DILexicalBlock(scope: !3814, file: !947, line: 156, column: 9)
!3818 = !DILocalVariable(name: "__dest", arg: 1, scope: !3819, file: !2054, line: 31, type: !3452)
!3819 = distinct !DISubprogram(name: "memcpy", scope: !2054, file: !2054, line: 31, type: !3450, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !3820)
!3820 = !{!3818, !3821, !3822}
!3821 = !DILocalVariable(name: "__src", arg: 2, scope: !3819, file: !2054, line: 31, type: !3453)
!3822 = !DILocalVariable(name: "__len", arg: 3, scope: !3819, file: !2054, line: 31, type: !68)
!3823 = !DILocation(line: 0, scope: !3819, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 157, column: 11, scope: !3817, inlinedAt: !3793)
!3825 = !DILocation(line: 34, column: 10, scope: !3819, inlinedAt: !3824)
!3826 = !DILocation(line: 158, column: 11, scope: !3817, inlinedAt: !3793)
!3827 = !DILocation(line: 162, column: 23, scope: !3828, inlinedAt: !3793)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !947, line: 162, column: 15)
!3829 = distinct !DILexicalBlock(scope: !3814, file: !947, line: 161, column: 9)
!3830 = !DILocation(line: 162, column: 15, scope: !3829, inlinedAt: !3793)
!3831 = !DILocation(line: 167, column: 44, scope: !3832, inlinedAt: !3793)
!3832 = distinct !DILexicalBlock(scope: !3828, file: !947, line: 163, column: 13)
!3833 = !DILocation(line: 0, scope: !3819, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 167, column: 15, scope: !3832, inlinedAt: !3793)
!3835 = !DILocation(line: 34, column: 10, scope: !3819, inlinedAt: !3834)
!3836 = !DILocation(line: 168, column: 15, scope: !3832, inlinedAt: !3793)
!3837 = !DILocation(line: 168, column: 32, scope: !3832, inlinedAt: !3793)
!3838 = !DILocation(line: 169, column: 13, scope: !3832, inlinedAt: !3793)
!3839 = !DILocation(line: 0, scope: !3791, inlinedAt: !3793)
!3840 = !DILocation(line: 274, column: 3, scope: !3775)
!3841 = distinct !DISubprogram(name: "setlocale_null", scope: !947, file: !947, line: 301, type: !3796, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !946, retainedNodes: !3842)
!3842 = !{!3843}
!3843 = !DILocalVariable(name: "category", arg: 1, scope: !3841, file: !947, line: 301, type: !14)
!3844 = !DILocation(line: 0, scope: !3841)
!3845 = !DILocation(line: 0, scope: !3795, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 304, column: 10, scope: !3841)
!3847 = !DILocation(line: 62, column: 24, scope: !3795, inlinedAt: !3846)
!3848 = !DILocation(line: 304, column: 3, scope: !3841)
!3849 = distinct !DISubprogram(name: "rpl_fclose", scope: !950, file: !950, line: 58, type: !3850, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !949, retainedNodes: !3854)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!14, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3113, line: 7, baseType: !956)
!3854 = !{!3855, !3856, !3857, !3858}
!3855 = !DILocalVariable(name: "fp", arg: 1, scope: !3849, file: !950, line: 58, type: !3852)
!3856 = !DILocalVariable(name: "saved_errno", scope: !3849, file: !950, line: 60, type: !14)
!3857 = !DILocalVariable(name: "fd", scope: !3849, file: !950, line: 61, type: !14)
!3858 = !DILocalVariable(name: "result", scope: !3849, file: !950, line: 62, type: !14)
!3859 = !DILocation(line: 0, scope: !3849)
!3860 = !DILocation(line: 65, column: 8, scope: !3849)
!3861 = !DILocation(line: 66, column: 10, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3849, file: !950, line: 66, column: 7)
!3863 = !DILocation(line: 66, column: 7, scope: !3849)
!3864 = !DILocation(line: 67, column: 12, scope: !3862)
!3865 = !DILocation(line: 67, column: 5, scope: !3862)
!3866 = !DILocation(line: 72, column: 9, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3849, file: !950, line: 72, column: 7)
!3868 = !DILocation(line: 72, column: 23, scope: !3867)
!3869 = !DILocation(line: 72, column: 33, scope: !3867)
!3870 = !DILocation(line: 72, column: 26, scope: !3867)
!3871 = !DILocation(line: 72, column: 59, scope: !3867)
!3872 = !DILocation(line: 73, column: 7, scope: !3867)
!3873 = !DILocation(line: 73, column: 10, scope: !3867)
!3874 = !DILocation(line: 72, column: 7, scope: !3849)
!3875 = !DILocation(line: 100, column: 12, scope: !3849)
!3876 = !DILocation(line: 105, column: 7, scope: !3849)
!3877 = !DILocation(line: 74, column: 19, scope: !3867)
!3878 = !DILocation(line: 105, column: 19, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3849, file: !950, line: 105, column: 7)
!3880 = !DILocation(line: 107, column: 13, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3879, file: !950, line: 106, column: 5)
!3882 = !DILocation(line: 109, column: 5, scope: !3881)
!3883 = !DILocation(line: 112, column: 1, scope: !3849)
!3884 = distinct !DISubprogram(name: "rpl_fflush", scope: !994, file: !994, line: 129, type: !3885, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !3889)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!14, !3887}
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3113, line: 7, baseType: !1000)
!3889 = !{!3890}
!3890 = !DILocalVariable(name: "stream", arg: 1, scope: !3884, file: !994, line: 129, type: !3887)
!3891 = !DILocation(line: 0, scope: !3884)
!3892 = !DILocation(line: 150, column: 14, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3884, file: !994, line: 150, column: 7)
!3894 = !DILocation(line: 150, column: 22, scope: !3893)
!3895 = !DILocation(line: 150, column: 27, scope: !3893)
!3896 = !DILocation(line: 150, column: 7, scope: !3884)
!3897 = !DILocation(line: 151, column: 12, scope: !3893)
!3898 = !DILocation(line: 151, column: 5, scope: !3893)
!3899 = !DILocalVariable(name: "fp", arg: 1, scope: !3900, file: !994, line: 41, type: !3887)
!3900 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !994, file: !994, line: 41, type: !3901, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !993, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3887}
!3903 = !{!3899}
!3904 = !DILocation(line: 0, scope: !3900, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 156, column: 3, scope: !3884)
!3906 = !DILocation(line: 43, column: 11, scope: !3907, inlinedAt: !3905)
!3907 = distinct !DILexicalBlock(scope: !3900, file: !994, line: 43, column: 7)
!3908 = !DILocation(line: 43, column: 18, scope: !3907, inlinedAt: !3905)
!3909 = !DILocation(line: 43, column: 7, scope: !3900, inlinedAt: !3905)
!3910 = !DILocation(line: 45, column: 5, scope: !3907, inlinedAt: !3905)
!3911 = !DILocation(line: 158, column: 10, scope: !3884)
!3912 = !DILocation(line: 158, column: 3, scope: !3884)
!3913 = !DILocation(line: 235, column: 1, scope: !3884)
!3914 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1035, file: !1035, line: 28, type: !3915, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !3920)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!14, !3917, !3919, !14}
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3113, line: 7, baseType: !1041)
!3919 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !16, line: 63, baseType: !42)
!3920 = !{!3921, !3922, !3923, !3924}
!3921 = !DILocalVariable(name: "fp", arg: 1, scope: !3914, file: !1035, line: 28, type: !3917)
!3922 = !DILocalVariable(name: "offset", arg: 2, scope: !3914, file: !1035, line: 28, type: !3919)
!3923 = !DILocalVariable(name: "whence", arg: 3, scope: !3914, file: !1035, line: 28, type: !14)
!3924 = !DILocalVariable(name: "pos", scope: !3925, file: !1035, line: 117, type: !3919)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !1035, line: 113, column: 5)
!3926 = distinct !DILexicalBlock(scope: !3914, file: !1035, line: 52, column: 7)
!3927 = !DILocation(line: 0, scope: !3914)
!3928 = !DILocation(line: 52, column: 11, scope: !3926)
!3929 = !{!3725, !1113, i64 16}
!3930 = !DILocation(line: 52, column: 31, scope: !3926)
!3931 = !{!3725, !1113, i64 8}
!3932 = !DILocation(line: 52, column: 24, scope: !3926)
!3933 = !DILocation(line: 53, column: 7, scope: !3926)
!3934 = !DILocation(line: 53, column: 14, scope: !3926)
!3935 = !{!3725, !1113, i64 40}
!3936 = !DILocation(line: 53, column: 35, scope: !3926)
!3937 = !{!3725, !1113, i64 32}
!3938 = !DILocation(line: 53, column: 28, scope: !3926)
!3939 = !DILocation(line: 54, column: 7, scope: !3926)
!3940 = !DILocation(line: 54, column: 14, scope: !3926)
!3941 = !{!3725, !1113, i64 72}
!3942 = !DILocation(line: 54, column: 28, scope: !3926)
!3943 = !DILocation(line: 52, column: 7, scope: !3914)
!3944 = !DILocation(line: 117, column: 26, scope: !3925)
!3945 = !DILocation(line: 117, column: 19, scope: !3925)
!3946 = !DILocation(line: 0, scope: !3925)
!3947 = !DILocation(line: 118, column: 15, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3925, file: !1035, line: 118, column: 11)
!3949 = !DILocation(line: 118, column: 11, scope: !3925)
!3950 = !DILocation(line: 129, column: 11, scope: !3925)
!3951 = !DILocation(line: 129, column: 18, scope: !3925)
!3952 = !DILocation(line: 130, column: 11, scope: !3925)
!3953 = !DILocation(line: 130, column: 19, scope: !3925)
!3954 = !{!3725, !2557, i64 144}
!3955 = !DILocation(line: 161, column: 7, scope: !3925)
!3956 = !DILocation(line: 163, column: 10, scope: !3914)
!3957 = !DILocation(line: 163, column: 3, scope: !3914)
!3958 = !DILocation(line: 164, column: 1, scope: !3914)
