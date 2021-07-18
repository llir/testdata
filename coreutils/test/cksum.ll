; ModuleID = 'coreutils-8.32/src/cksum.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [FILE]...\0A  or:  %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Print CRC checksum and byte counts of each FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Q. Frank Xia\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@crctab = internal unnamed_addr constant [256 x i64] [i64 0, i64 79764919, i64 159529838, i64 222504665, i64 319059676, i64 398814059, i64 445009330, i64 507990021, i64 638119352, i64 583659535, i64 797628118, i64 726387553, i64 890018660, i64 835552979, i64 1015980042, i64 944750013, i64 1276238704, i64 1221641927, i64 1167319070, i64 1095957929, i64 1595256236, i64 1540665371, i64 1452775106, i64 1381403509, i64 1780037320, i64 1859660671, i64 1671105958, i64 1733955601, i64 2031960084, i64 2111593891, i64 1889500026, i64 1952343757, i64 2552477408, i64 2632100695, i64 2443283854, i64 2506133561, i64 2334638140, i64 2414271883, i64 2191915858, i64 2254759653, i64 3190512472, i64 3135915759, i64 3081330742, i64 3009969537, i64 2905550212, i64 2850959411, i64 2762807018, i64 2691435357, i64 3560074640, i64 3505614887, i64 3719321342, i64 3648080713, i64 3342211916, i64 3287746299, i64 3467911202, i64 3396681109, i64 4063920168, i64 4143685023, i64 4223187782, i64 4286162673, i64 3779000052, i64 3858754371, i64 3904687514, i64 3967668269, i64 881225847, i64 809987520, i64 1023691545, i64 969234094, i64 662832811, i64 591600412, i64 771767749, i64 717299826, i64 311336399, i64 374308984, i64 453813921, i64 533576470, i64 25881363, i64 88864420, i64 134795389, i64 214552010, i64 2023205639, i64 2086057648, i64 1897238633, i64 1976864222, i64 1804852699, i64 1867694188, i64 1645340341, i64 1724971778, i64 1587496639, i64 1516133128, i64 1461550545, i64 1406951526, i64 1302016099, i64 1230646740, i64 1142491917, i64 1087903418, i64 2896545431, i64 2825181984, i64 2770861561, i64 2716262478, i64 3215044683, i64 3143675388, i64 3055782693, i64 3001194130, i64 2326604591, i64 2389456536, i64 2200899649, i64 2280525302, i64 2578013683, i64 2640855108, i64 2418763421, i64 2498394922, i64 3769900519, i64 3832873040, i64 3912640137, i64 3992402750, i64 4088425275, i64 4151408268, i64 4197601365, i64 4277358050, i64 3334271071, i64 3263032808, i64 3476998961, i64 3422541446, i64 3585640067, i64 3514407732, i64 3694837229, i64 3640369242, i64 1762451694, i64 1842216281, i64 1619975040, i64 1682949687, i64 2047383090, i64 2127137669, i64 1938468188, i64 2001449195, i64 1325665622, i64 1271206113, i64 1183200824, i64 1111960463, i64 1543535498, i64 1489069629, i64 1434599652, i64 1363369299, i64 622672798, i64 568075817, i64 748617968, i64 677256519, i64 907627842, i64 853037301, i64 1067152940, i64 995781531, i64 51762726, i64 131386257, i64 177728840, i64 240578815, i64 269590778, i64 349224269, i64 429104020, i64 491947555, i64 4046411278, i64 4126034873, i64 4172115296, i64 4234965207, i64 3794477266, i64 3874110821, i64 3953728444, i64 4016571915, i64 3609705398, i64 3555108353, i64 3735388376, i64 3664026991, i64 3290680682, i64 3236090077, i64 3449943556, i64 3378572211, i64 3174993278, i64 3120533705, i64 3032266256, i64 2961025959, i64 2923101090, i64 2868635157, i64 2813903052, i64 2742672763, i64 2604032198, i64 2683796849, i64 2461293480, i64 2524268063, i64 2284983834, i64 2364738477, i64 2175806836, i64 2238787779, i64 1569362073, i64 1498123566, i64 1409854455, i64 1355396672, i64 1317987909, i64 1246755826, i64 1192025387, i64 1137557660, i64 2072149281, i64 2135122070, i64 1912620623, i64 1992383480, i64 1753615357, i64 1816598090, i64 1627664531, i64 1707420964, i64 295390185, i64 358241886, i64 404320391, i64 483945776, i64 43990325, i64 106832002, i64 186451547, i64 266083308, i64 932423249, i64 861060070, i64 1041341759, i64 986742920, i64 613929101, i64 542559546, i64 756411363, i64 701822548, i64 3316196985, i64 3244833742, i64 3425377559, i64 3370778784, i64 3601682597, i64 3530312978, i64 3744426955, i64 3689838204, i64 3819031489, i64 3881883254, i64 3928223919, i64 4007849240, i64 4037393693, i64 4100235434, i64 4180117107, i64 4259748804, i64 2310601993, i64 2373574846, i64 2151335527, i64 2231098320, i64 2596047829, i64 2659030626, i64 2470359227, i64 2550115596, i64 2947551409, i64 2876312838, i64 2788305887, i64 2733848168, i64 3165939309, i64 3094707162, i64 3040238851, i64 2985771188], align 16, !dbg !36
@.str.29 = private unnamed_addr constant [18 x i8] c"%s: file too long\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%u %s %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%u %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"-: %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !46
@.str.34 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !52
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !57
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !59
@opterr = external local_unnamed_addr global i32, align 4
@.str.46 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.47, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.48, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !66
@.str.2.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !83
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !90
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !120
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !126
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !138
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !143
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !150
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !140
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !152
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.83 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.84 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.85 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.86 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.87 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.88 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.89 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.90 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.91 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.92 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.93 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.94 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.95 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.98 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.99 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.100 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.101 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.102 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.103 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.104 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !158
@.str.1.115 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !613 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !617, metadata !DIExpression()), !dbg !618
  %3 = icmp eq i32 %0, 0, !dbg !619
  br i1 %3, label %9, label %4, !dbg !621

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !622, !tbaa !624
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #25, !dbg !622
  %7 = load i8*, i8** @program_name, align 8, !dbg !622, !tbaa !624
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #25, !dbg !622
  br label %58, !dbg !622

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #25, !dbg !628
  %11 = load i8*, i8** @program_name, align 8, !dbg !628, !tbaa !624
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #25, !dbg !628
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 5) #25, !dbg !630
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !624
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !630
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #25, !dbg !631
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !624
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !631
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #25, !dbg !632
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !624
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !632
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !633, metadata !DIExpression()) #25, !dbg !652
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !654
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #25, !dbg !654
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !639, metadata !DIExpression()) #25, !dbg !655
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #25, !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !648, metadata !DIExpression()) #25, !dbg !652
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !649, metadata !DIExpression()) #25, !dbg !652
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !656
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !649, metadata !DIExpression()) #25, !dbg !652
  br label %24, !dbg !657

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !649, metadata !DIExpression()) #25, !dbg !652
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #26, !dbg !658
  %28 = icmp eq i32 %27, 0, !dbg !658
  br i1 %28, label %34, label %29, !dbg !657

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !659
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !649, metadata !DIExpression()) #25, !dbg !652
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !660
  %32 = load i8*, i8** %31, align 8, !dbg !660, !tbaa !661
  %33 = icmp eq i8* %32, null, !dbg !663
  br i1 %33, label %34, label %24, !dbg !664, !llvm.loop !665

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %26, %24 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !667
  %37 = load i8*, i8** %36, align 8, !dbg !667, !tbaa !669
  %38 = icmp eq i8* %37, null, !dbg !670
  %39 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !671
  call void @llvm.dbg.value(metadata i8* %39, metadata !648, metadata !DIExpression()) #25, !dbg !652
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #25, !dbg !672
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #25, !dbg !672
  %42 = tail call i8* @setlocale(i32 5, i8* null) #25, !dbg !673
  call void @llvm.dbg.value(metadata i8* %42, metadata !651, metadata !DIExpression()) #25, !dbg !652
  %43 = icmp eq i8* %42, null, !dbg !674
  br i1 %43, label %51, label %44, !dbg !676

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #26, !dbg !677
  %46 = icmp eq i32 %45, 0, !dbg !677
  br i1 %46, label %51, label %47, !dbg !678

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i64 0, i64 0), i32 5) #25, !dbg !679
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !624
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #25, !dbg !679
  br label %51, !dbg !681

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 5) #25, !dbg !682
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #25, !dbg !682
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #25, !dbg !683
  %55 = icmp eq i8* %39, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), !dbg !683
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !683
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #25, !dbg !683
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #25, !dbg !684
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #27, !dbg !685
  unreachable, !dbg !685
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !686 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !690 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !745 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !754, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i8** %1, metadata !755, metadata !DIExpression()), !dbg !758
  %3 = load i8*, i8** %1, align 8, !dbg !759, !tbaa !624
  tail call void @set_program_name(i8* %3) #25, !dbg !760
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #25, !dbg !761
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #25, !dbg !762
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #25, !dbg !763
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #25, !dbg !764
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !765, !tbaa !624
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #25, !dbg !766
  %10 = load i8*, i8** @Version, align 8, !dbg !767, !tbaa !624
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %10, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #25, !dbg !768
  store i1 false, i1* @have_read_stdin, align 1, !dbg !769
  %11 = load i32, i32* @optind, align 4, !dbg !770, !tbaa !772
  %12 = icmp eq i32 %11, %0, !dbg !774
  br i1 %12, label %17, label %13, !dbg !775

13:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8 1, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i32 %11, metadata !756, metadata !DIExpression()), !dbg !758
  %14 = icmp slt i32 %11, %0, !dbg !776
  br i1 %14, label %15, label %41, !dbg !780

15:                                               ; preds = %13
  %16 = sext i32 %11 to i64, !dbg !780
  br label %20, !dbg !780

17:                                               ; preds = %2
  %18 = tail call fastcc zeroext i1 @cksum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i1 zeroext false), !dbg !781
  %19 = zext i1 %18 to i8, !dbg !782
  call void @llvm.dbg.value(metadata i8 %19, metadata !757, metadata !DIExpression()), !dbg !758
  br label %31, !dbg !783

20:                                               ; preds = %15, %20
  %21 = phi i64 [ %16, %15 ], [ %28, %20 ]
  %22 = phi i8 [ 1, %15 ], [ %27, %20 ]
  call void @llvm.dbg.value(metadata i8 %22, metadata !757, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i64 %21, metadata !756, metadata !DIExpression()), !dbg !758
  %23 = getelementptr inbounds i8*, i8** %1, i64 %21, !dbg !784
  %24 = load i8*, i8** %23, align 8, !dbg !784, !tbaa !624
  %25 = tail call fastcc zeroext i1 @cksum(i8* %24, i1 zeroext true), !dbg !785
  %26 = zext i1 %25 to i8, !dbg !785
  %27 = and i8 %22, %26, !dbg !786
  call void @llvm.dbg.value(metadata i8 %27, metadata !757, metadata !DIExpression()), !dbg !758
  %28 = add nsw i64 %21, 1, !dbg !787
  call void @llvm.dbg.value(metadata i64 %28, metadata !756, metadata !DIExpression()), !dbg !758
  %29 = trunc i64 %28 to i32, !dbg !776
  %30 = icmp eq i32 %29, %0, !dbg !776
  br i1 %30, label %31, label %20, !dbg !780, !llvm.loop !788

31:                                               ; preds = %20, %17
  %32 = phi i8 [ %19, %17 ], [ %27, %20 ]
  %33 = load i1, i1* @have_read_stdin, align 1, !dbg !790
  call void @llvm.dbg.value(metadata i8 %32, metadata !757, metadata !DIExpression()), !dbg !758
  br i1 %33, label %34, label %41, !dbg !792

34:                                               ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !793, !tbaa !624
  %36 = tail call i32 @rpl_fclose(%struct._IO_FILE* %35) #25, !dbg !794
  %37 = icmp eq i32 %36, -1, !dbg !795
  br i1 %37, label %38, label %41, !dbg !796

38:                                               ; preds = %34
  %39 = tail call i32* @__errno_location() #28, !dbg !797
  %40 = load i32, i32* %39, align 4, !dbg !797, !tbaa !772
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #25, !dbg !797
  unreachable, !dbg !797

41:                                               ; preds = %13, %34, %31
  %42 = phi i8 [ %32, %34 ], [ %32, %31 ], [ 1, %13 ]
  %43 = xor i8 %42, 1, !dbg !798
  %44 = zext i8 %43 to i32, !dbg !798
  ret i32 %44, !dbg !799
}

; Function Attrs: nounwind
declare !dbg !800 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !803 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !806 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !813 noundef i32 @setvbuf(%struct._IO_FILE* nocapture noundef, i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cksum(i8* %0, i1 zeroext %1) unnamed_addr #8 !dbg !816 {
  %3 = alloca [65536 x i8], align 16
  %4 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !820, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i1 %1, metadata !821, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !842
  %5 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 0, !dbg !843
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %5) #25, !dbg !843
  call void @llvm.dbg.declare(metadata [65536 x i8]* %3, metadata !822, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i64 0, metadata !827, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 0, metadata !828, metadata !DIExpression()), !dbg !842
  %6 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0, !dbg !845
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %6) #25, !dbg !845
  call void @llvm.dbg.declare(metadata [21 x i8]* %4, metadata !834, metadata !DIExpression()), !dbg !846
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !847
  %8 = icmp eq i32 %7, 0, !dbg !847
  br i1 %8, label %9, label %11, !dbg !849

9:                                                ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !850, !tbaa !624
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !830, metadata !DIExpression()), !dbg !842
  store i1 true, i1* @have_read_stdin, align 1, !dbg !852
  br label %18, !dbg !853

11:                                               ; preds = %2
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)), !dbg !854
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !830, metadata !DIExpression()), !dbg !842
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !856
  br i1 %13, label %14, label %18, !dbg !858

14:                                               ; preds = %11
  %15 = tail call i32* @__errno_location() #28, !dbg !859
  %16 = load i32, i32* %15, align 4, !dbg !859, !tbaa !772
  %17 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !861
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %17) #25, !dbg !862
  br label %143, !dbg !863

18:                                               ; preds = %11, %9
  %19 = phi %struct._IO_FILE* [ %10, %9 ], [ %12, %11 ], !dbg !864
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !830, metadata !DIExpression()), !dbg !842
  tail call void @fadvise(%struct._IO_FILE* %19, i32 2) #25, !dbg !865
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %19, i64 0, i32 0
  %21 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 1
  br label %22, !dbg !866

22:                                               ; preds = %81, %18
  %23 = phi i64 [ 0, %18 ], [ %82, %81 ], !dbg !867
  %24 = phi i64 [ 0, %18 ], [ %30, %81 ], !dbg !842
  call void @llvm.dbg.value(metadata i64 %24, metadata !828, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %23, metadata !827, metadata !DIExpression()), !dbg !842
  %25 = call i64 @fread_unlocked(i8* nonnull %5, i64 1, i64 65536, %struct._IO_FILE* %19), !dbg !868
  call void @llvm.dbg.value(metadata i64 %25, metadata !829, metadata !DIExpression()), !dbg !842
  %26 = icmp eq i64 %25, 0, !dbg !869
  br i1 %26, label %27, label %29, !dbg !866

27:                                               ; preds = %22
  %28 = load i32, i32* %20, align 8, !dbg !870, !tbaa !879
  br label %86, !dbg !866

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8* %5, metadata !839, metadata !DIExpression()), !dbg !883
  %30 = add i64 %25, %24, !dbg !884
  %31 = icmp ult i64 %30, %24, !dbg !886
  br i1 %31, label %52, label %32, !dbg !887

32:                                               ; preds = %29
  %33 = and i64 %25, 1, !dbg !888
  %34 = icmp eq i64 %33, 0, !dbg !888
  br i1 %34, label %46, label %35, !dbg !888

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8* %5, metadata !839, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %25, metadata !829, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %23, metadata !827, metadata !DIExpression()), !dbg !842
  %36 = add i64 %25, -1, !dbg !889
  call void @llvm.dbg.value(metadata i64 %36, metadata !829, metadata !DIExpression()), !dbg !842
  %37 = shl i64 %23, 8, !dbg !890
  %38 = lshr i64 %23, 24, !dbg !891
  call void @llvm.dbg.value(metadata i8* %21, metadata !839, metadata !DIExpression()), !dbg !883
  %39 = load i8, i8* %5, align 16, !dbg !892, !tbaa !893
  %40 = zext i8 %39 to i64, !dbg !892
  %41 = and i64 %38, 255, !dbg !894
  %42 = xor i64 %41, %40, !dbg !894
  %43 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %42, !dbg !895
  %44 = load i64, i64* %43, align 8, !dbg !895, !tbaa !896
  %45 = xor i64 %44, %37, !dbg !897
  call void @llvm.dbg.value(metadata i64 %45, metadata !827, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %36, metadata !829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !842
  br label %46, !dbg !888

46:                                               ; preds = %35, %32
  %47 = phi i64 [ %45, %35 ], [ undef, %32 ]
  %48 = phi i8* [ %21, %35 ], [ %5, %32 ]
  %49 = phi i64 [ %36, %35 ], [ %25, %32 ]
  %50 = phi i64 [ %45, %35 ], [ %23, %32 ]
  %51 = icmp eq i64 %25, 1, !dbg !888
  br i1 %51, label %81, label %55, !dbg !888

52:                                               ; preds = %29
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 5) #25, !dbg !898
  %54 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !898
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %53, i8* %54) #25, !dbg !898
  unreachable, !dbg !898

55:                                               ; preds = %46, %55
  %56 = phi i8* [ %72, %55 ], [ %48, %46 ]
  %57 = phi i64 [ %69, %55 ], [ %49, %46 ]
  %58 = phi i64 [ %79, %55 ], [ %50, %46 ]
  call void @llvm.dbg.value(metadata i8* %56, metadata !839, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %57, metadata !829, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %58, metadata !827, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %57, metadata !829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !842
  %59 = shl i64 %58, 8, !dbg !890
  %60 = lshr i64 %58, 24, !dbg !891
  %61 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !899
  call void @llvm.dbg.value(metadata i8* %61, metadata !839, metadata !DIExpression()), !dbg !883
  %62 = load i8, i8* %56, align 1, !dbg !892, !tbaa !893
  %63 = zext i8 %62 to i64, !dbg !892
  %64 = and i64 %60, 255, !dbg !894
  %65 = xor i64 %64, %63, !dbg !894
  %66 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %65, !dbg !895
  %67 = load i64, i64* %66, align 8, !dbg !895, !tbaa !896
  %68 = xor i64 %67, %59, !dbg !897
  call void @llvm.dbg.value(metadata i64 %68, metadata !827, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %57, metadata !829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !842
  call void @llvm.dbg.value(metadata i8* %61, metadata !839, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %57, metadata !829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !842
  call void @llvm.dbg.value(metadata i64 %68, metadata !827, metadata !DIExpression()), !dbg !842
  %69 = add i64 %57, -2, !dbg !889
  call void @llvm.dbg.value(metadata i64 %69, metadata !829, metadata !DIExpression()), !dbg !842
  %70 = shl i64 %68, 8, !dbg !890
  %71 = lshr i64 %68, 24, !dbg !891
  %72 = getelementptr inbounds i8, i8* %56, i64 2, !dbg !899
  call void @llvm.dbg.value(metadata i8* %72, metadata !839, metadata !DIExpression()), !dbg !883
  %73 = load i8, i8* %61, align 1, !dbg !892, !tbaa !893
  %74 = zext i8 %73 to i64, !dbg !892
  %75 = and i64 %71, 255, !dbg !894
  %76 = xor i64 %75, %74, !dbg !894
  %77 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %76, !dbg !895
  %78 = load i64, i64* %77, align 8, !dbg !895, !tbaa !896
  %79 = xor i64 %78, %70, !dbg !897
  call void @llvm.dbg.value(metadata i64 %79, metadata !827, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %69, metadata !829, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !842
  %80 = icmp eq i64 %69, 0, !dbg !888
  br i1 %80, label %81, label %55, !dbg !888, !llvm.loop !900

81:                                               ; preds = %55, %46
  %82 = phi i64 [ %47, %46 ], [ %79, %55 ], !dbg !897
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !902, metadata !DIExpression()), !dbg !905
  %83 = load i32, i32* %20, align 8, !dbg !908, !tbaa !879
  %84 = and i32 %83, 16, !dbg !909
  %85 = icmp eq i32 %84, 0, !dbg !909
  br i1 %85, label %22, label %86, !llvm.loop !910

86:                                               ; preds = %81, %27
  %87 = phi i32 [ %28, %27 ], [ %83, %81 ], !dbg !870
  %88 = phi i64 [ %23, %27 ], [ %82, %81 ], !dbg !867
  %89 = phi i64 [ %24, %27 ], [ %30, %81 ], !dbg !842
  call void @llvm.dbg.value(metadata i64 %89, metadata !828, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %88, metadata !827, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !876, metadata !DIExpression()), !dbg !912
  %90 = and i32 %87, 32, !dbg !913
  %91 = icmp eq i32 %90, 0, !dbg !913
  br i1 %91, label %100, label %92, !dbg !914

92:                                               ; preds = %86
  %93 = tail call i32* @__errno_location() #28, !dbg !915
  %94 = load i32, i32* %93, align 4, !dbg !915, !tbaa !772
  %95 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !917
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %95) #25, !dbg !918
  %96 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !919
  %97 = icmp eq i32 %96, 0, !dbg !919
  br i1 %97, label %143, label %98, !dbg !921

98:                                               ; preds = %92
  %99 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %19) #25, !dbg !922
  br label %143, !dbg !922

100:                                              ; preds = %86
  %101 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #26, !dbg !923
  %102 = icmp eq i32 %101, 0, !dbg !923
  br i1 %102, label %110, label %103, !dbg !925

103:                                              ; preds = %100
  %104 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %19) #25, !dbg !926
  %105 = icmp eq i32 %104, -1, !dbg !927
  br i1 %105, label %106, label %110, !dbg !928

106:                                              ; preds = %103
  %107 = tail call i32* @__errno_location() #28, !dbg !929
  %108 = load i32, i32* %107, align 4, !dbg !929, !tbaa !772
  %109 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #25, !dbg !931
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %109) #25, !dbg !932
  br label %143, !dbg !933

110:                                              ; preds = %103, %100
  %111 = call i8* @umaxtostr(i64 %89, i8* nonnull %6) #25, !dbg !934
  call void @llvm.dbg.value(metadata i8* %111, metadata !838, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %89, metadata !828, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %88, metadata !827, metadata !DIExpression()), !dbg !842
  %112 = icmp eq i64 %89, 0, !dbg !935
  br i1 %112, label %125, label %113, !dbg !935

113:                                              ; preds = %110, %113
  %114 = phi i64 [ %123, %113 ], [ %89, %110 ]
  %115 = phi i64 [ %122, %113 ], [ %88, %110 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !828, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %115, metadata !827, metadata !DIExpression()), !dbg !842
  %116 = shl i64 %115, 8, !dbg !937
  %117 = lshr i64 %115, 24, !dbg !939
  %118 = xor i64 %117, %114, !dbg !940
  %119 = and i64 %118, 255, !dbg !941
  %120 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %119, !dbg !942
  %121 = load i64, i64* %120, align 8, !dbg !942, !tbaa !896
  %122 = xor i64 %121, %116, !dbg !943
  call void @llvm.dbg.value(metadata i64 %122, metadata !827, metadata !DIExpression()), !dbg !842
  %123 = lshr i64 %114, 8, !dbg !944
  call void @llvm.dbg.value(metadata i64 %123, metadata !828, metadata !DIExpression()), !dbg !842
  %124 = icmp eq i64 %123, 0, !dbg !935
  br i1 %124, label %125, label %113, !dbg !935, !llvm.loop !945

125:                                              ; preds = %113, %110
  %126 = phi i64 [ %88, %110 ], [ %122, %113 ], !dbg !842
  call void @llvm.dbg.value(metadata i64 %126, metadata !827, metadata !DIExpression(DW_OP_constu, 4294967295, DW_OP_xor, DW_OP_stack_value)), !dbg !842
  %127 = trunc i64 %126 to i32, !dbg !947
  %128 = xor i32 %127, -1, !dbg !947
  br i1 %1, label %129, label %131, !dbg !949

129:                                              ; preds = %125
  %130 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 %128, i8* %111, i8* %0) #25, !dbg !950
  br label %133, !dbg !950

131:                                              ; preds = %125
  %132 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %128, i8* %111) #25, !dbg !951
  br label %133

133:                                              ; preds = %131, %129
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !952, !tbaa !624
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %134, metadata !876, metadata !DIExpression()), !dbg !954
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 0, !dbg !956
  %136 = load i32, i32* %135, align 8, !dbg !956, !tbaa !879
  %137 = and i32 %136, 32, !dbg !952
  %138 = icmp eq i32 %137, 0, !dbg !952
  br i1 %138, label %143, label %139, !dbg !957

139:                                              ; preds = %133
  %140 = tail call i32* @__errno_location() #28, !dbg !958
  %141 = load i32, i32* %140, align 4, !dbg !958, !tbaa !772
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 5) #25, !dbg !958
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %142) #25, !dbg !958
  unreachable, !dbg !958

143:                                              ; preds = %133, %92, %98, %106, %14
  %144 = phi i1 [ false, %106 ], [ false, %14 ], [ false, %98 ], [ false, %92 ], [ true, %133 ], !dbg !842
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %6) #25, !dbg !959
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %5) #25, !dbg !959
  ret i1 %144, !dbg !959
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !960 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !966, metadata !DIExpression()), !dbg !967
  store i8* %0, i8** @file_name, align 8, !dbg !968, !tbaa !624
  ret void, !dbg !969
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !970 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !974, metadata !DIExpression()), !dbg !975
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !976, !tbaa !977
  ret void, !dbg !979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !980 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !985, !tbaa !624
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #25, !dbg !986
  %3 = icmp eq i32 %2, 0, !dbg !987
  br i1 %3, label %22, label %4, !dbg !988

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !989, !tbaa !977, !range !990
  %6 = icmp eq i8 %5, 0, !dbg !989
  br i1 %6, label %11, label %7, !dbg !991

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #28, !dbg !992
  %9 = load i32, i32* %8, align 4, !dbg !992, !tbaa !772
  %10 = icmp eq i32 %9, 32, !dbg !993
  br i1 %10, label %22, label %11, !dbg !994

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #25, !dbg !995
  call void @llvm.dbg.value(metadata i8* %12, metadata !982, metadata !DIExpression()), !dbg !996
  %13 = load i8*, i8** @file_name, align 8, !dbg !997, !tbaa !624
  %14 = icmp eq i8* %13, null, !dbg !997
  %15 = tail call i32* @__errno_location() #28, !dbg !999
  %16 = load i32, i32* %15, align 4, !dbg !999, !tbaa !772
  br i1 %14, label %19, label %17, !dbg !1000

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #25, !dbg !1001
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #25, !dbg !1002
  br label %20, !dbg !1002

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #25, !dbg !1003
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1004, !tbaa !772
  tail call void @_exit(i32 %21) #27, !dbg !1005
  unreachable, !dbg !1005

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1006, !tbaa !624
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #25, !dbg !1008
  %25 = icmp eq i32 %24, 0, !dbg !1009
  br i1 %25, label %28, label %26, !dbg !1010

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1011, !tbaa !772
  tail call void @_exit(i32 %27) #27, !dbg !1012
  unreachable, !dbg !1012

28:                                               ; preds = %22
  ret void, !dbg !1013
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1020, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %1, metadata !1021, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %2, metadata !1022, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i32 %3, metadata !1023, metadata !DIExpression()), !dbg !1026
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #25, !dbg !1027
  call void @llvm.dbg.value(metadata i32 %5, metadata !1024, metadata !DIExpression()), !dbg !1028
  ret void, !dbg !1029
}

; Function Attrs: nounwind
declare !dbg !1030 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1034 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1072, metadata !DIExpression()), !dbg !1074
  call void @llvm.dbg.value(metadata i32 %1, metadata !1073, metadata !DIExpression()), !dbg !1074
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1075
  br i1 %3, label %7, label %4, !dbg !1077

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %5, metadata !1020, metadata !DIExpression()) #25, !dbg !1079
  call void @llvm.dbg.value(metadata i64 0, metadata !1021, metadata !DIExpression()) #25, !dbg !1079
  call void @llvm.dbg.value(metadata i64 0, metadata !1022, metadata !DIExpression()) #25, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %1, metadata !1023, metadata !DIExpression()) #25, !dbg !1079
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #25, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %6, metadata !1024, metadata !DIExpression()) #25, !dbg !1082
  br label %7, !dbg !1083

7:                                                ; preds = %4, %2
  ret void, !dbg !1084
}

; Function Attrs: nofree nounwind
declare !dbg !1085 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #12 !dbg !1088 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1093, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %1, metadata !1094, metadata !DIExpression()), !dbg !1096
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1097
  call void @llvm.dbg.value(metadata i8* %3, metadata !1095, metadata !DIExpression()), !dbg !1096
  store i8 0, i8* %3, align 1, !dbg !1098, !tbaa !893
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1096
  call void @llvm.dbg.value(metadata i8* %6, metadata !1095, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %5, metadata !1093, metadata !DIExpression()), !dbg !1096
  %7 = urem i64 %5, 10, !dbg !1099
  %8 = trunc i64 %7 to i8, !dbg !1102
  %9 = or i8 %8, 48, !dbg !1102
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %10, metadata !1095, metadata !DIExpression()), !dbg !1096
  store i8 %9, i8* %10, align 1, !dbg !1104, !tbaa !893
  %11 = udiv i64 %5, 10, !dbg !1105
  call void @llvm.dbg.value(metadata i64 %11, metadata !1093, metadata !DIExpression()), !dbg !1096
  %12 = icmp ult i64 %5, 10, !dbg !1106
  br i1 %12, label %13, label %4, !dbg !1107, !llvm.loop !1108

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1095, metadata !DIExpression()), !dbg !1096
  ret i8* %10, !dbg !1111
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1112 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1117, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8** %1, metadata !1118, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %2, metadata !1119, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %3, metadata !1120, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata i8* %4, metadata !1121, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1122, metadata !DIExpression()), !dbg !1141
  %8 = load i32, i32* @opterr, align 4, !dbg !1142, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %8, metadata !1124, metadata !DIExpression()), !dbg !1141
  store i32 0, i32* @opterr, align 4, !dbg !1143, !tbaa !772
  %9 = icmp eq i32 %0, 2, !dbg !1144
  br i1 %9, label %10, label %17, !dbg !1145

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #25, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %11, metadata !1123, metadata !DIExpression()), !dbg !1141
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1147

12:                                               ; preds = %10
  tail call void %5(i32 0) #25, !dbg !1148
  br label %17, !dbg !1149

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1150
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #25, !dbg !1150
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1125, metadata !DIExpression()), !dbg !1151
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1152
  call void @llvm.va_start(i8* nonnull %14), !dbg !1152
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1153, !tbaa !624
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #25, !dbg !1154
  call void @exit(i32 0) #27, !dbg !1155
  unreachable, !dbg !1155

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1156, !tbaa !772
  store i32 0, i32* @optind, align 4, !dbg !1157, !tbaa !772
  ret void, !dbg !1158
}

; Function Attrs: nounwind
declare !dbg !1159 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1165 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1169, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8** %1, metadata !1170, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %2, metadata !1171, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %3, metadata !1172, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %4, metadata !1173, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i1 %5, metadata !1174, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1184
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1175, metadata !DIExpression()), !dbg !1184
  %9 = load i32, i32* @opterr, align 4, !dbg !1185, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %9, metadata !1177, metadata !DIExpression()), !dbg !1184
  store i32 1, i32* @opterr, align 4, !dbg !1186, !tbaa !772
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), !dbg !1187
  call void @llvm.dbg.value(metadata i8* %10, metadata !1178, metadata !DIExpression()), !dbg !1184
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #25, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %11, metadata !1176, metadata !DIExpression()), !dbg !1184
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1189

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1190
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #25, !dbg !1190
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1179, metadata !DIExpression()), !dbg !1191
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1192
  call void @llvm.va_start(i8* nonnull %13), !dbg !1192
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1193, !tbaa !624
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #25, !dbg !1194
  call void @exit(i32 0) #27, !dbg !1195
  unreachable, !dbg !1195

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1196, !tbaa !772
  br label %18, !dbg !1197

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #25, !dbg !1198
  br label %20, !dbg !1199

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1199, !tbaa !772
  ret void, !dbg !1200
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1201 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1203, metadata !DIExpression()), !dbg !1206
  %2 = icmp eq i8* %0, null, !dbg !1207
  br i1 %2, label %3, label %6, !dbg !1209

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1210, !tbaa !624
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #29, !dbg !1212
  tail call void @abort() #27, !dbg !1213
  unreachable, !dbg !1213

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #26, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %7, metadata !1204, metadata !DIExpression()), !dbg !1206
  %8 = icmp eq i8* %7, null, !dbg !1215
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1216
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1216
  call void @llvm.dbg.value(metadata i8* %10, metadata !1205, metadata !DIExpression()), !dbg !1206
  %11 = ptrtoint i8* %10 to i64, !dbg !1217
  %12 = ptrtoint i8* %0 to i64, !dbg !1217
  %13 = sub i64 %11, %12, !dbg !1217
  %14 = icmp sgt i64 %13, 6, !dbg !1219
  br i1 %14, label %15, label %24, !dbg !1220

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1221
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #26, !dbg !1222
  %18 = icmp eq i32 %17, 0, !dbg !1223
  br i1 %18, label %19, label %24, !dbg !1224

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1203, metadata !DIExpression()), !dbg !1206
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #26, !dbg !1225
  %21 = icmp eq i32 %20, 0, !dbg !1228
  br i1 %21, label %22, label %24, !dbg !1229

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %23, metadata !1203, metadata !DIExpression()), !dbg !1206
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1232, !tbaa !624
  br label %24, !dbg !1233

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1203, metadata !DIExpression()), !dbg !1206
  store i8* %25, i8** @program_name, align 8, !dbg !1234, !tbaa !624
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1235, !tbaa !624
  ret void, !dbg !1236
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1237 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1242, metadata !DIExpression()), !dbg !1245
  %2 = tail call i32* @__errno_location() #28, !dbg !1246
  %3 = load i32, i32* %2, align 4, !dbg !1246, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %3, metadata !1243, metadata !DIExpression()), !dbg !1245
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1247
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1247
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1247
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #25, !dbg !1248
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1248
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1244, metadata !DIExpression()), !dbg !1245
  store i32 %3, i32* %2, align 4, !dbg !1249, !tbaa !772
  ret %struct.quoting_options* %8, !dbg !1250
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #15 !dbg !1251 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1257, metadata !DIExpression()), !dbg !1258
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1259
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1259
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1260
  %5 = load i32, i32* %4, align 8, !dbg !1260, !tbaa !1261
  ret i32 %5, !dbg !1263
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1264 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1268, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i32 %1, metadata !1269, metadata !DIExpression()), !dbg !1270
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1271
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1271
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1272
  store i32 %1, i32* %5, align 8, !dbg !1273, !tbaa !1261
  ret void, !dbg !1274
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #16 !dbg !1275 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1279, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8 %1, metadata !1280, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i32 %2, metadata !1281, metadata !DIExpression()), !dbg !1287
  call void @llvm.dbg.value(metadata i8 %1, metadata !1282, metadata !DIExpression()), !dbg !1287
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1288
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1288
  %6 = lshr i8 %1, 5, !dbg !1289
  %7 = zext i8 %6 to i64, !dbg !1289
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1290
  call void @llvm.dbg.value(metadata i32* %8, metadata !1283, metadata !DIExpression()), !dbg !1287
  %9 = and i8 %1, 31, !dbg !1291
  %10 = zext i8 %9 to i32, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %10, metadata !1285, metadata !DIExpression()), !dbg !1287
  %11 = load i32, i32* %8, align 4, !dbg !1292, !tbaa !772
  %12 = lshr i32 %11, %10, !dbg !1293
  %13 = and i32 %12, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %13, metadata !1286, metadata !DIExpression()), !dbg !1287
  %14 = and i32 %2, 1, !dbg !1295
  %15 = xor i32 %13, %14, !dbg !1296
  %16 = shl i32 %15, %10, !dbg !1297
  %17 = xor i32 %16, %11, !dbg !1298
  store i32 %17, i32* %8, align 4, !dbg !1298, !tbaa !772
  ret i32 %13, !dbg !1299
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #16 !dbg !1300 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1304, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i32 %1, metadata !1305, metadata !DIExpression()), !dbg !1307
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1308
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1310
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1304, metadata !DIExpression()), !dbg !1307
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1311
  %6 = load i32, i32* %5, align 4, !dbg !1311, !tbaa !1312
  call void @llvm.dbg.value(metadata i32 %6, metadata !1306, metadata !DIExpression()), !dbg !1307
  store i32 %1, i32* %5, align 4, !dbg !1313, !tbaa !1312
  ret i32 %6, !dbg !1314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1315 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1319, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %1, metadata !1320, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %2, metadata !1321, metadata !DIExpression()), !dbg !1322
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1323
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1319, metadata !DIExpression()), !dbg !1322
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1326
  store i32 10, i32* %6, align 8, !dbg !1327, !tbaa !1261
  %7 = icmp ne i8* %1, null, !dbg !1328
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1330
  br i1 %9, label %11, label %10, !dbg !1330

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !1331
  unreachable, !dbg !1331

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1332
  store i8* %1, i8** %12, align 8, !dbg !1333, !tbaa !1334
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1335
  store i8* %2, i8** %13, align 8, !dbg !1336, !tbaa !1337
  ret void, !dbg !1338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1343, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %1, metadata !1344, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i8* %2, metadata !1345, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata i64 %3, metadata !1346, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1347, metadata !DIExpression()), !dbg !1351
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1352
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1352
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1348, metadata !DIExpression()), !dbg !1351
  %8 = tail call i32* @__errno_location() #28, !dbg !1353
  %9 = load i32, i32* %8, align 4, !dbg !1353, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %9, metadata !1349, metadata !DIExpression()), !dbg !1351
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1354
  %11 = load i32, i32* %10, align 8, !dbg !1354, !tbaa !1261
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1355
  %13 = load i32, i32* %12, align 4, !dbg !1355, !tbaa !1312
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1356
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1357
  %16 = load i8*, i8** %15, align 8, !dbg !1357, !tbaa !1334
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1358
  %18 = load i8*, i8** %17, align 8, !dbg !1358, !tbaa !1337
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %19, metadata !1350, metadata !DIExpression()), !dbg !1351
  store i32 %9, i32* %8, align 4, !dbg !1360, !tbaa !772
  ret i64 %19, !dbg !1361
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1362 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1368, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %1, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %2, metadata !1370, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %3, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %4, metadata !1372, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %5, metadata !1373, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32* %6, metadata !1374, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %7, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %8, metadata !1376, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* null, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1381, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1382, metadata !DIExpression()), !dbg !1438
  %13 = tail call i64 @__ctype_get_mb_cur_max() #25, !dbg !1439
  %14 = icmp eq i64 %13, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i1 %14, metadata !1383, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1438
  %15 = lshr i32 %5, 1, !dbg !1441
  %16 = trunc i32 %15 to i8, !dbg !1441
  %17 = and i8 %16, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i8 %17, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1387, metadata !DIExpression()), !dbg !1438
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1442

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1443
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1444
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1445
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1446
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1438
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1447
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1448
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1449
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %38, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %37, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %36, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %35, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %34, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %33, metadata !1382, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %32, metadata !1381, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %31, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %30, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %29, metadata !1376, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %28, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %27, metadata !1372, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1432), !dbg !1450
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
  ], !dbg !1451

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 5, metadata !1372, metadata !DIExpression()), !dbg !1438
  br label %92, !dbg !1452

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 5, metadata !1372, metadata !DIExpression()), !dbg !1438
  %42 = and i8 %35, 1, !dbg !1454
  %43 = icmp eq i8 %42, 0, !dbg !1454
  br i1 %43, label %44, label %92, !dbg !1452

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1456
  br i1 %45, label %92, label %46, !dbg !1459

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1456, !tbaa !893
  br label %92, !dbg !1456

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %27), !dbg !1460
  call void @llvm.dbg.value(metadata i8* %48, metadata !1375, metadata !DIExpression()), !dbg !1438
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %27), !dbg !1464
  call void @llvm.dbg.value(metadata i8* %49, metadata !1376, metadata !DIExpression()), !dbg !1438
  br label %50, !dbg !1465

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1376, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %51, metadata !1375, metadata !DIExpression()), !dbg !1438
  %53 = and i8 %35, 1, !dbg !1466
  %54 = icmp eq i8 %53, 0, !dbg !1466
  br i1 %54, label %55, label %70, !dbg !1468

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1378, metadata !DIExpression()), !dbg !1438
  %56 = load i8, i8* %51, align 1, !dbg !1469, !tbaa !893
  %57 = icmp eq i8 %56, 0, !dbg !1472
  br i1 %57, label %70, label %58, !dbg !1472

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %61, metadata !1378, metadata !DIExpression()), !dbg !1438
  %62 = icmp ult i64 %61, %39, !dbg !1473
  br i1 %62, label %63, label %65, !dbg !1476

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1473
  store i8 %59, i8* %64, align 1, !dbg !1473, !tbaa !893
  br label %65, !dbg !1473

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %66, metadata !1378, metadata !DIExpression()), !dbg !1438
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1477
  call void @llvm.dbg.value(metadata i8* %67, metadata !1380, metadata !DIExpression()), !dbg !1438
  %68 = load i8, i8* %67, align 1, !dbg !1469, !tbaa !893
  %69 = icmp eq i8 %68, 0, !dbg !1472
  br i1 %69, label %70, label %58, !dbg !1472, !llvm.loop !1478

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1480
  call void @llvm.dbg.value(metadata i64 %71, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1382, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %52, metadata !1380, metadata !DIExpression()), !dbg !1438
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #26, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %72, metadata !1381, metadata !DIExpression()), !dbg !1438
  br label %92, !dbg !1482

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1382, metadata !DIExpression()), !dbg !1438
  br label %74, !dbg !1483

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %75, metadata !1382, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1384, metadata !DIExpression()), !dbg !1438
  br label %76, !dbg !1484

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1446
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %78, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %77, metadata !1382, metadata !DIExpression()), !dbg !1438
  %79 = and i8 %78, 1, !dbg !1485
  %80 = icmp eq i8 %79, 0, !dbg !1485
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1487
  br label %82, !dbg !1487

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1438
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1441
  call void @llvm.dbg.value(metadata i8 %84, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %83, metadata !1382, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 2, metadata !1372, metadata !DIExpression()), !dbg !1438
  %85 = and i8 %84, 1, !dbg !1488
  %86 = icmp eq i8 %85, 0, !dbg !1488
  br i1 %86, label %87, label %92, !dbg !1490

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1491
  br i1 %88, label %92, label %89, !dbg !1494

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1491, !tbaa !893
  br label %92, !dbg !1491

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1384, metadata !DIExpression()), !dbg !1438
  br label %92, !dbg !1495

91:                                               ; preds = %26
  call void @abort() #27, !dbg !1496
  unreachable, !dbg !1496

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1480
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %40 ], !dbg !1438
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1438
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1438
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %100, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %99, metadata !1382, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %98, metadata !1381, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %97, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %96, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %95, metadata !1376, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %94, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %93, metadata !1372, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1377, metadata !DIExpression()), !dbg !1438
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
  br label %121, !dbg !1497

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1498
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1480
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1443
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1447
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1448
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1449
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %128, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %127, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %126, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %125, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %124, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %122, metadata !1377, metadata !DIExpression()), !dbg !1438
  %130 = icmp eq i64 %125, -1, !dbg !1499
  br i1 %130, label %131, label %135, !dbg !1500

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1501
  %133 = load i8, i8* %132, align 1, !dbg !1501, !tbaa !893
  %134 = icmp eq i8 %133, 0, !dbg !1502
  br i1 %134, label %587, label %137, !dbg !1503

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1504
  br i1 %136, label %587, label %137, !dbg !1503

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1394, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1395, metadata !DIExpression()), !dbg !1505
  br i1 %106, label %138, label %153, !dbg !1506

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !1508
  %140 = and i1 %107, %130, !dbg !1509
  br i1 %140, label %141, label %143, !dbg !1509

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %142, metadata !1371, metadata !DIExpression()), !dbg !1438
  br label %143, !dbg !1511

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !1511
  call void @llvm.dbg.value(metadata i64 %144, metadata !1371, metadata !DIExpression()), !dbg !1438
  %145 = icmp ugt i64 %139, %144, !dbg !1512
  br i1 %145, label %153, label %146, !dbg !1513

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1514
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !1515
  %149 = icmp ne i32 %148, 0, !dbg !1516
  %150 = or i1 %149, %109, !dbg !1517
  %151 = xor i1 %149, true, !dbg !1517
  %152 = zext i1 %151 to i8, !dbg !1517
  br i1 %150, label %153, label %646, !dbg !1517

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1505
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1505
  call void @llvm.dbg.value(metadata i8 %156, metadata !1393, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %154, metadata !1371, metadata !DIExpression()), !dbg !1438
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1518
  %158 = load i8, i8* %157, align 1, !dbg !1518, !tbaa !893
  call void @llvm.dbg.value(metadata i8 %158, metadata !1388, metadata !DIExpression()), !dbg !1505
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
  ], !dbg !1519

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !1520

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !1521

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1505
  %162 = and i8 %126, 1, !dbg !1525
  %163 = icmp eq i8 %162, 0, !dbg !1525
  %164 = and i1 %110, %163, !dbg !1525
  br i1 %164, label %165, label %181, !dbg !1525

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !1527
  br i1 %166, label %167, label %169, !dbg !1531

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1527
  store i8 39, i8* %168, align 1, !dbg !1527, !tbaa !893
  br label %169, !dbg !1527

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %170, metadata !1378, metadata !DIExpression()), !dbg !1438
  %171 = icmp ult i64 %170, %129, !dbg !1532
  br i1 %171, label %172, label %174, !dbg !1535

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1532
  store i8 36, i8* %173, align 1, !dbg !1532, !tbaa !893
  br label %174, !dbg !1532

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %175, metadata !1378, metadata !DIExpression()), !dbg !1438
  %176 = icmp ult i64 %175, %129, !dbg !1536
  br i1 %176, label %177, label %179, !dbg !1539

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1536
  store i8 39, i8* %178, align 1, !dbg !1536, !tbaa !893
  br label %179, !dbg !1536

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %180, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1385, metadata !DIExpression()), !dbg !1438
  br label %181, !dbg !1540

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1438
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %183, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %182, metadata !1378, metadata !DIExpression()), !dbg !1438
  %184 = icmp ult i64 %182, %129, !dbg !1541
  br i1 %184, label %185, label %187, !dbg !1544

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1541
  store i8 92, i8* %186, align 1, !dbg !1541, !tbaa !893
  br label %187, !dbg !1541

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %188, metadata !1378, metadata !DIExpression()), !dbg !1438
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !1545
  br i1 %191, label %192, label %473, !dbg !1545

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1547
  %194 = load i8, i8* %193, align 1, !dbg !1547, !tbaa !893
  %195 = add i8 %194, -48, !dbg !1548
  %196 = icmp ult i8 %195, 10, !dbg !1548
  br i1 %196, label %197, label %473, !dbg !1548

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !1549
  br i1 %198, label %199, label %201, !dbg !1553

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1549
  store i8 48, i8* %200, align 1, !dbg !1549, !tbaa !893
  br label %201, !dbg !1549

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %202, metadata !1378, metadata !DIExpression()), !dbg !1438
  %203 = icmp ult i64 %202, %129, !dbg !1554
  br i1 %203, label %204, label %206, !dbg !1557

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1554
  store i8 48, i8* %205, align 1, !dbg !1554, !tbaa !893
  br label %206, !dbg !1554

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %207, metadata !1378, metadata !DIExpression()), !dbg !1438
  br label %473, !dbg !1558

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !1559

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1560

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !1561

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !1563
  br i1 %214, label %215, label %473, !dbg !1563

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !1565
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1566
  %218 = load i8, i8* %217, align 1, !dbg !1566, !tbaa !893
  %219 = icmp eq i8 %218, 63, !dbg !1567
  br i1 %219, label %220, label %473, !dbg !1568

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1569
  %222 = load i8, i8* %221, align 1, !dbg !1569, !tbaa !893
  %223 = sext i8 %222 to i32, !dbg !1569
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
  ], !dbg !1570

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !1571

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 undef, metadata !1377, metadata !DIExpression()), !dbg !1438
  %226 = icmp ult i64 %123, %129, !dbg !1573
  br i1 %226, label %227, label %229, !dbg !1576

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1573
  store i8 63, i8* %228, align 1, !dbg !1573, !tbaa !893
  br label %229, !dbg !1573

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %230, metadata !1378, metadata !DIExpression()), !dbg !1438
  %231 = icmp ult i64 %230, %129, !dbg !1577
  br i1 %231, label %232, label %234, !dbg !1580

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !1577
  store i8 34, i8* %233, align 1, !dbg !1577, !tbaa !893
  br label %234, !dbg !1577

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !1580
  call void @llvm.dbg.value(metadata i64 %235, metadata !1378, metadata !DIExpression()), !dbg !1438
  %236 = icmp ult i64 %235, %129, !dbg !1581
  br i1 %236, label %237, label %239, !dbg !1584

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !1581
  store i8 34, i8* %238, align 1, !dbg !1581, !tbaa !893
  br label %239, !dbg !1581

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !1584
  call void @llvm.dbg.value(metadata i64 %240, metadata !1378, metadata !DIExpression()), !dbg !1438
  %241 = icmp ult i64 %240, %129, !dbg !1585
  br i1 %241, label %242, label %244, !dbg !1588

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !1585
  store i8 63, i8* %243, align 1, !dbg !1585, !tbaa !893
  br label %244, !dbg !1585

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %245, metadata !1378, metadata !DIExpression()), !dbg !1438
  br label %473, !dbg !1589

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1392, metadata !DIExpression()), !dbg !1505
  br label %256, !dbg !1590

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1392, metadata !DIExpression()), !dbg !1505
  br label %256, !dbg !1591

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1392, metadata !DIExpression()), !dbg !1505
  br label %254, !dbg !1592

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1392, metadata !DIExpression()), !dbg !1505
  br label %254, !dbg !1593

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1392, metadata !DIExpression()), !dbg !1505
  br label %256, !dbg !1594

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1392, metadata !DIExpression()), !dbg !1505
  br i1 %110, label %252, label %253, !dbg !1595

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !1596

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !1599

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !1601
  call void @llvm.dbg.value(metadata i8 %255, metadata !1392, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.label(metadata !1433), !dbg !1602
  br i1 %111, label %256, label %631, !dbg !1603

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !1601
  call void @llvm.dbg.value(metadata i8 %257, metadata !1392, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.label(metadata !1434), !dbg !1605
  br i1 %102, label %495, label %473, !dbg !1606

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !1607

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !1608, !tbaa !893
  %261 = icmp eq i8 %260, 0, !dbg !1610
  br i1 %261, label %262, label %473, !dbg !1611

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !1612
  br i1 %263, label %264, label %473, !dbg !1614

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1395, metadata !DIExpression()), !dbg !1505
  br label %265, !dbg !1615

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1505
  call void @llvm.dbg.value(metadata i8 %266, metadata !1395, metadata !DIExpression()), !dbg !1505
  br i1 %111, label %473, label %631, !dbg !1616

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1395, metadata !DIExpression()), !dbg !1505
  br i1 %110, label %268, label %473, !dbg !1618

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !1619

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !1622
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !1624
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !1624
  %274 = select i1 %272, i64 %129, i64 0, !dbg !1624
  call void @llvm.dbg.value(metadata i64 %274, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %273, metadata !1379, metadata !DIExpression()), !dbg !1438
  %275 = icmp ult i64 %123, %274, !dbg !1625
  br i1 %275, label %276, label %278, !dbg !1628

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1625
  store i8 39, i8* %277, align 1, !dbg !1625, !tbaa !893
  br label %278, !dbg !1625

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %279, metadata !1378, metadata !DIExpression()), !dbg !1438
  %280 = icmp ult i64 %279, %274, !dbg !1629
  br i1 %280, label %281, label %283, !dbg !1632

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !1629
  store i8 92, i8* %282, align 1, !dbg !1629, !tbaa !893
  br label %283, !dbg !1629

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %284, metadata !1378, metadata !DIExpression()), !dbg !1438
  %285 = icmp ult i64 %284, %274, !dbg !1633
  br i1 %285, label %286, label %288, !dbg !1636

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !1633
  store i8 39, i8* %287, align 1, !dbg !1633, !tbaa !893
  br label %288, !dbg !1633

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %289, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1438
  br label %473, !dbg !1637

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !1638

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1396, metadata !DIExpression()), !dbg !1639
  %292 = tail call i16** @__ctype_b_loc() #28, !dbg !1640
  %293 = load i16*, i16** %292, align 8, !dbg !1640, !tbaa !624
  %294 = zext i8 %158 to i64, !dbg !1640
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !1640
  %296 = load i16, i16* %295, align 2, !dbg !1640, !tbaa !1642
  %297 = lshr i16 %296, 14, !dbg !1643
  %298 = trunc i16 %297 to i8, !dbg !1643
  %299 = and i8 %298, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i8 %354, metadata !1399, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %355, metadata !1396, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %306, metadata !1371, metadata !DIExpression()), !dbg !1438
  %300 = icmp eq i8 %299, 0, !dbg !1644
  call void @llvm.dbg.value(metadata i1 %357, metadata !1395, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1505
  br label %359, !dbg !1645

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1646
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1400, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8* %23, metadata !1648, metadata !DIExpression()) #25, !dbg !1656
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()) #25, !dbg !1656
  call void @llvm.dbg.value(metadata i64 8, metadata !1655, metadata !DIExpression()) #25, !dbg !1656
  store i64 0, i64* %10, align 8, !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1396, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 1, metadata !1399, metadata !DIExpression()), !dbg !1639
  %302 = icmp eq i64 %154, -1, !dbg !1659
  br i1 %302, label %303, label %305, !dbg !1661

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #26, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %304, metadata !1371, metadata !DIExpression()), !dbg !1438
  br label %305, !dbg !1663

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1505
  call void @llvm.dbg.value(metadata i64 %306, metadata !1371, metadata !DIExpression()), !dbg !1438
  br label %307, !dbg !1664

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !1665
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !1666
  call void @llvm.dbg.value(metadata i8 %309, metadata !1399, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %308, metadata !1396, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1667
  %310 = add i64 %308, %122, !dbg !1668
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !1669
  %312 = sub i64 %306, %310, !dbg !1670
  call void @llvm.dbg.value(metadata i32* %12, metadata !1418, metadata !DIExpression(DW_OP_deref)), !dbg !1671
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #25, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %313, metadata !1421, metadata !DIExpression()), !dbg !1671
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !1673

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1396, metadata !DIExpression()), !dbg !1639
  %315 = icmp ugt i64 %306, %310, !dbg !1674
  br i1 %315, label %316, label %341, !dbg !1676

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !1677
  br label %318, !dbg !1677

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1396, metadata !DIExpression()), !dbg !1639
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !1678
  %322 = load i8, i8* %321, align 1, !dbg !1678, !tbaa !893
  %323 = icmp eq i8 %322, 0, !dbg !1676
  br i1 %323, label %341, label %324, !dbg !1677

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %325, metadata !1396, metadata !DIExpression()), !dbg !1639
  %326 = add i64 %325, %122, !dbg !1680
  %327 = icmp ult i64 %326, %306, !dbg !1674
  br i1 %327, label %318, label %341, !dbg !1676, !llvm.loop !1681

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !1682
  call void @llvm.dbg.value(metadata i64 1, metadata !1422, metadata !DIExpression()), !dbg !1683
  br i1 %330, label %331, label %344, !dbg !1682

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1422, metadata !DIExpression()), !dbg !1683
  %333 = add i64 %332, %310, !dbg !1684
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !1687
  %335 = load i8, i8* %334, align 1, !dbg !1687, !tbaa !893
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
  call void @llvm.dbg.value(metadata i64 %338, metadata !1422, metadata !DIExpression()), !dbg !1683
  %339 = icmp eq i64 %338, %313, !dbg !1690
  br i1 %339, label %344, label %331, !dbg !1691, !llvm.loop !1692

340:                                              ; preds = %307
  br label %341, !dbg !1694

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1399, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 undef, metadata !1396, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1694
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !1695, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %345, metadata !1418, metadata !DIExpression()), !dbg !1671
  %346 = call i32 @iswprint(i32 %345) #25, !dbg !1697
  %347 = icmp eq i32 %346, 0, !dbg !1697
  %348 = select i1 %347, i8 0, i8 %309, !dbg !1698
  call void @llvm.dbg.value(metadata i8 %348, metadata !1399, metadata !DIExpression()), !dbg !1639
  %349 = add i64 %313, %308, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %349, metadata !1396, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1694
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #26, !dbg !1700
  %351 = icmp eq i32 %350, 0, !dbg !1701
  br i1 %351, label %307, label %353, !dbg !1702, !llvm.loop !1703

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1399, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 undef, metadata !1396, metadata !DIExpression()), !dbg !1639
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #25, !dbg !1694
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1705
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #25, !dbg !1705
  call void @llvm.dbg.value(metadata i8 %354, metadata !1399, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %355, metadata !1396, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i64 %306, metadata !1371, metadata !DIExpression()), !dbg !1438
  %356 = and i8 %354, 1, !dbg !1644
  %357 = icmp eq i8 %356, 0, !dbg !1644
  call void @llvm.dbg.value(metadata i1 %357, metadata !1395, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1505
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
  %366 = and i8 %361, 1, !dbg !1505
  call void @llvm.dbg.value(metadata i8 %472, metadata !1395, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %441, metadata !1394, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %440, metadata !1393, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %439, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %438, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %371, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %437, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %375, metadata !1377, metadata !DIExpression()), !dbg !1438
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %372, metadata !1429, metadata !DIExpression()), !dbg !1709
  %373 = and i1 %102, %368
  br label %374, !dbg !1710

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1498
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1438
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1447
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1505
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1505
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !1711
  call void @llvm.dbg.value(metadata i8 %380, metadata !1394, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %379, metadata !1393, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %378, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %377, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %376, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %375, metadata !1377, metadata !DIExpression()), !dbg !1438
  br i1 %373, label %381, label %427, !dbg !1712

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !1717

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1505
  %383 = and i8 %377, 1, !dbg !1720
  %384 = icmp eq i8 %383, 0, !dbg !1720
  %385 = and i1 %110, %384, !dbg !1720
  br i1 %385, label %386, label %402, !dbg !1720

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !1722
  br i1 %387, label %388, label %390, !dbg !1726

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !1722
  store i8 39, i8* %389, align 1, !dbg !1722, !tbaa !893
  br label %390, !dbg !1722

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %391, metadata !1378, metadata !DIExpression()), !dbg !1438
  %392 = icmp ult i64 %391, %129, !dbg !1727
  br i1 %392, label %393, label %395, !dbg !1730

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !1727
  store i8 36, i8* %394, align 1, !dbg !1727, !tbaa !893
  br label %395, !dbg !1727

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %396, metadata !1378, metadata !DIExpression()), !dbg !1438
  %397 = icmp ult i64 %396, %129, !dbg !1731
  br i1 %397, label %398, label %400, !dbg !1734

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1731
  store i8 39, i8* %399, align 1, !dbg !1731, !tbaa !893
  br label %400, !dbg !1731

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %401, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1385, metadata !DIExpression()), !dbg !1438
  br label %402, !dbg !1735

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1438
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %404, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %403, metadata !1378, metadata !DIExpression()), !dbg !1438
  %405 = icmp ult i64 %403, %129, !dbg !1736
  br i1 %405, label %406, label %408, !dbg !1739

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1736
  store i8 92, i8* %407, align 1, !dbg !1736, !tbaa !893
  br label %408, !dbg !1736

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %409, metadata !1378, metadata !DIExpression()), !dbg !1438
  %410 = icmp ult i64 %409, %129, !dbg !1740
  br i1 %410, label %411, label %415, !dbg !1743

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !1740
  %413 = or i8 %412, 48, !dbg !1740
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !1740
  store i8 %413, i8* %414, align 1, !dbg !1740, !tbaa !893
  br label %415, !dbg !1740

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %416, metadata !1378, metadata !DIExpression()), !dbg !1438
  %417 = icmp ult i64 %416, %129, !dbg !1744
  br i1 %417, label %418, label %423, !dbg !1747

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !1744
  %420 = and i8 %419, 7, !dbg !1744
  %421 = or i8 %420, 48, !dbg !1744
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !1744
  store i8 %421, i8* %422, align 1, !dbg !1744, !tbaa !893
  br label %423, !dbg !1744

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %424, metadata !1378, metadata !DIExpression()), !dbg !1438
  %425 = and i8 %378, 7, !dbg !1748
  %426 = or i8 %425, 48, !dbg !1749
  call void @llvm.dbg.value(metadata i8 %426, metadata !1388, metadata !DIExpression()), !dbg !1505
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
  store i8 92, i8* %433, align 1, !dbg !1754, !tbaa !893
  br label %434, !dbg !1754

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %435, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1393, metadata !DIExpression()), !dbg !1505
  br label %436, !dbg !1759

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1438
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1447
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1505
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1505
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1505
  call void @llvm.dbg.value(metadata i8 %441, metadata !1394, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %440, metadata !1393, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %439, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %438, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %437, metadata !1378, metadata !DIExpression()), !dbg !1438
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
  store i8 39, i8* %453, align 1, !dbg !1767, !tbaa !893
  br label %454, !dbg !1767

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %455, metadata !1378, metadata !DIExpression()), !dbg !1438
  %456 = icmp ult i64 %455, %129, !dbg !1772
  br i1 %456, label %457, label %459, !dbg !1775

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !1772
  store i8 39, i8* %458, align 1, !dbg !1772, !tbaa !893
  br label %459, !dbg !1772

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %460, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1438
  br label %461, !dbg !1776

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !1777
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %463, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %462, metadata !1378, metadata !DIExpression()), !dbg !1438
  %464 = icmp ult i64 %462, %129, !dbg !1778
  br i1 %464, label %465, label %467, !dbg !1781

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !1778
  store i8 %439, i8* %466, align 1, !dbg !1778, !tbaa !893
  br label %467, !dbg !1778

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %468, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %442, metadata !1377, metadata !DIExpression()), !dbg !1438
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !1782
  %470 = load i8, i8* %469, align 1, !dbg !1782, !tbaa !893
  call void @llvm.dbg.value(metadata i8 %470, metadata !1388, metadata !DIExpression()), !dbg !1505
  br label %374, !dbg !1783, !llvm.loop !1784

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1505
  call void @llvm.dbg.value(metadata i8 %472, metadata !1395, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %441, metadata !1394, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %440, metadata !1393, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %439, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %438, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %371, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %437, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %375, metadata !1377, metadata !DIExpression()), !dbg !1438
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1498
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1438
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1443
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !1787
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1438
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1438
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1505
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1505
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1505
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %482, metadata !1395, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %481, metadata !1394, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %156, metadata !1393, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %480, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %479, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %478, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %477, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %476, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %475, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %474, metadata !1377, metadata !DIExpression()), !dbg !1438
  br i1 %116, label %494, label %484, !dbg !1788

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !1790
  %486 = zext i8 %485 to i64, !dbg !1790
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !1791
  %488 = load i32, i32* %487, align 4, !dbg !1791, !tbaa !772
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
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1438
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1443
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !1787
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1447
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1448
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1505
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1505
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %503, metadata !1395, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %502, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %501, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %500, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %499, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %498, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %497, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %496, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1435), !dbg !1797
  br i1 %109, label %505, label %635, !dbg !1798

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1505
  %506 = and i8 %500, 1, !dbg !1800
  %507 = icmp eq i8 %506, 0, !dbg !1800
  %508 = and i1 %110, %507, !dbg !1800
  br i1 %508, label %509, label %525, !dbg !1800

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !1802
  br i1 %510, label %511, label %513, !dbg !1806

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !1802
  store i8 39, i8* %512, align 1, !dbg !1802, !tbaa !893
  br label %513, !dbg !1802

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %514, metadata !1378, metadata !DIExpression()), !dbg !1438
  %515 = icmp ult i64 %514, %504, !dbg !1807
  br i1 %515, label %516, label %518, !dbg !1810

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !1807
  store i8 36, i8* %517, align 1, !dbg !1807, !tbaa !893
  br label %518, !dbg !1807

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %519, metadata !1378, metadata !DIExpression()), !dbg !1438
  %520 = icmp ult i64 %519, %504, !dbg !1811
  br i1 %520, label %521, label %523, !dbg !1814

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !1811
  store i8 39, i8* %522, align 1, !dbg !1811, !tbaa !893
  br label %523, !dbg !1811

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %524, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1385, metadata !DIExpression()), !dbg !1438
  br label %525, !dbg !1815

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1505
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %527, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %526, metadata !1378, metadata !DIExpression()), !dbg !1438
  %528 = icmp ult i64 %526, %504, !dbg !1816
  br i1 %528, label %529, label %531, !dbg !1819

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1816
  store i8 92, i8* %530, align 1, !dbg !1816, !tbaa !893
  br label %531, !dbg !1816

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %543, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %542, metadata !1395, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %541, metadata !1394, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %540, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %539, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %538, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %537, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %536, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %535, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %534, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1436), !dbg !1820
  br label %560, !dbg !1821

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !1796
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1438
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1443
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !1787
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1447
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1448
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !1824
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1505
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1505
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %542, metadata !1395, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %541, metadata !1394, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %540, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %539, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %538, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %537, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %536, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %535, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %534, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1436), !dbg !1820
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
  store i8 39, i8* %552, align 1, !dbg !1825, !tbaa !893
  br label %553, !dbg !1825

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %554, metadata !1378, metadata !DIExpression()), !dbg !1438
  %555 = icmp ult i64 %554, %543, !dbg !1830
  br i1 %555, label %556, label %558, !dbg !1833

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !1830
  store i8 39, i8* %557, align 1, !dbg !1830, !tbaa !893
  br label %558, !dbg !1830

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %559, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1385, metadata !DIExpression()), !dbg !1438
  br label %560, !dbg !1834

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1505
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8 %569, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %568, metadata !1378, metadata !DIExpression()), !dbg !1438
  %570 = icmp ult i64 %568, %561, !dbg !1835
  br i1 %570, label %571, label %573, !dbg !1838

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !1835
  store i8 %563, i8* %572, align 1, !dbg !1835, !tbaa !893
  br label %573, !dbg !1835

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %574, metadata !1378, metadata !DIExpression()), !dbg !1438
  %575 = icmp eq i8 %562, 0, !dbg !1839
  %576 = select i1 %575, i8 0, i8 %128, !dbg !1841
  call void @llvm.dbg.value(metadata i8 %576, metadata !1387, metadata !DIExpression()), !dbg !1438
  br label %577, !dbg !1842

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !1796
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1438
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1443
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !1787
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1447
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1438
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1449
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %584, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %583, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %582, metadata !1385, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %581, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %580, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %579, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %578, metadata !1377, metadata !DIExpression()), !dbg !1438
  %586 = add i64 %578, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %586, metadata !1377, metadata !DIExpression()), !dbg !1438
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
  call void @llvm.dbg.value(metadata i8* %97, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1378, metadata !DIExpression()), !dbg !1438
  %612 = load i8, i8* %97, align 1, !dbg !1864, !tbaa !893
  %613 = icmp eq i8 %612, 0, !dbg !1867
  br i1 %613, label %626, label %614, !dbg !1867

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %617, metadata !1378, metadata !DIExpression()), !dbg !1438
  %618 = icmp ult i64 %617, %129, !dbg !1868
  br i1 %618, label %619, label %621, !dbg !1871

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !1868
  store i8 %615, i8* %620, align 1, !dbg !1868, !tbaa !893
  br label %621, !dbg !1868

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %622, metadata !1378, metadata !DIExpression()), !dbg !1438
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !1872
  call void @llvm.dbg.value(metadata i8* %623, metadata !1380, metadata !DIExpression()), !dbg !1438
  %624 = load i8, i8* %623, align 1, !dbg !1864, !tbaa !893
  %625 = icmp eq i8 %624, 0, !dbg !1867
  br i1 %625, label %626, label %614, !dbg !1867, !llvm.loop !1873

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1480
  call void @llvm.dbg.value(metadata i64 %627, metadata !1378, metadata !DIExpression()), !dbg !1438
  %628 = icmp ult i64 %627, %129, !dbg !1875
  br i1 %628, label %629, label %652, !dbg !1877

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !1878
  store i8 0, i8* %630, align 1, !dbg !1879, !tbaa !893
  br label %652, !dbg !1878

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %637, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1437), !dbg !1880
  %633 = icmp eq i8 %101, 0, !dbg !1881
  %634 = select i1 %633, i32 2, i32 4, !dbg !1881
  br label %642, !dbg !1881

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1369, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %637, metadata !1371, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1437), !dbg !1880
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
  call void @llvm.dbg.value(metadata i32 %649, metadata !1372, metadata !DIExpression()), !dbg !1438
  %650 = and i32 %5, -3, !dbg !1884
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !1885
  br label %652, !dbg !1886

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !1887
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !1888 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1892, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i32 %1, metadata !1893, metadata !DIExpression()), !dbg !1896
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #25, !dbg !1897
  call void @llvm.dbg.value(metadata i8* %3, metadata !1894, metadata !DIExpression()), !dbg !1896
  %4 = icmp eq i8* %3, %0, !dbg !1898
  br i1 %4, label %5, label %72, !dbg !1900

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #25, !dbg !1901
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
  %7 = load i8, i8* %6, align 1, !dbg !1921, !tbaa !893
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
  %12 = load i8, i8* %11, align 1, !dbg !1941, !tbaa !893
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
  %17 = load i8, i8* %16, align 1, !dbg !1960, !tbaa !893
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
  %22 = load i8, i8* %21, align 1, !dbg !1978, !tbaa !893
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
  %26 = load i8, i8* %25, align 1, !dbg !1996, !tbaa !893
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
  %30 = load i8, i8* %29, align 1, !dbg !2013, !tbaa !893
  %31 = icmp eq i8 %30, 0, !dbg !2013
  br i1 %31, label %32, label %69, !dbg !2015

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2016, !tbaa !893
  %34 = icmp eq i8 %33, 96, !dbg !2017
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !2016
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
  %38 = load i8, i8* %37, align 1, !dbg !2023, !tbaa !893
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
  %43 = load i8, i8* %42, align 1, !dbg !2026, !tbaa !893
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
  %47 = load i8, i8* %46, align 1, !dbg !2030, !tbaa !893
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
  %51 = load i8, i8* %50, align 1, !dbg !2034, !tbaa !893
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
  %55 = load i8, i8* %54, align 1, !dbg !2038, !tbaa !893
  %56 = icmp eq i8 %55, 51, !dbg !2038
  br i1 %56, label %57, label %69, !dbg !2039

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2040, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8* undef, metadata !2045, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 48, metadata !2046, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2049
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2053
  %59 = load i8, i8* %58, align 1, !dbg !2053, !tbaa !893
  %60 = icmp eq i8 %59, 48, !dbg !2053
  br i1 %60, label %61, label %69, !dbg !2055

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2056, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8* undef, metadata !2061, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 0, metadata !2062, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i8 0, metadata !2063, metadata !DIExpression()), !dbg !2064
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2068
  %63 = load i8, i8* %62, align 1, !dbg !2068, !tbaa !893
  %64 = icmp eq i8 %63, 0, !dbg !2068
  br i1 %64, label %65, label %69, !dbg !2070

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2071, !tbaa !893
  %67 = icmp eq i8 %66, 96, !dbg !2072
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !2071
  br label %72, !dbg !2073

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2074
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !2075
  br label %72, !dbg !2076

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !1896
  ret i8* %73, !dbg !2077
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

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
  call void @llvm.dbg.value(metadata i8* %0, metadata !2096, metadata !DIExpression()) #25, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %1, metadata !2101, metadata !DIExpression()) #25, !dbg !2109
  call void @llvm.dbg.value(metadata i64* null, metadata !2102, metadata !DIExpression()) #25, !dbg !2109
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2103, metadata !DIExpression()) #25, !dbg !2109
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2111
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2111
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2104, metadata !DIExpression()) #25, !dbg !2109
  %6 = tail call i32* @__errno_location() #28, !dbg !2112
  %7 = load i32, i32* %6, align 4, !dbg !2112, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %7, metadata !2105, metadata !DIExpression()) #25, !dbg !2109
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2113
  %9 = load i32, i32* %8, align 4, !dbg !2113, !tbaa !1312
  %10 = or i32 %9, 1, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %10, metadata !2106, metadata !DIExpression()) #25, !dbg !2109
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2115
  %12 = load i32, i32* %11, align 8, !dbg !2115, !tbaa !1261
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2116
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2117
  %15 = load i8*, i8** %14, align 8, !dbg !2117, !tbaa !1334
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2118
  %17 = load i8*, i8** %16, align 8, !dbg !2118, !tbaa !1337
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #25, !dbg !2119
  %19 = add i64 %18, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %19, metadata !2107, metadata !DIExpression()) #25, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %19, metadata !2121, metadata !DIExpression()) #25, !dbg !2126
  %20 = tail call noalias i8* @xmalloc(i64 %19) #25, !dbg !2128
  call void @llvm.dbg.value(metadata i8* %20, metadata !2108, metadata !DIExpression()) #25, !dbg !2109
  %21 = load i32, i32* %11, align 8, !dbg !2129, !tbaa !1261
  %22 = load i8*, i8** %14, align 8, !dbg !2130, !tbaa !1334
  %23 = load i8*, i8** %16, align 8, !dbg !2131, !tbaa !1337
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #25, !dbg !2132
  store i32 %7, i32* %6, align 4, !dbg !2133, !tbaa !772
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
  %7 = tail call i32* @__errno_location() #28, !dbg !2137
  %8 = load i32, i32* %7, align 4, !dbg !2137, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %8, metadata !2105, metadata !DIExpression()), !dbg !2135
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2138
  %10 = load i32, i32* %9, align 4, !dbg !2138, !tbaa !1312
  %11 = icmp eq i64* %2, null, !dbg !2139
  %12 = zext i1 %11 to i32, !dbg !2139
  %13 = or i32 %10, %12, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %13, metadata !2106, metadata !DIExpression()), !dbg !2135
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2141
  %15 = load i32, i32* %14, align 8, !dbg !2141, !tbaa !1261
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2142
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2143
  %18 = load i8*, i8** %17, align 8, !dbg !2143, !tbaa !1334
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2144
  %20 = load i8*, i8** %19, align 8, !dbg !2144, !tbaa !1337
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2145
  %22 = add i64 %21, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %22, metadata !2107, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %22, metadata !2121, metadata !DIExpression()) #25, !dbg !2147
  %23 = tail call noalias i8* @xmalloc(i64 %22) #25, !dbg !2149
  call void @llvm.dbg.value(metadata i8* %23, metadata !2108, metadata !DIExpression()), !dbg !2135
  %24 = load i32, i32* %14, align 8, !dbg !2150, !tbaa !1261
  %25 = load i8*, i8** %17, align 8, !dbg !2151, !tbaa !1334
  %26 = load i8*, i8** %19, align 8, !dbg !2152, !tbaa !1337
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2153
  store i32 %8, i32* %7, align 4, !dbg !2154, !tbaa !772
  br i1 %11, label %29, label %28, !dbg !2155

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2156, !tbaa !896
  br label %29, !dbg !2158

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2159
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2160 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2164, !tbaa !624
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2162, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 1, metadata !2163, metadata !DIExpression()), !dbg !2165
  %2 = load i32, i32* @nslots, align 4, !dbg !2166, !tbaa !772
  %3 = icmp sgt i32 %2, 1, !dbg !2169
  br i1 %3, label %4, label %12, !dbg !2170

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2169
  br label %6, !dbg !2170

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2163, metadata !DIExpression()), !dbg !2165
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2171
  %9 = load i8*, i8** %8, align 8, !dbg !2171, !tbaa !2172
  tail call void @free(i8* %9) #25, !dbg !2174
  %10 = add nuw nsw i64 %7, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %10, metadata !2163, metadata !DIExpression()), !dbg !2165
  %11 = icmp eq i64 %10, %5, !dbg !2169
  br i1 %11, label %12, label %6, !dbg !2170, !llvm.loop !2176

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2178
  %14 = load i8*, i8** %13, align 8, !dbg !2178, !tbaa !2172
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2180
  br i1 %15, label %17, label %16, !dbg !2181

16:                                               ; preds = %12
  tail call void @free(i8* %14) #25, !dbg !2182
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2184, !tbaa !2185
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2186, !tbaa !2172
  br label %17, !dbg !2187

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2188
  br i1 %18, label %21, label %19, !dbg !2190

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2191
  tail call void @free(i8* %20) #25, !dbg !2193
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2194, !tbaa !624
  br label %21, !dbg !2195

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2196, !tbaa !772
  ret void, !dbg !2197
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %1, metadata !2201, metadata !DIExpression()), !dbg !2202
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2203
  ret i8* %3, !dbg !2204
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2209, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %1, metadata !2210, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %2, metadata !2211, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2212, metadata !DIExpression()), !dbg !2224
  %5 = tail call i32* @__errno_location() #28, !dbg !2225
  %6 = load i32, i32* %5, align 4, !dbg !2225, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %6, metadata !2213, metadata !DIExpression()), !dbg !2224
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2226, !tbaa !624
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2214, metadata !DIExpression()), !dbg !2224
  %8 = icmp slt i32 %0, 0, !dbg !2227
  br i1 %8, label %9, label %10, !dbg !2229

9:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2230
  unreachable, !dbg !2230

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2231, !tbaa !772
  %12 = icmp sgt i32 %11, %0, !dbg !2232
  br i1 %12, label %34, label %13, !dbg !2233

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2234
  call void @llvm.dbg.value(metadata i1 %14, metadata !2215, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2235
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2218, metadata !DIExpression()), !dbg !2235
  %15 = icmp eq i32 %0, 2147483647, !dbg !2236
  br i1 %15, label %16, label %17, !dbg !2238

16:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2239
  unreachable, !dbg !2239

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2240
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2240
  %20 = add nuw nsw i32 %0, 1, !dbg !2241
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2242
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #25, !dbg !2243
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2243
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2214, metadata !DIExpression()), !dbg !2224
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2244, !tbaa !624
  br i1 %14, label %25, label %26, !dbg !2245

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2246, !tbaa.struct !2248
  br label %26, !dbg !2249

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2250, !tbaa !772
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2251
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2252
  %31 = sub nsw i32 %20, %27, !dbg !2253
  %32 = sext i32 %31 to i64, !dbg !2254
  %33 = shl nsw i64 %32, 4, !dbg !2255
  call void @llvm.dbg.value(metadata i8* %30, metadata !1648, metadata !DIExpression()) #25, !dbg !2256
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()) #25, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %33, metadata !1655, metadata !DIExpression()) #25, !dbg !2256
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #25, !dbg !2258
  store i32 %20, i32* @nslots, align 4, !dbg !2259, !tbaa !772
  br label %34, !dbg !2260

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2224
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2214, metadata !DIExpression()), !dbg !2224
  %36 = zext i32 %0 to i64, !dbg !2261
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2262
  %38 = load i64, i64* %37, align 8, !dbg !2262, !tbaa !2185
  call void @llvm.dbg.value(metadata i64 %38, metadata !2219, metadata !DIExpression()), !dbg !2263
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2264
  %40 = load i8*, i8** %39, align 8, !dbg !2264, !tbaa !2172
  call void @llvm.dbg.value(metadata i8* %40, metadata !2221, metadata !DIExpression()), !dbg !2263
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2265
  %42 = load i32, i32* %41, align 4, !dbg !2265, !tbaa !1312
  %43 = or i32 %42, 1, !dbg !2266
  call void @llvm.dbg.value(metadata i32 %43, metadata !2222, metadata !DIExpression()), !dbg !2263
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2267
  %45 = load i32, i32* %44, align 8, !dbg !2267, !tbaa !1261
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2268
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2269
  %48 = load i8*, i8** %47, align 8, !dbg !2269, !tbaa !1334
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2270
  %50 = load i8*, i8** %49, align 8, !dbg !2270, !tbaa !1337
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %51, metadata !2223, metadata !DIExpression()), !dbg !2263
  %52 = icmp ugt i64 %38, %51, !dbg !2272
  br i1 %52, label %63, label %53, !dbg !2274

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %54, metadata !2219, metadata !DIExpression()), !dbg !2263
  store i64 %54, i64* %37, align 8, !dbg !2277, !tbaa !2185
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2278
  br i1 %55, label %57, label %56, !dbg !2280

56:                                               ; preds = %53
  tail call void @free(i8* %40) #25, !dbg !2281
  br label %57, !dbg !2281

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2121, metadata !DIExpression()) #25, !dbg !2282
  %58 = tail call noalias i8* @xmalloc(i64 %54) #25, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %58, metadata !2221, metadata !DIExpression()), !dbg !2263
  store i8* %58, i8** %39, align 8, !dbg !2285, !tbaa !2172
  %59 = load i32, i32* %44, align 8, !dbg !2286, !tbaa !1261
  %60 = load i8*, i8** %47, align 8, !dbg !2287, !tbaa !1334
  %61 = load i8*, i8** %49, align 8, !dbg !2288, !tbaa !1337
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2289
  br label %63, !dbg !2290

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2263
  call void @llvm.dbg.value(metadata i8* %64, metadata !2221, metadata !DIExpression()), !dbg !2263
  store i32 %6, i32* %5, align 4, !dbg !2291, !tbaa !772
  ret i8* %64, !dbg !2292
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2297, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8* %1, metadata !2298, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %2, metadata !2299, metadata !DIExpression()), !dbg !2300
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2301
  ret i8* %4, !dbg !2302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2303 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2305, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 0, metadata !2200, metadata !DIExpression()) #25, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %0, metadata !2201, metadata !DIExpression()) #25, !dbg !2307
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2309
  ret i8* %2, !dbg !2310
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2311 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2315, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i64 %1, metadata !2316, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata i32 0, metadata !2297, metadata !DIExpression()) #25, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %0, metadata !2298, metadata !DIExpression()) #25, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %1, metadata !2299, metadata !DIExpression()) #25, !dbg !2318
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #25, !dbg !2320
  ret i8* %3, !dbg !2321
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2322 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2326, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i32 %1, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.value(metadata i8* %2, metadata !2328, metadata !DIExpression()), !dbg !2330
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2331
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2331
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2329, metadata !DIExpression()), !dbg !2332
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2333), !dbg !2336
  call void @llvm.dbg.value(metadata i32 %1, metadata !2337, metadata !DIExpression()) #25, !dbg !2343
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2342, metadata !DIExpression()) #25, !dbg !2345
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2345, !alias.scope !2333
  %6 = icmp eq i32 %1, 10, !dbg !2346
  br i1 %6, label %7, label %8, !dbg !2348

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2349, !noalias !2333
  unreachable, !dbg !2349

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2350
  store i32 %1, i32* %9, align 8, !dbg !2351, !tbaa !1261, !alias.scope !2333
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2352
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2353
  ret i8* %10, !dbg !2354
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2355 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2359, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i32 %1, metadata !2360, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8* %2, metadata !2361, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i64 %3, metadata !2362, metadata !DIExpression()), !dbg !2364
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2365
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2365
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2363, metadata !DIExpression()), !dbg !2366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2367), !dbg !2370
  call void @llvm.dbg.value(metadata i32 %1, metadata !2337, metadata !DIExpression()) #25, !dbg !2371
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2342, metadata !DIExpression()) #25, !dbg !2373
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #25, !dbg !2373, !alias.scope !2367
  %7 = icmp eq i32 %1, 10, !dbg !2374
  br i1 %7, label %8, label %9, !dbg !2375

8:                                                ; preds = %4
  tail call void @abort() #27, !dbg !2376, !noalias !2367
  unreachable, !dbg !2376

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2377
  store i32 %1, i32* %10, align 8, !dbg !2378, !tbaa !1261, !alias.scope !2367
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2379
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2380
  ret i8* %11, !dbg !2381
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2382 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2386, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8* %1, metadata !2387, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 0, metadata !2326, metadata !DIExpression()) #25, !dbg !2389
  call void @llvm.dbg.value(metadata i32 %0, metadata !2327, metadata !DIExpression()) #25, !dbg !2389
  call void @llvm.dbg.value(metadata i8* %1, metadata !2328, metadata !DIExpression()) #25, !dbg !2389
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2391
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2391
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2329, metadata !DIExpression()) #25, !dbg !2392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393) #25, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %0, metadata !2337, metadata !DIExpression()) #25, !dbg !2397
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2342, metadata !DIExpression()) #25, !dbg !2399
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #25, !dbg !2399, !alias.scope !2393
  %5 = icmp eq i32 %0, 10, !dbg !2400
  br i1 %5, label %6, label %7, !dbg !2401

6:                                                ; preds = %2
  tail call void @abort() #27, !dbg !2402, !noalias !2393
  unreachable, !dbg !2402

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2403
  store i32 %0, i32* %8, align 8, !dbg !2404, !tbaa !1261, !alias.scope !2393
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2405
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2406
  ret i8* %9, !dbg !2407
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2408 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8* %1, metadata !2413, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i64 %2, metadata !2414, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 0, metadata !2359, metadata !DIExpression()) #25, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %0, metadata !2360, metadata !DIExpression()) #25, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %1, metadata !2361, metadata !DIExpression()) #25, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %2, metadata !2362, metadata !DIExpression()) #25, !dbg !2416
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2418
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2418
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2363, metadata !DIExpression()) #25, !dbg !2419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2420) #25, !dbg !2423
  call void @llvm.dbg.value(metadata i32 %0, metadata !2337, metadata !DIExpression()) #25, !dbg !2424
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2342, metadata !DIExpression()) #25, !dbg !2426
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #25, !dbg !2426, !alias.scope !2420
  %6 = icmp eq i32 %0, 10, !dbg !2427
  br i1 %6, label %7, label %8, !dbg !2428

7:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2429, !noalias !2420
  unreachable, !dbg !2429

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2430
  store i32 %0, i32* %9, align 8, !dbg !2431, !tbaa !1261, !alias.scope !2420
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #25, !dbg !2432
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2433
  ret i8* %10, !dbg !2434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2435 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2439, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i64 %1, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 %2, metadata !2441, metadata !DIExpression()), !dbg !2443
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2444
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2444
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2442, metadata !DIExpression()), !dbg !2445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2446, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1279, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %2, metadata !1280, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 1, metadata !1281, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 %2, metadata !1282, metadata !DIExpression()), !dbg !2448
  %6 = lshr i8 %2, 5, !dbg !2450
  %7 = zext i8 %6 to i64, !dbg !2450
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2451
  call void @llvm.dbg.value(metadata i32* %8, metadata !1283, metadata !DIExpression()), !dbg !2448
  %9 = and i8 %2, 31, !dbg !2452
  %10 = zext i8 %9 to i32, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %10, metadata !1285, metadata !DIExpression()), !dbg !2448
  %11 = load i32, i32* %8, align 4, !dbg !2453, !tbaa !772
  %12 = lshr i32 %11, %10, !dbg !2454
  %13 = and i32 %12, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %13, metadata !1286, metadata !DIExpression()), !dbg !2448
  %14 = xor i32 %13, 1, !dbg !2456
  %15 = shl i32 %14, %10, !dbg !2457
  %16 = xor i32 %15, %11, !dbg !2458
  store i32 %16, i32* %8, align 4, !dbg !2458, !tbaa !772
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2459
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2460
  ret i8* %17, !dbg !2461
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2462 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 %1, metadata !2467, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8* %0, metadata !2439, metadata !DIExpression()) #25, !dbg !2469
  call void @llvm.dbg.value(metadata i64 -1, metadata !2440, metadata !DIExpression()) #25, !dbg !2469
  call void @llvm.dbg.value(metadata i8 %1, metadata !2441, metadata !DIExpression()) #25, !dbg !2469
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2471
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2471
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2442, metadata !DIExpression()) #25, !dbg !2472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2473, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1279, metadata !DIExpression()) #25, !dbg !2474
  call void @llvm.dbg.value(metadata i8 %1, metadata !1280, metadata !DIExpression()) #25, !dbg !2474
  call void @llvm.dbg.value(metadata i32 1, metadata !1281, metadata !DIExpression()) #25, !dbg !2474
  call void @llvm.dbg.value(metadata i8 %1, metadata !1282, metadata !DIExpression()) #25, !dbg !2474
  %5 = lshr i8 %1, 5, !dbg !2476
  %6 = zext i8 %5 to i64, !dbg !2476
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2477
  call void @llvm.dbg.value(metadata i32* %7, metadata !1283, metadata !DIExpression()) #25, !dbg !2474
  %8 = and i8 %1, 31, !dbg !2478
  %9 = zext i8 %8 to i32, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %9, metadata !1285, metadata !DIExpression()) #25, !dbg !2474
  %10 = load i32, i32* %7, align 4, !dbg !2479, !tbaa !772
  %11 = lshr i32 %10, %9, !dbg !2480
  %12 = and i32 %11, 1, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %12, metadata !1286, metadata !DIExpression()) #25, !dbg !2474
  %13 = xor i32 %12, 1, !dbg !2482
  %14 = shl i32 %13, %9, !dbg !2483
  %15 = xor i32 %14, %10, !dbg !2484
  store i32 %15, i32* %7, align 4, !dbg !2484, !tbaa !772
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #25, !dbg !2485
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2486
  ret i8* %16, !dbg !2487
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2488 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8* %0, metadata !2466, metadata !DIExpression()) #25, !dbg !2492
  call void @llvm.dbg.value(metadata i8 58, metadata !2467, metadata !DIExpression()) #25, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %0, metadata !2439, metadata !DIExpression()) #25, !dbg !2494
  call void @llvm.dbg.value(metadata i64 -1, metadata !2440, metadata !DIExpression()) #25, !dbg !2494
  call void @llvm.dbg.value(metadata i8 58, metadata !2441, metadata !DIExpression()) #25, !dbg !2494
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2496
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2496
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2442, metadata !DIExpression()) #25, !dbg !2497
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2498, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1279, metadata !DIExpression()) #25, !dbg !2499
  call void @llvm.dbg.value(metadata i8 58, metadata !1280, metadata !DIExpression()) #25, !dbg !2499
  call void @llvm.dbg.value(metadata i32 1, metadata !1281, metadata !DIExpression()) #25, !dbg !2499
  call void @llvm.dbg.value(metadata i8 58, metadata !1282, metadata !DIExpression()) #25, !dbg !2499
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2501
  call void @llvm.dbg.value(metadata i32* %4, metadata !1283, metadata !DIExpression()) #25, !dbg !2499
  call void @llvm.dbg.value(metadata i32 26, metadata !1285, metadata !DIExpression()) #25, !dbg !2499
  %5 = load i32, i32* %4, align 4, !dbg !2502, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %5, metadata !1286, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2499
  %6 = or i32 %5, 67108864, !dbg !2503
  store i32 %6, i32* %4, align 4, !dbg !2503, !tbaa !772
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #25, !dbg !2504
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #25, !dbg !2505
  ret i8* %7, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2507 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i64 %1, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %0, metadata !2439, metadata !DIExpression()) #25, !dbg !2512
  call void @llvm.dbg.value(metadata i64 %1, metadata !2440, metadata !DIExpression()) #25, !dbg !2512
  call void @llvm.dbg.value(metadata i8 58, metadata !2441, metadata !DIExpression()) #25, !dbg !2512
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2514
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2514
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2442, metadata !DIExpression()) #25, !dbg !2515
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #25, !dbg !2516, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1279, metadata !DIExpression()) #25, !dbg !2517
  call void @llvm.dbg.value(metadata i8 58, metadata !1280, metadata !DIExpression()) #25, !dbg !2517
  call void @llvm.dbg.value(metadata i32 1, metadata !1281, metadata !DIExpression()) #25, !dbg !2517
  call void @llvm.dbg.value(metadata i8 58, metadata !1282, metadata !DIExpression()) #25, !dbg !2517
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2519
  call void @llvm.dbg.value(metadata i32* %5, metadata !1283, metadata !DIExpression()) #25, !dbg !2517
  call void @llvm.dbg.value(metadata i32 26, metadata !1285, metadata !DIExpression()) #25, !dbg !2517
  %6 = load i32, i32* %5, align 4, !dbg !2520, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %6, metadata !1286, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #25, !dbg !2517
  %7 = or i32 %6, 67108864, !dbg !2521
  store i32 %7, i32* %5, align 4, !dbg !2521, !tbaa !772
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #25, !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #25, !dbg !2523
  ret i8* %8, !dbg !2524
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2525 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2342, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2531
  call void @llvm.dbg.value(metadata i32 %0, metadata !2527, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 %1, metadata !2528, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* %2, metadata !2529, metadata !DIExpression()), !dbg !2533
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2534
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2530, metadata !DIExpression()), !dbg !2535
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2537), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %1, metadata !2337, metadata !DIExpression()) #25, !dbg !2540
  call void @llvm.dbg.value(metadata i32 0, metadata !2342, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2540
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2531, !alias.scope !2537
  %8 = icmp eq i32 %1, 10, !dbg !2541
  br i1 %8, label %9, label %10, !dbg !2542

9:                                                ; preds = %3
  tail call void @abort() #27, !dbg !2543, !noalias !2537
  unreachable, !dbg !2543

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2342, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2540
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2536
  store i32 %1, i32* %11, align 8, !dbg !2536, !tbaa.struct !2447
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2536
  %13 = bitcast i32* %12 to i8*, !dbg !2536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2536, !tbaa.struct !2544
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2536
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1279, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 58, metadata !1280, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 1, metadata !1281, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 58, metadata !1282, metadata !DIExpression()), !dbg !2545
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2547
  call void @llvm.dbg.value(metadata i32* %14, metadata !1283, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 26, metadata !1285, metadata !DIExpression()), !dbg !2545
  %15 = load i32, i32* %14, align 4, !dbg !2548, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %15, metadata !1286, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2545
  %16 = or i32 %15, 67108864, !dbg !2549
  store i32 %16, i32* %14, align 4, !dbg !2549, !tbaa !772
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2550
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2551
  ret i8* %17, !dbg !2552
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2553 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2557, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %1, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %2, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %3, metadata !2560, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i32 %0, metadata !2562, metadata !DIExpression()) #25, !dbg !2572
  call void @llvm.dbg.value(metadata i8* %1, metadata !2567, metadata !DIExpression()) #25, !dbg !2572
  call void @llvm.dbg.value(metadata i8* %2, metadata !2568, metadata !DIExpression()) #25, !dbg !2572
  call void @llvm.dbg.value(metadata i8* %3, metadata !2569, metadata !DIExpression()) #25, !dbg !2572
  call void @llvm.dbg.value(metadata i64 -1, metadata !2570, metadata !DIExpression()) #25, !dbg !2572
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2574
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2571, metadata !DIExpression()) #25, !dbg !2575
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2576, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1319, metadata !DIExpression()) #25, !dbg !2577
  call void @llvm.dbg.value(metadata i8* %1, metadata !1320, metadata !DIExpression()) #25, !dbg !2577
  call void @llvm.dbg.value(metadata i8* %2, metadata !1321, metadata !DIExpression()) #25, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1319, metadata !DIExpression()) #25, !dbg !2577
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2579
  store i32 10, i32* %7, align 8, !dbg !2580, !tbaa !1261
  %8 = icmp ne i8* %1, null, !dbg !2581
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2582
  br i1 %10, label %12, label %11, !dbg !2582

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2583
  unreachable, !dbg !2583

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2584
  store i8* %1, i8** %13, align 8, !dbg !2585, !tbaa !1334
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2586
  store i8* %2, i8** %14, align 8, !dbg !2587, !tbaa !1337
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #25, !dbg !2588
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2589
  ret i8* %15, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2563 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2562, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* %1, metadata !2567, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* %2, metadata !2568, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* %3, metadata !2569, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i64 %4, metadata !2570, metadata !DIExpression()), !dbg !2591
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2592
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2592
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2571, metadata !DIExpression()), !dbg !2593
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2594, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1319, metadata !DIExpression()) #25, !dbg !2595
  call void @llvm.dbg.value(metadata i8* %1, metadata !1320, metadata !DIExpression()) #25, !dbg !2595
  call void @llvm.dbg.value(metadata i8* %2, metadata !1321, metadata !DIExpression()) #25, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1319, metadata !DIExpression()) #25, !dbg !2595
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2597
  store i32 10, i32* %8, align 8, !dbg !2598, !tbaa !1261
  %9 = icmp ne i8* %1, null, !dbg !2599
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2600
  br i1 %11, label %13, label %12, !dbg !2600

12:                                               ; preds = %5
  tail call void @abort() #27, !dbg !2601
  unreachable, !dbg !2601

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2602
  store i8* %1, i8** %14, align 8, !dbg !2603, !tbaa !1334
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2604
  store i8* %2, i8** %15, align 8, !dbg !2605, !tbaa !1337
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2606
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #25, !dbg !2607
  ret i8* %16, !dbg !2608
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2609 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2613, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* %1, metadata !2614, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8* %2, metadata !2615, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 0, metadata !2557, metadata !DIExpression()) #25, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %0, metadata !2558, metadata !DIExpression()) #25, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %1, metadata !2559, metadata !DIExpression()) #25, !dbg !2617
  call void @llvm.dbg.value(metadata i8* %2, metadata !2560, metadata !DIExpression()) #25, !dbg !2617
  call void @llvm.dbg.value(metadata i32 0, metadata !2562, metadata !DIExpression()) #25, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %0, metadata !2567, metadata !DIExpression()) #25, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()) #25, !dbg !2619
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()) #25, !dbg !2619
  call void @llvm.dbg.value(metadata i64 -1, metadata !2570, metadata !DIExpression()) #25, !dbg !2619
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2621
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2621
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2571, metadata !DIExpression()) #25, !dbg !2622
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2623, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1319, metadata !DIExpression()) #25, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %0, metadata !1320, metadata !DIExpression()) #25, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %1, metadata !1321, metadata !DIExpression()) #25, !dbg !2624
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1319, metadata !DIExpression()) #25, !dbg !2624
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2626
  store i32 10, i32* %6, align 8, !dbg !2627, !tbaa !1261
  %7 = icmp ne i8* %0, null, !dbg !2628
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2629
  br i1 %9, label %11, label %10, !dbg !2629

10:                                               ; preds = %3
  tail call void @abort() #27, !dbg !2630
  unreachable, !dbg !2630

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2631
  store i8* %0, i8** %12, align 8, !dbg !2632, !tbaa !1334
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2633
  store i8* %1, i8** %13, align 8, !dbg !2634, !tbaa !1337
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #25, !dbg !2635
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #25, !dbg !2636
  ret i8* %14, !dbg !2637
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2638 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %1, metadata !2643, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %2, metadata !2644, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 %3, metadata !2645, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 0, metadata !2562, metadata !DIExpression()) #25, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %0, metadata !2567, metadata !DIExpression()) #25, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %1, metadata !2568, metadata !DIExpression()) #25, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %2, metadata !2569, metadata !DIExpression()) #25, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %3, metadata !2570, metadata !DIExpression()) #25, !dbg !2647
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2649
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2649
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2571, metadata !DIExpression()) #25, !dbg !2650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #25, !dbg !2651, !tbaa.struct !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1319, metadata !DIExpression()) #25, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %0, metadata !1320, metadata !DIExpression()) #25, !dbg !2652
  call void @llvm.dbg.value(metadata i8* %1, metadata !1321, metadata !DIExpression()) #25, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1319, metadata !DIExpression()) #25, !dbg !2652
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2654
  store i32 10, i32* %7, align 8, !dbg !2655, !tbaa !1261
  %8 = icmp ne i8* %0, null, !dbg !2656
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2657
  br i1 %10, label %12, label %11, !dbg !2657

11:                                               ; preds = %4
  tail call void @abort() #27, !dbg !2658
  unreachable, !dbg !2658

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2659
  store i8* %0, i8** %13, align 8, !dbg !2660, !tbaa !1334
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2661
  store i8* %1, i8** %14, align 8, !dbg !2662, !tbaa !1337
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #25, !dbg !2663
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #25, !dbg !2664
  ret i8* %15, !dbg !2665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2666 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2670, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8* %1, metadata !2671, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 %2, metadata !2672, metadata !DIExpression()), !dbg !2673
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2674
  ret i8* %4, !dbg !2675
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2676 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2680, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i64 %1, metadata !2681, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 0, metadata !2670, metadata !DIExpression()) #25, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()) #25, !dbg !2683
  call void @llvm.dbg.value(metadata i64 %1, metadata !2672, metadata !DIExpression()) #25, !dbg !2683
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2685
  ret i8* %3, !dbg !2686
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2687 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2691, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %1, metadata !2692, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i32 %0, metadata !2670, metadata !DIExpression()) #25, !dbg !2694
  call void @llvm.dbg.value(metadata i8* %1, metadata !2671, metadata !DIExpression()) #25, !dbg !2694
  call void @llvm.dbg.value(metadata i64 -1, metadata !2672, metadata !DIExpression()) #25, !dbg !2694
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2696
  ret i8* %3, !dbg !2697
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !2698 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2702, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 0, metadata !2691, metadata !DIExpression()) #25, !dbg !2704
  call void @llvm.dbg.value(metadata i8* %0, metadata !2692, metadata !DIExpression()) #25, !dbg !2704
  call void @llvm.dbg.value(metadata i32 0, metadata !2670, metadata !DIExpression()) #25, !dbg !2706
  call void @llvm.dbg.value(metadata i8* %0, metadata !2671, metadata !DIExpression()) #25, !dbg !2706
  call void @llvm.dbg.value(metadata i64 -1, metadata !2672, metadata !DIExpression()) #25, !dbg !2706
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #25, !dbg !2708
  ret i8* %2, !dbg !2709
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !2710 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2749, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %1, metadata !2750, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2751, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %3, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8** %4, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 %5, metadata !2754, metadata !DIExpression()), !dbg !2755
  %7 = icmp eq i8* %1, null, !dbg !2756
  br i1 %7, label %10, label %8, !dbg !2758

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #25, !dbg !2759
  br label %12, !dbg !2759

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* %2, i8* %3) #25, !dbg !2760
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i32 5) #25, !dbg !2761
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #25, !dbg !2761
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.83, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2762
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.84, i64 0, i64 0), i32 5) #25, !dbg !2763
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.85, i64 0, i64 0)) #25, !dbg !2763
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.83, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !2764
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
  ], !dbg !2765

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.86, i64 0, i64 0), i32 5) #25, !dbg !2766
  %21 = load i8*, i8** %4, align 8, !dbg !2766, !tbaa !624
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #25, !dbg !2766
  br label %147, !dbg !2768

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.87, i64 0, i64 0), i32 5) #25, !dbg !2769
  %25 = load i8*, i8** %4, align 8, !dbg !2769, !tbaa !624
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2769
  %27 = load i8*, i8** %26, align 8, !dbg !2769, !tbaa !624
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #25, !dbg !2769
  br label %147, !dbg !2770

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.88, i64 0, i64 0), i32 5) #25, !dbg !2771
  %31 = load i8*, i8** %4, align 8, !dbg !2771, !tbaa !624
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2771
  %33 = load i8*, i8** %32, align 8, !dbg !2771, !tbaa !624
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2771
  %35 = load i8*, i8** %34, align 8, !dbg !2771, !tbaa !624
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #25, !dbg !2771
  br label %147, !dbg !2772

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.89, i64 0, i64 0), i32 5) #25, !dbg !2773
  %39 = load i8*, i8** %4, align 8, !dbg !2773, !tbaa !624
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2773
  %41 = load i8*, i8** %40, align 8, !dbg !2773, !tbaa !624
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2773
  %43 = load i8*, i8** %42, align 8, !dbg !2773, !tbaa !624
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2773
  %45 = load i8*, i8** %44, align 8, !dbg !2773, !tbaa !624
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #25, !dbg !2773
  br label %147, !dbg !2774

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.90, i64 0, i64 0), i32 5) #25, !dbg !2775
  %49 = load i8*, i8** %4, align 8, !dbg !2775, !tbaa !624
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2775
  %51 = load i8*, i8** %50, align 8, !dbg !2775, !tbaa !624
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2775
  %53 = load i8*, i8** %52, align 8, !dbg !2775, !tbaa !624
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2775
  %55 = load i8*, i8** %54, align 8, !dbg !2775, !tbaa !624
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2775
  %57 = load i8*, i8** %56, align 8, !dbg !2775, !tbaa !624
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #25, !dbg !2775
  br label %147, !dbg !2776

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.91, i64 0, i64 0), i32 5) #25, !dbg !2777
  %61 = load i8*, i8** %4, align 8, !dbg !2777, !tbaa !624
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2777
  %63 = load i8*, i8** %62, align 8, !dbg !2777, !tbaa !624
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2777
  %65 = load i8*, i8** %64, align 8, !dbg !2777, !tbaa !624
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2777
  %67 = load i8*, i8** %66, align 8, !dbg !2777, !tbaa !624
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2777
  %69 = load i8*, i8** %68, align 8, !dbg !2777, !tbaa !624
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2777
  %71 = load i8*, i8** %70, align 8, !dbg !2777, !tbaa !624
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #25, !dbg !2777
  br label %147, !dbg !2778

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.92, i64 0, i64 0), i32 5) #25, !dbg !2779
  %75 = load i8*, i8** %4, align 8, !dbg !2779, !tbaa !624
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2779
  %77 = load i8*, i8** %76, align 8, !dbg !2779, !tbaa !624
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2779
  %79 = load i8*, i8** %78, align 8, !dbg !2779, !tbaa !624
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2779
  %81 = load i8*, i8** %80, align 8, !dbg !2779, !tbaa !624
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2779
  %83 = load i8*, i8** %82, align 8, !dbg !2779, !tbaa !624
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2779
  %85 = load i8*, i8** %84, align 8, !dbg !2779, !tbaa !624
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2779
  %87 = load i8*, i8** %86, align 8, !dbg !2779, !tbaa !624
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #25, !dbg !2779
  br label %147, !dbg !2780

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.93, i64 0, i64 0), i32 5) #25, !dbg !2781
  %91 = load i8*, i8** %4, align 8, !dbg !2781, !tbaa !624
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2781
  %93 = load i8*, i8** %92, align 8, !dbg !2781, !tbaa !624
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2781
  %95 = load i8*, i8** %94, align 8, !dbg !2781, !tbaa !624
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2781
  %97 = load i8*, i8** %96, align 8, !dbg !2781, !tbaa !624
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2781
  %99 = load i8*, i8** %98, align 8, !dbg !2781, !tbaa !624
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2781
  %101 = load i8*, i8** %100, align 8, !dbg !2781, !tbaa !624
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2781
  %103 = load i8*, i8** %102, align 8, !dbg !2781, !tbaa !624
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2781
  %105 = load i8*, i8** %104, align 8, !dbg !2781, !tbaa !624
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #25, !dbg !2781
  br label %147, !dbg !2782

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #25, !dbg !2783
  %109 = load i8*, i8** %4, align 8, !dbg !2783, !tbaa !624
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2783
  %111 = load i8*, i8** %110, align 8, !dbg !2783, !tbaa !624
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2783
  %113 = load i8*, i8** %112, align 8, !dbg !2783, !tbaa !624
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2783
  %115 = load i8*, i8** %114, align 8, !dbg !2783, !tbaa !624
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2783
  %117 = load i8*, i8** %116, align 8, !dbg !2783, !tbaa !624
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2783
  %119 = load i8*, i8** %118, align 8, !dbg !2783, !tbaa !624
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2783
  %121 = load i8*, i8** %120, align 8, !dbg !2783, !tbaa !624
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2783
  %123 = load i8*, i8** %122, align 8, !dbg !2783, !tbaa !624
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2783
  %125 = load i8*, i8** %124, align 8, !dbg !2783, !tbaa !624
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #25, !dbg !2783
  br label %147, !dbg !2784

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.95, i64 0, i64 0), i32 5) #25, !dbg !2785
  %129 = load i8*, i8** %4, align 8, !dbg !2785, !tbaa !624
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2785
  %131 = load i8*, i8** %130, align 8, !dbg !2785, !tbaa !624
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2785
  %133 = load i8*, i8** %132, align 8, !dbg !2785, !tbaa !624
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2785
  %135 = load i8*, i8** %134, align 8, !dbg !2785, !tbaa !624
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2785
  %137 = load i8*, i8** %136, align 8, !dbg !2785, !tbaa !624
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2785
  %139 = load i8*, i8** %138, align 8, !dbg !2785, !tbaa !624
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2785
  %141 = load i8*, i8** %140, align 8, !dbg !2785, !tbaa !624
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2785
  %143 = load i8*, i8** %142, align 8, !dbg !2785, !tbaa !624
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2785
  %145 = load i8*, i8** %144, align 8, !dbg !2785, !tbaa !624
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #25, !dbg !2785
  br label %147, !dbg !2786

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !2788 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2792, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %1, metadata !2793, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %2, metadata !2794, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %3, metadata !2795, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8** %4, metadata !2796, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 0, metadata !2797, metadata !DIExpression()), !dbg !2798
  br label %6, !dbg !2799

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2801
  call void @llvm.dbg.value(metadata i64 %7, metadata !2797, metadata !DIExpression()), !dbg !2798
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2802
  %9 = load i8*, i8** %8, align 8, !dbg !2802, !tbaa !624
  %10 = icmp eq i8* %9, null, !dbg !2804
  %11 = add i64 %7, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %11, metadata !2797, metadata !DIExpression()), !dbg !2798
  br i1 %10, label %12, label %6, !dbg !2804, !llvm.loop !2806

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2808
  ret void, !dbg !2809
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !2810 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2821, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %1, metadata !2822, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %2, metadata !2823, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %3, metadata !2824, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2825, metadata !DIExpression()), !dbg !2829
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2830
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2827, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i64 0, metadata !2826, metadata !DIExpression()), !dbg !2829
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !2826, metadata !DIExpression()), !dbg !2829
  %11 = load i32, i32* %8, align 8, !dbg !2832
  %12 = icmp ult i32 %11, 41, !dbg !2832
  br i1 %12, label %13, label %18, !dbg !2832

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !2832
  %15 = zext i32 %11 to i64, !dbg !2832
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2832
  %17 = add nuw nsw i32 %11, 8, !dbg !2832
  store i32 %17, i32* %8, align 8, !dbg !2832
  br label %21, !dbg !2832

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !2832
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2832
  store i8* %20, i8** %9, align 8, !dbg !2832
  br label %21, !dbg !2832

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2832
  %25 = load i8*, i8** %24, align 8, !dbg !2832
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2835
  store i8* %25, i8** %26, align 16, !dbg !2836, !tbaa !624
  %27 = icmp eq i8* %25, null, !dbg !2837
  br i1 %27, label %30, label %28, !dbg !2838

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 1, metadata !2826, metadata !DIExpression()), !dbg !2829
  %29 = icmp ult i32 %22, 41, !dbg !2832
  br i1 %29, label %35, label %32, !dbg !2832

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2839
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2840
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #25, !dbg !2841
  ret void, !dbg !2841

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !2832
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2832
  store i8* %34, i8** %9, align 8, !dbg !2832
  br label %40, !dbg !2832

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !2832
  %37 = zext i32 %22 to i64, !dbg !2832
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2832
  %39 = add nuw nsw i32 %22, 8, !dbg !2832
  store i32 %39, i32* %8, align 8, !dbg !2832
  br label %40, !dbg !2832

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2832
  %44 = load i8*, i8** %43, align 8, !dbg !2832
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2835
  store i8* %44, i8** %45, align 8, !dbg !2836, !tbaa !624
  %46 = icmp eq i8* %44, null, !dbg !2837
  br i1 %46, label %30, label %47, !dbg !2838

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 2, metadata !2826, metadata !DIExpression()), !dbg !2829
  %48 = icmp ult i32 %41, 41, !dbg !2832
  br i1 %48, label %52, label %49, !dbg !2832

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !2832
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2832
  store i8* %51, i8** %9, align 8, !dbg !2832
  br label %57, !dbg !2832

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !2832
  %54 = zext i32 %41 to i64, !dbg !2832
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2832
  %56 = add nuw nsw i32 %41, 8, !dbg !2832
  store i32 %56, i32* %8, align 8, !dbg !2832
  br label %57, !dbg !2832

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2832
  %61 = load i8*, i8** %60, align 8, !dbg !2832
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2835
  store i8* %61, i8** %62, align 16, !dbg !2836, !tbaa !624
  %63 = icmp eq i8* %61, null, !dbg !2837
  br i1 %63, label %30, label %64, !dbg !2838

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 3, metadata !2826, metadata !DIExpression()), !dbg !2829
  %65 = icmp ult i32 %58, 41, !dbg !2832
  br i1 %65, label %69, label %66, !dbg !2832

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !2832
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2832
  store i8* %68, i8** %9, align 8, !dbg !2832
  br label %74, !dbg !2832

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !2832
  %71 = zext i32 %58 to i64, !dbg !2832
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2832
  %73 = add nuw nsw i32 %58, 8, !dbg !2832
  store i32 %73, i32* %8, align 8, !dbg !2832
  br label %74, !dbg !2832

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2832
  %78 = load i8*, i8** %77, align 8, !dbg !2832
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2835
  store i8* %78, i8** %79, align 8, !dbg !2836, !tbaa !624
  %80 = icmp eq i8* %78, null, !dbg !2837
  br i1 %80, label %30, label %81, !dbg !2838

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 4, metadata !2826, metadata !DIExpression()), !dbg !2829
  %82 = icmp ult i32 %75, 41, !dbg !2832
  br i1 %82, label %86, label %83, !dbg !2832

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !2832
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2832
  store i8* %85, i8** %9, align 8, !dbg !2832
  br label %91, !dbg !2832

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !2832
  %88 = zext i32 %75 to i64, !dbg !2832
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2832
  %90 = add nuw nsw i32 %75, 8, !dbg !2832
  store i32 %90, i32* %8, align 8, !dbg !2832
  br label %91, !dbg !2832

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2832
  %95 = load i8*, i8** %94, align 8, !dbg !2832
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2835
  store i8* %95, i8** %96, align 16, !dbg !2836, !tbaa !624
  %97 = icmp eq i8* %95, null, !dbg !2837
  br i1 %97, label %30, label %98, !dbg !2838

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i64 5, metadata !2826, metadata !DIExpression()), !dbg !2829
  %99 = icmp ult i32 %92, 41, !dbg !2832
  br i1 %99, label %103, label %100, !dbg !2832

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !2832
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2832
  store i8* %102, i8** %9, align 8, !dbg !2832
  br label %108, !dbg !2832

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !2832
  %105 = zext i32 %92 to i64, !dbg !2832
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2832
  %107 = add nuw nsw i32 %92, 8, !dbg !2832
  store i32 %107, i32* %8, align 8, !dbg !2832
  br label %108, !dbg !2832

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2832
  %111 = load i8*, i8** %110, align 8, !dbg !2832
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2835
  store i8* %111, i8** %112, align 8, !dbg !2836, !tbaa !624
  %113 = icmp eq i8* %111, null, !dbg !2837
  br i1 %113, label %30, label %114, !dbg !2838

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2826, metadata !DIExpression()), !dbg !2829
  %115 = load i8*, i8** %9, align 8, !dbg !2832
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2832
  store i8* %116, i8** %9, align 8, !dbg !2832
  %117 = bitcast i8* %115 to i8**, !dbg !2832
  %118 = load i8*, i8** %117, align 8, !dbg !2832
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2835
  store i8* %118, i8** %119, align 16, !dbg !2836, !tbaa !624
  %120 = icmp eq i8* %118, null, !dbg !2837
  br i1 %120, label %30, label %121, !dbg !2838

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2826, metadata !DIExpression()), !dbg !2829
  %122 = load i8*, i8** %9, align 8, !dbg !2832
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2832
  store i8* %123, i8** %9, align 8, !dbg !2832
  %124 = bitcast i8* %122 to i8**, !dbg !2832
  %125 = load i8*, i8** %124, align 8, !dbg !2832
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2835
  store i8* %125, i8** %126, align 8, !dbg !2836, !tbaa !624
  %127 = icmp eq i8* %125, null, !dbg !2837
  br i1 %127, label %30, label %128, !dbg !2838

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2826, metadata !DIExpression()), !dbg !2829
  %129 = load i8*, i8** %9, align 8, !dbg !2832
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2832
  store i8* %130, i8** %9, align 8, !dbg !2832
  %131 = bitcast i8* %129 to i8**, !dbg !2832
  %132 = load i8*, i8** %131, align 8, !dbg !2832
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2835
  store i8* %132, i8** %133, align 16, !dbg !2836, !tbaa !624
  %134 = icmp eq i8* %132, null, !dbg !2837
  br i1 %134, label %30, label %135, !dbg !2838

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2826, metadata !DIExpression()), !dbg !2829
  %136 = load i8*, i8** %9, align 8, !dbg !2832
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2832
  store i8* %137, i8** %9, align 8, !dbg !2832
  %138 = bitcast i8* %136 to i8**, !dbg !2832
  %139 = load i8*, i8** %138, align 8, !dbg !2832
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2835
  store i8* %139, i8** %140, align 8, !dbg !2836, !tbaa !624
  %141 = icmp eq i8* %139, null, !dbg !2837
  %142 = select i1 %141, i64 9, i64 10, !dbg !2838
  br label %30, !dbg !2838
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !2842 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2846, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %1, metadata !2847, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %2, metadata !2848, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* %3, metadata !2849, metadata !DIExpression()), !dbg !2855
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2856
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2856
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2850, metadata !DIExpression()), !dbg !2857
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2858
  call void @llvm.va_start(i8* nonnull %6), !dbg !2858
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2859
  call void @llvm.va_end(i8* nonnull %6), !dbg !2860
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #25, !dbg !2861
  ret void, !dbg !2861
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !2862 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2863, !tbaa !624
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.83, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !2863
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.98, i64 0, i64 0), i32 5) #25, !dbg !2864
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.99, i64 0, i64 0)) #25, !dbg !2864
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.100, i64 0, i64 0), i32 5) #25, !dbg !2865
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.101, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.102, i64 0, i64 0)) #25, !dbg !2865
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.103, i64 0, i64 0), i32 5) #25, !dbg !2866
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.104, i64 0, i64 0)) #25, !dbg !2866
  ret void, !dbg !2867
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !2868 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2872, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 %1, metadata !2873, metadata !DIExpression()), !dbg !2874
  %3 = udiv i64 9223372036854775807, %1, !dbg !2875
  %4 = icmp ult i64 %3, %0, !dbg !2875
  br i1 %4, label %5, label %6, !dbg !2877

5:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !2878
  unreachable, !dbg !2878

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %7, metadata !2880, metadata !DIExpression()) #25, !dbg !2886
  %8 = tail call noalias i8* @malloc(i64 %7) #25, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %8, metadata !2885, metadata !DIExpression()) #25, !dbg !2886
  %9 = icmp eq i8* %8, null, !dbg !2889
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !2891
  br i1 %11, label %12, label %13, !dbg !2891

12:                                               ; preds = %6
  tail call void @xalloc_die() #27, !dbg !2892
  unreachable, !dbg !2892

13:                                               ; preds = %6
  ret i8* %8, !dbg !2893
}

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !2881 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2880, metadata !DIExpression()), !dbg !2894
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2895
  call void @llvm.dbg.value(metadata i8* %2, metadata !2885, metadata !DIExpression()), !dbg !2894
  %3 = icmp eq i8* %2, null, !dbg !2896
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2897
  br i1 %5, label %6, label %7, !dbg !2897

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2898
  unreachable, !dbg !2898

7:                                                ; preds = %1
  ret i8* %2, !dbg !2899
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #22 !dbg !2900 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 %2, metadata !2906, metadata !DIExpression()), !dbg !2907
  %4 = udiv i64 9223372036854775807, %2, !dbg !2908
  %5 = icmp ult i64 %4, %1, !dbg !2908
  br i1 %5, label %6, label %7, !dbg !2910

6:                                                ; preds = %3
  tail call void @xalloc_die() #27, !dbg !2911
  unreachable, !dbg !2911

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()) #25, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %8, metadata !2918, metadata !DIExpression()) #25, !dbg !2919
  %9 = icmp eq i64 %8, 0, !dbg !2921
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !2923
  br i1 %11, label %12, label %13, !dbg !2923

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #25, !dbg !2924
  br label %19, !dbg !2926

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #25, !dbg !2927
  call void @llvm.dbg.value(metadata i8* %14, metadata !2913, metadata !DIExpression()) #25, !dbg !2919
  %15 = icmp eq i8* %14, null, !dbg !2928
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !2930
  br i1 %17, label %18, label %19, !dbg !2930

18:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2931
  unreachable, !dbg !2931

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2919
  ret i8* %20, !dbg !2932
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %1, metadata !2918, metadata !DIExpression()), !dbg !2933
  %3 = icmp eq i64 %1, 0, !dbg !2934
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !2935
  br i1 %5, label %6, label %7, !dbg !2935

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #25, !dbg !2936
  br label %13, !dbg !2937

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #25, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %8, metadata !2913, metadata !DIExpression()), !dbg !2933
  %9 = icmp eq i8* %8, null, !dbg !2939
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !2940
  br i1 %11, label %12, label %13, !dbg !2940

12:                                               ; preds = %7
  tail call void @xalloc_die() #27, !dbg !2941
  unreachable, !dbg !2941

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2933
  ret i8* %14, !dbg !2942
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #22 !dbg !187 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !192, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64* %1, metadata !193, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %2, metadata !194, metadata !DIExpression()), !dbg !2943
  %4 = load i64, i64* %1, align 8, !dbg !2944, !tbaa !896
  call void @llvm.dbg.value(metadata i64 %4, metadata !195, metadata !DIExpression()), !dbg !2943
  %5 = icmp eq i8* %0, null, !dbg !2945
  br i1 %5, label %6, label %20, !dbg !2947

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2948
  br i1 %7, label %8, label %13, !dbg !2951

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %9, metadata !195, metadata !DIExpression()), !dbg !2943
  %10 = icmp ugt i64 %2, 128, !dbg !2954
  %11 = zext i1 %10 to i64, !dbg !2954
  %12 = add nuw nsw i64 %9, %11, !dbg !2955
  call void @llvm.dbg.value(metadata i64 %12, metadata !195, metadata !DIExpression()), !dbg !2943
  br label %13, !dbg !2956

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2943
  call void @llvm.dbg.value(metadata i64 %14, metadata !195, metadata !DIExpression()), !dbg !2943
  %15 = udiv i64 9223372036854775807, %2, !dbg !2957
  %16 = icmp ult i64 %15, %14, !dbg !2957
  br i1 %16, label %19, label %17, !dbg !2959

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !195, metadata !DIExpression()), !dbg !2943
  store i64 %14, i64* %1, align 8, !dbg !2960, !tbaa !896
  %18 = mul i64 %14, %2, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()) #25, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %28, metadata !2918, metadata !DIExpression()) #25, !dbg !2962
  br label %31, !dbg !2964

19:                                               ; preds = %13
  tail call void @xalloc_die() #27, !dbg !2965
  unreachable, !dbg !2965

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2966
  %22 = icmp ugt i64 %21, %4, !dbg !2969
  br i1 %22, label %24, label %23, !dbg !2970

23:                                               ; preds = %20
  tail call void @xalloc_die() #27, !dbg !2971
  unreachable, !dbg !2971

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2972
  %26 = add nuw i64 %4, 1, !dbg !2973
  %27 = add i64 %26, %25, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %27, metadata !195, metadata !DIExpression()), !dbg !2943
  store i64 %27, i64* %1, align 8, !dbg !2960, !tbaa !896
  %28 = mul i64 %27, %2, !dbg !2961
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()) #25, !dbg !2962
  call void @llvm.dbg.value(metadata i64 %28, metadata !2918, metadata !DIExpression()) #25, !dbg !2962
  %29 = icmp eq i64 %28, 0, !dbg !2975
  br i1 %29, label %30, label %31, !dbg !2964

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #25, !dbg !2976
  br label %38, !dbg !2977

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #25, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %33, metadata !2913, metadata !DIExpression()) #25, !dbg !2962
  %34 = icmp eq i8* %33, null, !dbg !2979
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !2980
  br i1 %36, label %37, label %38, !dbg !2980

37:                                               ; preds = %31
  tail call void @xalloc_die() #27, !dbg !2981
  unreachable, !dbg !2981

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2962
  ret i8* %39, !dbg !2982
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #22 !dbg !2983 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %0, metadata !2880, metadata !DIExpression()) #25, !dbg !2987
  %2 = tail call noalias i8* @malloc(i64 %0) #25, !dbg !2989
  call void @llvm.dbg.value(metadata i8* %2, metadata !2885, metadata !DIExpression()) #25, !dbg !2987
  %3 = icmp eq i8* %2, null, !dbg !2990
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !2991
  br i1 %5, label %6, label %7, !dbg !2991

6:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !2992
  unreachable, !dbg !2992

7:                                                ; preds = %1
  ret i8* %2, !dbg !2993
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !2994 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2998, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64* %1, metadata !2999, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i8* %0, metadata !192, metadata !DIExpression()) #25, !dbg !3001
  call void @llvm.dbg.value(metadata i64* %1, metadata !193, metadata !DIExpression()) #25, !dbg !3001
  call void @llvm.dbg.value(metadata i64 1, metadata !194, metadata !DIExpression()) #25, !dbg !3001
  %3 = load i64, i64* %1, align 8, !dbg !3003, !tbaa !896
  call void @llvm.dbg.value(metadata i64 %3, metadata !195, metadata !DIExpression()) #25, !dbg !3001
  %4 = icmp eq i8* %0, null, !dbg !3004
  br i1 %4, label %5, label %10, !dbg !3005

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3006
  br i1 %6, label %17, label %7, !dbg !3007

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !195, metadata !DIExpression()) #25, !dbg !3001
  %8 = icmp slt i64 %3, 0, !dbg !3008
  br i1 %8, label %9, label %17, !dbg !3009

9:                                                ; preds = %7
  tail call void @xalloc_die() #27, !dbg !3010
  unreachable, !dbg !3010

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3011
  br i1 %11, label %13, label %12, !dbg !3012

12:                                               ; preds = %10
  tail call void @xalloc_die() #27, !dbg !3013
  unreachable, !dbg !3013

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3014
  %15 = add nuw nsw i64 %3, 1, !dbg !3015
  %16 = add nuw nsw i64 %15, %14, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %16, metadata !195, metadata !DIExpression()) #25, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %0, metadata !2913, metadata !DIExpression()) #25, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %16, metadata !2918, metadata !DIExpression()) #25, !dbg !3017
  br label %17, !dbg !3019

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3020
  store i64 %18, i64* %1, align 8, !dbg !3020, !tbaa !896
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #25, !dbg !3021
  call void @llvm.dbg.value(metadata i8* %19, metadata !2913, metadata !DIExpression()) #25, !dbg !3017
  %20 = icmp eq i8* %19, null, !dbg !3022
  br i1 %20, label %21, label %22, !dbg !3023

21:                                               ; preds = %17
  tail call void @xalloc_die() #27, !dbg !3024
  unreachable, !dbg !3024

22:                                               ; preds = %17
  ret i8* %19, !dbg !3025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3026 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %0, metadata !3030, metadata !DIExpression()) #25, !dbg !3035
  call void @llvm.dbg.value(metadata i64 1, metadata !3033, metadata !DIExpression()) #25, !dbg !3035
  %2 = icmp slt i64 %0, 0, !dbg !3037
  br i1 %2, label %6, label %3, !dbg !3039

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #25, !dbg !3040
  call void @llvm.dbg.value(metadata i8* %4, metadata !3034, metadata !DIExpression()) #25, !dbg !3035
  %5 = icmp eq i8* %4, null, !dbg !3041
  br i1 %5, label %6, label %7, !dbg !3042

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #27, !dbg !3043
  unreachable, !dbg !3043

7:                                                ; preds = %3
  ret i8* %4, !dbg !3044
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3031 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3030, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3045
  %3 = udiv i64 9223372036854775807, %1, !dbg !3046
  %4 = icmp ult i64 %3, %0, !dbg !3046
  br i1 %4, label %8, label %5, !dbg !3047

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #25, !dbg !3048
  call void @llvm.dbg.value(metadata i8* %6, metadata !3034, metadata !DIExpression()), !dbg !3045
  %7 = icmp eq i8* %6, null, !dbg !3049
  br i1 %7, label %8, label %9, !dbg !3050

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #27, !dbg !3051
  unreachable, !dbg !3051

9:                                                ; preds = %5
  ret i8* %6, !dbg !3052
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3053 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !2880, metadata !DIExpression()) #25, !dbg !3062
  %3 = tail call noalias i8* @malloc(i64 %1) #25, !dbg !3064
  call void @llvm.dbg.value(metadata i8* %3, metadata !2885, metadata !DIExpression()) #25, !dbg !3062
  %4 = icmp eq i8* %3, null, !dbg !3065
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3066
  br i1 %6, label %7, label %8, !dbg !3066

7:                                                ; preds = %2
  tail call void @xalloc_die() #27, !dbg !3067
  unreachable, !dbg !3067

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3068, metadata !DIExpression()) #25, !dbg !3077
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()) #25, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()) #25, !dbg !3077
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #25, !dbg !3079
  ret i8* %3, !dbg !3080
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3081 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3083, metadata !DIExpression()), !dbg !3084
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #26, !dbg !3085
  %3 = add i64 %2, 1, !dbg !3086
  call void @llvm.dbg.value(metadata i8* %0, metadata !3059, metadata !DIExpression()) #25, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %3, metadata !3060, metadata !DIExpression()) #25, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %3, metadata !2880, metadata !DIExpression()) #25, !dbg !3089
  %4 = tail call noalias i8* @malloc(i64 %3) #25, !dbg !3091
  call void @llvm.dbg.value(metadata i8* %4, metadata !2885, metadata !DIExpression()) #25, !dbg !3089
  %5 = icmp eq i8* %4, null, !dbg !3092
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3093
  br i1 %7, label %8, label %9, !dbg !3093

8:                                                ; preds = %1
  tail call void @xalloc_die() #27, !dbg !3094
  unreachable, !dbg !3094

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3068, metadata !DIExpression()) #25, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()) #25, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %3, metadata !3076, metadata !DIExpression()) #25, !dbg !3095
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #25, !dbg !3097
  ret i8* %4, !dbg !3098
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3099 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3100, !tbaa !772
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.115, i64 0, i64 0), i32 5) #25, !dbg !3101
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), i8* %2) #25, !dbg !3102
  tail call void @abort() #27, !dbg !3103
  unreachable, !dbg !3103
}

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #24 !dbg !3104 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %1, metadata !3107, metadata !DIExpression()), !dbg !3112
  %3 = icmp eq i64 %0, 0, !dbg !3113
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3114
  br i1 %5, label %11, label %6, !dbg !3114

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3109, metadata !DIExpression()), !dbg !3115
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3116
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3116
  br i1 %8, label %9, label %11, !dbg !3118

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #28, !dbg !3119
  store i32 12, i32* %10, align 4, !dbg !3121, !tbaa !772
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3106, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %12, metadata !3107, metadata !DIExpression()), !dbg !3112
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #25, !dbg !3122
  call void @llvm.dbg.value(metadata i8* %14, metadata !3108, metadata !DIExpression()), !dbg !3112
  br label %15, !dbg !3123

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3112
  ret i8* %16, !dbg !3124
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3125 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3163, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 0, metadata !3164, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 0, metadata !3166, metadata !DIExpression()), !dbg !3167
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3168
  call void @llvm.dbg.value(metadata i32 %2, metadata !3165, metadata !DIExpression()), !dbg !3167
  %3 = icmp slt i32 %2, 0, !dbg !3169
  br i1 %3, label %4, label %6, !dbg !3171

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3172
  br label %24, !dbg !3173

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3174
  %8 = icmp eq i32 %7, 0, !dbg !3174
  br i1 %8, label %13, label %9, !dbg !3176

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3177
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #25, !dbg !3178
  %12 = icmp eq i64 %11, -1, !dbg !3179
  br i1 %12, label %16, label %13, !dbg !3180

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #25, !dbg !3181
  %15 = icmp eq i32 %14, 0, !dbg !3181
  br i1 %15, label %16, label %18, !dbg !3182

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3164, metadata !DIExpression()), !dbg !3167
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %21, metadata !3166, metadata !DIExpression()), !dbg !3167
  br label %24, !dbg !3184

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #28, !dbg !3185
  %20 = load i32, i32* %19, align 4, !dbg !3185, !tbaa !772
  call void @llvm.dbg.value(metadata i32 %20, metadata !3164, metadata !DIExpression()), !dbg !3167
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3183
  call void @llvm.dbg.value(metadata i32 %21, metadata !3166, metadata !DIExpression()), !dbg !3167
  %22 = icmp eq i32 %20, 0, !dbg !3186
  br i1 %22, label %24, label %23, !dbg !3184

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3188, !tbaa !772
  call void @llvm.dbg.value(metadata i32 -1, metadata !3166, metadata !DIExpression()), !dbg !3167
  br label %24, !dbg !3190

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3167
  ret i32 %25, !dbg !3191
}

; Function Attrs: nofree nounwind
declare !dbg !3192 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3195 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3199 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3237, metadata !DIExpression()), !dbg !3238
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3239
  br i1 %2, label %6, label %3, !dbg !3241

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #25, !dbg !3242
  %5 = icmp eq i32 %4, 0, !dbg !3242
  br i1 %5, label %6, label %8, !dbg !3243

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3244
  br label %17, !dbg !3245

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3246, metadata !DIExpression()) #25, !dbg !3251
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3253
  %10 = load i32, i32* %9, align 8, !dbg !3253, !tbaa !879
  %11 = and i32 %10, 256, !dbg !3255
  %12 = icmp eq i32 %11, 0, !dbg !3255
  br i1 %12, label %15, label %13, !dbg !3256

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #25, !dbg !3257
  br label %15, !dbg !3257

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3258
  br label %17, !dbg !3259

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3238
  ret i32 %18, !dbg !3260
}

; Function Attrs: nofree nounwind
declare !dbg !3261 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3264 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3302, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3303, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 %2, metadata !3304, metadata !DIExpression()), !dbg !3308
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3309
  %5 = load i8*, i8** %4, align 8, !dbg !3309, !tbaa !3310
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3311
  %7 = load i8*, i8** %6, align 8, !dbg !3311, !tbaa !3312
  %8 = icmp eq i8* %5, %7, !dbg !3313
  br i1 %8, label %9, label %28, !dbg !3314

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3315
  %11 = load i8*, i8** %10, align 8, !dbg !3315, !tbaa !3316
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3317
  %13 = load i8*, i8** %12, align 8, !dbg !3317, !tbaa !3318
  %14 = icmp eq i8* %11, %13, !dbg !3319
  br i1 %14, label %15, label %28, !dbg !3320

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3321
  %17 = load i8*, i8** %16, align 8, !dbg !3321, !tbaa !3322
  %18 = icmp eq i8* %17, null, !dbg !3323
  br i1 %18, label %19, label %28, !dbg !3324

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #25, !dbg !3325
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #25, !dbg !3326
  call void @llvm.dbg.value(metadata i64 %21, metadata !3305, metadata !DIExpression()), !dbg !3327
  %22 = icmp eq i64 %21, -1, !dbg !3328
  br i1 %22, label %30, label %23, !dbg !3330

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3331
  %25 = load i32, i32* %24, align 8, !dbg !3332, !tbaa !879
  %26 = and i32 %25, -17, !dbg !3332
  store i32 %26, i32* %24, align 8, !dbg !3332, !tbaa !879
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3333
  store i64 %21, i64* %27, align 8, !dbg !3334, !tbaa !3335
  br label %30, !dbg !3336

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3337
  br label %30, !dbg !3338

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3308
  ret i32 %31, !dbg !3339
}

; Function Attrs: nofree nounwind
declare !dbg !3340 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3343 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3359, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i8* %1, metadata !3360, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %2, metadata !3361, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3362, metadata !DIExpression()), !dbg !3368
  %6 = bitcast i32* %5 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3369
  %7 = icmp eq i32* %0, null, !dbg !3370
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3372
  call void @llvm.dbg.value(metadata i32* %8, metadata !3359, metadata !DIExpression()), !dbg !3368
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #25, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %9, metadata !3363, metadata !DIExpression()), !dbg !3368
  %10 = icmp ugt i64 %9, -3, !dbg !3374
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3375
  br i1 %12, label %13, label %18, !dbg !3375

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #25, !dbg !3376
  br i1 %14, label %18, label %15, !dbg !3377

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3378, !tbaa !893
  call void @llvm.dbg.value(metadata i8 %16, metadata !3365, metadata !DIExpression()), !dbg !3379
  %17 = zext i8 %16 to i32, !dbg !3380
  store i32 %17, i32* %8, align 4, !dbg !3381, !tbaa !772
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3368
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #25, !dbg !3382
  ret i64 %19, !dbg !3382
}

; Function Attrs: nounwind
declare !dbg !3383 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3387 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3425, metadata !DIExpression()), !dbg !3430
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #25, !dbg !3431
  call void @llvm.dbg.value(metadata i1 undef, metadata !3426, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3430
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3432, metadata !DIExpression()), !dbg !3435
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3437
  %4 = load i32, i32* %3, align 8, !dbg !3437, !tbaa !879
  %5 = and i32 %4, 32, !dbg !3438
  %6 = icmp eq i32 %5, 0, !dbg !3438
  call void @llvm.dbg.value(metadata i1 %6, metadata !3428, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3430
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #25, !dbg !3439
  %8 = icmp eq i32 %7, 0, !dbg !3440
  call void @llvm.dbg.value(metadata i1 %8, metadata !3429, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3430
  br i1 %6, label %9, label %19, !dbg !3441

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3443
  call void @llvm.dbg.value(metadata i1 %10, metadata !3426, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3430
  %11 = or i1 %10, %8, !dbg !3444
  %12 = xor i1 %8, true, !dbg !3444
  %13 = sext i1 %12 to i32, !dbg !3444
  br i1 %11, label %22, label %14, !dbg !3444

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #28, !dbg !3445
  %16 = load i32, i32* %15, align 4, !dbg !3445, !tbaa !772
  %17 = icmp ne i32 %16, 9, !dbg !3446
  %18 = sext i1 %17 to i32, !dbg !3447
  br label %22, !dbg !3447

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3448

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #28, !dbg !3450
  store i32 0, i32* %21, align 4, !dbg !3452, !tbaa !772
  br label %22, !dbg !3450

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3430
  ret i32 %23, !dbg !3453
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3454 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3458, metadata !DIExpression()), !dbg !3463
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3464
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3464
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3459, metadata !DIExpression()), !dbg !3465
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #25, !dbg !3466
  %5 = icmp eq i32 %4, 0, !dbg !3466
  br i1 %5, label %6, label %13, !dbg !3468

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3469
  %8 = load i16, i16* %7, align 16, !dbg !3469
  %9 = icmp eq i16 %8, 67, !dbg !3469
  br i1 %9, label %13, label %10, !dbg !3470

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6), !dbg !3471
  %12 = icmp ne i32 %11, 0, !dbg !3472
  br label %13, !dbg !3470

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3463
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #25, !dbg !3473
  ret i1 %14, !dbg !3473
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3474 {
  %1 = tail call i8* @nl_langinfo(i32 14) #25, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %1, metadata !3478, metadata !DIExpression()), !dbg !3480
  %2 = icmp eq i8* %1, null, !dbg !3481
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* %1, !dbg !3483
  call void @llvm.dbg.value(metadata i8* %3, metadata !3478, metadata !DIExpression()), !dbg !3480
  %4 = load i8, i8* %3, align 1, !dbg !3484, !tbaa !893
  %5 = icmp eq i8 %4, 0, !dbg !3488
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i8* %3, !dbg !3489
  call void @llvm.dbg.value(metadata i8* %6, metadata !3478, metadata !DIExpression()), !dbg !3480
  ret i8* %6, !dbg !3490
}

; Function Attrs: nounwind
declare !dbg !3491 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3494 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3498, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %1, metadata !3499, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i64 %2, metadata !3500, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i32 %0, metadata !3502, metadata !DIExpression()) #25, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %1, metadata !3505, metadata !DIExpression()) #25, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %2, metadata !3506, metadata !DIExpression()) #25, !dbg !3511
  call void @llvm.dbg.value(metadata i32 %0, metadata !3513, metadata !DIExpression()) #25, !dbg !3519
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3521
  call void @llvm.dbg.value(metadata i8* %4, metadata !3518, metadata !DIExpression()) #25, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %4, metadata !3507, metadata !DIExpression()) #25, !dbg !3511
  %5 = icmp eq i8* %4, null, !dbg !3522
  br i1 %5, label %6, label %9, !dbg !3523

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3524
  br i1 %7, label %19, label %8, !dbg !3527

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3528, !tbaa !893
  br label %19, !dbg !3529

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #26, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %10, metadata !3508, metadata !DIExpression()) #25, !dbg !3531
  %11 = icmp ult i64 %10, %2, !dbg !3532
  br i1 %11, label %12, label %14, !dbg !3534

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %1, metadata !3537, metadata !DIExpression()) #25, !dbg !3542
  call void @llvm.dbg.value(metadata i8* %4, metadata !3540, metadata !DIExpression()) #25, !dbg !3542
  call void @llvm.dbg.value(metadata i64 %13, metadata !3541, metadata !DIExpression()) #25, !dbg !3542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #25, !dbg !3544
  br label %19, !dbg !3545

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3546
  br i1 %15, label %19, label %16, !dbg !3549

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3550
  call void @llvm.dbg.value(metadata i8* %1, metadata !3537, metadata !DIExpression()) #25, !dbg !3552
  call void @llvm.dbg.value(metadata i8* %4, metadata !3540, metadata !DIExpression()) #25, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %17, metadata !3541, metadata !DIExpression()) #25, !dbg !3552
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #25, !dbg !3554
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3555
  store i8 0, i8* %18, align 1, !dbg !3556, !tbaa !893
  br label %19, !dbg !3557

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3558
  ret i32 %20, !dbg !3559
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3560 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.value(metadata i32 %0, metadata !3513, metadata !DIExpression()) #25, !dbg !3564
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #25, !dbg !3566
  call void @llvm.dbg.value(metadata i8* %2, metadata !3518, metadata !DIExpression()) #25, !dbg !3564
  ret i8* %2, !dbg !3567
}

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
attributes #12 = { nofree norecurse nounwind sspstrong uwtable writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { nofree nosync nounwind willreturn }
attributes #14 = { nofree nounwind }
attributes #15 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #21 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #22 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #24 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #25 = { nounwind }
attributes #26 = { nounwind readonly willreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind readnone willreturn }
attributes #29 = { cold }

!llvm.dbg.cu = !{!2, !48, !54, !61, !166, !169, !68, !85, !92, !175, !160, !182, !199, !201, !203, !205, !207, !209, !212, !214, !216, !605}
!llvm.ident = !{!607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607, !607}
!llvm.module.flags = !{!608, !609, !610, !611, !612}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 169, type: !45, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/cksum.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !{!30, !33, !7}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !{!35, !36}
!35 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "crctab", scope: !2, file: !3, line: 112, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16384, elements: !43)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !41, line: 74, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!42 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !{!44}
!44 = !DISubrange(count: 256)
!45 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "Version", scope: !48, file: !49, line: 2, type: !30, isLocal: false, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !51, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!50 = !{}
!51 = !{!46}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "file_name", scope: !54, file: !55, line: 46, type: !30, isLocal: true, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !56, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!56 = !{!52, !57}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !54, file: !55, line: 56, type: !45, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "exit_failure", scope: !61, file: !62, line: 24, type: !64, isLocal: false, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !63, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!63 = !{!59}
!64 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !65)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "long_options", scope: !68, file: !69, line: 34, type: !71, isLocal: true, isDefinition: true)
!68 = distinct !DICompileUnit(language: DW_LANG_C99, file: !69, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !70, splitDebugInlining: false, nameTableKind: None)
!69 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!70 = !{!66}
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 768, elements: !81)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !74, line: 50, size: 256, elements: !75)
!74 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!75 = !{!76, !77, !78, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !73, file: !74, line: 52, baseType: !30, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !73, file: !74, line: 55, baseType: !65, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !73, file: !74, line: 56, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !73, file: !74, line: 57, baseType: !65, size: 32, offset: 192)
!81 = !{!82}
!82 = !DISubrange(count: 3)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "program_name", scope: !85, file: !86, line: 33, type: !30, isLocal: false, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !87, globals: !89, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!87 = !{!33, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!89 = !{!83}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !92, file: !93, line: 85, type: !154, isLocal: false, isDefinition: true)
!92 = distinct !DICompileUnit(language: DW_LANG_C99, file: !93, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !94, retainedTypes: !115, globals: !119, splitDebugInlining: false, nameTableKind: None)
!93 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!94 = !{!5, !95, !100}
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 46, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!103 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!110 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!111 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!114 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!115 = !{!65, !116, !117, !88}
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !42)
!118 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
!119 = !{!90, !120, !126, !138, !140, !143, !150, !152}
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !92, file: !93, line: 101, type: !122, isLocal: false, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 320, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!124 = !{!125}
!125 = !DISubrange(count: 10)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !92, file: !93, line: 1052, type: !128, isLocal: false, isDefinition: true)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !93, line: 65, size: 448, elements: !129)
!129 = !{!130, !131, !132, !136, !137}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !128, file: !93, line: 68, baseType: !5, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !93, line: 71, baseType: !65, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !128, file: !93, line: 75, baseType: !133, size: 256, offset: 64)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !128, file: !93, line: 78, baseType: !30, size: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !128, file: !93, line: 81, baseType: !30, size: 64, offset: 384)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !92, file: !93, line: 116, type: !128, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "slot0", scope: !92, file: !93, line: 842, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !43)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "slotvec", scope: !92, file: !93, line: 845, type: !145, isLocal: true, isDefinition: true)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !93, line: 834, size: 128, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !146, file: !93, line: 836, baseType: !117, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !146, file: !93, line: 837, baseType: !88, size: 64, offset: 64)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "nslots", scope: !92, file: !93, line: 843, type: !65, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "slotvec0", scope: !92, file: !93, line: 844, type: !146, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 704, elements: !156)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!156 = !{!157}
!157 = !DISubrange(count: 11)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !160, file: !161, line: 26, type: !163, isLocal: false, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, globals: !162, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!162 = !{!158}
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 47)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !168, splitDebugInlining: false, nameTableKind: None)
!167 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!168 = !{!20}
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !171, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !41, line: 102, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !174, line: 73, baseType: !42)
!174 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !181, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!177 = !{!178}
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !176, line: 40, baseType: !7, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!181 = !{!33}
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !184, retainedTypes: !198, splitDebugInlining: false, nameTableKind: None)
!183 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!184 = !{!185}
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !187, file: !186, line: 186, baseType: !7, size: 32, elements: !196)
!186 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!187 = distinct !DISubprogram(name: "x2nrealloc", scope: !186, file: !186, line: 174, type: !188, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !191)
!188 = !DISubroutineType(types: !189)
!189 = !{!33, !33, !190, !117}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!191 = !{!192, !193, !194, !195}
!192 = !DILocalVariable(name: "p", arg: 1, scope: !187, file: !186, line: 174, type: !33)
!193 = !DILocalVariable(name: "pn", arg: 2, scope: !187, file: !186, line: 174, type: !190)
!194 = !DILocalVariable(name: "s", arg: 3, scope: !187, file: !186, line: 174, type: !117)
!195 = !DILocalVariable(name: "n", scope: !187, file: !186, line: 176, type: !117)
!196 = !{!197}
!197 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!198 = !{!117, !88, !33}
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !181, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!204 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !181, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!207 = distinct !DICompileUnit(language: DW_LANG_C99, file: !208, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !181, splitDebugInlining: false, nameTableKind: None)
!208 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !211, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!211 = !{!117}
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !213, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!213 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !218, retainedTypes: !181, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!218 = !{!219}
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !220, line: 41, baseType: !7, size: 32, elements: !221)
!220 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!222 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!223 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!224 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!225 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!226 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!227 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!228 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!229 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!230 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!231 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!232 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!233 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!234 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!235 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!236 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!237 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!238 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!239 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!240 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!241 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!242 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!243 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!244 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!245 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!246 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!247 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!248 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!249 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!250 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!251 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!252 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!253 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!254 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!255 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!256 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!257 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!258 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!259 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!260 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!261 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!262 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!263 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!264 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!265 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!266 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!267 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!268 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!269 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!270 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!271 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!330 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!333 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!334 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!335 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!336 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!337 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!338 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!339 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!340 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!341 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!342 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!343 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!344 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!417 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!490 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!491 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!492 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!493 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!494 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!495 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!496 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!497 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!498 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!499 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!500 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!501 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!502 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!503 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!504 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!506 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!507 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!508 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!509 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!510 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!511 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!537 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!538 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!539 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!540 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!541 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!546 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!547 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!548 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!549 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!605 = distinct !DICompileUnit(language: DW_LANG_C99, file: !606, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !50, retainedTypes: !181, splitDebugInlining: false, nameTableKind: None)
!606 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!607 = !{!"clang version 12.0.1"}
!608 = !{i32 7, !"Dwarf Version", i32 4}
!609 = !{i32 2, !"Debug Info Version", i32 3}
!610 = !{i32 1, !"wchar_size", i32 4}
!611 = !{i32 7, !"PIC Level", i32 2}
!612 = !{i32 7, !"PIE Level", i32 2}
!613 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 251, type: !614, scopeLine: 252, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !616)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !65}
!616 = !{!617}
!617 = !DILocalVariable(name: "status", arg: 1, scope: !613, file: !3, line: 251, type: !65)
!618 = !DILocation(line: 0, scope: !613)
!619 = !DILocation(line: 253, column: 14, scope: !620)
!620 = distinct !DILexicalBlock(scope: !613, file: !3, line: 253, column: 7)
!621 = !DILocation(line: 253, column: 7, scope: !613)
!622 = !DILocation(line: 254, column: 5, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 254, column: 5)
!624 = !{!625, !625, i64 0}
!625 = !{!"any pointer", !626, i64 0}
!626 = !{!"omnipotent char", !627, i64 0}
!627 = !{!"Simple C/C++ TBAA"}
!628 = !DILocation(line: 257, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !620, file: !3, line: 256, column: 5)
!630 = !DILocation(line: 262, column: 7, scope: !629)
!631 = !DILocation(line: 266, column: 7, scope: !629)
!632 = !DILocation(line: 267, column: 7, scope: !629)
!633 = !DILocalVariable(name: "program", arg: 1, scope: !634, file: !635, line: 634, type: !30)
!634 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !635, file: !635, line: 634, type: !636, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !638)
!635 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!636 = !DISubroutineType(types: !637)
!637 = !{null, !30}
!638 = !{!633, !639, !648, !649, !651}
!639 = !DILocalVariable(name: "infomap", scope: !634, file: !635, line: 636, type: !640)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 896, elements: !646)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !634, file: !635, line: 636, size: 128, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !642, file: !635, line: 636, baseType: !30, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !642, file: !635, line: 636, baseType: !30, size: 64, offset: 64)
!646 = !{!647}
!647 = !DISubrange(count: 7)
!648 = !DILocalVariable(name: "node", scope: !634, file: !635, line: 646, type: !30)
!649 = !DILocalVariable(name: "map_prog", scope: !634, file: !635, line: 647, type: !650)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!651 = !DILocalVariable(name: "lc_messages", scope: !634, file: !635, line: 659, type: !30)
!652 = !DILocation(line: 0, scope: !634, inlinedAt: !653)
!653 = distinct !DILocation(line: 268, column: 7, scope: !629)
!654 = !DILocation(line: 636, column: 3, scope: !634, inlinedAt: !653)
!655 = !DILocation(line: 636, column: 67, scope: !634, inlinedAt: !653)
!656 = !DILocation(line: 647, column: 36, scope: !634, inlinedAt: !653)
!657 = !DILocation(line: 649, column: 3, scope: !634, inlinedAt: !653)
!658 = !DILocation(line: 649, column: 33, scope: !634, inlinedAt: !653)
!659 = !DILocation(line: 650, column: 13, scope: !634, inlinedAt: !653)
!660 = !DILocation(line: 649, column: 20, scope: !634, inlinedAt: !653)
!661 = !{!662, !625, i64 0}
!662 = !{!"infomap", !625, i64 0, !625, i64 8}
!663 = !DILocation(line: 649, column: 10, scope: !634, inlinedAt: !653)
!664 = !DILocation(line: 649, column: 28, scope: !634, inlinedAt: !653)
!665 = distinct !{!665, !657, !659, !666}
!666 = !{!"llvm.loop.mustprogress"}
!667 = !DILocation(line: 652, column: 17, scope: !668, inlinedAt: !653)
!668 = distinct !DILexicalBlock(scope: !634, file: !635, line: 652, column: 7)
!669 = !{!662, !625, i64 8}
!670 = !DILocation(line: 652, column: 7, scope: !668, inlinedAt: !653)
!671 = !DILocation(line: 652, column: 7, scope: !634, inlinedAt: !653)
!672 = !DILocation(line: 655, column: 3, scope: !634, inlinedAt: !653)
!673 = !DILocation(line: 659, column: 29, scope: !634, inlinedAt: !653)
!674 = !DILocation(line: 660, column: 7, scope: !675, inlinedAt: !653)
!675 = distinct !DILexicalBlock(scope: !634, file: !635, line: 660, column: 7)
!676 = !DILocation(line: 660, column: 19, scope: !675, inlinedAt: !653)
!677 = !DILocation(line: 660, column: 22, scope: !675, inlinedAt: !653)
!678 = !DILocation(line: 660, column: 7, scope: !634, inlinedAt: !653)
!679 = !DILocation(line: 666, column: 7, scope: !680, inlinedAt: !653)
!680 = distinct !DILexicalBlock(scope: !675, file: !635, line: 661, column: 5)
!681 = !DILocation(line: 668, column: 5, scope: !680, inlinedAt: !653)
!682 = !DILocation(line: 669, column: 3, scope: !634, inlinedAt: !653)
!683 = !DILocation(line: 671, column: 3, scope: !634, inlinedAt: !653)
!684 = !DILocation(line: 673, column: 1, scope: !634, inlinedAt: !653)
!685 = !DILocation(line: 270, column: 3, scope: !613)
!686 = !DISubprogram(name: "dcgettext", scope: !687, file: !687, line: 51, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!687 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!688 = !DISubroutineType(types: !689)
!689 = !{!88, !30, !30, !65}
!690 = !DISubprogram(name: "fputs_unlocked", scope: !691, file: !691, line: 667, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!691 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!692 = !DISubroutineType(types: !693)
!693 = !{!65, !30, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !696, line: 49, size: 1728, elements: !697)
!696 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !713, !714, !715, !716, !719, !720, !722, !726, !729, !731, !734, !737, !738, !739, !740, !741}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !695, file: !696, line: 51, baseType: !65, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !695, file: !696, line: 54, baseType: !88, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !695, file: !696, line: 55, baseType: !88, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !695, file: !696, line: 56, baseType: !88, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !695, file: !696, line: 57, baseType: !88, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !695, file: !696, line: 58, baseType: !88, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !695, file: !696, line: 59, baseType: !88, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !695, file: !696, line: 60, baseType: !88, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !695, file: !696, line: 61, baseType: !88, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !695, file: !696, line: 64, baseType: !88, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !695, file: !696, line: 65, baseType: !88, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !695, file: !696, line: 66, baseType: !88, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !695, file: !696, line: 68, baseType: !711, size: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !696, line: 36, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !695, file: !696, line: 70, baseType: !694, size: 64, offset: 832)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !695, file: !696, line: 72, baseType: !65, size: 32, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !695, file: !696, line: 73, baseType: !65, size: 32, offset: 928)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !695, file: !696, line: 74, baseType: !717, size: 64, offset: 960)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !174, line: 152, baseType: !718)
!718 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !695, file: !696, line: 77, baseType: !116, size: 16, offset: 1024)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !695, file: !696, line: 78, baseType: !721, size: 8, offset: 1040)
!721 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !695, file: !696, line: 79, baseType: !723, size: 8, offset: 1048)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 1)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !695, file: !696, line: 81, baseType: !727, size: 64, offset: 1088)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !696, line: 43, baseType: null)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !695, file: !696, line: 89, baseType: !730, size: 64, offset: 1152)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !174, line: 153, baseType: !718)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !695, file: !696, line: 91, baseType: !732, size: 64, offset: 1216)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !696, line: 37, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !695, file: !696, line: 92, baseType: !735, size: 64, offset: 1280)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !696, line: 38, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !695, file: !696, line: 93, baseType: !694, size: 64, offset: 1344)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !695, file: !696, line: 94, baseType: !33, size: 64, offset: 1408)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !695, file: !696, line: 95, baseType: !117, size: 64, offset: 1472)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !695, file: !696, line: 96, baseType: !65, size: 32, offset: 1536)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !695, file: !696, line: 98, baseType: !742, size: 160, offset: 1568)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !743)
!743 = !{!744}
!744 = !DISubrange(count: 20)
!745 = !DISubprogram(name: "setlocale", scope: !746, file: !746, line: 122, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!746 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!747 = !DISubroutineType(types: !748)
!748 = !{!88, !65, !30}
!749 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 274, type: !750, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !753)
!750 = !DISubroutineType(types: !751)
!751 = !{!65, !65, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!753 = !{!754, !755, !756, !757}
!754 = !DILocalVariable(name: "argc", arg: 1, scope: !749, file: !3, line: 274, type: !65)
!755 = !DILocalVariable(name: "argv", arg: 2, scope: !749, file: !3, line: 274, type: !752)
!756 = !DILocalVariable(name: "i", scope: !749, file: !3, line: 276, type: !65)
!757 = !DILocalVariable(name: "ok", scope: !749, file: !3, line: 277, type: !45)
!758 = !DILocation(line: 0, scope: !749)
!759 = !DILocation(line: 280, column: 21, scope: !749)
!760 = !DILocation(line: 280, column: 3, scope: !749)
!761 = !DILocation(line: 281, column: 3, scope: !749)
!762 = !DILocation(line: 282, column: 3, scope: !749)
!763 = !DILocation(line: 283, column: 3, scope: !749)
!764 = !DILocation(line: 285, column: 3, scope: !749)
!765 = !DILocation(line: 289, column: 12, scope: !749)
!766 = !DILocation(line: 289, column: 3, scope: !749)
!767 = !DILocation(line: 291, column: 71, scope: !749)
!768 = !DILocation(line: 291, column: 3, scope: !749)
!769 = !DILocation(line: 294, column: 19, scope: !749)
!770 = !DILocation(line: 296, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !749, file: !3, line: 296, column: 7)
!772 = !{!773, !773, i64 0}
!773 = !{!"int", !626, i64 0}
!774 = !DILocation(line: 296, column: 14, scope: !771)
!775 = !DILocation(line: 296, column: 7, scope: !749)
!776 = !DILocation(line: 301, column: 26, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 301, column: 7)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 301, column: 7)
!779 = distinct !DILexicalBlock(scope: !771, file: !3, line: 299, column: 5)
!780 = !DILocation(line: 301, column: 7, scope: !778)
!781 = !DILocation(line: 297, column: 10, scope: !771)
!782 = !DILocation(line: 297, column: 8, scope: !771)
!783 = !DILocation(line: 297, column: 5, scope: !771)
!784 = !DILocation(line: 302, column: 22, scope: !777)
!785 = !DILocation(line: 302, column: 15, scope: !777)
!786 = !DILocation(line: 302, column: 12, scope: !777)
!787 = !DILocation(line: 301, column: 35, scope: !777)
!788 = distinct !{!788, !780, !789, !666}
!789 = !DILocation(line: 302, column: 35, scope: !778)
!790 = !DILocation(line: 305, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !749, file: !3, line: 305, column: 7)
!792 = !DILocation(line: 305, column: 23, scope: !791)
!793 = !DILocation(line: 305, column: 34, scope: !791)
!794 = !DILocation(line: 305, column: 26, scope: !791)
!795 = !DILocation(line: 305, column: 41, scope: !791)
!796 = !DILocation(line: 305, column: 7, scope: !749)
!797 = !DILocation(line: 306, column: 5, scope: !791)
!798 = !DILocation(line: 307, column: 10, scope: !749)
!799 = !DILocation(line: 307, column: 3, scope: !749)
!800 = !DISubprogram(name: "bindtextdomain", scope: !687, file: !687, line: 86, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!801 = !DISubroutineType(types: !802)
!802 = !{!88, !30, !30}
!803 = !DISubprogram(name: "textdomain", scope: !687, file: !687, line: 82, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!804 = !DISubroutineType(types: !805)
!805 = !{!88, !30}
!806 = !DISubprogram(name: "atexit", scope: !807, file: !807, line: 595, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!807 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!808 = !DISubroutineType(types: !809)
!809 = !{!65, !810}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null}
!813 = !DISubprogram(name: "setvbuf", scope: !691, file: !691, line: 308, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!814 = !DISubroutineType(types: !815)
!815 = !{!65, !694, !88, !65, !42}
!816 = distinct !DISubprogram(name: "cksum", scope: !3, file: !3, line: 177, type: !817, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!45, !30, !45}
!819 = !{!820, !821, !822, !827, !828, !829, !830, !834, !838, !839}
!820 = !DILocalVariable(name: "file", arg: 1, scope: !816, file: !3, line: 177, type: !30)
!821 = !DILocalVariable(name: "print_name", arg: 2, scope: !816, file: !3, line: 177, type: !45)
!822 = !DILocalVariable(name: "buf", scope: !816, file: !3, line: 179, type: !823)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 524288, elements: !825)
!824 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!825 = !{!826}
!826 = !DISubrange(count: 65536)
!827 = !DILocalVariable(name: "crc", scope: !816, file: !3, line: 180, type: !40)
!828 = !DILocalVariable(name: "length", scope: !816, file: !3, line: 181, type: !172)
!829 = !DILocalVariable(name: "bytes_read", scope: !816, file: !3, line: 182, type: !117)
!830 = !DILocalVariable(name: "fp", scope: !816, file: !3, line: 183, type: !831)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !833, line: 7, baseType: !695)
!833 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!834 = !DILocalVariable(name: "length_buf", scope: !816, file: !3, line: 184, type: !835)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 168, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 21)
!838 = !DILocalVariable(name: "hp", scope: !816, file: !3, line: 185, type: !30)
!839 = !DILocalVariable(name: "cp", scope: !840, file: !3, line: 207, type: !841)
!840 = distinct !DILexicalBlock(scope: !816, file: !3, line: 206, column: 5)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!842 = !DILocation(line: 0, scope: !816)
!843 = !DILocation(line: 179, column: 3, scope: !816)
!844 = !DILocation(line: 179, column: 17, scope: !816)
!845 = !DILocation(line: 184, column: 3, scope: !816)
!846 = !DILocation(line: 184, column: 8, scope: !816)
!847 = !DILocation(line: 187, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !816, file: !3, line: 187, column: 7)
!849 = !DILocation(line: 187, column: 7, scope: !816)
!850 = !DILocation(line: 189, column: 12, scope: !851)
!851 = distinct !DILexicalBlock(scope: !848, file: !3, line: 188, column: 5)
!852 = !DILocation(line: 190, column: 23, scope: !851)
!853 = !DILocation(line: 192, column: 5, scope: !851)
!854 = !DILocation(line: 195, column: 12, scope: !855)
!855 = distinct !DILexicalBlock(scope: !848, file: !3, line: 194, column: 5)
!856 = !DILocation(line: 196, column: 14, scope: !857)
!857 = distinct !DILexicalBlock(scope: !855, file: !3, line: 196, column: 11)
!858 = !DILocation(line: 196, column: 11, scope: !855)
!859 = !DILocation(line: 198, column: 21, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !3, line: 197, column: 9)
!861 = !DILocation(line: 198, column: 34, scope: !860)
!862 = !DILocation(line: 198, column: 11, scope: !860)
!863 = !DILocation(line: 199, column: 11, scope: !860)
!864 = !DILocation(line: 0, scope: !848)
!865 = !DILocation(line: 203, column: 3, scope: !816)
!866 = !DILocation(line: 205, column: 3, scope: !816)
!867 = !DILocation(line: 180, column: 17, scope: !816)
!868 = !DILocation(line: 205, column: 24, scope: !816)
!869 = !DILocation(line: 205, column: 52, scope: !816)
!870 = !DILocation(line: 137, column: 10, scope: !871, inlinedAt: !877)
!871 = distinct !DISubprogram(name: "ferror_unlocked", scope: !872, file: !872, line: 135, type: !873, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !875)
!872 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!873 = !DISubroutineType(types: !874)
!874 = !{!65, !831}
!875 = !{!876}
!876 = !DILocalVariable(name: "__stream", arg: 1, scope: !871, file: !872, line: 135, type: !831)
!877 = distinct !DILocation(line: 218, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !816, file: !3, line: 218, column: 7)
!879 = !{!880, !773, i64 0}
!880 = !{!"_IO_FILE", !773, i64 0, !625, i64 8, !625, i64 16, !625, i64 24, !625, i64 32, !625, i64 40, !625, i64 48, !625, i64 56, !625, i64 64, !625, i64 72, !625, i64 80, !625, i64 88, !625, i64 96, !625, i64 104, !773, i64 112, !773, i64 116, !881, i64 120, !882, i64 128, !626, i64 130, !626, i64 131, !625, i64 136, !881, i64 144, !625, i64 152, !625, i64 160, !625, i64 168, !625, i64 176, !881, i64 184, !773, i64 192, !626, i64 196}
!881 = !{!"long", !626, i64 0}
!882 = !{!"short", !626, i64 0}
!883 = !DILocation(line: 0, scope: !840)
!884 = !DILocation(line: 209, column: 18, scope: !885)
!885 = distinct !DILexicalBlock(scope: !840, file: !3, line: 209, column: 11)
!886 = !DILocation(line: 209, column: 31, scope: !885)
!887 = !DILocation(line: 209, column: 11, scope: !840)
!888 = !DILocation(line: 212, column: 7, scope: !840)
!889 = !DILocation(line: 212, column: 24, scope: !840)
!890 = !DILocation(line: 213, column: 20, scope: !840)
!891 = !DILocation(line: 213, column: 41, scope: !840)
!892 = !DILocation(line: 213, column: 50, scope: !840)
!893 = !{!626, !626, i64 0}
!894 = !DILocation(line: 213, column: 57, scope: !840)
!895 = !DILocation(line: 213, column: 28, scope: !840)
!896 = !{!881, !881, i64 0}
!897 = !DILocation(line: 213, column: 26, scope: !840)
!898 = !DILocation(line: 210, column: 9, scope: !885)
!899 = !DILocation(line: 213, column: 53, scope: !840)
!900 = distinct !{!900, !888, !901, !666}
!901 = !DILocation(line: 213, column: 63, scope: !840)
!902 = !DILocalVariable(name: "__stream", arg: 1, scope: !903, file: !872, line: 128, type: !831)
!903 = distinct !DISubprogram(name: "feof_unlocked", scope: !872, file: !872, line: 128, type: !873, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !904)
!904 = !{!902}
!905 = !DILocation(line: 0, scope: !903, inlinedAt: !906)
!906 = distinct !DILocation(line: 214, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !840, file: !3, line: 214, column: 11)
!908 = !DILocation(line: 130, column: 10, scope: !903, inlinedAt: !906)
!909 = !DILocation(line: 214, column: 11, scope: !907)
!910 = distinct !{!910, !866, !911, !666}
!911 = !DILocation(line: 216, column: 5, scope: !816)
!912 = !DILocation(line: 0, scope: !871, inlinedAt: !877)
!913 = !DILocation(line: 218, column: 7, scope: !878)
!914 = !DILocation(line: 218, column: 7, scope: !816)
!915 = !DILocation(line: 220, column: 17, scope: !916)
!916 = distinct !DILexicalBlock(scope: !878, file: !3, line: 219, column: 5)
!917 = !DILocation(line: 220, column: 30, scope: !916)
!918 = !DILocation(line: 220, column: 7, scope: !916)
!919 = !DILocation(line: 221, column: 12, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !3, line: 221, column: 11)
!921 = !DILocation(line: 221, column: 11, scope: !916)
!922 = !DILocation(line: 222, column: 9, scope: !920)
!923 = !DILocation(line: 226, column: 8, scope: !924)
!924 = distinct !DILexicalBlock(scope: !816, file: !3, line: 226, column: 7)
!925 = !DILocation(line: 226, column: 26, scope: !924)
!926 = !DILocation(line: 226, column: 29, scope: !924)
!927 = !DILocation(line: 226, column: 41, scope: !924)
!928 = !DILocation(line: 226, column: 7, scope: !816)
!929 = !DILocation(line: 228, column: 17, scope: !930)
!930 = distinct !DILexicalBlock(scope: !924, file: !3, line: 227, column: 5)
!931 = !DILocation(line: 228, column: 30, scope: !930)
!932 = !DILocation(line: 228, column: 7, scope: !930)
!933 = !DILocation(line: 229, column: 7, scope: !930)
!934 = !DILocation(line: 232, column: 8, scope: !816)
!935 = !DILocation(line: 234, column: 3, scope: !936)
!936 = distinct !DILexicalBlock(scope: !816, file: !3, line: 234, column: 3)
!937 = !DILocation(line: 235, column: 16, scope: !938)
!938 = distinct !DILexicalBlock(scope: !936, file: !3, line: 234, column: 3)
!939 = !DILocation(line: 235, column: 37, scope: !938)
!940 = !DILocation(line: 235, column: 44, scope: !938)
!941 = !DILocation(line: 235, column: 54, scope: !938)
!942 = !DILocation(line: 235, column: 24, scope: !938)
!943 = !DILocation(line: 235, column: 22, scope: !938)
!944 = !DILocation(line: 234, column: 25, scope: !938)
!945 = distinct !{!945, !935, !946, !666}
!946 = !DILocation(line: 235, column: 60, scope: !936)
!947 = !DILocation(line: 0, scope: !948)
!948 = distinct !DILexicalBlock(scope: !816, file: !3, line: 239, column: 7)
!949 = !DILocation(line: 239, column: 7, scope: !816)
!950 = !DILocation(line: 240, column: 5, scope: !948)
!951 = !DILocation(line: 242, column: 5, scope: !948)
!952 = !DILocation(line: 244, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !816, file: !3, line: 244, column: 7)
!954 = !DILocation(line: 0, scope: !871, inlinedAt: !955)
!955 = distinct !DILocation(line: 244, column: 7, scope: !953)
!956 = !DILocation(line: 137, column: 10, scope: !871, inlinedAt: !955)
!957 = !DILocation(line: 244, column: 7, scope: !816)
!958 = !DILocation(line: 245, column: 5, scope: !953)
!959 = !DILocation(line: 248, column: 1, scope: !816)
!960 = !DISubprogram(name: "error", scope: !961, file: !961, line: 52, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!961 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!962 = !DISubroutineType(types: !963)
!963 = !{null, !65, !65, !30, null}
!964 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !55, file: !55, line: 51, type: !636, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !965)
!965 = !{!966}
!966 = !DILocalVariable(name: "file", arg: 1, scope: !964, file: !55, line: 51, type: !30)
!967 = !DILocation(line: 0, scope: !964)
!968 = !DILocation(line: 53, column: 13, scope: !964)
!969 = !DILocation(line: 54, column: 1, scope: !964)
!970 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !55, file: !55, line: 88, type: !971, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !45}
!973 = !{!974}
!974 = !DILocalVariable(name: "ignore", arg: 1, scope: !970, file: !55, line: 88, type: !45)
!975 = !DILocation(line: 0, scope: !970)
!976 = !DILocation(line: 90, column: 16, scope: !970)
!977 = !{!978, !978, i64 0}
!978 = !{!"_Bool", !626, i64 0}
!979 = !DILocation(line: 91, column: 1, scope: !970)
!980 = distinct !DISubprogram(name: "close_stdout", scope: !55, file: !55, line: 117, type: !811, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !981)
!981 = !{!982}
!982 = !DILocalVariable(name: "write_error", scope: !983, file: !55, line: 122, type: !30)
!983 = distinct !DILexicalBlock(scope: !984, file: !55, line: 121, column: 5)
!984 = distinct !DILexicalBlock(scope: !980, file: !55, line: 119, column: 7)
!985 = !DILocation(line: 119, column: 21, scope: !984)
!986 = !DILocation(line: 119, column: 7, scope: !984)
!987 = !DILocation(line: 119, column: 29, scope: !984)
!988 = !DILocation(line: 120, column: 7, scope: !984)
!989 = !DILocation(line: 120, column: 12, scope: !984)
!990 = !{i8 0, i8 2}
!991 = !DILocation(line: 120, column: 25, scope: !984)
!992 = !DILocation(line: 120, column: 28, scope: !984)
!993 = !DILocation(line: 120, column: 34, scope: !984)
!994 = !DILocation(line: 119, column: 7, scope: !980)
!995 = !DILocation(line: 122, column: 33, scope: !983)
!996 = !DILocation(line: 0, scope: !983)
!997 = !DILocation(line: 123, column: 11, scope: !998)
!998 = distinct !DILexicalBlock(scope: !983, file: !55, line: 123, column: 11)
!999 = !DILocation(line: 0, scope: !998)
!1000 = !DILocation(line: 123, column: 11, scope: !983)
!1001 = !DILocation(line: 124, column: 36, scope: !998)
!1002 = !DILocation(line: 124, column: 9, scope: !998)
!1003 = !DILocation(line: 127, column: 9, scope: !998)
!1004 = !DILocation(line: 129, column: 14, scope: !983)
!1005 = !DILocation(line: 129, column: 7, scope: !983)
!1006 = !DILocation(line: 134, column: 42, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !980, file: !55, line: 134, column: 7)
!1008 = !DILocation(line: 134, column: 28, scope: !1007)
!1009 = !DILocation(line: 134, column: 50, scope: !1007)
!1010 = !DILocation(line: 134, column: 7, scope: !980)
!1011 = !DILocation(line: 135, column: 12, scope: !1007)
!1012 = !DILocation(line: 135, column: 5, scope: !1007)
!1013 = !DILocation(line: 136, column: 1, scope: !980)
!1014 = distinct !DISubprogram(name: "fdadvise", scope: !167, file: !167, line: 31, type: !1015, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !1019)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !65, !1017, !1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !691, line: 63, baseType: !717)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1019 = !{!1020, !1021, !1022, !1023, !1024}
!1020 = !DILocalVariable(name: "fd", arg: 1, scope: !1014, file: !167, line: 31, type: !65)
!1021 = !DILocalVariable(name: "offset", arg: 2, scope: !1014, file: !167, line: 31, type: !1017)
!1022 = !DILocalVariable(name: "len", arg: 3, scope: !1014, file: !167, line: 31, type: !1017)
!1023 = !DILocalVariable(name: "advice", arg: 4, scope: !1014, file: !167, line: 31, type: !1018)
!1024 = !DILocalVariable(name: "__x", scope: !1025, file: !167, line: 34, type: !65)
!1025 = distinct !DILexicalBlock(scope: !1014, file: !167, line: 34, column: 3)
!1026 = !DILocation(line: 0, scope: !1014)
!1027 = !DILocation(line: 34, column: 3, scope: !1025)
!1028 = !DILocation(line: 0, scope: !1025)
!1029 = !DILocation(line: 36, column: 1, scope: !1014)
!1030 = !DISubprogram(name: "posix_fadvise", scope: !1031, file: !1031, line: 288, type: !1032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!1031 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!65, !65, !718, !718, !65}
!1034 = distinct !DISubprogram(name: "fadvise", scope: !167, file: !167, line: 39, type: !1035, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !166, retainedNodes: !1071)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1037, !1018}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !833, line: 7, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !696, line: 49, size: 1728, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1039, file: !696, line: 51, baseType: !65, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1039, file: !696, line: 54, baseType: !88, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1039, file: !696, line: 55, baseType: !88, size: 64, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1039, file: !696, line: 56, baseType: !88, size: 64, offset: 192)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1039, file: !696, line: 57, baseType: !88, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1039, file: !696, line: 58, baseType: !88, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1039, file: !696, line: 59, baseType: !88, size: 64, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1039, file: !696, line: 60, baseType: !88, size: 64, offset: 448)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1039, file: !696, line: 61, baseType: !88, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1039, file: !696, line: 64, baseType: !88, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1039, file: !696, line: 65, baseType: !88, size: 64, offset: 640)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1039, file: !696, line: 66, baseType: !88, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1039, file: !696, line: 68, baseType: !711, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1039, file: !696, line: 70, baseType: !1055, size: 64, offset: 832)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1039, file: !696, line: 72, baseType: !65, size: 32, offset: 896)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1039, file: !696, line: 73, baseType: !65, size: 32, offset: 928)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1039, file: !696, line: 74, baseType: !717, size: 64, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1039, file: !696, line: 77, baseType: !116, size: 16, offset: 1024)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1039, file: !696, line: 78, baseType: !721, size: 8, offset: 1040)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1039, file: !696, line: 79, baseType: !723, size: 8, offset: 1048)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1039, file: !696, line: 81, baseType: !727, size: 64, offset: 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1039, file: !696, line: 89, baseType: !730, size: 64, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1039, file: !696, line: 91, baseType: !732, size: 64, offset: 1216)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1039, file: !696, line: 92, baseType: !735, size: 64, offset: 1280)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1039, file: !696, line: 93, baseType: !1055, size: 64, offset: 1344)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1039, file: !696, line: 94, baseType: !33, size: 64, offset: 1408)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1039, file: !696, line: 95, baseType: !117, size: 64, offset: 1472)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1039, file: !696, line: 96, baseType: !65, size: 32, offset: 1536)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1039, file: !696, line: 98, baseType: !742, size: 160, offset: 1568)
!1071 = !{!1072, !1073}
!1072 = !DILocalVariable(name: "fp", arg: 1, scope: !1034, file: !167, line: 39, type: !1037)
!1073 = !DILocalVariable(name: "advice", arg: 2, scope: !1034, file: !167, line: 39, type: !1018)
!1074 = !DILocation(line: 0, scope: !1034)
!1075 = !DILocation(line: 41, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1034, file: !167, line: 41, column: 7)
!1077 = !DILocation(line: 41, column: 7, scope: !1034)
!1078 = !DILocation(line: 42, column: 15, scope: !1076)
!1079 = !DILocation(line: 0, scope: !1014, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 42, column: 5, scope: !1076)
!1081 = !DILocation(line: 34, column: 3, scope: !1025, inlinedAt: !1080)
!1082 = !DILocation(line: 0, scope: !1025, inlinedAt: !1080)
!1083 = !DILocation(line: 42, column: 5, scope: !1076)
!1084 = !DILocation(line: 43, column: 1, scope: !1034)
!1085 = !DISubprogram(name: "fileno", scope: !691, file: !691, line: 785, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!65, !1055}
!1088 = distinct !DISubprogram(name: "umaxtostr", scope: !1089, file: !1089, line: 36, type: !1090, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1092)
!1089 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!88, !172, !88}
!1092 = !{!1093, !1094, !1095}
!1093 = !DILocalVariable(name: "i", arg: 1, scope: !1088, file: !1089, line: 36, type: !172)
!1094 = !DILocalVariable(name: "buf", arg: 2, scope: !1088, file: !1089, line: 36, type: !88)
!1095 = !DILocalVariable(name: "p", scope: !1088, file: !1089, line: 38, type: !88)
!1096 = !DILocation(line: 0, scope: !1088)
!1097 = !DILocation(line: 38, column: 17, scope: !1088)
!1098 = !DILocation(line: 39, column: 6, scope: !1088)
!1099 = !DILocation(line: 52, column: 24, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !1089, line: 50, column: 5)
!1101 = distinct !DILexicalBlock(scope: !1088, file: !1089, line: 41, column: 7)
!1102 = !DILocation(line: 52, column: 16, scope: !1100)
!1103 = !DILocation(line: 52, column: 10, scope: !1100)
!1104 = !DILocation(line: 52, column: 14, scope: !1100)
!1105 = !DILocation(line: 53, column: 17, scope: !1100)
!1106 = !DILocation(line: 53, column: 24, scope: !1100)
!1107 = !DILocation(line: 52, column: 9, scope: !1100)
!1108 = distinct !{!1108, !1109, !1110, !666}
!1109 = !DILocation(line: 51, column: 7, scope: !1100)
!1110 = !DILocation(line: 53, column: 28, scope: !1100)
!1111 = !DILocation(line: 56, column: 3, scope: !1088)
!1112 = distinct !DISubprogram(name: "parse_long_options", scope: !69, file: !69, line: 45, type: !1113, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1116)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !65, !752, !30, !30, !30, !1115, null}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125}
!1117 = !DILocalVariable(name: "argc", arg: 1, scope: !1112, file: !69, line: 45, type: !65)
!1118 = !DILocalVariable(name: "argv", arg: 2, scope: !1112, file: !69, line: 46, type: !752)
!1119 = !DILocalVariable(name: "command_name", arg: 3, scope: !1112, file: !69, line: 47, type: !30)
!1120 = !DILocalVariable(name: "package", arg: 4, scope: !1112, file: !69, line: 48, type: !30)
!1121 = !DILocalVariable(name: "version", arg: 5, scope: !1112, file: !69, line: 49, type: !30)
!1122 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1112, file: !69, line: 50, type: !1115)
!1123 = !DILocalVariable(name: "c", scope: !1112, file: !69, line: 53, type: !65)
!1124 = !DILocalVariable(name: "saved_opterr", scope: !1112, file: !69, line: 54, type: !65)
!1125 = !DILocalVariable(name: "authors", scope: !1126, file: !69, line: 72, type: !1130)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !69, line: 71, column: 11)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !69, line: 65, column: 9)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !69, line: 63, column: 5)
!1129 = distinct !DILexicalBlock(scope: !1112, file: !69, line: 61, column: 7)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !691, line: 52, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1132, line: 32, baseType: !1133)
!1132 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !69, baseType: !1134)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 192, elements: !724)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1136)
!1136 = !{!1137, !1138, !1139, !1140}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1135, file: !69, line: 72, baseType: !7, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1135, file: !69, line: 72, baseType: !7, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1135, file: !69, line: 72, baseType: !33, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1135, file: !69, line: 72, baseType: !33, size: 64, offset: 128)
!1141 = !DILocation(line: 0, scope: !1112)
!1142 = !DILocation(line: 56, column: 18, scope: !1112)
!1143 = !DILocation(line: 59, column: 10, scope: !1112)
!1144 = !DILocation(line: 61, column: 12, scope: !1129)
!1145 = !DILocation(line: 62, column: 7, scope: !1129)
!1146 = !DILocation(line: 62, column: 15, scope: !1129)
!1147 = !DILocation(line: 61, column: 7, scope: !1112)
!1148 = !DILocation(line: 67, column: 11, scope: !1127)
!1149 = !DILocation(line: 68, column: 11, scope: !1127)
!1150 = !DILocation(line: 72, column: 13, scope: !1126)
!1151 = !DILocation(line: 72, column: 21, scope: !1126)
!1152 = !DILocation(line: 73, column: 13, scope: !1126)
!1153 = !DILocation(line: 74, column: 29, scope: !1126)
!1154 = !DILocation(line: 74, column: 13, scope: !1126)
!1155 = !DILocation(line: 75, column: 13, scope: !1126)
!1156 = !DILocation(line: 85, column: 10, scope: !1112)
!1157 = !DILocation(line: 89, column: 10, scope: !1112)
!1158 = !DILocation(line: 90, column: 1, scope: !1112)
!1159 = !DISubprogram(name: "getopt_long", scope: !74, file: !74, line: 66, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!65, !65, !1162, !30, !1164, !79}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1165 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !69, file: !69, line: 98, type: !1166, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !68, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !65, !752, !30, !30, !30, !45, !1115, null}
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1169 = !DILocalVariable(name: "argc", arg: 1, scope: !1165, file: !69, line: 98, type: !65)
!1170 = !DILocalVariable(name: "argv", arg: 2, scope: !1165, file: !69, line: 99, type: !752)
!1171 = !DILocalVariable(name: "command_name", arg: 3, scope: !1165, file: !69, line: 100, type: !30)
!1172 = !DILocalVariable(name: "package", arg: 4, scope: !1165, file: !69, line: 101, type: !30)
!1173 = !DILocalVariable(name: "version", arg: 5, scope: !1165, file: !69, line: 102, type: !30)
!1174 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1165, file: !69, line: 103, type: !45)
!1175 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1165, file: !69, line: 104, type: !1115)
!1176 = !DILocalVariable(name: "c", scope: !1165, file: !69, line: 107, type: !65)
!1177 = !DILocalVariable(name: "saved_opterr", scope: !1165, file: !69, line: 108, type: !65)
!1178 = !DILocalVariable(name: "optstring", scope: !1165, file: !69, line: 113, type: !30)
!1179 = !DILocalVariable(name: "authors", scope: !1180, file: !69, line: 125, type: !1130)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !69, line: 124, column: 11)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !69, line: 118, column: 9)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !69, line: 116, column: 5)
!1183 = distinct !DILexicalBlock(scope: !1165, file: !69, line: 115, column: 7)
!1184 = !DILocation(line: 0, scope: !1165)
!1185 = !DILocation(line: 108, column: 22, scope: !1165)
!1186 = !DILocation(line: 111, column: 10, scope: !1165)
!1187 = !DILocation(line: 113, column: 27, scope: !1165)
!1188 = !DILocation(line: 115, column: 12, scope: !1183)
!1189 = !DILocation(line: 115, column: 7, scope: !1165)
!1190 = !DILocation(line: 125, column: 13, scope: !1180)
!1191 = !DILocation(line: 125, column: 21, scope: !1180)
!1192 = !DILocation(line: 126, column: 13, scope: !1180)
!1193 = !DILocation(line: 127, column: 29, scope: !1180)
!1194 = !DILocation(line: 127, column: 13, scope: !1180)
!1195 = !DILocation(line: 128, column: 13, scope: !1180)
!1196 = !DILocation(line: 132, column: 26, scope: !1181)
!1197 = !DILocation(line: 133, column: 11, scope: !1181)
!1198 = !DILocation(line: 0, scope: !1181)
!1199 = !DILocation(line: 138, column: 10, scope: !1165)
!1200 = !DILocation(line: 139, column: 1, scope: !1165)
!1201 = distinct !DISubprogram(name: "set_program_name", scope: !86, file: !86, line: 39, type: !636, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DILocalVariable(name: "argv0", arg: 1, scope: !1201, file: !86, line: 39, type: !30)
!1204 = !DILocalVariable(name: "slash", scope: !1201, file: !86, line: 46, type: !30)
!1205 = !DILocalVariable(name: "base", scope: !1201, file: !86, line: 47, type: !30)
!1206 = !DILocation(line: 0, scope: !1201)
!1207 = !DILocation(line: 51, column: 13, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1201, file: !86, line: 51, column: 7)
!1209 = !DILocation(line: 51, column: 7, scope: !1201)
!1210 = !DILocation(line: 55, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !86, line: 52, column: 5)
!1212 = !DILocation(line: 54, column: 7, scope: !1211)
!1213 = !DILocation(line: 56, column: 7, scope: !1211)
!1214 = !DILocation(line: 59, column: 11, scope: !1201)
!1215 = !DILocation(line: 60, column: 17, scope: !1201)
!1216 = !DILocation(line: 60, column: 11, scope: !1201)
!1217 = !DILocation(line: 61, column: 12, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1201, file: !86, line: 61, column: 7)
!1219 = !DILocation(line: 61, column: 20, scope: !1218)
!1220 = !DILocation(line: 61, column: 25, scope: !1218)
!1221 = !DILocation(line: 61, column: 42, scope: !1218)
!1222 = !DILocation(line: 61, column: 28, scope: !1218)
!1223 = !DILocation(line: 61, column: 61, scope: !1218)
!1224 = !DILocation(line: 61, column: 7, scope: !1201)
!1225 = !DILocation(line: 64, column: 11, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !86, line: 64, column: 11)
!1227 = distinct !DILexicalBlock(scope: !1218, file: !86, line: 62, column: 5)
!1228 = !DILocation(line: 64, column: 36, scope: !1226)
!1229 = !DILocation(line: 64, column: 11, scope: !1227)
!1230 = !DILocation(line: 66, column: 24, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !86, line: 65, column: 9)
!1232 = !DILocation(line: 70, column: 41, scope: !1231)
!1233 = !DILocation(line: 72, column: 9, scope: !1231)
!1234 = !DILocation(line: 84, column: 16, scope: !1201)
!1235 = !DILocation(line: 90, column: 27, scope: !1201)
!1236 = !DILocation(line: 92, column: 1, scope: !1201)
!1237 = distinct !DISubprogram(name: "clone_quoting_options", scope: !93, file: !93, line: 122, type: !1238, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1241)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!1240, !1240}
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!1241 = !{!1242, !1243, !1244}
!1242 = !DILocalVariable(name: "o", arg: 1, scope: !1237, file: !93, line: 122, type: !1240)
!1243 = !DILocalVariable(name: "e", scope: !1237, file: !93, line: 124, type: !65)
!1244 = !DILocalVariable(name: "p", scope: !1237, file: !93, line: 125, type: !1240)
!1245 = !DILocation(line: 0, scope: !1237)
!1246 = !DILocation(line: 124, column: 11, scope: !1237)
!1247 = !DILocation(line: 125, column: 40, scope: !1237)
!1248 = !DILocation(line: 125, column: 31, scope: !1237)
!1249 = !DILocation(line: 127, column: 9, scope: !1237)
!1250 = !DILocation(line: 128, column: 3, scope: !1237)
!1251 = distinct !DISubprogram(name: "get_quoting_style", scope: !93, file: !93, line: 133, type: !1252, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1256)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!5, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1256 = !{!1257}
!1257 = !DILocalVariable(name: "o", arg: 1, scope: !1251, file: !93, line: 133, type: !1254)
!1258 = !DILocation(line: 0, scope: !1251)
!1259 = !DILocation(line: 135, column: 11, scope: !1251)
!1260 = !DILocation(line: 135, column: 46, scope: !1251)
!1261 = !{!1262, !626, i64 0}
!1262 = !{!"quoting_options", !626, i64 0, !773, i64 4, !626, i64 8, !625, i64 40, !625, i64 48}
!1263 = !DILocation(line: 135, column: 3, scope: !1251)
!1264 = distinct !DISubprogram(name: "set_quoting_style", scope: !93, file: !93, line: 141, type: !1265, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1267)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !1240, !5}
!1267 = !{!1268, !1269}
!1268 = !DILocalVariable(name: "o", arg: 1, scope: !1264, file: !93, line: 141, type: !1240)
!1269 = !DILocalVariable(name: "s", arg: 2, scope: !1264, file: !93, line: 141, type: !5)
!1270 = !DILocation(line: 0, scope: !1264)
!1271 = !DILocation(line: 143, column: 4, scope: !1264)
!1272 = !DILocation(line: 143, column: 39, scope: !1264)
!1273 = !DILocation(line: 143, column: 45, scope: !1264)
!1274 = !DILocation(line: 144, column: 1, scope: !1264)
!1275 = distinct !DISubprogram(name: "set_char_quoting", scope: !93, file: !93, line: 152, type: !1276, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1278)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!65, !1240, !32, !65}
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1285, !1286}
!1279 = !DILocalVariable(name: "o", arg: 1, scope: !1275, file: !93, line: 152, type: !1240)
!1280 = !DILocalVariable(name: "c", arg: 2, scope: !1275, file: !93, line: 152, type: !32)
!1281 = !DILocalVariable(name: "i", arg: 3, scope: !1275, file: !93, line: 152, type: !65)
!1282 = !DILocalVariable(name: "uc", scope: !1275, file: !93, line: 154, type: !824)
!1283 = !DILocalVariable(name: "p", scope: !1275, file: !93, line: 155, type: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1285 = !DILocalVariable(name: "shift", scope: !1275, file: !93, line: 157, type: !65)
!1286 = !DILocalVariable(name: "r", scope: !1275, file: !93, line: 158, type: !65)
!1287 = !DILocation(line: 0, scope: !1275)
!1288 = !DILocation(line: 156, column: 6, scope: !1275)
!1289 = !DILocation(line: 156, column: 62, scope: !1275)
!1290 = !DILocation(line: 156, column: 57, scope: !1275)
!1291 = !DILocation(line: 157, column: 15, scope: !1275)
!1292 = !DILocation(line: 158, column: 12, scope: !1275)
!1293 = !DILocation(line: 158, column: 15, scope: !1275)
!1294 = !DILocation(line: 158, column: 25, scope: !1275)
!1295 = !DILocation(line: 159, column: 13, scope: !1275)
!1296 = !DILocation(line: 159, column: 18, scope: !1275)
!1297 = !DILocation(line: 159, column: 23, scope: !1275)
!1298 = !DILocation(line: 159, column: 6, scope: !1275)
!1299 = !DILocation(line: 160, column: 3, scope: !1275)
!1300 = distinct !DISubprogram(name: "set_quoting_flags", scope: !93, file: !93, line: 168, type: !1301, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!65, !1240, !65}
!1303 = !{!1304, !1305, !1306}
!1304 = !DILocalVariable(name: "o", arg: 1, scope: !1300, file: !93, line: 168, type: !1240)
!1305 = !DILocalVariable(name: "i", arg: 2, scope: !1300, file: !93, line: 168, type: !65)
!1306 = !DILocalVariable(name: "r", scope: !1300, file: !93, line: 170, type: !65)
!1307 = !DILocation(line: 0, scope: !1300)
!1308 = !DILocation(line: 171, column: 8, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1300, file: !93, line: 171, column: 7)
!1310 = !DILocation(line: 171, column: 7, scope: !1300)
!1311 = !DILocation(line: 173, column: 10, scope: !1300)
!1312 = !{!1262, !773, i64 4}
!1313 = !DILocation(line: 174, column: 12, scope: !1300)
!1314 = !DILocation(line: 175, column: 3, scope: !1300)
!1315 = distinct !DISubprogram(name: "set_custom_quoting", scope: !93, file: !93, line: 179, type: !1316, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !1240, !30, !30}
!1318 = !{!1319, !1320, !1321}
!1319 = !DILocalVariable(name: "o", arg: 1, scope: !1315, file: !93, line: 179, type: !1240)
!1320 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1315, file: !93, line: 180, type: !30)
!1321 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1315, file: !93, line: 180, type: !30)
!1322 = !DILocation(line: 0, scope: !1315)
!1323 = !DILocation(line: 182, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1315, file: !93, line: 182, column: 7)
!1325 = !DILocation(line: 182, column: 7, scope: !1315)
!1326 = !DILocation(line: 184, column: 6, scope: !1315)
!1327 = !DILocation(line: 184, column: 12, scope: !1315)
!1328 = !DILocation(line: 185, column: 8, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1315, file: !93, line: 185, column: 7)
!1330 = !DILocation(line: 185, column: 19, scope: !1329)
!1331 = !DILocation(line: 186, column: 5, scope: !1329)
!1332 = !DILocation(line: 187, column: 6, scope: !1315)
!1333 = !DILocation(line: 187, column: 17, scope: !1315)
!1334 = !{!1262, !625, i64 40}
!1335 = !DILocation(line: 188, column: 6, scope: !1315)
!1336 = !DILocation(line: 188, column: 18, scope: !1315)
!1337 = !{!1262, !625, i64 48}
!1338 = !DILocation(line: 189, column: 1, scope: !1315)
!1339 = distinct !DISubprogram(name: "quotearg_buffer", scope: !93, file: !93, line: 784, type: !1340, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!117, !88, !117, !30, !117, !1254}
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350}
!1343 = !DILocalVariable(name: "buffer", arg: 1, scope: !1339, file: !93, line: 784, type: !88)
!1344 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1339, file: !93, line: 784, type: !117)
!1345 = !DILocalVariable(name: "arg", arg: 3, scope: !1339, file: !93, line: 785, type: !30)
!1346 = !DILocalVariable(name: "argsize", arg: 4, scope: !1339, file: !93, line: 785, type: !117)
!1347 = !DILocalVariable(name: "o", arg: 5, scope: !1339, file: !93, line: 786, type: !1254)
!1348 = !DILocalVariable(name: "p", scope: !1339, file: !93, line: 788, type: !1254)
!1349 = !DILocalVariable(name: "e", scope: !1339, file: !93, line: 789, type: !65)
!1350 = !DILocalVariable(name: "r", scope: !1339, file: !93, line: 790, type: !117)
!1351 = !DILocation(line: 0, scope: !1339)
!1352 = !DILocation(line: 788, column: 37, scope: !1339)
!1353 = !DILocation(line: 789, column: 11, scope: !1339)
!1354 = !DILocation(line: 791, column: 43, scope: !1339)
!1355 = !DILocation(line: 791, column: 53, scope: !1339)
!1356 = !DILocation(line: 791, column: 60, scope: !1339)
!1357 = !DILocation(line: 792, column: 43, scope: !1339)
!1358 = !DILocation(line: 792, column: 58, scope: !1339)
!1359 = !DILocation(line: 790, column: 14, scope: !1339)
!1360 = !DILocation(line: 793, column: 9, scope: !1339)
!1361 = !DILocation(line: 794, column: 3, scope: !1339)
!1362 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !93, file: !93, line: 256, type: !1363, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1367)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!117, !88, !117, !30, !117, !5, !65, !1365, !30, !30}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1392, !1393, !1394, !1395, !1396, !1399, !1400, !1418, !1421, !1422, !1429, !1432, !1433, !1434, !1435, !1436, !1437}
!1368 = !DILocalVariable(name: "buffer", arg: 1, scope: !1362, file: !93, line: 256, type: !88)
!1369 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1362, file: !93, line: 256, type: !117)
!1370 = !DILocalVariable(name: "arg", arg: 3, scope: !1362, file: !93, line: 257, type: !30)
!1371 = !DILocalVariable(name: "argsize", arg: 4, scope: !1362, file: !93, line: 257, type: !117)
!1372 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1362, file: !93, line: 258, type: !5)
!1373 = !DILocalVariable(name: "flags", arg: 6, scope: !1362, file: !93, line: 258, type: !65)
!1374 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1362, file: !93, line: 259, type: !1365)
!1375 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1362, file: !93, line: 260, type: !30)
!1376 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1362, file: !93, line: 261, type: !30)
!1377 = !DILocalVariable(name: "i", scope: !1362, file: !93, line: 263, type: !117)
!1378 = !DILocalVariable(name: "len", scope: !1362, file: !93, line: 264, type: !117)
!1379 = !DILocalVariable(name: "orig_buffersize", scope: !1362, file: !93, line: 265, type: !117)
!1380 = !DILocalVariable(name: "quote_string", scope: !1362, file: !93, line: 266, type: !30)
!1381 = !DILocalVariable(name: "quote_string_len", scope: !1362, file: !93, line: 267, type: !117)
!1382 = !DILocalVariable(name: "backslash_escapes", scope: !1362, file: !93, line: 268, type: !45)
!1383 = !DILocalVariable(name: "unibyte_locale", scope: !1362, file: !93, line: 269, type: !45)
!1384 = !DILocalVariable(name: "elide_outer_quotes", scope: !1362, file: !93, line: 270, type: !45)
!1385 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1362, file: !93, line: 271, type: !45)
!1386 = !DILocalVariable(name: "encountered_single_quote", scope: !1362, file: !93, line: 272, type: !45)
!1387 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1362, file: !93, line: 273, type: !45)
!1388 = !DILocalVariable(name: "c", scope: !1389, file: !93, line: 402, type: !824)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !93, line: 401, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !93, line: 400, column: 3)
!1391 = distinct !DILexicalBlock(scope: !1362, file: !93, line: 400, column: 3)
!1392 = !DILocalVariable(name: "esc", scope: !1389, file: !93, line: 403, type: !824)
!1393 = !DILocalVariable(name: "is_right_quote", scope: !1389, file: !93, line: 404, type: !45)
!1394 = !DILocalVariable(name: "escaping", scope: !1389, file: !93, line: 405, type: !45)
!1395 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1389, file: !93, line: 406, type: !45)
!1396 = !DILocalVariable(name: "m", scope: !1397, file: !93, line: 610, type: !117)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 608, column: 11)
!1398 = distinct !DILexicalBlock(scope: !1389, file: !93, line: 426, column: 9)
!1399 = !DILocalVariable(name: "printable", scope: !1397, file: !93, line: 612, type: !45)
!1400 = !DILocalVariable(name: "mbstate", scope: !1401, file: !93, line: 621, type: !1403)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !93, line: 620, column: 15)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !93, line: 614, column: 17)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1404, line: 6, baseType: !1405)
!1404 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1406, line: 21, baseType: !1407)
!1406 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1406, line: 13, size: 64, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1407, file: !1406, line: 15, baseType: !65, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1407, file: !1406, line: 20, baseType: !1411, size: 32, offset: 32)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1407, file: !1406, line: 16, size: 32, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1411, file: !1406, line: 18, baseType: !7, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1411, file: !1406, line: 19, baseType: !1415, size: 32)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 4)
!1418 = !DILocalVariable(name: "w", scope: !1419, file: !93, line: 631, type: !1420)
!1419 = distinct !DILexicalBlock(scope: !1401, file: !93, line: 630, column: 19)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !118, line: 74, baseType: !65)
!1421 = !DILocalVariable(name: "bytes", scope: !1419, file: !93, line: 632, type: !117)
!1422 = !DILocalVariable(name: "j", scope: !1423, file: !93, line: 657, type: !117)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !93, line: 656, column: 27)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !93, line: 654, column: 29)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !93, line: 649, column: 23)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !93, line: 641, column: 30)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !93, line: 636, column: 30)
!1428 = distinct !DILexicalBlock(scope: !1419, file: !93, line: 634, column: 25)
!1429 = !DILocalVariable(name: "ilim", scope: !1430, file: !93, line: 684, type: !117)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !93, line: 681, column: 15)
!1431 = distinct !DILexicalBlock(scope: !1397, file: !93, line: 680, column: 17)
!1432 = !DILabel(scope: !1362, name: "process_input", file: !93, line: 314)
!1433 = !DILabel(scope: !1398, name: "c_and_shell_escape", file: !93, line: 512)
!1434 = !DILabel(scope: !1398, name: "c_escape", file: !93, line: 517)
!1435 = !DILabel(scope: !1389, name: "store_escape", file: !93, line: 719)
!1436 = !DILabel(scope: !1389, name: "store_c", file: !93, line: 722)
!1437 = !DILabel(scope: !1362, name: "force_outer_quoting_style", file: !93, line: 763)
!1438 = !DILocation(line: 0, scope: !1362)
!1439 = !DILocation(line: 269, column: 25, scope: !1362)
!1440 = !DILocation(line: 269, column: 36, scope: !1362)
!1441 = !DILocation(line: 270, column: 8, scope: !1362)
!1442 = !DILocation(line: 273, column: 3, scope: !1362)
!1443 = !DILocation(line: 265, column: 10, scope: !1362)
!1444 = !DILocation(line: 266, column: 15, scope: !1362)
!1445 = !DILocation(line: 267, column: 10, scope: !1362)
!1446 = !DILocation(line: 268, column: 8, scope: !1362)
!1447 = !DILocation(line: 271, column: 8, scope: !1362)
!1448 = !DILocation(line: 272, column: 8, scope: !1362)
!1449 = !DILocation(line: 273, column: 8, scope: !1362)
!1450 = !DILocation(line: 314, column: 2, scope: !1362)
!1451 = !DILocation(line: 316, column: 3, scope: !1362)
!1452 = !DILocation(line: 323, column: 11, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1362, file: !93, line: 317, column: 5)
!1454 = !DILocation(line: 323, column: 12, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1453, file: !93, line: 323, column: 11)
!1456 = !DILocation(line: 324, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !93, line: 324, column: 9)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !93, line: 324, column: 9)
!1459 = !DILocation(line: 324, column: 9, scope: !1458)
!1460 = !DILocation(line: 362, column: 26, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !93, line: 340, column: 11)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !93, line: 339, column: 13)
!1463 = distinct !DILexicalBlock(scope: !1453, file: !93, line: 338, column: 7)
!1464 = !DILocation(line: 363, column: 27, scope: !1461)
!1465 = !DILocation(line: 364, column: 11, scope: !1461)
!1466 = !DILocation(line: 365, column: 14, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !93, line: 365, column: 13)
!1468 = !DILocation(line: 365, column: 13, scope: !1463)
!1469 = !DILocation(line: 366, column: 43, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !93, line: 366, column: 11)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !93, line: 366, column: 11)
!1472 = !DILocation(line: 366, column: 11, scope: !1471)
!1473 = !DILocation(line: 367, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !93, line: 367, column: 13)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !93, line: 367, column: 13)
!1476 = !DILocation(line: 367, column: 13, scope: !1475)
!1477 = !DILocation(line: 366, column: 70, scope: !1470)
!1478 = distinct !{!1478, !1472, !1479, !666}
!1479 = !DILocation(line: 367, column: 13, scope: !1471)
!1480 = !DILocation(line: 264, column: 10, scope: !1362)
!1481 = !DILocation(line: 370, column: 28, scope: !1463)
!1482 = !DILocation(line: 372, column: 7, scope: !1453)
!1483 = !DILocation(line: 376, column: 7, scope: !1453)
!1484 = !DILocation(line: 379, column: 7, scope: !1453)
!1485 = !DILocation(line: 381, column: 12, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1453, file: !93, line: 381, column: 11)
!1487 = !DILocation(line: 381, column: 11, scope: !1453)
!1488 = !DILocation(line: 386, column: 12, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1453, file: !93, line: 386, column: 11)
!1490 = !DILocation(line: 386, column: 11, scope: !1453)
!1491 = !DILocation(line: 387, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !93, line: 387, column: 9)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !93, line: 387, column: 9)
!1494 = !DILocation(line: 387, column: 9, scope: !1493)
!1495 = !DILocation(line: 394, column: 7, scope: !1453)
!1496 = !DILocation(line: 397, column: 7, scope: !1453)
!1497 = !DILocation(line: 400, column: 8, scope: !1391)
!1498 = !DILocation(line: 0, scope: !1391)
!1499 = !DILocation(line: 400, column: 27, scope: !1390)
!1500 = !DILocation(line: 400, column: 19, scope: !1390)
!1501 = !DILocation(line: 400, column: 41, scope: !1390)
!1502 = !DILocation(line: 400, column: 48, scope: !1390)
!1503 = !DILocation(line: 400, column: 3, scope: !1391)
!1504 = !DILocation(line: 400, column: 60, scope: !1390)
!1505 = !DILocation(line: 0, scope: !1389)
!1506 = !DILocation(line: 409, column: 11, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1389, file: !93, line: 408, column: 11)
!1508 = !DILocation(line: 411, column: 17, scope: !1507)
!1509 = !DILocation(line: 412, column: 39, scope: !1507)
!1510 = !DILocation(line: 416, column: 32, scope: !1507)
!1511 = !DILocation(line: 412, column: 19, scope: !1507)
!1512 = !DILocation(line: 412, column: 15, scope: !1507)
!1513 = !DILocation(line: 417, column: 11, scope: !1507)
!1514 = !DILocation(line: 417, column: 26, scope: !1507)
!1515 = !DILocation(line: 417, column: 14, scope: !1507)
!1516 = !DILocation(line: 417, column: 63, scope: !1507)
!1517 = !DILocation(line: 408, column: 11, scope: !1389)
!1518 = !DILocation(line: 424, column: 11, scope: !1389)
!1519 = !DILocation(line: 425, column: 7, scope: !1389)
!1520 = !DILocation(line: 428, column: 15, scope: !1398)
!1521 = !DILocation(line: 430, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !93, line: 430, column: 15)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !93, line: 429, column: 13)
!1524 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 428, column: 15)
!1525 = !DILocation(line: 430, column: 15, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !93, line: 430, column: 15)
!1527 = !DILocation(line: 430, column: 15, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !93, line: 430, column: 15)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !93, line: 430, column: 15)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !93, line: 430, column: 15)
!1531 = !DILocation(line: 430, column: 15, scope: !1529)
!1532 = !DILocation(line: 430, column: 15, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !93, line: 430, column: 15)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !93, line: 430, column: 15)
!1535 = !DILocation(line: 430, column: 15, scope: !1534)
!1536 = !DILocation(line: 430, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !93, line: 430, column: 15)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !93, line: 430, column: 15)
!1539 = !DILocation(line: 430, column: 15, scope: !1538)
!1540 = !DILocation(line: 430, column: 15, scope: !1530)
!1541 = !DILocation(line: 430, column: 15, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !93, line: 430, column: 15)
!1543 = distinct !DILexicalBlock(scope: !1522, file: !93, line: 430, column: 15)
!1544 = !DILocation(line: 430, column: 15, scope: !1543)
!1545 = !DILocation(line: 438, column: 19, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1523, file: !93, line: 437, column: 19)
!1547 = !DILocation(line: 438, column: 48, scope: !1546)
!1548 = !DILocation(line: 438, column: 59, scope: !1546)
!1549 = !DILocation(line: 440, column: 19, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !93, line: 440, column: 19)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !93, line: 440, column: 19)
!1552 = distinct !DILexicalBlock(scope: !1546, file: !93, line: 439, column: 17)
!1553 = !DILocation(line: 440, column: 19, scope: !1551)
!1554 = !DILocation(line: 441, column: 19, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !93, line: 441, column: 19)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !93, line: 441, column: 19)
!1557 = !DILocation(line: 441, column: 19, scope: !1556)
!1558 = !DILocation(line: 442, column: 17, scope: !1552)
!1559 = !DILocation(line: 449, column: 20, scope: !1524)
!1560 = !DILocation(line: 454, column: 11, scope: !1398)
!1561 = !DILocation(line: 457, column: 19, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 455, column: 13)
!1563 = !DILocation(line: 463, column: 19, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1562, file: !93, line: 462, column: 19)
!1565 = !DILocation(line: 463, column: 47, scope: !1564)
!1566 = !DILocation(line: 463, column: 41, scope: !1564)
!1567 = !DILocation(line: 463, column: 52, scope: !1564)
!1568 = !DILocation(line: 462, column: 19, scope: !1562)
!1569 = !DILocation(line: 464, column: 25, scope: !1564)
!1570 = !DILocation(line: 464, column: 17, scope: !1564)
!1571 = !DILocation(line: 471, column: 25, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1564, file: !93, line: 465, column: 19)
!1573 = !DILocation(line: 475, column: 21, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !93, line: 475, column: 21)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !93, line: 475, column: 21)
!1576 = !DILocation(line: 475, column: 21, scope: !1575)
!1577 = !DILocation(line: 476, column: 21, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !93, line: 476, column: 21)
!1579 = distinct !DILexicalBlock(scope: !1572, file: !93, line: 476, column: 21)
!1580 = !DILocation(line: 476, column: 21, scope: !1579)
!1581 = !DILocation(line: 477, column: 21, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !93, line: 477, column: 21)
!1583 = distinct !DILexicalBlock(scope: !1572, file: !93, line: 477, column: 21)
!1584 = !DILocation(line: 477, column: 21, scope: !1583)
!1585 = !DILocation(line: 478, column: 21, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !93, line: 478, column: 21)
!1587 = distinct !DILexicalBlock(scope: !1572, file: !93, line: 478, column: 21)
!1588 = !DILocation(line: 478, column: 21, scope: !1587)
!1589 = !DILocation(line: 479, column: 21, scope: !1572)
!1590 = !DILocation(line: 492, column: 31, scope: !1398)
!1591 = !DILocation(line: 493, column: 31, scope: !1398)
!1592 = !DILocation(line: 495, column: 31, scope: !1398)
!1593 = !DILocation(line: 496, column: 31, scope: !1398)
!1594 = !DILocation(line: 497, column: 31, scope: !1398)
!1595 = !DILocation(line: 500, column: 15, scope: !1398)
!1596 = !DILocation(line: 502, column: 19, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !93, line: 501, column: 13)
!1598 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 500, column: 15)
!1599 = !DILocation(line: 509, column: 33, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 509, column: 15)
!1601 = !DILocation(line: 0, scope: !1398)
!1602 = !DILocation(line: 512, column: 9, scope: !1398)
!1603 = !DILocation(line: 514, column: 15, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 513, column: 15)
!1605 = !DILocation(line: 517, column: 9, scope: !1398)
!1606 = !DILocation(line: 518, column: 15, scope: !1398)
!1607 = !DILocation(line: 526, column: 15, scope: !1398)
!1608 = !DILocation(line: 526, column: 40, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 526, column: 15)
!1610 = !DILocation(line: 526, column: 47, scope: !1609)
!1611 = !DILocation(line: 526, column: 18, scope: !1609)
!1612 = !DILocation(line: 530, column: 17, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 530, column: 15)
!1614 = !DILocation(line: 530, column: 15, scope: !1398)
!1615 = !DILocation(line: 535, column: 11, scope: !1398)
!1616 = !DILocation(line: 549, column: 15, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 548, column: 15)
!1618 = !DILocation(line: 556, column: 15, scope: !1398)
!1619 = !DILocation(line: 558, column: 19, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !93, line: 557, column: 13)
!1621 = distinct !DILexicalBlock(scope: !1398, file: !93, line: 556, column: 15)
!1622 = !DILocation(line: 561, column: 19, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !93, line: 561, column: 19)
!1624 = !DILocation(line: 561, column: 30, scope: !1623)
!1625 = !DILocation(line: 570, column: 15, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !93, line: 570, column: 15)
!1627 = distinct !DILexicalBlock(scope: !1620, file: !93, line: 570, column: 15)
!1628 = !DILocation(line: 570, column: 15, scope: !1627)
!1629 = !DILocation(line: 571, column: 15, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !93, line: 571, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1620, file: !93, line: 571, column: 15)
!1632 = !DILocation(line: 571, column: 15, scope: !1631)
!1633 = !DILocation(line: 572, column: 15, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !93, line: 572, column: 15)
!1635 = distinct !DILexicalBlock(scope: !1620, file: !93, line: 572, column: 15)
!1636 = !DILocation(line: 572, column: 15, scope: !1635)
!1637 = !DILocation(line: 574, column: 13, scope: !1620)
!1638 = !DILocation(line: 614, column: 17, scope: !1397)
!1639 = !DILocation(line: 0, scope: !1397)
!1640 = !DILocation(line: 617, column: 29, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1402, file: !93, line: 615, column: 15)
!1642 = !{!882, !882, i64 0}
!1643 = !DILocation(line: 617, column: 27, scope: !1641)
!1644 = !DILocation(line: 678, column: 40, scope: !1397)
!1645 = !DILocation(line: 680, column: 23, scope: !1431)
!1646 = !DILocation(line: 621, column: 17, scope: !1401)
!1647 = !DILocation(line: 621, column: 27, scope: !1401)
!1648 = !DILocalVariable(name: "__dest", arg: 1, scope: !1649, file: !1650, line: 57, type: !33)
!1649 = distinct !DISubprogram(name: "memset", scope: !1650, file: !1650, line: 57, type: !1651, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1653)
!1650 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!33, !33, !65, !117}
!1653 = !{!1648, !1654, !1655}
!1654 = !DILocalVariable(name: "__ch", arg: 2, scope: !1649, file: !1650, line: 57, type: !65)
!1655 = !DILocalVariable(name: "__len", arg: 3, scope: !1649, file: !1650, line: 57, type: !117)
!1656 = !DILocation(line: 0, scope: !1649, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 622, column: 17, scope: !1401)
!1658 = !DILocation(line: 59, column: 10, scope: !1649, inlinedAt: !1657)
!1659 = !DILocation(line: 626, column: 29, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1401, file: !93, line: 626, column: 21)
!1661 = !DILocation(line: 626, column: 21, scope: !1401)
!1662 = !DILocation(line: 627, column: 29, scope: !1660)
!1663 = !DILocation(line: 627, column: 19, scope: !1660)
!1664 = !DILocation(line: 629, column: 17, scope: !1401)
!1665 = !DILocation(line: 624, column: 19, scope: !1401)
!1666 = !DILocation(line: 625, column: 27, scope: !1401)
!1667 = !DILocation(line: 631, column: 21, scope: !1419)
!1668 = !DILocation(line: 632, column: 56, scope: !1419)
!1669 = !DILocation(line: 632, column: 50, scope: !1419)
!1670 = !DILocation(line: 633, column: 53, scope: !1419)
!1671 = !DILocation(line: 0, scope: !1419)
!1672 = !DILocation(line: 632, column: 36, scope: !1419)
!1673 = !DILocation(line: 634, column: 25, scope: !1419)
!1674 = !DILocation(line: 644, column: 38, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1426, file: !93, line: 642, column: 23)
!1676 = !DILocation(line: 644, column: 48, scope: !1675)
!1677 = !DILocation(line: 644, column: 25, scope: !1675)
!1678 = !DILocation(line: 644, column: 51, scope: !1675)
!1679 = !DILocation(line: 645, column: 28, scope: !1675)
!1680 = !DILocation(line: 644, column: 34, scope: !1675)
!1681 = distinct !{!1681, !1677, !1679, !666}
!1682 = !DILocation(line: 655, column: 29, scope: !1424)
!1683 = !DILocation(line: 0, scope: !1423)
!1684 = !DILocation(line: 659, column: 49, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !93, line: 658, column: 29)
!1686 = distinct !DILexicalBlock(scope: !1423, file: !93, line: 658, column: 29)
!1687 = !DILocation(line: 659, column: 39, scope: !1685)
!1688 = !DILocation(line: 659, column: 31, scope: !1685)
!1689 = !DILocation(line: 658, column: 53, scope: !1685)
!1690 = !DILocation(line: 658, column: 43, scope: !1685)
!1691 = !DILocation(line: 658, column: 29, scope: !1686)
!1692 = distinct !{!1692, !1691, !1693, !666}
!1693 = !DILocation(line: 667, column: 33, scope: !1686)
!1694 = !DILocation(line: 674, column: 19, scope: !1401)
!1695 = !DILocation(line: 670, column: 41, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1425, file: !93, line: 670, column: 29)
!1697 = !DILocation(line: 670, column: 31, scope: !1696)
!1698 = !DILocation(line: 670, column: 29, scope: !1425)
!1699 = !DILocation(line: 672, column: 27, scope: !1425)
!1700 = !DILocation(line: 675, column: 26, scope: !1401)
!1701 = !DILocation(line: 675, column: 24, scope: !1401)
!1702 = !DILocation(line: 674, column: 19, scope: !1419)
!1703 = distinct !{!1703, !1664, !1704, !666}
!1704 = !DILocation(line: 675, column: 44, scope: !1401)
!1705 = !DILocation(line: 676, column: 15, scope: !1402)
!1706 = !DILocation(line: 680, column: 19, scope: !1431)
!1707 = !DILocation(line: 680, column: 45, scope: !1431)
!1708 = !DILocation(line: 684, column: 33, scope: !1430)
!1709 = !DILocation(line: 0, scope: !1430)
!1710 = !DILocation(line: 686, column: 17, scope: !1430)
!1711 = !DILocation(line: 405, column: 12, scope: !1389)
!1712 = !DILocation(line: 688, column: 43, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !93, line: 688, column: 25)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !93, line: 687, column: 19)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !93, line: 686, column: 17)
!1716 = distinct !DILexicalBlock(scope: !1430, file: !93, line: 686, column: 17)
!1717 = !DILocation(line: 690, column: 25, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !93, line: 690, column: 25)
!1719 = distinct !DILexicalBlock(scope: !1713, file: !93, line: 689, column: 23)
!1720 = !DILocation(line: 690, column: 25, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !93, line: 690, column: 25)
!1722 = !DILocation(line: 690, column: 25, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !93, line: 690, column: 25)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !93, line: 690, column: 25)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !93, line: 690, column: 25)
!1726 = !DILocation(line: 690, column: 25, scope: !1724)
!1727 = !DILocation(line: 690, column: 25, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !93, line: 690, column: 25)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !93, line: 690, column: 25)
!1730 = !DILocation(line: 690, column: 25, scope: !1729)
!1731 = !DILocation(line: 690, column: 25, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !93, line: 690, column: 25)
!1733 = distinct !DILexicalBlock(scope: !1725, file: !93, line: 690, column: 25)
!1734 = !DILocation(line: 690, column: 25, scope: !1733)
!1735 = !DILocation(line: 690, column: 25, scope: !1725)
!1736 = !DILocation(line: 690, column: 25, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !93, line: 690, column: 25)
!1738 = distinct !DILexicalBlock(scope: !1718, file: !93, line: 690, column: 25)
!1739 = !DILocation(line: 690, column: 25, scope: !1738)
!1740 = !DILocation(line: 691, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !93, line: 691, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1719, file: !93, line: 691, column: 25)
!1743 = !DILocation(line: 691, column: 25, scope: !1742)
!1744 = !DILocation(line: 692, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !93, line: 692, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1719, file: !93, line: 692, column: 25)
!1747 = !DILocation(line: 692, column: 25, scope: !1746)
!1748 = !DILocation(line: 693, column: 38, scope: !1719)
!1749 = !DILocation(line: 693, column: 33, scope: !1719)
!1750 = !DILocation(line: 694, column: 23, scope: !1719)
!1751 = !DILocation(line: 695, column: 30, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1713, file: !93, line: 695, column: 30)
!1753 = !DILocation(line: 695, column: 30, scope: !1713)
!1754 = !DILocation(line: 697, column: 25, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !93, line: 697, column: 25)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !93, line: 697, column: 25)
!1757 = distinct !DILexicalBlock(scope: !1752, file: !93, line: 696, column: 23)
!1758 = !DILocation(line: 697, column: 25, scope: !1756)
!1759 = !DILocation(line: 699, column: 23, scope: !1757)
!1760 = !DILocation(line: 700, column: 35, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1714, file: !93, line: 700, column: 25)
!1762 = !DILocation(line: 700, column: 30, scope: !1761)
!1763 = !DILocation(line: 700, column: 25, scope: !1714)
!1764 = !DILocation(line: 702, column: 21, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !93, line: 702, column: 21)
!1766 = distinct !DILexicalBlock(scope: !1714, file: !93, line: 702, column: 21)
!1767 = !DILocation(line: 702, column: 21, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !93, line: 702, column: 21)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !93, line: 702, column: 21)
!1770 = distinct !DILexicalBlock(scope: !1765, file: !93, line: 702, column: 21)
!1771 = !DILocation(line: 702, column: 21, scope: !1769)
!1772 = !DILocation(line: 702, column: 21, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !93, line: 702, column: 21)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !93, line: 702, column: 21)
!1775 = !DILocation(line: 702, column: 21, scope: !1774)
!1776 = !DILocation(line: 702, column: 21, scope: !1770)
!1777 = !DILocation(line: 0, scope: !1714)
!1778 = !DILocation(line: 703, column: 21, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !93, line: 703, column: 21)
!1780 = distinct !DILexicalBlock(scope: !1714, file: !93, line: 703, column: 21)
!1781 = !DILocation(line: 703, column: 21, scope: !1780)
!1782 = !DILocation(line: 704, column: 25, scope: !1714)
!1783 = !DILocation(line: 686, column: 17, scope: !1715)
!1784 = distinct !{!1784, !1785, !1786}
!1785 = !DILocation(line: 686, column: 17, scope: !1716)
!1786 = !DILocation(line: 705, column: 19, scope: !1716)
!1787 = !DILocation(line: 416, column: 30, scope: !1507)
!1788 = !DILocation(line: 712, column: 34, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1389, file: !93, line: 712, column: 11)
!1790 = !DILocation(line: 715, column: 35, scope: !1789)
!1791 = !DILocation(line: 715, column: 17, scope: !1789)
!1792 = !DILocation(line: 715, column: 47, scope: !1789)
!1793 = !DILocation(line: 715, column: 65, scope: !1789)
!1794 = !DILocation(line: 716, column: 11, scope: !1789)
!1795 = !DILocation(line: 712, column: 11, scope: !1389)
!1796 = !DILocation(line: 400, column: 10, scope: !1391)
!1797 = !DILocation(line: 719, column: 5, scope: !1389)
!1798 = !DILocation(line: 720, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1389, file: !93, line: 720, column: 7)
!1800 = !DILocation(line: 720, column: 7, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1799, file: !93, line: 720, column: 7)
!1802 = !DILocation(line: 720, column: 7, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !93, line: 720, column: 7)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !93, line: 720, column: 7)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !93, line: 720, column: 7)
!1806 = !DILocation(line: 720, column: 7, scope: !1804)
!1807 = !DILocation(line: 720, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !93, line: 720, column: 7)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !93, line: 720, column: 7)
!1810 = !DILocation(line: 720, column: 7, scope: !1809)
!1811 = !DILocation(line: 720, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !93, line: 720, column: 7)
!1813 = distinct !DILexicalBlock(scope: !1805, file: !93, line: 720, column: 7)
!1814 = !DILocation(line: 720, column: 7, scope: !1813)
!1815 = !DILocation(line: 720, column: 7, scope: !1805)
!1816 = !DILocation(line: 720, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !93, line: 720, column: 7)
!1818 = distinct !DILexicalBlock(scope: !1799, file: !93, line: 720, column: 7)
!1819 = !DILocation(line: 720, column: 7, scope: !1818)
!1820 = !DILocation(line: 722, column: 5, scope: !1389)
!1821 = !DILocation(line: 723, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !93, line: 723, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1389, file: !93, line: 723, column: 7)
!1824 = !DILocation(line: 424, column: 9, scope: !1389)
!1825 = !DILocation(line: 723, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !93, line: 723, column: 7)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !93, line: 723, column: 7)
!1828 = distinct !DILexicalBlock(scope: !1822, file: !93, line: 723, column: 7)
!1829 = !DILocation(line: 723, column: 7, scope: !1827)
!1830 = !DILocation(line: 723, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !93, line: 723, column: 7)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !93, line: 723, column: 7)
!1833 = !DILocation(line: 723, column: 7, scope: !1832)
!1834 = !DILocation(line: 723, column: 7, scope: !1828)
!1835 = !DILocation(line: 724, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !93, line: 724, column: 7)
!1837 = distinct !DILexicalBlock(scope: !1389, file: !93, line: 724, column: 7)
!1838 = !DILocation(line: 724, column: 7, scope: !1837)
!1839 = !DILocation(line: 726, column: 13, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1389, file: !93, line: 726, column: 11)
!1841 = !DILocation(line: 726, column: 11, scope: !1389)
!1842 = !DILocation(line: 728, column: 5, scope: !1390)
!1843 = !DILocation(line: 400, column: 75, scope: !1390)
!1844 = !DILocation(line: 400, column: 3, scope: !1390)
!1845 = distinct !{!1845, !1503, !1846, !666}
!1846 = !DILocation(line: 728, column: 5, scope: !1391)
!1847 = !DILocation(line: 730, column: 11, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1362, file: !93, line: 730, column: 7)
!1849 = !DILocation(line: 730, column: 16, scope: !1848)
!1850 = !DILocation(line: 738, column: 51, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1362, file: !93, line: 738, column: 7)
!1852 = !DILocation(line: 741, column: 11, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !93, line: 741, column: 11)
!1854 = distinct !DILexicalBlock(scope: !1851, file: !93, line: 740, column: 5)
!1855 = !DILocation(line: 741, column: 11, scope: !1854)
!1856 = !DILocation(line: 742, column: 16, scope: !1853)
!1857 = !DILocation(line: 742, column: 9, scope: !1853)
!1858 = !DILocation(line: 746, column: 18, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !93, line: 746, column: 16)
!1860 = !DILocation(line: 746, column: 29, scope: !1859)
!1861 = !DILocation(line: 755, column: 7, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1362, file: !93, line: 755, column: 7)
!1863 = !DILocation(line: 755, column: 20, scope: !1862)
!1864 = !DILocation(line: 756, column: 12, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !93, line: 756, column: 5)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !93, line: 756, column: 5)
!1867 = !DILocation(line: 756, column: 5, scope: !1866)
!1868 = !DILocation(line: 757, column: 7, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !93, line: 757, column: 7)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !93, line: 757, column: 7)
!1871 = !DILocation(line: 757, column: 7, scope: !1870)
!1872 = !DILocation(line: 756, column: 39, scope: !1865)
!1873 = distinct !{!1873, !1867, !1874, !666}
!1874 = !DILocation(line: 757, column: 7, scope: !1866)
!1875 = !DILocation(line: 759, column: 11, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1362, file: !93, line: 759, column: 7)
!1877 = !DILocation(line: 759, column: 7, scope: !1362)
!1878 = !DILocation(line: 760, column: 5, scope: !1876)
!1879 = !DILocation(line: 760, column: 17, scope: !1876)
!1880 = !DILocation(line: 763, column: 2, scope: !1362)
!1881 = !DILocation(line: 766, column: 51, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1362, file: !93, line: 766, column: 7)
!1883 = !DILocation(line: 766, column: 21, scope: !1882)
!1884 = !DILocation(line: 770, column: 42, scope: !1362)
!1885 = !DILocation(line: 768, column: 10, scope: !1362)
!1886 = !DILocation(line: 768, column: 3, scope: !1362)
!1887 = !DILocation(line: 772, column: 1, scope: !1362)
!1888 = distinct !DISubprogram(name: "gettext_quote", scope: !93, file: !93, line: 207, type: !1889, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!30, !30, !5}
!1891 = !{!1892, !1893, !1894, !1895}
!1892 = !DILocalVariable(name: "msgid", arg: 1, scope: !1888, file: !93, line: 207, type: !30)
!1893 = !DILocalVariable(name: "s", arg: 2, scope: !1888, file: !93, line: 207, type: !5)
!1894 = !DILocalVariable(name: "translation", scope: !1888, file: !93, line: 209, type: !30)
!1895 = !DILocalVariable(name: "locale_code", scope: !1888, file: !93, line: 210, type: !30)
!1896 = !DILocation(line: 0, scope: !1888)
!1897 = !DILocation(line: 209, column: 29, scope: !1888)
!1898 = !DILocation(line: 212, column: 19, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1888, file: !93, line: 212, column: 7)
!1900 = !DILocation(line: 212, column: 7, scope: !1888)
!1901 = !DILocation(line: 233, column: 17, scope: !1888)
!1902 = !DILocalVariable(name: "s1", arg: 1, scope: !1903, file: !1904, line: 160, type: !30)
!1903 = distinct !DISubprogram(name: "strcaseeq0", scope: !1904, file: !1904, line: 160, type: !1905, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1907)
!1904 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!65, !30, !30, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!1907 = !{!1902, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1908 = !DILocalVariable(name: "s2", arg: 2, scope: !1903, file: !1904, line: 160, type: !30)
!1909 = !DILocalVariable(name: "s20", arg: 3, scope: !1903, file: !1904, line: 160, type: !32)
!1910 = !DILocalVariable(name: "s21", arg: 4, scope: !1903, file: !1904, line: 160, type: !32)
!1911 = !DILocalVariable(name: "s22", arg: 5, scope: !1903, file: !1904, line: 160, type: !32)
!1912 = !DILocalVariable(name: "s23", arg: 6, scope: !1903, file: !1904, line: 160, type: !32)
!1913 = !DILocalVariable(name: "s24", arg: 7, scope: !1903, file: !1904, line: 160, type: !32)
!1914 = !DILocalVariable(name: "s25", arg: 8, scope: !1903, file: !1904, line: 160, type: !32)
!1915 = !DILocalVariable(name: "s26", arg: 9, scope: !1903, file: !1904, line: 160, type: !32)
!1916 = !DILocalVariable(name: "s27", arg: 10, scope: !1903, file: !1904, line: 160, type: !32)
!1917 = !DILocalVariable(name: "s28", arg: 11, scope: !1903, file: !1904, line: 160, type: !32)
!1918 = !DILocation(line: 0, scope: !1903, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 234, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1888, file: !93, line: 234, column: 7)
!1921 = !DILocation(line: 162, column: 7, scope: !1922, inlinedAt: !1919)
!1922 = distinct !DILexicalBlock(scope: !1903, file: !1904, line: 162, column: 7)
!1923 = !DILocalVariable(name: "s1", arg: 1, scope: !1924, file: !1904, line: 146, type: !30)
!1924 = distinct !DISubprogram(name: "strcaseeq1", scope: !1904, file: !1904, line: 146, type: !1925, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!65, !30, !30, !32, !32, !32, !32, !32, !32, !32, !32}
!1927 = !{!1923, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936}
!1928 = !DILocalVariable(name: "s2", arg: 2, scope: !1924, file: !1904, line: 146, type: !30)
!1929 = !DILocalVariable(name: "s21", arg: 3, scope: !1924, file: !1904, line: 146, type: !32)
!1930 = !DILocalVariable(name: "s22", arg: 4, scope: !1924, file: !1904, line: 146, type: !32)
!1931 = !DILocalVariable(name: "s23", arg: 5, scope: !1924, file: !1904, line: 146, type: !32)
!1932 = !DILocalVariable(name: "s24", arg: 6, scope: !1924, file: !1904, line: 146, type: !32)
!1933 = !DILocalVariable(name: "s25", arg: 7, scope: !1924, file: !1904, line: 146, type: !32)
!1934 = !DILocalVariable(name: "s26", arg: 8, scope: !1924, file: !1904, line: 146, type: !32)
!1935 = !DILocalVariable(name: "s27", arg: 9, scope: !1924, file: !1904, line: 146, type: !32)
!1936 = !DILocalVariable(name: "s28", arg: 10, scope: !1924, file: !1904, line: 146, type: !32)
!1937 = !DILocation(line: 0, scope: !1924, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 167, column: 16, scope: !1939, inlinedAt: !1919)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1904, line: 164, column: 11)
!1940 = distinct !DILexicalBlock(scope: !1922, file: !1904, line: 163, column: 5)
!1941 = !DILocation(line: 148, column: 7, scope: !1942, inlinedAt: !1938)
!1942 = distinct !DILexicalBlock(scope: !1924, file: !1904, line: 148, column: 7)
!1943 = !DILocalVariable(name: "s1", arg: 1, scope: !1944, file: !1904, line: 132, type: !30)
!1944 = distinct !DISubprogram(name: "strcaseeq2", scope: !1904, file: !1904, line: 132, type: !1945, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!65, !30, !30, !32, !32, !32, !32, !32, !32, !32}
!1947 = !{!1943, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955}
!1948 = !DILocalVariable(name: "s2", arg: 2, scope: !1944, file: !1904, line: 132, type: !30)
!1949 = !DILocalVariable(name: "s22", arg: 3, scope: !1944, file: !1904, line: 132, type: !32)
!1950 = !DILocalVariable(name: "s23", arg: 4, scope: !1944, file: !1904, line: 132, type: !32)
!1951 = !DILocalVariable(name: "s24", arg: 5, scope: !1944, file: !1904, line: 132, type: !32)
!1952 = !DILocalVariable(name: "s25", arg: 6, scope: !1944, file: !1904, line: 132, type: !32)
!1953 = !DILocalVariable(name: "s26", arg: 7, scope: !1944, file: !1904, line: 132, type: !32)
!1954 = !DILocalVariable(name: "s27", arg: 8, scope: !1944, file: !1904, line: 132, type: !32)
!1955 = !DILocalVariable(name: "s28", arg: 9, scope: !1944, file: !1904, line: 132, type: !32)
!1956 = !DILocation(line: 0, scope: !1944, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 153, column: 16, scope: !1958, inlinedAt: !1938)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !1904, line: 150, column: 11)
!1959 = distinct !DILexicalBlock(scope: !1942, file: !1904, line: 149, column: 5)
!1960 = !DILocation(line: 134, column: 7, scope: !1961, inlinedAt: !1957)
!1961 = distinct !DILexicalBlock(scope: !1944, file: !1904, line: 134, column: 7)
!1962 = !DILocalVariable(name: "s1", arg: 1, scope: !1963, file: !1904, line: 118, type: !30)
!1963 = distinct !DISubprogram(name: "strcaseeq3", scope: !1904, file: !1904, line: 118, type: !1964, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1966)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!65, !30, !30, !32, !32, !32, !32, !32, !32}
!1966 = !{!1962, !1967, !1968, !1969, !1970, !1971, !1972, !1973}
!1967 = !DILocalVariable(name: "s2", arg: 2, scope: !1963, file: !1904, line: 118, type: !30)
!1968 = !DILocalVariable(name: "s23", arg: 3, scope: !1963, file: !1904, line: 118, type: !32)
!1969 = !DILocalVariable(name: "s24", arg: 4, scope: !1963, file: !1904, line: 118, type: !32)
!1970 = !DILocalVariable(name: "s25", arg: 5, scope: !1963, file: !1904, line: 118, type: !32)
!1971 = !DILocalVariable(name: "s26", arg: 6, scope: !1963, file: !1904, line: 118, type: !32)
!1972 = !DILocalVariable(name: "s27", arg: 7, scope: !1963, file: !1904, line: 118, type: !32)
!1973 = !DILocalVariable(name: "s28", arg: 8, scope: !1963, file: !1904, line: 118, type: !32)
!1974 = !DILocation(line: 0, scope: !1963, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 139, column: 16, scope: !1976, inlinedAt: !1957)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !1904, line: 136, column: 11)
!1977 = distinct !DILexicalBlock(scope: !1961, file: !1904, line: 135, column: 5)
!1978 = !DILocation(line: 120, column: 7, scope: !1979, inlinedAt: !1975)
!1979 = distinct !DILexicalBlock(scope: !1963, file: !1904, line: 120, column: 7)
!1980 = !DILocation(line: 120, column: 7, scope: !1963, inlinedAt: !1975)
!1981 = !DILocalVariable(name: "s1", arg: 1, scope: !1982, file: !1904, line: 104, type: !30)
!1982 = distinct !DISubprogram(name: "strcaseeq4", scope: !1904, file: !1904, line: 104, type: !1983, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!65, !30, !30, !32, !32, !32, !32, !32}
!1985 = !{!1981, !1986, !1987, !1988, !1989, !1990, !1991}
!1986 = !DILocalVariable(name: "s2", arg: 2, scope: !1982, file: !1904, line: 104, type: !30)
!1987 = !DILocalVariable(name: "s24", arg: 3, scope: !1982, file: !1904, line: 104, type: !32)
!1988 = !DILocalVariable(name: "s25", arg: 4, scope: !1982, file: !1904, line: 104, type: !32)
!1989 = !DILocalVariable(name: "s26", arg: 5, scope: !1982, file: !1904, line: 104, type: !32)
!1990 = !DILocalVariable(name: "s27", arg: 6, scope: !1982, file: !1904, line: 104, type: !32)
!1991 = !DILocalVariable(name: "s28", arg: 7, scope: !1982, file: !1904, line: 104, type: !32)
!1992 = !DILocation(line: 0, scope: !1982, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 125, column: 16, scope: !1994, inlinedAt: !1975)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !1904, line: 122, column: 11)
!1995 = distinct !DILexicalBlock(scope: !1979, file: !1904, line: 121, column: 5)
!1996 = !DILocation(line: 106, column: 7, scope: !1997, inlinedAt: !1993)
!1997 = distinct !DILexicalBlock(scope: !1982, file: !1904, line: 106, column: 7)
!1998 = !DILocation(line: 106, column: 7, scope: !1982, inlinedAt: !1993)
!1999 = !DILocalVariable(name: "s1", arg: 1, scope: !2000, file: !1904, line: 90, type: !30)
!2000 = distinct !DISubprogram(name: "strcaseeq5", scope: !1904, file: !1904, line: 90, type: !2001, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!65, !30, !30, !32, !32, !32, !32}
!2003 = !{!1999, !2004, !2005, !2006, !2007, !2008}
!2004 = !DILocalVariable(name: "s2", arg: 2, scope: !2000, file: !1904, line: 90, type: !30)
!2005 = !DILocalVariable(name: "s25", arg: 3, scope: !2000, file: !1904, line: 90, type: !32)
!2006 = !DILocalVariable(name: "s26", arg: 4, scope: !2000, file: !1904, line: 90, type: !32)
!2007 = !DILocalVariable(name: "s27", arg: 5, scope: !2000, file: !1904, line: 90, type: !32)
!2008 = !DILocalVariable(name: "s28", arg: 6, scope: !2000, file: !1904, line: 90, type: !32)
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
!2022 = distinct !DILexicalBlock(scope: !1888, file: !93, line: 236, column: 7)
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
!2040 = !DILocalVariable(name: "s1", arg: 1, scope: !2041, file: !1904, line: 76, type: !30)
!2041 = distinct !DISubprogram(name: "strcaseeq6", scope: !1904, file: !1904, line: 76, type: !2042, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!65, !30, !30, !32, !32, !32}
!2044 = !{!2040, !2045, !2046, !2047, !2048}
!2045 = !DILocalVariable(name: "s2", arg: 2, scope: !2041, file: !1904, line: 76, type: !30)
!2046 = !DILocalVariable(name: "s26", arg: 3, scope: !2041, file: !1904, line: 76, type: !32)
!2047 = !DILocalVariable(name: "s27", arg: 4, scope: !2041, file: !1904, line: 76, type: !32)
!2048 = !DILocalVariable(name: "s28", arg: 5, scope: !2041, file: !1904, line: 76, type: !32)
!2049 = !DILocation(line: 0, scope: !2041, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 97, column: 16, scope: !2051, inlinedAt: !2037)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !1904, line: 94, column: 11)
!2052 = distinct !DILexicalBlock(scope: !2014, file: !1904, line: 93, column: 5)
!2053 = !DILocation(line: 78, column: 7, scope: !2054, inlinedAt: !2050)
!2054 = distinct !DILexicalBlock(scope: !2041, file: !1904, line: 78, column: 7)
!2055 = !DILocation(line: 78, column: 7, scope: !2041, inlinedAt: !2050)
!2056 = !DILocalVariable(name: "s1", arg: 1, scope: !2057, file: !1904, line: 62, type: !30)
!2057 = distinct !DISubprogram(name: "strcaseeq7", scope: !1904, file: !1904, line: 62, type: !2058, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!65, !30, !30, !32, !32}
!2060 = !{!2056, !2061, !2062, !2063}
!2061 = !DILocalVariable(name: "s2", arg: 2, scope: !2057, file: !1904, line: 62, type: !30)
!2062 = !DILocalVariable(name: "s27", arg: 3, scope: !2057, file: !1904, line: 62, type: !32)
!2063 = !DILocalVariable(name: "s28", arg: 4, scope: !2057, file: !1904, line: 62, type: !32)
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
!2078 = !DISubprogram(name: "iswprint", scope: !2079, file: !2079, line: 120, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!2079 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!65, !7}
!2082 = !DISubprogram(name: "mbsinit", scope: !2083, file: !2083, line: 292, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!2083 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!65, !2086}
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!2088 = distinct !DISubprogram(name: "quotearg_alloc", scope: !93, file: !93, line: 799, type: !2089, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!88, !30, !117, !1254}
!2091 = !{!2092, !2093, !2094}
!2092 = !DILocalVariable(name: "arg", arg: 1, scope: !2088, file: !93, line: 799, type: !30)
!2093 = !DILocalVariable(name: "argsize", arg: 2, scope: !2088, file: !93, line: 799, type: !117)
!2094 = !DILocalVariable(name: "o", arg: 3, scope: !2088, file: !93, line: 800, type: !1254)
!2095 = !DILocation(line: 0, scope: !2088)
!2096 = !DILocalVariable(name: "arg", arg: 1, scope: !2097, file: !93, line: 812, type: !30)
!2097 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !93, file: !93, line: 812, type: !2098, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2100)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!88, !30, !117, !190, !1254}
!2100 = !{!2096, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108}
!2101 = !DILocalVariable(name: "argsize", arg: 2, scope: !2097, file: !93, line: 812, type: !117)
!2102 = !DILocalVariable(name: "size", arg: 3, scope: !2097, file: !93, line: 812, type: !190)
!2103 = !DILocalVariable(name: "o", arg: 4, scope: !2097, file: !93, line: 813, type: !1254)
!2104 = !DILocalVariable(name: "p", scope: !2097, file: !93, line: 815, type: !1254)
!2105 = !DILocalVariable(name: "e", scope: !2097, file: !93, line: 816, type: !65)
!2106 = !DILocalVariable(name: "flags", scope: !2097, file: !93, line: 818, type: !65)
!2107 = !DILocalVariable(name: "bufsize", scope: !2097, file: !93, line: 819, type: !117)
!2108 = !DILocalVariable(name: "buf", scope: !2097, file: !93, line: 823, type: !88)
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
!2121 = !DILocalVariable(name: "n", arg: 1, scope: !2122, file: !186, line: 216, type: !117)
!2122 = distinct !DISubprogram(name: "xcharalloc", scope: !186, file: !186, line: 216, type: !2123, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!88, !117}
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
!2157 = distinct !DILexicalBlock(scope: !2097, file: !93, line: 828, column: 7)
!2158 = !DILocation(line: 829, column: 5, scope: !2157)
!2159 = !DILocation(line: 830, column: 3, scope: !2097)
!2160 = distinct !DISubprogram(name: "quotearg_free", scope: !93, file: !93, line: 848, type: !811, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2161)
!2161 = !{!2162, !2163}
!2162 = !DILocalVariable(name: "sv", scope: !2160, file: !93, line: 850, type: !145)
!2163 = !DILocalVariable(name: "i", scope: !2160, file: !93, line: 851, type: !65)
!2164 = !DILocation(line: 850, column: 24, scope: !2160)
!2165 = !DILocation(line: 0, scope: !2160)
!2166 = !DILocation(line: 852, column: 19, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !93, line: 852, column: 3)
!2168 = distinct !DILexicalBlock(scope: !2160, file: !93, line: 852, column: 3)
!2169 = !DILocation(line: 852, column: 17, scope: !2167)
!2170 = !DILocation(line: 852, column: 3, scope: !2168)
!2171 = !DILocation(line: 853, column: 17, scope: !2167)
!2172 = !{!2173, !625, i64 8}
!2173 = !{!"slotvec", !881, i64 0, !625, i64 8}
!2174 = !DILocation(line: 853, column: 5, scope: !2167)
!2175 = !DILocation(line: 852, column: 28, scope: !2167)
!2176 = distinct !{!2176, !2170, !2177, !666}
!2177 = !DILocation(line: 853, column: 20, scope: !2168)
!2178 = !DILocation(line: 854, column: 13, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2160, file: !93, line: 854, column: 7)
!2180 = !DILocation(line: 854, column: 17, scope: !2179)
!2181 = !DILocation(line: 854, column: 7, scope: !2160)
!2182 = !DILocation(line: 856, column: 7, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2179, file: !93, line: 855, column: 5)
!2184 = !DILocation(line: 857, column: 21, scope: !2183)
!2185 = !{!2173, !881, i64 0}
!2186 = !DILocation(line: 858, column: 20, scope: !2183)
!2187 = !DILocation(line: 859, column: 5, scope: !2183)
!2188 = !DILocation(line: 860, column: 10, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2160, file: !93, line: 860, column: 7)
!2190 = !DILocation(line: 860, column: 7, scope: !2160)
!2191 = !DILocation(line: 862, column: 13, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2189, file: !93, line: 861, column: 5)
!2193 = !DILocation(line: 862, column: 7, scope: !2192)
!2194 = !DILocation(line: 863, column: 15, scope: !2192)
!2195 = !DILocation(line: 864, column: 5, scope: !2192)
!2196 = !DILocation(line: 865, column: 10, scope: !2160)
!2197 = !DILocation(line: 866, column: 1, scope: !2160)
!2198 = distinct !DISubprogram(name: "quotearg_n", scope: !93, file: !93, line: 931, type: !747, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2199)
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "n", arg: 1, scope: !2198, file: !93, line: 931, type: !65)
!2201 = !DILocalVariable(name: "arg", arg: 2, scope: !2198, file: !93, line: 931, type: !30)
!2202 = !DILocation(line: 0, scope: !2198)
!2203 = !DILocation(line: 933, column: 10, scope: !2198)
!2204 = !DILocation(line: 933, column: 3, scope: !2198)
!2205 = distinct !DISubprogram(name: "quotearg_n_options", scope: !93, file: !93, line: 877, type: !2206, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!88, !65, !30, !117, !1254}
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214, !2215, !2218, !2219, !2221, !2222, !2223}
!2209 = !DILocalVariable(name: "n", arg: 1, scope: !2205, file: !93, line: 877, type: !65)
!2210 = !DILocalVariable(name: "arg", arg: 2, scope: !2205, file: !93, line: 877, type: !30)
!2211 = !DILocalVariable(name: "argsize", arg: 3, scope: !2205, file: !93, line: 877, type: !117)
!2212 = !DILocalVariable(name: "options", arg: 4, scope: !2205, file: !93, line: 878, type: !1254)
!2213 = !DILocalVariable(name: "e", scope: !2205, file: !93, line: 880, type: !65)
!2214 = !DILocalVariable(name: "sv", scope: !2205, file: !93, line: 882, type: !145)
!2215 = !DILocalVariable(name: "preallocated", scope: !2216, file: !93, line: 889, type: !45)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !93, line: 888, column: 5)
!2217 = distinct !DILexicalBlock(scope: !2205, file: !93, line: 887, column: 7)
!2218 = !DILocalVariable(name: "nmax", scope: !2216, file: !93, line: 890, type: !65)
!2219 = !DILocalVariable(name: "size", scope: !2220, file: !93, line: 903, type: !117)
!2220 = distinct !DILexicalBlock(scope: !2205, file: !93, line: 902, column: 3)
!2221 = !DILocalVariable(name: "val", scope: !2220, file: !93, line: 904, type: !88)
!2222 = !DILocalVariable(name: "flags", scope: !2220, file: !93, line: 906, type: !65)
!2223 = !DILocalVariable(name: "qsize", scope: !2220, file: !93, line: 907, type: !117)
!2224 = !DILocation(line: 0, scope: !2205)
!2225 = !DILocation(line: 880, column: 11, scope: !2205)
!2226 = !DILocation(line: 882, column: 24, scope: !2205)
!2227 = !DILocation(line: 884, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2205, file: !93, line: 884, column: 7)
!2229 = !DILocation(line: 884, column: 7, scope: !2205)
!2230 = !DILocation(line: 885, column: 5, scope: !2228)
!2231 = !DILocation(line: 887, column: 7, scope: !2217)
!2232 = !DILocation(line: 887, column: 14, scope: !2217)
!2233 = !DILocation(line: 887, column: 7, scope: !2205)
!2234 = !DILocation(line: 889, column: 31, scope: !2216)
!2235 = !DILocation(line: 0, scope: !2216)
!2236 = !DILocation(line: 892, column: 16, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2216, file: !93, line: 892, column: 11)
!2238 = !DILocation(line: 892, column: 11, scope: !2216)
!2239 = !DILocation(line: 893, column: 9, scope: !2237)
!2240 = !DILocation(line: 895, column: 32, scope: !2216)
!2241 = !DILocation(line: 895, column: 61, scope: !2216)
!2242 = !DILocation(line: 895, column: 66, scope: !2216)
!2243 = !DILocation(line: 895, column: 22, scope: !2216)
!2244 = !DILocation(line: 895, column: 15, scope: !2216)
!2245 = !DILocation(line: 896, column: 11, scope: !2216)
!2246 = !DILocation(line: 897, column: 15, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2216, file: !93, line: 896, column: 11)
!2248 = !{i64 0, i64 8, !896, i64 8, i64 8, !624}
!2249 = !DILocation(line: 897, column: 9, scope: !2247)
!2250 = !DILocation(line: 898, column: 20, scope: !2216)
!2251 = !DILocation(line: 898, column: 18, scope: !2216)
!2252 = !DILocation(line: 898, column: 15, scope: !2216)
!2253 = !DILocation(line: 898, column: 38, scope: !2216)
!2254 = !DILocation(line: 898, column: 31, scope: !2216)
!2255 = !DILocation(line: 898, column: 48, scope: !2216)
!2256 = !DILocation(line: 0, scope: !1649, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 898, column: 7, scope: !2216)
!2258 = !DILocation(line: 59, column: 10, scope: !1649, inlinedAt: !2257)
!2259 = !DILocation(line: 899, column: 14, scope: !2216)
!2260 = !DILocation(line: 900, column: 5, scope: !2216)
!2261 = !DILocation(line: 903, column: 19, scope: !2220)
!2262 = !DILocation(line: 903, column: 25, scope: !2220)
!2263 = !DILocation(line: 0, scope: !2220)
!2264 = !DILocation(line: 904, column: 23, scope: !2220)
!2265 = !DILocation(line: 906, column: 26, scope: !2220)
!2266 = !DILocation(line: 906, column: 32, scope: !2220)
!2267 = !DILocation(line: 908, column: 55, scope: !2220)
!2268 = !DILocation(line: 909, column: 46, scope: !2220)
!2269 = !DILocation(line: 910, column: 55, scope: !2220)
!2270 = !DILocation(line: 911, column: 55, scope: !2220)
!2271 = !DILocation(line: 907, column: 20, scope: !2220)
!2272 = !DILocation(line: 913, column: 14, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2220, file: !93, line: 913, column: 9)
!2274 = !DILocation(line: 913, column: 9, scope: !2220)
!2275 = !DILocation(line: 915, column: 35, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !93, line: 914, column: 7)
!2277 = !DILocation(line: 915, column: 20, scope: !2276)
!2278 = !DILocation(line: 916, column: 17, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !93, line: 916, column: 13)
!2280 = !DILocation(line: 916, column: 13, scope: !2276)
!2281 = !DILocation(line: 917, column: 11, scope: !2279)
!2282 = !DILocation(line: 0, scope: !2122, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 918, column: 27, scope: !2276)
!2284 = !DILocation(line: 218, column: 10, scope: !2122, inlinedAt: !2283)
!2285 = !DILocation(line: 918, column: 19, scope: !2276)
!2286 = !DILocation(line: 919, column: 69, scope: !2276)
!2287 = !DILocation(line: 921, column: 44, scope: !2276)
!2288 = !DILocation(line: 922, column: 44, scope: !2276)
!2289 = !DILocation(line: 919, column: 9, scope: !2276)
!2290 = !DILocation(line: 923, column: 7, scope: !2276)
!2291 = !DILocation(line: 925, column: 11, scope: !2220)
!2292 = !DILocation(line: 926, column: 5, scope: !2220)
!2293 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !93, file: !93, line: 937, type: !2294, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!88, !65, !30, !117}
!2296 = !{!2297, !2298, !2299}
!2297 = !DILocalVariable(name: "n", arg: 1, scope: !2293, file: !93, line: 937, type: !65)
!2298 = !DILocalVariable(name: "arg", arg: 2, scope: !2293, file: !93, line: 937, type: !30)
!2299 = !DILocalVariable(name: "argsize", arg: 3, scope: !2293, file: !93, line: 937, type: !117)
!2300 = !DILocation(line: 0, scope: !2293)
!2301 = !DILocation(line: 939, column: 10, scope: !2293)
!2302 = !DILocation(line: 939, column: 3, scope: !2293)
!2303 = distinct !DISubprogram(name: "quotearg", scope: !93, file: !93, line: 943, type: !804, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2304)
!2304 = !{!2305}
!2305 = !DILocalVariable(name: "arg", arg: 1, scope: !2303, file: !93, line: 943, type: !30)
!2306 = !DILocation(line: 0, scope: !2303)
!2307 = !DILocation(line: 0, scope: !2198, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 945, column: 10, scope: !2303)
!2309 = !DILocation(line: 933, column: 10, scope: !2198, inlinedAt: !2308)
!2310 = !DILocation(line: 945, column: 3, scope: !2303)
!2311 = distinct !DISubprogram(name: "quotearg_mem", scope: !93, file: !93, line: 949, type: !2312, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!88, !30, !117}
!2314 = !{!2315, !2316}
!2315 = !DILocalVariable(name: "arg", arg: 1, scope: !2311, file: !93, line: 949, type: !30)
!2316 = !DILocalVariable(name: "argsize", arg: 2, scope: !2311, file: !93, line: 949, type: !117)
!2317 = !DILocation(line: 0, scope: !2311)
!2318 = !DILocation(line: 0, scope: !2293, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 951, column: 10, scope: !2311)
!2320 = !DILocation(line: 939, column: 10, scope: !2293, inlinedAt: !2319)
!2321 = !DILocation(line: 951, column: 3, scope: !2311)
!2322 = distinct !DISubprogram(name: "quotearg_n_style", scope: !93, file: !93, line: 955, type: !2323, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!88, !65, !5, !30}
!2325 = !{!2326, !2327, !2328, !2329}
!2326 = !DILocalVariable(name: "n", arg: 1, scope: !2322, file: !93, line: 955, type: !65)
!2327 = !DILocalVariable(name: "s", arg: 2, scope: !2322, file: !93, line: 955, type: !5)
!2328 = !DILocalVariable(name: "arg", arg: 3, scope: !2322, file: !93, line: 955, type: !30)
!2329 = !DILocalVariable(name: "o", scope: !2322, file: !93, line: 957, type: !1255)
!2330 = !DILocation(line: 0, scope: !2322)
!2331 = !DILocation(line: 957, column: 3, scope: !2322)
!2332 = !DILocation(line: 957, column: 32, scope: !2322)
!2333 = !{!2334}
!2334 = distinct !{!2334, !2335, !"quoting_options_from_style: argument 0"}
!2335 = distinct !{!2335, !"quoting_options_from_style"}
!2336 = !DILocation(line: 957, column: 36, scope: !2322)
!2337 = !DILocalVariable(name: "style", arg: 1, scope: !2338, file: !93, line: 193, type: !5)
!2338 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !93, file: !93, line: 193, type: !2339, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!128, !5}
!2341 = !{!2337, !2342}
!2342 = !DILocalVariable(name: "o", scope: !2338, file: !93, line: 195, type: !128)
!2343 = !DILocation(line: 0, scope: !2338, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 957, column: 36, scope: !2322)
!2345 = !DILocation(line: 195, column: 26, scope: !2338, inlinedAt: !2344)
!2346 = !DILocation(line: 196, column: 13, scope: !2347, inlinedAt: !2344)
!2347 = distinct !DILexicalBlock(scope: !2338, file: !93, line: 196, column: 7)
!2348 = !DILocation(line: 196, column: 7, scope: !2338, inlinedAt: !2344)
!2349 = !DILocation(line: 197, column: 5, scope: !2347, inlinedAt: !2344)
!2350 = !DILocation(line: 198, column: 5, scope: !2338, inlinedAt: !2344)
!2351 = !DILocation(line: 198, column: 11, scope: !2338, inlinedAt: !2344)
!2352 = !DILocation(line: 958, column: 10, scope: !2322)
!2353 = !DILocation(line: 959, column: 1, scope: !2322)
!2354 = !DILocation(line: 958, column: 3, scope: !2322)
!2355 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !93, file: !93, line: 962, type: !2356, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!88, !65, !5, !30, !117}
!2358 = !{!2359, !2360, !2361, !2362, !2363}
!2359 = !DILocalVariable(name: "n", arg: 1, scope: !2355, file: !93, line: 962, type: !65)
!2360 = !DILocalVariable(name: "s", arg: 2, scope: !2355, file: !93, line: 962, type: !5)
!2361 = !DILocalVariable(name: "arg", arg: 3, scope: !2355, file: !93, line: 963, type: !30)
!2362 = !DILocalVariable(name: "argsize", arg: 4, scope: !2355, file: !93, line: 963, type: !117)
!2363 = !DILocalVariable(name: "o", scope: !2355, file: !93, line: 965, type: !1255)
!2364 = !DILocation(line: 0, scope: !2355)
!2365 = !DILocation(line: 965, column: 3, scope: !2355)
!2366 = !DILocation(line: 965, column: 32, scope: !2355)
!2367 = !{!2368}
!2368 = distinct !{!2368, !2369, !"quoting_options_from_style: argument 0"}
!2369 = distinct !{!2369, !"quoting_options_from_style"}
!2370 = !DILocation(line: 965, column: 36, scope: !2355)
!2371 = !DILocation(line: 0, scope: !2338, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 965, column: 36, scope: !2355)
!2373 = !DILocation(line: 195, column: 26, scope: !2338, inlinedAt: !2372)
!2374 = !DILocation(line: 196, column: 13, scope: !2347, inlinedAt: !2372)
!2375 = !DILocation(line: 196, column: 7, scope: !2338, inlinedAt: !2372)
!2376 = !DILocation(line: 197, column: 5, scope: !2347, inlinedAt: !2372)
!2377 = !DILocation(line: 198, column: 5, scope: !2338, inlinedAt: !2372)
!2378 = !DILocation(line: 198, column: 11, scope: !2338, inlinedAt: !2372)
!2379 = !DILocation(line: 966, column: 10, scope: !2355)
!2380 = !DILocation(line: 967, column: 1, scope: !2355)
!2381 = !DILocation(line: 966, column: 3, scope: !2355)
!2382 = distinct !DISubprogram(name: "quotearg_style", scope: !93, file: !93, line: 970, type: !2383, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!88, !5, !30}
!2385 = !{!2386, !2387}
!2386 = !DILocalVariable(name: "s", arg: 1, scope: !2382, file: !93, line: 970, type: !5)
!2387 = !DILocalVariable(name: "arg", arg: 2, scope: !2382, file: !93, line: 970, type: !30)
!2388 = !DILocation(line: 0, scope: !2382)
!2389 = !DILocation(line: 0, scope: !2322, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 972, column: 10, scope: !2382)
!2391 = !DILocation(line: 957, column: 3, scope: !2322, inlinedAt: !2390)
!2392 = !DILocation(line: 957, column: 32, scope: !2322, inlinedAt: !2390)
!2393 = !{!2394}
!2394 = distinct !{!2394, !2395, !"quoting_options_from_style: argument 0"}
!2395 = distinct !{!2395, !"quoting_options_from_style"}
!2396 = !DILocation(line: 957, column: 36, scope: !2322, inlinedAt: !2390)
!2397 = !DILocation(line: 0, scope: !2338, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 957, column: 36, scope: !2322, inlinedAt: !2390)
!2399 = !DILocation(line: 195, column: 26, scope: !2338, inlinedAt: !2398)
!2400 = !DILocation(line: 196, column: 13, scope: !2347, inlinedAt: !2398)
!2401 = !DILocation(line: 196, column: 7, scope: !2338, inlinedAt: !2398)
!2402 = !DILocation(line: 197, column: 5, scope: !2347, inlinedAt: !2398)
!2403 = !DILocation(line: 198, column: 5, scope: !2338, inlinedAt: !2398)
!2404 = !DILocation(line: 198, column: 11, scope: !2338, inlinedAt: !2398)
!2405 = !DILocation(line: 958, column: 10, scope: !2322, inlinedAt: !2390)
!2406 = !DILocation(line: 959, column: 1, scope: !2322, inlinedAt: !2390)
!2407 = !DILocation(line: 972, column: 3, scope: !2382)
!2408 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !93, file: !93, line: 976, type: !2409, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!88, !5, !30, !117}
!2411 = !{!2412, !2413, !2414}
!2412 = !DILocalVariable(name: "s", arg: 1, scope: !2408, file: !93, line: 976, type: !5)
!2413 = !DILocalVariable(name: "arg", arg: 2, scope: !2408, file: !93, line: 976, type: !30)
!2414 = !DILocalVariable(name: "argsize", arg: 3, scope: !2408, file: !93, line: 976, type: !117)
!2415 = !DILocation(line: 0, scope: !2408)
!2416 = !DILocation(line: 0, scope: !2355, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 978, column: 10, scope: !2408)
!2418 = !DILocation(line: 965, column: 3, scope: !2355, inlinedAt: !2417)
!2419 = !DILocation(line: 965, column: 32, scope: !2355, inlinedAt: !2417)
!2420 = !{!2421}
!2421 = distinct !{!2421, !2422, !"quoting_options_from_style: argument 0"}
!2422 = distinct !{!2422, !"quoting_options_from_style"}
!2423 = !DILocation(line: 965, column: 36, scope: !2355, inlinedAt: !2417)
!2424 = !DILocation(line: 0, scope: !2338, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 965, column: 36, scope: !2355, inlinedAt: !2417)
!2426 = !DILocation(line: 195, column: 26, scope: !2338, inlinedAt: !2425)
!2427 = !DILocation(line: 196, column: 13, scope: !2347, inlinedAt: !2425)
!2428 = !DILocation(line: 196, column: 7, scope: !2338, inlinedAt: !2425)
!2429 = !DILocation(line: 197, column: 5, scope: !2347, inlinedAt: !2425)
!2430 = !DILocation(line: 198, column: 5, scope: !2338, inlinedAt: !2425)
!2431 = !DILocation(line: 198, column: 11, scope: !2338, inlinedAt: !2425)
!2432 = !DILocation(line: 966, column: 10, scope: !2355, inlinedAt: !2417)
!2433 = !DILocation(line: 967, column: 1, scope: !2355, inlinedAt: !2417)
!2434 = !DILocation(line: 978, column: 3, scope: !2408)
!2435 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !93, file: !93, line: 982, type: !2436, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!88, !30, !117, !32}
!2438 = !{!2439, !2440, !2441, !2442}
!2439 = !DILocalVariable(name: "arg", arg: 1, scope: !2435, file: !93, line: 982, type: !30)
!2440 = !DILocalVariable(name: "argsize", arg: 2, scope: !2435, file: !93, line: 982, type: !117)
!2441 = !DILocalVariable(name: "ch", arg: 3, scope: !2435, file: !93, line: 982, type: !32)
!2442 = !DILocalVariable(name: "options", scope: !2435, file: !93, line: 984, type: !128)
!2443 = !DILocation(line: 0, scope: !2435)
!2444 = !DILocation(line: 984, column: 3, scope: !2435)
!2445 = !DILocation(line: 984, column: 26, scope: !2435)
!2446 = !DILocation(line: 985, column: 13, scope: !2435)
!2447 = !{i64 0, i64 4, !893, i64 4, i64 4, !772, i64 8, i64 32, !893, i64 40, i64 8, !624, i64 48, i64 8, !624}
!2448 = !DILocation(line: 0, scope: !1275, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 986, column: 3, scope: !2435)
!2450 = !DILocation(line: 156, column: 62, scope: !1275, inlinedAt: !2449)
!2451 = !DILocation(line: 156, column: 57, scope: !1275, inlinedAt: !2449)
!2452 = !DILocation(line: 157, column: 15, scope: !1275, inlinedAt: !2449)
!2453 = !DILocation(line: 158, column: 12, scope: !1275, inlinedAt: !2449)
!2454 = !DILocation(line: 158, column: 15, scope: !1275, inlinedAt: !2449)
!2455 = !DILocation(line: 158, column: 25, scope: !1275, inlinedAt: !2449)
!2456 = !DILocation(line: 159, column: 18, scope: !1275, inlinedAt: !2449)
!2457 = !DILocation(line: 159, column: 23, scope: !1275, inlinedAt: !2449)
!2458 = !DILocation(line: 159, column: 6, scope: !1275, inlinedAt: !2449)
!2459 = !DILocation(line: 987, column: 10, scope: !2435)
!2460 = !DILocation(line: 988, column: 1, scope: !2435)
!2461 = !DILocation(line: 987, column: 3, scope: !2435)
!2462 = distinct !DISubprogram(name: "quotearg_char", scope: !93, file: !93, line: 991, type: !2463, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!88, !30, !32}
!2465 = !{!2466, !2467}
!2466 = !DILocalVariable(name: "arg", arg: 1, scope: !2462, file: !93, line: 991, type: !30)
!2467 = !DILocalVariable(name: "ch", arg: 2, scope: !2462, file: !93, line: 991, type: !32)
!2468 = !DILocation(line: 0, scope: !2462)
!2469 = !DILocation(line: 0, scope: !2435, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 993, column: 10, scope: !2462)
!2471 = !DILocation(line: 984, column: 3, scope: !2435, inlinedAt: !2470)
!2472 = !DILocation(line: 984, column: 26, scope: !2435, inlinedAt: !2470)
!2473 = !DILocation(line: 985, column: 13, scope: !2435, inlinedAt: !2470)
!2474 = !DILocation(line: 0, scope: !1275, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 986, column: 3, scope: !2435, inlinedAt: !2470)
!2476 = !DILocation(line: 156, column: 62, scope: !1275, inlinedAt: !2475)
!2477 = !DILocation(line: 156, column: 57, scope: !1275, inlinedAt: !2475)
!2478 = !DILocation(line: 157, column: 15, scope: !1275, inlinedAt: !2475)
!2479 = !DILocation(line: 158, column: 12, scope: !1275, inlinedAt: !2475)
!2480 = !DILocation(line: 158, column: 15, scope: !1275, inlinedAt: !2475)
!2481 = !DILocation(line: 158, column: 25, scope: !1275, inlinedAt: !2475)
!2482 = !DILocation(line: 159, column: 18, scope: !1275, inlinedAt: !2475)
!2483 = !DILocation(line: 159, column: 23, scope: !1275, inlinedAt: !2475)
!2484 = !DILocation(line: 159, column: 6, scope: !1275, inlinedAt: !2475)
!2485 = !DILocation(line: 987, column: 10, scope: !2435, inlinedAt: !2470)
!2486 = !DILocation(line: 988, column: 1, scope: !2435, inlinedAt: !2470)
!2487 = !DILocation(line: 993, column: 3, scope: !2462)
!2488 = distinct !DISubprogram(name: "quotearg_colon", scope: !93, file: !93, line: 997, type: !804, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2489)
!2489 = !{!2490}
!2490 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !93, line: 997, type: !30)
!2491 = !DILocation(line: 0, scope: !2488)
!2492 = !DILocation(line: 0, scope: !2462, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 999, column: 10, scope: !2488)
!2494 = !DILocation(line: 0, scope: !2435, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 993, column: 10, scope: !2462, inlinedAt: !2493)
!2496 = !DILocation(line: 984, column: 3, scope: !2435, inlinedAt: !2495)
!2497 = !DILocation(line: 984, column: 26, scope: !2435, inlinedAt: !2495)
!2498 = !DILocation(line: 985, column: 13, scope: !2435, inlinedAt: !2495)
!2499 = !DILocation(line: 0, scope: !1275, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 986, column: 3, scope: !2435, inlinedAt: !2495)
!2501 = !DILocation(line: 156, column: 57, scope: !1275, inlinedAt: !2500)
!2502 = !DILocation(line: 158, column: 12, scope: !1275, inlinedAt: !2500)
!2503 = !DILocation(line: 159, column: 6, scope: !1275, inlinedAt: !2500)
!2504 = !DILocation(line: 987, column: 10, scope: !2435, inlinedAt: !2495)
!2505 = !DILocation(line: 988, column: 1, scope: !2435, inlinedAt: !2495)
!2506 = !DILocation(line: 999, column: 3, scope: !2488)
!2507 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !93, file: !93, line: 1003, type: !2312, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2508)
!2508 = !{!2509, !2510}
!2509 = !DILocalVariable(name: "arg", arg: 1, scope: !2507, file: !93, line: 1003, type: !30)
!2510 = !DILocalVariable(name: "argsize", arg: 2, scope: !2507, file: !93, line: 1003, type: !117)
!2511 = !DILocation(line: 0, scope: !2507)
!2512 = !DILocation(line: 0, scope: !2435, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 1005, column: 10, scope: !2507)
!2514 = !DILocation(line: 984, column: 3, scope: !2435, inlinedAt: !2513)
!2515 = !DILocation(line: 984, column: 26, scope: !2435, inlinedAt: !2513)
!2516 = !DILocation(line: 985, column: 13, scope: !2435, inlinedAt: !2513)
!2517 = !DILocation(line: 0, scope: !1275, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 986, column: 3, scope: !2435, inlinedAt: !2513)
!2519 = !DILocation(line: 156, column: 57, scope: !1275, inlinedAt: !2518)
!2520 = !DILocation(line: 158, column: 12, scope: !1275, inlinedAt: !2518)
!2521 = !DILocation(line: 159, column: 6, scope: !1275, inlinedAt: !2518)
!2522 = !DILocation(line: 987, column: 10, scope: !2435, inlinedAt: !2513)
!2523 = !DILocation(line: 988, column: 1, scope: !2435, inlinedAt: !2513)
!2524 = !DILocation(line: 1005, column: 3, scope: !2507)
!2525 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !93, file: !93, line: 1009, type: !2323, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2526)
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DILocalVariable(name: "n", arg: 1, scope: !2525, file: !93, line: 1009, type: !65)
!2528 = !DILocalVariable(name: "s", arg: 2, scope: !2525, file: !93, line: 1009, type: !5)
!2529 = !DILocalVariable(name: "arg", arg: 3, scope: !2525, file: !93, line: 1009, type: !30)
!2530 = !DILocalVariable(name: "options", scope: !2525, file: !93, line: 1011, type: !128)
!2531 = !DILocation(line: 195, column: 26, scope: !2338, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 1012, column: 13, scope: !2525)
!2533 = !DILocation(line: 0, scope: !2525)
!2534 = !DILocation(line: 1011, column: 3, scope: !2525)
!2535 = !DILocation(line: 1011, column: 26, scope: !2525)
!2536 = !DILocation(line: 1012, column: 13, scope: !2525)
!2537 = !{!2538}
!2538 = distinct !{!2538, !2539, !"quoting_options_from_style: argument 0"}
!2539 = distinct !{!2539, !"quoting_options_from_style"}
!2540 = !DILocation(line: 0, scope: !2338, inlinedAt: !2532)
!2541 = !DILocation(line: 196, column: 13, scope: !2347, inlinedAt: !2532)
!2542 = !DILocation(line: 196, column: 7, scope: !2338, inlinedAt: !2532)
!2543 = !DILocation(line: 197, column: 5, scope: !2347, inlinedAt: !2532)
!2544 = !{i64 0, i64 4, !772, i64 4, i64 32, !893, i64 36, i64 8, !624, i64 44, i64 8, !624}
!2545 = !DILocation(line: 0, scope: !1275, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 1013, column: 3, scope: !2525)
!2547 = !DILocation(line: 156, column: 57, scope: !1275, inlinedAt: !2546)
!2548 = !DILocation(line: 158, column: 12, scope: !1275, inlinedAt: !2546)
!2549 = !DILocation(line: 159, column: 6, scope: !1275, inlinedAt: !2546)
!2550 = !DILocation(line: 1014, column: 10, scope: !2525)
!2551 = !DILocation(line: 1015, column: 1, scope: !2525)
!2552 = !DILocation(line: 1014, column: 3, scope: !2525)
!2553 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !93, file: !93, line: 1018, type: !2554, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!88, !65, !30, !30, !30}
!2556 = !{!2557, !2558, !2559, !2560}
!2557 = !DILocalVariable(name: "n", arg: 1, scope: !2553, file: !93, line: 1018, type: !65)
!2558 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2553, file: !93, line: 1018, type: !30)
!2559 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2553, file: !93, line: 1019, type: !30)
!2560 = !DILocalVariable(name: "arg", arg: 4, scope: !2553, file: !93, line: 1019, type: !30)
!2561 = !DILocation(line: 0, scope: !2553)
!2562 = !DILocalVariable(name: "n", arg: 1, scope: !2563, file: !93, line: 1026, type: !65)
!2563 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !93, file: !93, line: 1026, type: !2564, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!88, !65, !30, !30, !30, !117}
!2566 = !{!2562, !2567, !2568, !2569, !2570, !2571}
!2567 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2563, file: !93, line: 1026, type: !30)
!2568 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2563, file: !93, line: 1027, type: !30)
!2569 = !DILocalVariable(name: "arg", arg: 4, scope: !2563, file: !93, line: 1028, type: !30)
!2570 = !DILocalVariable(name: "argsize", arg: 5, scope: !2563, file: !93, line: 1028, type: !117)
!2571 = !DILocalVariable(name: "o", scope: !2563, file: !93, line: 1030, type: !128)
!2572 = !DILocation(line: 0, scope: !2563, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 1021, column: 10, scope: !2553)
!2574 = !DILocation(line: 1030, column: 3, scope: !2563, inlinedAt: !2573)
!2575 = !DILocation(line: 1030, column: 26, scope: !2563, inlinedAt: !2573)
!2576 = !DILocation(line: 1030, column: 30, scope: !2563, inlinedAt: !2573)
!2577 = !DILocation(line: 0, scope: !1315, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 1031, column: 3, scope: !2563, inlinedAt: !2573)
!2579 = !DILocation(line: 184, column: 6, scope: !1315, inlinedAt: !2578)
!2580 = !DILocation(line: 184, column: 12, scope: !1315, inlinedAt: !2578)
!2581 = !DILocation(line: 185, column: 8, scope: !1329, inlinedAt: !2578)
!2582 = !DILocation(line: 185, column: 19, scope: !1329, inlinedAt: !2578)
!2583 = !DILocation(line: 186, column: 5, scope: !1329, inlinedAt: !2578)
!2584 = !DILocation(line: 187, column: 6, scope: !1315, inlinedAt: !2578)
!2585 = !DILocation(line: 187, column: 17, scope: !1315, inlinedAt: !2578)
!2586 = !DILocation(line: 188, column: 6, scope: !1315, inlinedAt: !2578)
!2587 = !DILocation(line: 188, column: 18, scope: !1315, inlinedAt: !2578)
!2588 = !DILocation(line: 1032, column: 10, scope: !2563, inlinedAt: !2573)
!2589 = !DILocation(line: 1033, column: 1, scope: !2563, inlinedAt: !2573)
!2590 = !DILocation(line: 1021, column: 3, scope: !2553)
!2591 = !DILocation(line: 0, scope: !2563)
!2592 = !DILocation(line: 1030, column: 3, scope: !2563)
!2593 = !DILocation(line: 1030, column: 26, scope: !2563)
!2594 = !DILocation(line: 1030, column: 30, scope: !2563)
!2595 = !DILocation(line: 0, scope: !1315, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 1031, column: 3, scope: !2563)
!2597 = !DILocation(line: 184, column: 6, scope: !1315, inlinedAt: !2596)
!2598 = !DILocation(line: 184, column: 12, scope: !1315, inlinedAt: !2596)
!2599 = !DILocation(line: 185, column: 8, scope: !1329, inlinedAt: !2596)
!2600 = !DILocation(line: 185, column: 19, scope: !1329, inlinedAt: !2596)
!2601 = !DILocation(line: 186, column: 5, scope: !1329, inlinedAt: !2596)
!2602 = !DILocation(line: 187, column: 6, scope: !1315, inlinedAt: !2596)
!2603 = !DILocation(line: 187, column: 17, scope: !1315, inlinedAt: !2596)
!2604 = !DILocation(line: 188, column: 6, scope: !1315, inlinedAt: !2596)
!2605 = !DILocation(line: 188, column: 18, scope: !1315, inlinedAt: !2596)
!2606 = !DILocation(line: 1032, column: 10, scope: !2563)
!2607 = !DILocation(line: 1033, column: 1, scope: !2563)
!2608 = !DILocation(line: 1032, column: 3, scope: !2563)
!2609 = distinct !DISubprogram(name: "quotearg_custom", scope: !93, file: !93, line: 1036, type: !2610, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!88, !30, !30, !30}
!2612 = !{!2613, !2614, !2615}
!2613 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2609, file: !93, line: 1036, type: !30)
!2614 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2609, file: !93, line: 1036, type: !30)
!2615 = !DILocalVariable(name: "arg", arg: 3, scope: !2609, file: !93, line: 1037, type: !30)
!2616 = !DILocation(line: 0, scope: !2609)
!2617 = !DILocation(line: 0, scope: !2553, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 1039, column: 10, scope: !2609)
!2619 = !DILocation(line: 0, scope: !2563, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1021, column: 10, scope: !2553, inlinedAt: !2618)
!2621 = !DILocation(line: 1030, column: 3, scope: !2563, inlinedAt: !2620)
!2622 = !DILocation(line: 1030, column: 26, scope: !2563, inlinedAt: !2620)
!2623 = !DILocation(line: 1030, column: 30, scope: !2563, inlinedAt: !2620)
!2624 = !DILocation(line: 0, scope: !1315, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 1031, column: 3, scope: !2563, inlinedAt: !2620)
!2626 = !DILocation(line: 184, column: 6, scope: !1315, inlinedAt: !2625)
!2627 = !DILocation(line: 184, column: 12, scope: !1315, inlinedAt: !2625)
!2628 = !DILocation(line: 185, column: 8, scope: !1329, inlinedAt: !2625)
!2629 = !DILocation(line: 185, column: 19, scope: !1329, inlinedAt: !2625)
!2630 = !DILocation(line: 186, column: 5, scope: !1329, inlinedAt: !2625)
!2631 = !DILocation(line: 187, column: 6, scope: !1315, inlinedAt: !2625)
!2632 = !DILocation(line: 187, column: 17, scope: !1315, inlinedAt: !2625)
!2633 = !DILocation(line: 188, column: 6, scope: !1315, inlinedAt: !2625)
!2634 = !DILocation(line: 188, column: 18, scope: !1315, inlinedAt: !2625)
!2635 = !DILocation(line: 1032, column: 10, scope: !2563, inlinedAt: !2620)
!2636 = !DILocation(line: 1033, column: 1, scope: !2563, inlinedAt: !2620)
!2637 = !DILocation(line: 1039, column: 3, scope: !2609)
!2638 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !93, file: !93, line: 1043, type: !2639, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!88, !30, !30, !30, !117}
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2638, file: !93, line: 1043, type: !30)
!2643 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2638, file: !93, line: 1043, type: !30)
!2644 = !DILocalVariable(name: "arg", arg: 3, scope: !2638, file: !93, line: 1044, type: !30)
!2645 = !DILocalVariable(name: "argsize", arg: 4, scope: !2638, file: !93, line: 1044, type: !117)
!2646 = !DILocation(line: 0, scope: !2638)
!2647 = !DILocation(line: 0, scope: !2563, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1046, column: 10, scope: !2638)
!2649 = !DILocation(line: 1030, column: 3, scope: !2563, inlinedAt: !2648)
!2650 = !DILocation(line: 1030, column: 26, scope: !2563, inlinedAt: !2648)
!2651 = !DILocation(line: 1030, column: 30, scope: !2563, inlinedAt: !2648)
!2652 = !DILocation(line: 0, scope: !1315, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 1031, column: 3, scope: !2563, inlinedAt: !2648)
!2654 = !DILocation(line: 184, column: 6, scope: !1315, inlinedAt: !2653)
!2655 = !DILocation(line: 184, column: 12, scope: !1315, inlinedAt: !2653)
!2656 = !DILocation(line: 185, column: 8, scope: !1329, inlinedAt: !2653)
!2657 = !DILocation(line: 185, column: 19, scope: !1329, inlinedAt: !2653)
!2658 = !DILocation(line: 186, column: 5, scope: !1329, inlinedAt: !2653)
!2659 = !DILocation(line: 187, column: 6, scope: !1315, inlinedAt: !2653)
!2660 = !DILocation(line: 187, column: 17, scope: !1315, inlinedAt: !2653)
!2661 = !DILocation(line: 188, column: 6, scope: !1315, inlinedAt: !2653)
!2662 = !DILocation(line: 188, column: 18, scope: !1315, inlinedAt: !2653)
!2663 = !DILocation(line: 1032, column: 10, scope: !2563, inlinedAt: !2648)
!2664 = !DILocation(line: 1033, column: 1, scope: !2563, inlinedAt: !2648)
!2665 = !DILocation(line: 1046, column: 3, scope: !2638)
!2666 = distinct !DISubprogram(name: "quote_n_mem", scope: !93, file: !93, line: 1061, type: !2667, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!30, !65, !30, !117}
!2669 = !{!2670, !2671, !2672}
!2670 = !DILocalVariable(name: "n", arg: 1, scope: !2666, file: !93, line: 1061, type: !65)
!2671 = !DILocalVariable(name: "arg", arg: 2, scope: !2666, file: !93, line: 1061, type: !30)
!2672 = !DILocalVariable(name: "argsize", arg: 3, scope: !2666, file: !93, line: 1061, type: !117)
!2673 = !DILocation(line: 0, scope: !2666)
!2674 = !DILocation(line: 1063, column: 10, scope: !2666)
!2675 = !DILocation(line: 1063, column: 3, scope: !2666)
!2676 = distinct !DISubprogram(name: "quote_mem", scope: !93, file: !93, line: 1067, type: !2677, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!30, !30, !117}
!2679 = !{!2680, !2681}
!2680 = !DILocalVariable(name: "arg", arg: 1, scope: !2676, file: !93, line: 1067, type: !30)
!2681 = !DILocalVariable(name: "argsize", arg: 2, scope: !2676, file: !93, line: 1067, type: !117)
!2682 = !DILocation(line: 0, scope: !2676)
!2683 = !DILocation(line: 0, scope: !2666, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1069, column: 10, scope: !2676)
!2685 = !DILocation(line: 1063, column: 10, scope: !2666, inlinedAt: !2684)
!2686 = !DILocation(line: 1069, column: 3, scope: !2676)
!2687 = distinct !DISubprogram(name: "quote_n", scope: !93, file: !93, line: 1073, type: !2688, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!30, !65, !30}
!2690 = !{!2691, !2692}
!2691 = !DILocalVariable(name: "n", arg: 1, scope: !2687, file: !93, line: 1073, type: !65)
!2692 = !DILocalVariable(name: "arg", arg: 2, scope: !2687, file: !93, line: 1073, type: !30)
!2693 = !DILocation(line: 0, scope: !2687)
!2694 = !DILocation(line: 0, scope: !2666, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1075, column: 10, scope: !2687)
!2696 = !DILocation(line: 1063, column: 10, scope: !2666, inlinedAt: !2695)
!2697 = !DILocation(line: 1075, column: 3, scope: !2687)
!2698 = distinct !DISubprogram(name: "quote", scope: !93, file: !93, line: 1079, type: !2699, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !92, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!30, !30}
!2701 = !{!2702}
!2702 = !DILocalVariable(name: "arg", arg: 1, scope: !2698, file: !93, line: 1079, type: !30)
!2703 = !DILocation(line: 0, scope: !2698)
!2704 = !DILocation(line: 0, scope: !2687, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1081, column: 10, scope: !2698)
!2706 = !DILocation(line: 0, scope: !2666, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1075, column: 10, scope: !2687, inlinedAt: !2705)
!2708 = !DILocation(line: 1063, column: 10, scope: !2666, inlinedAt: !2707)
!2709 = !DILocation(line: 1081, column: 3, scope: !2698)
!2710 = distinct !DISubprogram(name: "version_etc_arn", scope: !176, file: !176, line: 61, type: !2711, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !2748)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !2713, !30, !30, !30, !2747, !117}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !833, line: 7, baseType: !2715)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !696, line: 49, size: 1728, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2715, file: !696, line: 51, baseType: !65, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2715, file: !696, line: 54, baseType: !88, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2715, file: !696, line: 55, baseType: !88, size: 64, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2715, file: !696, line: 56, baseType: !88, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2715, file: !696, line: 57, baseType: !88, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2715, file: !696, line: 58, baseType: !88, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2715, file: !696, line: 59, baseType: !88, size: 64, offset: 384)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2715, file: !696, line: 60, baseType: !88, size: 64, offset: 448)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2715, file: !696, line: 61, baseType: !88, size: 64, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2715, file: !696, line: 64, baseType: !88, size: 64, offset: 576)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2715, file: !696, line: 65, baseType: !88, size: 64, offset: 640)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2715, file: !696, line: 66, baseType: !88, size: 64, offset: 704)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2715, file: !696, line: 68, baseType: !711, size: 64, offset: 768)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2715, file: !696, line: 70, baseType: !2731, size: 64, offset: 832)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2715, file: !696, line: 72, baseType: !65, size: 32, offset: 896)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2715, file: !696, line: 73, baseType: !65, size: 32, offset: 928)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2715, file: !696, line: 74, baseType: !717, size: 64, offset: 960)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2715, file: !696, line: 77, baseType: !116, size: 16, offset: 1024)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2715, file: !696, line: 78, baseType: !721, size: 8, offset: 1040)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2715, file: !696, line: 79, baseType: !723, size: 8, offset: 1048)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2715, file: !696, line: 81, baseType: !727, size: 64, offset: 1088)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2715, file: !696, line: 89, baseType: !730, size: 64, offset: 1152)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2715, file: !696, line: 91, baseType: !732, size: 64, offset: 1216)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2715, file: !696, line: 92, baseType: !735, size: 64, offset: 1280)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2715, file: !696, line: 93, baseType: !2731, size: 64, offset: 1344)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2715, file: !696, line: 94, baseType: !33, size: 64, offset: 1408)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2715, file: !696, line: 95, baseType: !117, size: 64, offset: 1472)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2715, file: !696, line: 96, baseType: !65, size: 32, offset: 1536)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2715, file: !696, line: 98, baseType: !742, size: 160, offset: 1568)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!2748 = !{!2749, !2750, !2751, !2752, !2753, !2754}
!2749 = !DILocalVariable(name: "stream", arg: 1, scope: !2710, file: !176, line: 61, type: !2713)
!2750 = !DILocalVariable(name: "command_name", arg: 2, scope: !2710, file: !176, line: 62, type: !30)
!2751 = !DILocalVariable(name: "package", arg: 3, scope: !2710, file: !176, line: 62, type: !30)
!2752 = !DILocalVariable(name: "version", arg: 4, scope: !2710, file: !176, line: 63, type: !30)
!2753 = !DILocalVariable(name: "authors", arg: 5, scope: !2710, file: !176, line: 64, type: !2747)
!2754 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2710, file: !176, line: 64, type: !117)
!2755 = !DILocation(line: 0, scope: !2710)
!2756 = !DILocation(line: 66, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2710, file: !176, line: 66, column: 7)
!2758 = !DILocation(line: 66, column: 7, scope: !2710)
!2759 = !DILocation(line: 67, column: 5, scope: !2757)
!2760 = !DILocation(line: 69, column: 5, scope: !2757)
!2761 = !DILocation(line: 83, column: 3, scope: !2710)
!2762 = !DILocation(line: 85, column: 3, scope: !2710)
!2763 = !DILocation(line: 88, column: 3, scope: !2710)
!2764 = !DILocation(line: 95, column: 3, scope: !2710)
!2765 = !DILocation(line: 97, column: 3, scope: !2710)
!2766 = !DILocation(line: 105, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2710, file: !176, line: 98, column: 5)
!2768 = !DILocation(line: 106, column: 7, scope: !2767)
!2769 = !DILocation(line: 109, column: 7, scope: !2767)
!2770 = !DILocation(line: 110, column: 7, scope: !2767)
!2771 = !DILocation(line: 113, column: 7, scope: !2767)
!2772 = !DILocation(line: 115, column: 7, scope: !2767)
!2773 = !DILocation(line: 120, column: 7, scope: !2767)
!2774 = !DILocation(line: 122, column: 7, scope: !2767)
!2775 = !DILocation(line: 127, column: 7, scope: !2767)
!2776 = !DILocation(line: 129, column: 7, scope: !2767)
!2777 = !DILocation(line: 134, column: 7, scope: !2767)
!2778 = !DILocation(line: 137, column: 7, scope: !2767)
!2779 = !DILocation(line: 142, column: 7, scope: !2767)
!2780 = !DILocation(line: 145, column: 7, scope: !2767)
!2781 = !DILocation(line: 150, column: 7, scope: !2767)
!2782 = !DILocation(line: 154, column: 7, scope: !2767)
!2783 = !DILocation(line: 159, column: 7, scope: !2767)
!2784 = !DILocation(line: 163, column: 7, scope: !2767)
!2785 = !DILocation(line: 170, column: 7, scope: !2767)
!2786 = !DILocation(line: 174, column: 7, scope: !2767)
!2787 = !DILocation(line: 176, column: 1, scope: !2710)
!2788 = distinct !DISubprogram(name: "version_etc_ar", scope: !176, file: !176, line: 183, type: !2789, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !2713, !30, !30, !30, !2747}
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797}
!2792 = !DILocalVariable(name: "stream", arg: 1, scope: !2788, file: !176, line: 183, type: !2713)
!2793 = !DILocalVariable(name: "command_name", arg: 2, scope: !2788, file: !176, line: 184, type: !30)
!2794 = !DILocalVariable(name: "package", arg: 3, scope: !2788, file: !176, line: 184, type: !30)
!2795 = !DILocalVariable(name: "version", arg: 4, scope: !2788, file: !176, line: 185, type: !30)
!2796 = !DILocalVariable(name: "authors", arg: 5, scope: !2788, file: !176, line: 185, type: !2747)
!2797 = !DILocalVariable(name: "n_authors", scope: !2788, file: !176, line: 187, type: !117)
!2798 = !DILocation(line: 0, scope: !2788)
!2799 = !DILocation(line: 189, column: 8, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2788, file: !176, line: 189, column: 3)
!2801 = !DILocation(line: 0, scope: !2800)
!2802 = !DILocation(line: 189, column: 23, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2800, file: !176, line: 189, column: 3)
!2804 = !DILocation(line: 189, column: 3, scope: !2800)
!2805 = !DILocation(line: 189, column: 52, scope: !2803)
!2806 = distinct !{!2806, !2804, !2807, !666}
!2807 = !DILocation(line: 190, column: 5, scope: !2800)
!2808 = !DILocation(line: 191, column: 3, scope: !2788)
!2809 = !DILocation(line: 192, column: 1, scope: !2788)
!2810 = distinct !DISubprogram(name: "version_etc_va", scope: !176, file: !176, line: 199, type: !2811, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !2820)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !2713, !30, !30, !30, !2813}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2815)
!2815 = !{!2816, !2817, !2818, !2819}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2814, file: !176, line: 192, baseType: !7, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2814, file: !176, line: 192, baseType: !7, size: 32, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2814, file: !176, line: 192, baseType: !33, size: 64, offset: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2814, file: !176, line: 192, baseType: !33, size: 64, offset: 128)
!2820 = !{!2821, !2822, !2823, !2824, !2825, !2826, !2827}
!2821 = !DILocalVariable(name: "stream", arg: 1, scope: !2810, file: !176, line: 199, type: !2713)
!2822 = !DILocalVariable(name: "command_name", arg: 2, scope: !2810, file: !176, line: 200, type: !30)
!2823 = !DILocalVariable(name: "package", arg: 3, scope: !2810, file: !176, line: 200, type: !30)
!2824 = !DILocalVariable(name: "version", arg: 4, scope: !2810, file: !176, line: 201, type: !30)
!2825 = !DILocalVariable(name: "authors", arg: 5, scope: !2810, file: !176, line: 201, type: !2813)
!2826 = !DILocalVariable(name: "n_authors", scope: !2810, file: !176, line: 203, type: !117)
!2827 = !DILocalVariable(name: "authtab", scope: !2810, file: !176, line: 204, type: !2828)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !124)
!2829 = !DILocation(line: 0, scope: !2810)
!2830 = !DILocation(line: 204, column: 3, scope: !2810)
!2831 = !DILocation(line: 204, column: 15, scope: !2810)
!2832 = !DILocation(line: 208, column: 35, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !176, line: 206, column: 3)
!2834 = distinct !DILexicalBlock(scope: !2810, file: !176, line: 206, column: 3)
!2835 = !DILocation(line: 208, column: 14, scope: !2833)
!2836 = !DILocation(line: 208, column: 33, scope: !2833)
!2837 = !DILocation(line: 208, column: 67, scope: !2833)
!2838 = !DILocation(line: 206, column: 3, scope: !2834)
!2839 = !DILocation(line: 0, scope: !2834)
!2840 = !DILocation(line: 211, column: 3, scope: !2810)
!2841 = !DILocation(line: 213, column: 1, scope: !2810)
!2842 = distinct !DISubprogram(name: "version_etc", scope: !176, file: !176, line: 230, type: !2843, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !2713, !30, !30, !30, null}
!2845 = !{!2846, !2847, !2848, !2849, !2850}
!2846 = !DILocalVariable(name: "stream", arg: 1, scope: !2842, file: !176, line: 230, type: !2713)
!2847 = !DILocalVariable(name: "command_name", arg: 2, scope: !2842, file: !176, line: 231, type: !30)
!2848 = !DILocalVariable(name: "package", arg: 3, scope: !2842, file: !176, line: 231, type: !30)
!2849 = !DILocalVariable(name: "version", arg: 4, scope: !2842, file: !176, line: 232, type: !30)
!2850 = !DILocalVariable(name: "authors", scope: !2842, file: !176, line: 234, type: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !691, line: 52, baseType: !2852)
!2852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1132, line: 32, baseType: !2853)
!2853 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !176, baseType: !2854)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2814, size: 192, elements: !724)
!2855 = !DILocation(line: 0, scope: !2842)
!2856 = !DILocation(line: 234, column: 3, scope: !2842)
!2857 = !DILocation(line: 234, column: 11, scope: !2842)
!2858 = !DILocation(line: 236, column: 3, scope: !2842)
!2859 = !DILocation(line: 237, column: 3, scope: !2842)
!2860 = !DILocation(line: 238, column: 3, scope: !2842)
!2861 = !DILocation(line: 239, column: 1, scope: !2842)
!2862 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !176, file: !176, line: 242, type: !811, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !50)
!2863 = !DILocation(line: 244, column: 3, scope: !2862)
!2864 = !DILocation(line: 249, column: 3, scope: !2862)
!2865 = !DILocation(line: 255, column: 3, scope: !2862)
!2866 = !DILocation(line: 260, column: 3, scope: !2862)
!2867 = !DILocation(line: 262, column: 1, scope: !2862)
!2868 = distinct !DISubprogram(name: "xnmalloc", scope: !186, file: !186, line: 99, type: !2869, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!33, !117, !117}
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "n", arg: 1, scope: !2868, file: !186, line: 99, type: !117)
!2873 = !DILocalVariable(name: "s", arg: 2, scope: !2868, file: !186, line: 99, type: !117)
!2874 = !DILocation(line: 0, scope: !2868)
!2875 = !DILocation(line: 101, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2868, file: !186, line: 101, column: 7)
!2877 = !DILocation(line: 101, column: 7, scope: !2868)
!2878 = !DILocation(line: 102, column: 5, scope: !2876)
!2879 = !DILocation(line: 103, column: 21, scope: !2868)
!2880 = !DILocalVariable(name: "n", arg: 1, scope: !2881, file: !183, line: 39, type: !117)
!2881 = distinct !DISubprogram(name: "xmalloc", scope: !183, file: !183, line: 39, type: !2882, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!33, !117}
!2884 = !{!2880, !2885}
!2885 = !DILocalVariable(name: "p", scope: !2881, file: !183, line: 41, type: !33)
!2886 = !DILocation(line: 0, scope: !2881, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 103, column: 10, scope: !2868)
!2888 = !DILocation(line: 41, column: 13, scope: !2881, inlinedAt: !2887)
!2889 = !DILocation(line: 42, column: 8, scope: !2890, inlinedAt: !2887)
!2890 = distinct !DILexicalBlock(scope: !2881, file: !183, line: 42, column: 7)
!2891 = !DILocation(line: 42, column: 10, scope: !2890, inlinedAt: !2887)
!2892 = !DILocation(line: 43, column: 5, scope: !2890, inlinedAt: !2887)
!2893 = !DILocation(line: 103, column: 3, scope: !2868)
!2894 = !DILocation(line: 0, scope: !2881)
!2895 = !DILocation(line: 41, column: 13, scope: !2881)
!2896 = !DILocation(line: 42, column: 8, scope: !2890)
!2897 = !DILocation(line: 42, column: 10, scope: !2890)
!2898 = !DILocation(line: 43, column: 5, scope: !2890)
!2899 = !DILocation(line: 44, column: 3, scope: !2881)
!2900 = distinct !DISubprogram(name: "xnrealloc", scope: !186, file: !186, line: 112, type: !2901, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!33, !33, !117, !117}
!2903 = !{!2904, !2905, !2906}
!2904 = !DILocalVariable(name: "p", arg: 1, scope: !2900, file: !186, line: 112, type: !33)
!2905 = !DILocalVariable(name: "n", arg: 2, scope: !2900, file: !186, line: 112, type: !117)
!2906 = !DILocalVariable(name: "s", arg: 3, scope: !2900, file: !186, line: 112, type: !117)
!2907 = !DILocation(line: 0, scope: !2900)
!2908 = !DILocation(line: 114, column: 7, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2900, file: !186, line: 114, column: 7)
!2910 = !DILocation(line: 114, column: 7, scope: !2900)
!2911 = !DILocation(line: 115, column: 5, scope: !2909)
!2912 = !DILocation(line: 116, column: 25, scope: !2900)
!2913 = !DILocalVariable(name: "p", arg: 1, scope: !2914, file: !183, line: 51, type: !33)
!2914 = distinct !DISubprogram(name: "xrealloc", scope: !183, file: !183, line: 51, type: !2915, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!33, !33, !117}
!2917 = !{!2913, !2918}
!2918 = !DILocalVariable(name: "n", arg: 2, scope: !2914, file: !183, line: 51, type: !117)
!2919 = !DILocation(line: 0, scope: !2914, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 116, column: 10, scope: !2900)
!2921 = !DILocation(line: 53, column: 8, scope: !2922, inlinedAt: !2920)
!2922 = distinct !DILexicalBlock(scope: !2914, file: !183, line: 53, column: 7)
!2923 = !DILocation(line: 53, column: 10, scope: !2922, inlinedAt: !2920)
!2924 = !DILocation(line: 57, column: 7, scope: !2925, inlinedAt: !2920)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !183, line: 54, column: 5)
!2926 = !DILocation(line: 58, column: 7, scope: !2925, inlinedAt: !2920)
!2927 = !DILocation(line: 61, column: 7, scope: !2914, inlinedAt: !2920)
!2928 = !DILocation(line: 62, column: 8, scope: !2929, inlinedAt: !2920)
!2929 = distinct !DILexicalBlock(scope: !2914, file: !183, line: 62, column: 7)
!2930 = !DILocation(line: 62, column: 10, scope: !2929, inlinedAt: !2920)
!2931 = !DILocation(line: 63, column: 5, scope: !2929, inlinedAt: !2920)
!2932 = !DILocation(line: 116, column: 3, scope: !2900)
!2933 = !DILocation(line: 0, scope: !2914)
!2934 = !DILocation(line: 53, column: 8, scope: !2922)
!2935 = !DILocation(line: 53, column: 10, scope: !2922)
!2936 = !DILocation(line: 57, column: 7, scope: !2925)
!2937 = !DILocation(line: 58, column: 7, scope: !2925)
!2938 = !DILocation(line: 61, column: 7, scope: !2914)
!2939 = !DILocation(line: 62, column: 8, scope: !2929)
!2940 = !DILocation(line: 62, column: 10, scope: !2929)
!2941 = !DILocation(line: 63, column: 5, scope: !2929)
!2942 = !DILocation(line: 65, column: 1, scope: !2914)
!2943 = !DILocation(line: 0, scope: !187)
!2944 = !DILocation(line: 176, column: 14, scope: !187)
!2945 = !DILocation(line: 178, column: 9, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !187, file: !186, line: 178, column: 7)
!2947 = !DILocation(line: 178, column: 7, scope: !187)
!2948 = !DILocation(line: 180, column: 13, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !186, line: 180, column: 11)
!2950 = distinct !DILexicalBlock(scope: !2946, file: !186, line: 179, column: 5)
!2951 = !DILocation(line: 180, column: 11, scope: !2950)
!2952 = !DILocation(line: 188, column: 30, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !186, line: 181, column: 9)
!2954 = !DILocation(line: 189, column: 16, scope: !2953)
!2955 = !DILocation(line: 189, column: 13, scope: !2953)
!2956 = !DILocation(line: 190, column: 9, scope: !2953)
!2957 = !DILocation(line: 191, column: 11, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2950, file: !186, line: 191, column: 11)
!2959 = !DILocation(line: 191, column: 11, scope: !2950)
!2960 = !DILocation(line: 206, column: 7, scope: !187)
!2961 = !DILocation(line: 207, column: 25, scope: !187)
!2962 = !DILocation(line: 0, scope: !2914, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 207, column: 10, scope: !187)
!2964 = !DILocation(line: 53, column: 10, scope: !2922, inlinedAt: !2963)
!2965 = !DILocation(line: 192, column: 9, scope: !2958)
!2966 = !DILocation(line: 200, column: 69, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !186, line: 200, column: 11)
!2968 = distinct !DILexicalBlock(scope: !2946, file: !186, line: 195, column: 5)
!2969 = !DILocation(line: 201, column: 11, scope: !2967)
!2970 = !DILocation(line: 200, column: 11, scope: !2968)
!2971 = !DILocation(line: 202, column: 9, scope: !2967)
!2972 = !DILocation(line: 203, column: 14, scope: !2968)
!2973 = !DILocation(line: 203, column: 18, scope: !2968)
!2974 = !DILocation(line: 203, column: 9, scope: !2968)
!2975 = !DILocation(line: 53, column: 8, scope: !2922, inlinedAt: !2963)
!2976 = !DILocation(line: 57, column: 7, scope: !2925, inlinedAt: !2963)
!2977 = !DILocation(line: 58, column: 7, scope: !2925, inlinedAt: !2963)
!2978 = !DILocation(line: 61, column: 7, scope: !2914, inlinedAt: !2963)
!2979 = !DILocation(line: 62, column: 8, scope: !2929, inlinedAt: !2963)
!2980 = !DILocation(line: 62, column: 10, scope: !2929, inlinedAt: !2963)
!2981 = !DILocation(line: 63, column: 5, scope: !2929, inlinedAt: !2963)
!2982 = !DILocation(line: 207, column: 3, scope: !187)
!2983 = distinct !DISubprogram(name: "xcharalloc", scope: !186, file: !186, line: 216, type: !2123, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2984)
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "n", arg: 1, scope: !2983, file: !186, line: 216, type: !117)
!2986 = !DILocation(line: 0, scope: !2983)
!2987 = !DILocation(line: 0, scope: !2881, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 218, column: 10, scope: !2983)
!2989 = !DILocation(line: 41, column: 13, scope: !2881, inlinedAt: !2988)
!2990 = !DILocation(line: 42, column: 8, scope: !2890, inlinedAt: !2988)
!2991 = !DILocation(line: 42, column: 10, scope: !2890, inlinedAt: !2988)
!2992 = !DILocation(line: 43, column: 5, scope: !2890, inlinedAt: !2988)
!2993 = !DILocation(line: 218, column: 3, scope: !2983)
!2994 = distinct !DISubprogram(name: "x2realloc", scope: !183, file: !183, line: 74, type: !2995, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!33, !33, !190}
!2997 = !{!2998, !2999}
!2998 = !DILocalVariable(name: "p", arg: 1, scope: !2994, file: !183, line: 74, type: !33)
!2999 = !DILocalVariable(name: "pn", arg: 2, scope: !2994, file: !183, line: 74, type: !190)
!3000 = !DILocation(line: 0, scope: !2994)
!3001 = !DILocation(line: 0, scope: !187, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 76, column: 10, scope: !2994)
!3003 = !DILocation(line: 176, column: 14, scope: !187, inlinedAt: !3002)
!3004 = !DILocation(line: 178, column: 9, scope: !2946, inlinedAt: !3002)
!3005 = !DILocation(line: 178, column: 7, scope: !187, inlinedAt: !3002)
!3006 = !DILocation(line: 180, column: 13, scope: !2949, inlinedAt: !3002)
!3007 = !DILocation(line: 180, column: 11, scope: !2950, inlinedAt: !3002)
!3008 = !DILocation(line: 191, column: 11, scope: !2958, inlinedAt: !3002)
!3009 = !DILocation(line: 191, column: 11, scope: !2950, inlinedAt: !3002)
!3010 = !DILocation(line: 192, column: 9, scope: !2958, inlinedAt: !3002)
!3011 = !DILocation(line: 201, column: 11, scope: !2967, inlinedAt: !3002)
!3012 = !DILocation(line: 200, column: 11, scope: !2968, inlinedAt: !3002)
!3013 = !DILocation(line: 202, column: 9, scope: !2967, inlinedAt: !3002)
!3014 = !DILocation(line: 203, column: 14, scope: !2968, inlinedAt: !3002)
!3015 = !DILocation(line: 203, column: 18, scope: !2968, inlinedAt: !3002)
!3016 = !DILocation(line: 203, column: 9, scope: !2968, inlinedAt: !3002)
!3017 = !DILocation(line: 0, scope: !2914, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 207, column: 10, scope: !187, inlinedAt: !3002)
!3019 = !DILocation(line: 53, column: 10, scope: !2922, inlinedAt: !3018)
!3020 = !DILocation(line: 206, column: 7, scope: !187, inlinedAt: !3002)
!3021 = !DILocation(line: 61, column: 7, scope: !2914, inlinedAt: !3018)
!3022 = !DILocation(line: 62, column: 8, scope: !2929, inlinedAt: !3018)
!3023 = !DILocation(line: 62, column: 10, scope: !2929, inlinedAt: !3018)
!3024 = !DILocation(line: 63, column: 5, scope: !2929, inlinedAt: !3018)
!3025 = !DILocation(line: 76, column: 3, scope: !2994)
!3026 = distinct !DISubprogram(name: "xzalloc", scope: !183, file: !183, line: 84, type: !2882, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !3027)
!3027 = !{!3028}
!3028 = !DILocalVariable(name: "n", arg: 1, scope: !3026, file: !183, line: 84, type: !117)
!3029 = !DILocation(line: 0, scope: !3026)
!3030 = !DILocalVariable(name: "n", arg: 1, scope: !3031, file: !183, line: 93, type: !117)
!3031 = distinct !DISubprogram(name: "xcalloc", scope: !183, file: !183, line: 93, type: !2869, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !3032)
!3032 = !{!3030, !3033, !3034}
!3033 = !DILocalVariable(name: "s", arg: 2, scope: !3031, file: !183, line: 93, type: !117)
!3034 = !DILocalVariable(name: "p", scope: !3031, file: !183, line: 95, type: !33)
!3035 = !DILocation(line: 0, scope: !3031, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 86, column: 10, scope: !3026)
!3037 = !DILocation(line: 100, column: 7, scope: !3038, inlinedAt: !3036)
!3038 = distinct !DILexicalBlock(scope: !3031, file: !183, line: 100, column: 7)
!3039 = !DILocation(line: 101, column: 7, scope: !3038, inlinedAt: !3036)
!3040 = !DILocation(line: 101, column: 18, scope: !3038, inlinedAt: !3036)
!3041 = !DILocation(line: 101, column: 16, scope: !3038, inlinedAt: !3036)
!3042 = !DILocation(line: 100, column: 7, scope: !3031, inlinedAt: !3036)
!3043 = !DILocation(line: 102, column: 5, scope: !3038, inlinedAt: !3036)
!3044 = !DILocation(line: 86, column: 3, scope: !3026)
!3045 = !DILocation(line: 0, scope: !3031)
!3046 = !DILocation(line: 100, column: 7, scope: !3038)
!3047 = !DILocation(line: 101, column: 7, scope: !3038)
!3048 = !DILocation(line: 101, column: 18, scope: !3038)
!3049 = !DILocation(line: 101, column: 16, scope: !3038)
!3050 = !DILocation(line: 100, column: 7, scope: !3031)
!3051 = !DILocation(line: 102, column: 5, scope: !3038)
!3052 = !DILocation(line: 103, column: 3, scope: !3031)
!3053 = distinct !DISubprogram(name: "xmemdup", scope: !183, file: !183, line: 111, type: !3054, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !3058)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!33, !3056, !117}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3058 = !{!3059, !3060}
!3059 = !DILocalVariable(name: "p", arg: 1, scope: !3053, file: !183, line: 111, type: !3056)
!3060 = !DILocalVariable(name: "s", arg: 2, scope: !3053, file: !183, line: 111, type: !117)
!3061 = !DILocation(line: 0, scope: !3053)
!3062 = !DILocation(line: 0, scope: !2881, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 113, column: 18, scope: !3053)
!3064 = !DILocation(line: 41, column: 13, scope: !2881, inlinedAt: !3063)
!3065 = !DILocation(line: 42, column: 8, scope: !2890, inlinedAt: !3063)
!3066 = !DILocation(line: 42, column: 10, scope: !2890, inlinedAt: !3063)
!3067 = !DILocation(line: 43, column: 5, scope: !2890, inlinedAt: !3063)
!3068 = !DILocalVariable(name: "__dest", arg: 1, scope: !3069, file: !1650, line: 26, type: !3072)
!3069 = distinct !DISubprogram(name: "memcpy", scope: !1650, file: !1650, line: 26, type: !3070, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !3074)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!33, !3072, !3073, !117}
!3072 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!3073 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3056)
!3074 = !{!3068, !3075, !3076}
!3075 = !DILocalVariable(name: "__src", arg: 2, scope: !3069, file: !1650, line: 26, type: !3073)
!3076 = !DILocalVariable(name: "__len", arg: 3, scope: !3069, file: !1650, line: 26, type: !117)
!3077 = !DILocation(line: 0, scope: !3069, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 113, column: 10, scope: !3053)
!3079 = !DILocation(line: 29, column: 10, scope: !3069, inlinedAt: !3078)
!3080 = !DILocation(line: 113, column: 3, scope: !3053)
!3081 = distinct !DISubprogram(name: "xstrdup", scope: !183, file: !183, line: 119, type: !804, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !182, retainedNodes: !3082)
!3082 = !{!3083}
!3083 = !DILocalVariable(name: "string", arg: 1, scope: !3081, file: !183, line: 119, type: !30)
!3084 = !DILocation(line: 0, scope: !3081)
!3085 = !DILocation(line: 121, column: 27, scope: !3081)
!3086 = !DILocation(line: 121, column: 43, scope: !3081)
!3087 = !DILocation(line: 0, scope: !3053, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 121, column: 10, scope: !3081)
!3089 = !DILocation(line: 0, scope: !2881, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 113, column: 18, scope: !3053, inlinedAt: !3088)
!3091 = !DILocation(line: 41, column: 13, scope: !2881, inlinedAt: !3090)
!3092 = !DILocation(line: 42, column: 8, scope: !2890, inlinedAt: !3090)
!3093 = !DILocation(line: 42, column: 10, scope: !2890, inlinedAt: !3090)
!3094 = !DILocation(line: 43, column: 5, scope: !2890, inlinedAt: !3090)
!3095 = !DILocation(line: 0, scope: !3069, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 113, column: 10, scope: !3053, inlinedAt: !3088)
!3097 = !DILocation(line: 29, column: 10, scope: !3069, inlinedAt: !3096)
!3098 = !DILocation(line: 121, column: 3, scope: !3081)
!3099 = distinct !DISubprogram(name: "xalloc_die", scope: !200, file: !200, line: 32, type: !811, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !50)
!3100 = !DILocation(line: 34, column: 10, scope: !3099)
!3101 = !DILocation(line: 34, column: 33, scope: !3099)
!3102 = !DILocation(line: 34, column: 3, scope: !3099)
!3103 = !DILocation(line: 40, column: 3, scope: !3099)
!3104 = distinct !DISubprogram(name: "rpl_calloc", scope: !202, file: !202, line: 42, type: !2869, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !3105)
!3105 = !{!3106, !3107, !3108, !3109}
!3106 = !DILocalVariable(name: "n", arg: 1, scope: !3104, file: !202, line: 42, type: !117)
!3107 = !DILocalVariable(name: "s", arg: 2, scope: !3104, file: !202, line: 42, type: !117)
!3108 = !DILocalVariable(name: "result", scope: !3104, file: !202, line: 44, type: !33)
!3109 = !DILocalVariable(name: "bytes", scope: !3110, file: !202, line: 56, type: !117)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !202, line: 53, column: 5)
!3111 = distinct !DILexicalBlock(scope: !3104, file: !202, line: 47, column: 7)
!3112 = !DILocation(line: 0, scope: !3104)
!3113 = !DILocation(line: 47, column: 9, scope: !3111)
!3114 = !DILocation(line: 47, column: 14, scope: !3111)
!3115 = !DILocation(line: 0, scope: !3110)
!3116 = !DILocation(line: 57, column: 21, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3110, file: !202, line: 57, column: 11)
!3118 = !DILocation(line: 57, column: 11, scope: !3110)
!3119 = !DILocation(line: 59, column: 11, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3117, file: !202, line: 58, column: 9)
!3121 = !DILocation(line: 59, column: 17, scope: !3120)
!3122 = !DILocation(line: 65, column: 12, scope: !3104)
!3123 = !DILocation(line: 72, column: 3, scope: !3104)
!3124 = !DILocation(line: 73, column: 1, scope: !3104)
!3125 = distinct !DISubprogram(name: "rpl_fclose", scope: !204, file: !204, line: 58, type: !3126, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !203, retainedNodes: !3162)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!65, !3128}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !833, line: 7, baseType: !3130)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !696, line: 49, size: 1728, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3130, file: !696, line: 51, baseType: !65, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3130, file: !696, line: 54, baseType: !88, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3130, file: !696, line: 55, baseType: !88, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3130, file: !696, line: 56, baseType: !88, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3130, file: !696, line: 57, baseType: !88, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3130, file: !696, line: 58, baseType: !88, size: 64, offset: 320)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3130, file: !696, line: 59, baseType: !88, size: 64, offset: 384)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3130, file: !696, line: 60, baseType: !88, size: 64, offset: 448)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3130, file: !696, line: 61, baseType: !88, size: 64, offset: 512)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3130, file: !696, line: 64, baseType: !88, size: 64, offset: 576)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3130, file: !696, line: 65, baseType: !88, size: 64, offset: 640)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3130, file: !696, line: 66, baseType: !88, size: 64, offset: 704)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3130, file: !696, line: 68, baseType: !711, size: 64, offset: 768)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3130, file: !696, line: 70, baseType: !3146, size: 64, offset: 832)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3130, file: !696, line: 72, baseType: !65, size: 32, offset: 896)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3130, file: !696, line: 73, baseType: !65, size: 32, offset: 928)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3130, file: !696, line: 74, baseType: !717, size: 64, offset: 960)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3130, file: !696, line: 77, baseType: !116, size: 16, offset: 1024)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3130, file: !696, line: 78, baseType: !721, size: 8, offset: 1040)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3130, file: !696, line: 79, baseType: !723, size: 8, offset: 1048)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3130, file: !696, line: 81, baseType: !727, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3130, file: !696, line: 89, baseType: !730, size: 64, offset: 1152)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3130, file: !696, line: 91, baseType: !732, size: 64, offset: 1216)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3130, file: !696, line: 92, baseType: !735, size: 64, offset: 1280)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3130, file: !696, line: 93, baseType: !3146, size: 64, offset: 1344)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3130, file: !696, line: 94, baseType: !33, size: 64, offset: 1408)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3130, file: !696, line: 95, baseType: !117, size: 64, offset: 1472)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3130, file: !696, line: 96, baseType: !65, size: 32, offset: 1536)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3130, file: !696, line: 98, baseType: !742, size: 160, offset: 1568)
!3162 = !{!3163, !3164, !3165, !3166}
!3163 = !DILocalVariable(name: "fp", arg: 1, scope: !3125, file: !204, line: 58, type: !3128)
!3164 = !DILocalVariable(name: "saved_errno", scope: !3125, file: !204, line: 60, type: !65)
!3165 = !DILocalVariable(name: "fd", scope: !3125, file: !204, line: 61, type: !65)
!3166 = !DILocalVariable(name: "result", scope: !3125, file: !204, line: 62, type: !65)
!3167 = !DILocation(line: 0, scope: !3125)
!3168 = !DILocation(line: 65, column: 8, scope: !3125)
!3169 = !DILocation(line: 66, column: 10, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3125, file: !204, line: 66, column: 7)
!3171 = !DILocation(line: 66, column: 7, scope: !3125)
!3172 = !DILocation(line: 67, column: 12, scope: !3170)
!3173 = !DILocation(line: 67, column: 5, scope: !3170)
!3174 = !DILocation(line: 72, column: 9, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3125, file: !204, line: 72, column: 7)
!3176 = !DILocation(line: 72, column: 23, scope: !3175)
!3177 = !DILocation(line: 72, column: 33, scope: !3175)
!3178 = !DILocation(line: 72, column: 26, scope: !3175)
!3179 = !DILocation(line: 72, column: 59, scope: !3175)
!3180 = !DILocation(line: 73, column: 7, scope: !3175)
!3181 = !DILocation(line: 73, column: 10, scope: !3175)
!3182 = !DILocation(line: 72, column: 7, scope: !3125)
!3183 = !DILocation(line: 100, column: 12, scope: !3125)
!3184 = !DILocation(line: 105, column: 7, scope: !3125)
!3185 = !DILocation(line: 74, column: 19, scope: !3175)
!3186 = !DILocation(line: 105, column: 19, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3125, file: !204, line: 105, column: 7)
!3188 = !DILocation(line: 107, column: 13, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !204, line: 106, column: 5)
!3190 = !DILocation(line: 109, column: 5, scope: !3189)
!3191 = !DILocation(line: 112, column: 1, scope: !3125)
!3192 = !DISubprogram(name: "fclose", scope: !691, file: !691, line: 213, type: !3193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!65, !3146}
!3195 = !DISubprogram(name: "lseek", scope: !3196, file: !3196, line: 334, type: !3197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3196 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!718, !65, !718, !65}
!3199 = distinct !DISubprogram(name: "rpl_fflush", scope: !206, file: !206, line: 129, type: !3200, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3236)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!65, !3202}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !833, line: 7, baseType: !3204)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !696, line: 49, size: 1728, elements: !3205)
!3205 = !{!3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3204, file: !696, line: 51, baseType: !65, size: 32)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3204, file: !696, line: 54, baseType: !88, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3204, file: !696, line: 55, baseType: !88, size: 64, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3204, file: !696, line: 56, baseType: !88, size: 64, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3204, file: !696, line: 57, baseType: !88, size: 64, offset: 256)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3204, file: !696, line: 58, baseType: !88, size: 64, offset: 320)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3204, file: !696, line: 59, baseType: !88, size: 64, offset: 384)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3204, file: !696, line: 60, baseType: !88, size: 64, offset: 448)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3204, file: !696, line: 61, baseType: !88, size: 64, offset: 512)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3204, file: !696, line: 64, baseType: !88, size: 64, offset: 576)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3204, file: !696, line: 65, baseType: !88, size: 64, offset: 640)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3204, file: !696, line: 66, baseType: !88, size: 64, offset: 704)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3204, file: !696, line: 68, baseType: !711, size: 64, offset: 768)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3204, file: !696, line: 70, baseType: !3220, size: 64, offset: 832)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3204, file: !696, line: 72, baseType: !65, size: 32, offset: 896)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3204, file: !696, line: 73, baseType: !65, size: 32, offset: 928)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3204, file: !696, line: 74, baseType: !717, size: 64, offset: 960)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3204, file: !696, line: 77, baseType: !116, size: 16, offset: 1024)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3204, file: !696, line: 78, baseType: !721, size: 8, offset: 1040)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3204, file: !696, line: 79, baseType: !723, size: 8, offset: 1048)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3204, file: !696, line: 81, baseType: !727, size: 64, offset: 1088)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3204, file: !696, line: 89, baseType: !730, size: 64, offset: 1152)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3204, file: !696, line: 91, baseType: !732, size: 64, offset: 1216)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3204, file: !696, line: 92, baseType: !735, size: 64, offset: 1280)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3204, file: !696, line: 93, baseType: !3220, size: 64, offset: 1344)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3204, file: !696, line: 94, baseType: !33, size: 64, offset: 1408)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3204, file: !696, line: 95, baseType: !117, size: 64, offset: 1472)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3204, file: !696, line: 96, baseType: !65, size: 32, offset: 1536)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3204, file: !696, line: 98, baseType: !742, size: 160, offset: 1568)
!3236 = !{!3237}
!3237 = !DILocalVariable(name: "stream", arg: 1, scope: !3199, file: !206, line: 129, type: !3202)
!3238 = !DILocation(line: 0, scope: !3199)
!3239 = !DILocation(line: 150, column: 14, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3199, file: !206, line: 150, column: 7)
!3241 = !DILocation(line: 150, column: 22, scope: !3240)
!3242 = !DILocation(line: 150, column: 27, scope: !3240)
!3243 = !DILocation(line: 150, column: 7, scope: !3199)
!3244 = !DILocation(line: 151, column: 12, scope: !3240)
!3245 = !DILocation(line: 151, column: 5, scope: !3240)
!3246 = !DILocalVariable(name: "fp", arg: 1, scope: !3247, file: !206, line: 41, type: !3202)
!3247 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !206, file: !206, line: 41, type: !3248, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3250)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !3202}
!3250 = !{!3246}
!3251 = !DILocation(line: 0, scope: !3247, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 156, column: 3, scope: !3199)
!3253 = !DILocation(line: 43, column: 11, scope: !3254, inlinedAt: !3252)
!3254 = distinct !DILexicalBlock(scope: !3247, file: !206, line: 43, column: 7)
!3255 = !DILocation(line: 43, column: 18, scope: !3254, inlinedAt: !3252)
!3256 = !DILocation(line: 43, column: 7, scope: !3247, inlinedAt: !3252)
!3257 = !DILocation(line: 45, column: 5, scope: !3254, inlinedAt: !3252)
!3258 = !DILocation(line: 158, column: 10, scope: !3199)
!3259 = !DILocation(line: 158, column: 3, scope: !3199)
!3260 = !DILocation(line: 235, column: 1, scope: !3199)
!3261 = !DISubprogram(name: "fflush", scope: !691, file: !691, line: 218, type: !3262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!65, !3220}
!3264 = distinct !DISubprogram(name: "rpl_fseeko", scope: !208, file: !208, line: 28, type: !3265, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !207, retainedNodes: !3301)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!65, !3267, !1017, !65}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !833, line: 7, baseType: !3269)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !696, line: 49, size: 1728, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3269, file: !696, line: 51, baseType: !65, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3269, file: !696, line: 54, baseType: !88, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3269, file: !696, line: 55, baseType: !88, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3269, file: !696, line: 56, baseType: !88, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3269, file: !696, line: 57, baseType: !88, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3269, file: !696, line: 58, baseType: !88, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3269, file: !696, line: 59, baseType: !88, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3269, file: !696, line: 60, baseType: !88, size: 64, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3269, file: !696, line: 61, baseType: !88, size: 64, offset: 512)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3269, file: !696, line: 64, baseType: !88, size: 64, offset: 576)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3269, file: !696, line: 65, baseType: !88, size: 64, offset: 640)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3269, file: !696, line: 66, baseType: !88, size: 64, offset: 704)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3269, file: !696, line: 68, baseType: !711, size: 64, offset: 768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3269, file: !696, line: 70, baseType: !3285, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3269, file: !696, line: 72, baseType: !65, size: 32, offset: 896)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3269, file: !696, line: 73, baseType: !65, size: 32, offset: 928)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3269, file: !696, line: 74, baseType: !717, size: 64, offset: 960)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3269, file: !696, line: 77, baseType: !116, size: 16, offset: 1024)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3269, file: !696, line: 78, baseType: !721, size: 8, offset: 1040)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3269, file: !696, line: 79, baseType: !723, size: 8, offset: 1048)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3269, file: !696, line: 81, baseType: !727, size: 64, offset: 1088)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3269, file: !696, line: 89, baseType: !730, size: 64, offset: 1152)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3269, file: !696, line: 91, baseType: !732, size: 64, offset: 1216)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3269, file: !696, line: 92, baseType: !735, size: 64, offset: 1280)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3269, file: !696, line: 93, baseType: !3285, size: 64, offset: 1344)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3269, file: !696, line: 94, baseType: !33, size: 64, offset: 1408)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3269, file: !696, line: 95, baseType: !117, size: 64, offset: 1472)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3269, file: !696, line: 96, baseType: !65, size: 32, offset: 1536)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3269, file: !696, line: 98, baseType: !742, size: 160, offset: 1568)
!3301 = !{!3302, !3303, !3304, !3305}
!3302 = !DILocalVariable(name: "fp", arg: 1, scope: !3264, file: !208, line: 28, type: !3267)
!3303 = !DILocalVariable(name: "offset", arg: 2, scope: !3264, file: !208, line: 28, type: !1017)
!3304 = !DILocalVariable(name: "whence", arg: 3, scope: !3264, file: !208, line: 28, type: !65)
!3305 = !DILocalVariable(name: "pos", scope: !3306, file: !208, line: 117, type: !1017)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !208, line: 113, column: 5)
!3307 = distinct !DILexicalBlock(scope: !3264, file: !208, line: 52, column: 7)
!3308 = !DILocation(line: 0, scope: !3264)
!3309 = !DILocation(line: 52, column: 11, scope: !3307)
!3310 = !{!880, !625, i64 16}
!3311 = !DILocation(line: 52, column: 31, scope: !3307)
!3312 = !{!880, !625, i64 8}
!3313 = !DILocation(line: 52, column: 24, scope: !3307)
!3314 = !DILocation(line: 53, column: 7, scope: !3307)
!3315 = !DILocation(line: 53, column: 14, scope: !3307)
!3316 = !{!880, !625, i64 40}
!3317 = !DILocation(line: 53, column: 35, scope: !3307)
!3318 = !{!880, !625, i64 32}
!3319 = !DILocation(line: 53, column: 28, scope: !3307)
!3320 = !DILocation(line: 54, column: 7, scope: !3307)
!3321 = !DILocation(line: 54, column: 14, scope: !3307)
!3322 = !{!880, !625, i64 72}
!3323 = !DILocation(line: 54, column: 28, scope: !3307)
!3324 = !DILocation(line: 52, column: 7, scope: !3264)
!3325 = !DILocation(line: 117, column: 26, scope: !3306)
!3326 = !DILocation(line: 117, column: 19, scope: !3306)
!3327 = !DILocation(line: 0, scope: !3306)
!3328 = !DILocation(line: 118, column: 15, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3306, file: !208, line: 118, column: 11)
!3330 = !DILocation(line: 118, column: 11, scope: !3306)
!3331 = !DILocation(line: 129, column: 11, scope: !3306)
!3332 = !DILocation(line: 129, column: 18, scope: !3306)
!3333 = !DILocation(line: 130, column: 11, scope: !3306)
!3334 = !DILocation(line: 130, column: 19, scope: !3306)
!3335 = !{!880, !881, i64 144}
!3336 = !DILocation(line: 161, column: 7, scope: !3306)
!3337 = !DILocation(line: 163, column: 10, scope: !3264)
!3338 = !DILocation(line: 163, column: 3, scope: !3264)
!3339 = !DILocation(line: 164, column: 1, scope: !3264)
!3340 = !DISubprogram(name: "fseeko", scope: !691, file: !691, line: 712, type: !3341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!65, !3285, !718, !65}
!3343 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !210, file: !210, line: 86, type: !3344, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3358)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!117, !3346, !30, !117, !3347}
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1404, line: 6, baseType: !3349)
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1406, line: 21, baseType: !3350)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1406, line: 13, size: 64, elements: !3351)
!3351 = !{!3352, !3353}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3350, file: !1406, line: 15, baseType: !65, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3350, file: !1406, line: 20, baseType: !3354, size: 32, offset: 32)
!3354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3350, file: !1406, line: 16, size: 32, elements: !3355)
!3355 = !{!3356, !3357}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3354, file: !1406, line: 18, baseType: !7, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3354, file: !1406, line: 19, baseType: !1415, size: 32)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365}
!3359 = !DILocalVariable(name: "pwc", arg: 1, scope: !3343, file: !210, line: 86, type: !3346)
!3360 = !DILocalVariable(name: "s", arg: 2, scope: !3343, file: !210, line: 86, type: !30)
!3361 = !DILocalVariable(name: "n", arg: 3, scope: !3343, file: !210, line: 86, type: !117)
!3362 = !DILocalVariable(name: "ps", arg: 4, scope: !3343, file: !210, line: 86, type: !3347)
!3363 = !DILocalVariable(name: "ret", scope: !3343, file: !210, line: 88, type: !117)
!3364 = !DILocalVariable(name: "wc", scope: !3343, file: !210, line: 89, type: !1420)
!3365 = !DILocalVariable(name: "uc", scope: !3366, file: !210, line: 156, type: !824)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !210, line: 155, column: 5)
!3367 = distinct !DILexicalBlock(scope: !3343, file: !210, line: 154, column: 7)
!3368 = !DILocation(line: 0, scope: !3343)
!3369 = !DILocation(line: 89, column: 3, scope: !3343)
!3370 = !DILocation(line: 105, column: 9, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3343, file: !210, line: 105, column: 7)
!3372 = !DILocation(line: 105, column: 7, scope: !3343)
!3373 = !DILocation(line: 145, column: 9, scope: !3343)
!3374 = !DILocation(line: 154, column: 19, scope: !3367)
!3375 = !DILocation(line: 154, column: 26, scope: !3367)
!3376 = !DILocation(line: 154, column: 41, scope: !3367)
!3377 = !DILocation(line: 154, column: 7, scope: !3343)
!3378 = !DILocation(line: 156, column: 26, scope: !3366)
!3379 = !DILocation(line: 0, scope: !3366)
!3380 = !DILocation(line: 157, column: 14, scope: !3366)
!3381 = !DILocation(line: 157, column: 12, scope: !3366)
!3382 = !DILocation(line: 163, column: 1, scope: !3343)
!3383 = !DISubprogram(name: "mbrtowc", scope: !2083, file: !2083, line: 296, type: !3384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!42, !79, !30, !42, !3386}
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3387 = distinct !DISubprogram(name: "close_stream", scope: !213, file: !213, line: 56, type: !3388, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3424)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!65, !3390}
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !833, line: 7, baseType: !3392)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !696, line: 49, size: 1728, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3392, file: !696, line: 51, baseType: !65, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3392, file: !696, line: 54, baseType: !88, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3392, file: !696, line: 55, baseType: !88, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3392, file: !696, line: 56, baseType: !88, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3392, file: !696, line: 57, baseType: !88, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3392, file: !696, line: 58, baseType: !88, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3392, file: !696, line: 59, baseType: !88, size: 64, offset: 384)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3392, file: !696, line: 60, baseType: !88, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3392, file: !696, line: 61, baseType: !88, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3392, file: !696, line: 64, baseType: !88, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3392, file: !696, line: 65, baseType: !88, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3392, file: !696, line: 66, baseType: !88, size: 64, offset: 704)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3392, file: !696, line: 68, baseType: !711, size: 64, offset: 768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3392, file: !696, line: 70, baseType: !3408, size: 64, offset: 832)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3392, file: !696, line: 72, baseType: !65, size: 32, offset: 896)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3392, file: !696, line: 73, baseType: !65, size: 32, offset: 928)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3392, file: !696, line: 74, baseType: !717, size: 64, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3392, file: !696, line: 77, baseType: !116, size: 16, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3392, file: !696, line: 78, baseType: !721, size: 8, offset: 1040)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3392, file: !696, line: 79, baseType: !723, size: 8, offset: 1048)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3392, file: !696, line: 81, baseType: !727, size: 64, offset: 1088)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3392, file: !696, line: 89, baseType: !730, size: 64, offset: 1152)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3392, file: !696, line: 91, baseType: !732, size: 64, offset: 1216)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3392, file: !696, line: 92, baseType: !735, size: 64, offset: 1280)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3392, file: !696, line: 93, baseType: !3408, size: 64, offset: 1344)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3392, file: !696, line: 94, baseType: !33, size: 64, offset: 1408)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3392, file: !696, line: 95, baseType: !117, size: 64, offset: 1472)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3392, file: !696, line: 96, baseType: !65, size: 32, offset: 1536)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3392, file: !696, line: 98, baseType: !742, size: 160, offset: 1568)
!3424 = !{!3425, !3426, !3428, !3429}
!3425 = !DILocalVariable(name: "stream", arg: 1, scope: !3387, file: !213, line: 56, type: !3390)
!3426 = !DILocalVariable(name: "some_pending", scope: !3387, file: !213, line: 58, type: !3427)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!3428 = !DILocalVariable(name: "prev_fail", scope: !3387, file: !213, line: 59, type: !3427)
!3429 = !DILocalVariable(name: "fclose_fail", scope: !3387, file: !213, line: 60, type: !3427)
!3430 = !DILocation(line: 0, scope: !3387)
!3431 = !DILocation(line: 58, column: 30, scope: !3387)
!3432 = !DILocalVariable(name: "__stream", arg: 1, scope: !3433, file: !872, line: 135, type: !3390)
!3433 = distinct !DISubprogram(name: "ferror_unlocked", scope: !872, file: !872, line: 135, type: !3388, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !3434)
!3434 = !{!3432}
!3435 = !DILocation(line: 0, scope: !3433, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 59, column: 27, scope: !3387)
!3437 = !DILocation(line: 137, column: 10, scope: !3433, inlinedAt: !3436)
!3438 = !DILocation(line: 59, column: 43, scope: !3387)
!3439 = !DILocation(line: 60, column: 29, scope: !3387)
!3440 = !DILocation(line: 60, column: 45, scope: !3387)
!3441 = !DILocation(line: 70, column: 17, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3387, file: !213, line: 70, column: 7)
!3443 = !DILocation(line: 58, column: 50, scope: !3387)
!3444 = !DILocation(line: 70, column: 33, scope: !3442)
!3445 = !DILocation(line: 70, column: 53, scope: !3442)
!3446 = !DILocation(line: 70, column: 59, scope: !3442)
!3447 = !DILocation(line: 70, column: 7, scope: !3387)
!3448 = !DILocation(line: 72, column: 11, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3442, file: !213, line: 71, column: 5)
!3450 = !DILocation(line: 73, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !213, line: 72, column: 11)
!3452 = !DILocation(line: 73, column: 15, scope: !3451)
!3453 = !DILocation(line: 78, column: 1, scope: !3387)
!3454 = distinct !DISubprogram(name: "hard_locale", scope: !215, file: !215, line: 27, type: !3455, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !214, retainedNodes: !3457)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!45, !65}
!3457 = !{!3458, !3459}
!3458 = !DILocalVariable(name: "category", arg: 1, scope: !3454, file: !215, line: 27, type: !65)
!3459 = !DILocalVariable(name: "locale", scope: !3454, file: !215, line: 29, type: !3460)
!3460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2056, elements: !3461)
!3461 = !{!3462}
!3462 = !DISubrange(count: 257)
!3463 = !DILocation(line: 0, scope: !3454)
!3464 = !DILocation(line: 29, column: 3, scope: !3454)
!3465 = !DILocation(line: 29, column: 8, scope: !3454)
!3466 = !DILocation(line: 31, column: 7, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3454, file: !215, line: 31, column: 7)
!3468 = !DILocation(line: 31, column: 7, scope: !3454)
!3469 = !DILocation(line: 34, column: 12, scope: !3454)
!3470 = !DILocation(line: 34, column: 38, scope: !3454)
!3471 = !DILocation(line: 34, column: 41, scope: !3454)
!3472 = !DILocation(line: 34, column: 66, scope: !3454)
!3473 = !DILocation(line: 35, column: 1, scope: !3454)
!3474 = distinct !DISubprogram(name: "locale_charset", scope: !217, file: !217, line: 831, type: !3475, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!30}
!3477 = !{!3478}
!3478 = !DILocalVariable(name: "codeset", scope: !3474, file: !217, line: 833, type: !30)
!3479 = !DILocation(line: 847, column: 13, scope: !3474)
!3480 = !DILocation(line: 0, scope: !3474)
!3481 = !DILocation(line: 911, column: 15, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3474, file: !217, line: 911, column: 7)
!3483 = !DILocation(line: 911, column: 7, scope: !3474)
!3484 = !DILocation(line: 1070, column: 13, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !217, line: 1070, column: 13)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !217, line: 1060, column: 7)
!3487 = distinct !DILexicalBlock(scope: !3474, file: !217, line: 1019, column: 3)
!3488 = !DILocation(line: 1070, column: 24, scope: !3485)
!3489 = !DILocation(line: 1070, column: 13, scope: !3486)
!3490 = !DILocation(line: 1158, column: 3, scope: !3474)
!3491 = !DISubprogram(name: "nl_langinfo", scope: !220, file: !220, line: 661, type: !3492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !50)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!88, !65}
!3494 = distinct !DISubprogram(name: "setlocale_null_r", scope: !606, file: !606, line: 269, type: !3495, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!65, !65, !88, !117}
!3497 = !{!3498, !3499, !3500}
!3498 = !DILocalVariable(name: "category", arg: 1, scope: !3494, file: !606, line: 269, type: !65)
!3499 = !DILocalVariable(name: "buf", arg: 2, scope: !3494, file: !606, line: 269, type: !88)
!3500 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3494, file: !606, line: 269, type: !117)
!3501 = !DILocation(line: 0, scope: !3494)
!3502 = !DILocalVariable(name: "category", arg: 1, scope: !3503, file: !606, line: 91, type: !65)
!3503 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !606, file: !606, line: 91, type: !3495, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !3504)
!3504 = !{!3502, !3505, !3506, !3507, !3508}
!3505 = !DILocalVariable(name: "buf", arg: 2, scope: !3503, file: !606, line: 91, type: !88)
!3506 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3503, file: !606, line: 91, type: !117)
!3507 = !DILocalVariable(name: "result", scope: !3503, file: !606, line: 140, type: !30)
!3508 = !DILocalVariable(name: "length", scope: !3509, file: !606, line: 154, type: !117)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !606, line: 153, column: 5)
!3510 = distinct !DILexicalBlock(scope: !3503, file: !606, line: 142, column: 7)
!3511 = !DILocation(line: 0, scope: !3503, inlinedAt: !3512)
!3512 = distinct !DILocation(line: 274, column: 10, scope: !3494)
!3513 = !DILocalVariable(name: "category", arg: 1, scope: !3514, file: !606, line: 60, type: !65)
!3514 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !606, file: !606, line: 60, type: !3515, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!30, !65}
!3517 = !{!3513, !3518}
!3518 = !DILocalVariable(name: "result", scope: !3514, file: !606, line: 62, type: !30)
!3519 = !DILocation(line: 0, scope: !3514, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 140, column: 24, scope: !3503, inlinedAt: !3512)
!3521 = !DILocation(line: 62, column: 24, scope: !3514, inlinedAt: !3520)
!3522 = !DILocation(line: 142, column: 14, scope: !3510, inlinedAt: !3512)
!3523 = !DILocation(line: 142, column: 7, scope: !3503, inlinedAt: !3512)
!3524 = !DILocation(line: 145, column: 19, scope: !3525, inlinedAt: !3512)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !606, line: 145, column: 11)
!3526 = distinct !DILexicalBlock(scope: !3510, file: !606, line: 143, column: 5)
!3527 = !DILocation(line: 145, column: 11, scope: !3526, inlinedAt: !3512)
!3528 = !DILocation(line: 149, column: 16, scope: !3525, inlinedAt: !3512)
!3529 = !DILocation(line: 149, column: 9, scope: !3525, inlinedAt: !3512)
!3530 = !DILocation(line: 154, column: 23, scope: !3509, inlinedAt: !3512)
!3531 = !DILocation(line: 0, scope: !3509, inlinedAt: !3512)
!3532 = !DILocation(line: 155, column: 18, scope: !3533, inlinedAt: !3512)
!3533 = distinct !DILexicalBlock(scope: !3509, file: !606, line: 155, column: 11)
!3534 = !DILocation(line: 155, column: 11, scope: !3509, inlinedAt: !3512)
!3535 = !DILocation(line: 157, column: 39, scope: !3536, inlinedAt: !3512)
!3536 = distinct !DILexicalBlock(scope: !3533, file: !606, line: 156, column: 9)
!3537 = !DILocalVariable(name: "__dest", arg: 1, scope: !3538, file: !1650, line: 26, type: !3072)
!3538 = distinct !DISubprogram(name: "memcpy", scope: !1650, file: !1650, line: 26, type: !3070, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !3539)
!3539 = !{!3537, !3540, !3541}
!3540 = !DILocalVariable(name: "__src", arg: 2, scope: !3538, file: !1650, line: 26, type: !3073)
!3541 = !DILocalVariable(name: "__len", arg: 3, scope: !3538, file: !1650, line: 26, type: !117)
!3542 = !DILocation(line: 0, scope: !3538, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 157, column: 11, scope: !3536, inlinedAt: !3512)
!3544 = !DILocation(line: 29, column: 10, scope: !3538, inlinedAt: !3543)
!3545 = !DILocation(line: 158, column: 11, scope: !3536, inlinedAt: !3512)
!3546 = !DILocation(line: 162, column: 23, scope: !3547, inlinedAt: !3512)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !606, line: 162, column: 15)
!3548 = distinct !DILexicalBlock(scope: !3533, file: !606, line: 161, column: 9)
!3549 = !DILocation(line: 162, column: 15, scope: !3548, inlinedAt: !3512)
!3550 = !DILocation(line: 167, column: 44, scope: !3551, inlinedAt: !3512)
!3551 = distinct !DILexicalBlock(scope: !3547, file: !606, line: 163, column: 13)
!3552 = !DILocation(line: 0, scope: !3538, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 167, column: 15, scope: !3551, inlinedAt: !3512)
!3554 = !DILocation(line: 29, column: 10, scope: !3538, inlinedAt: !3553)
!3555 = !DILocation(line: 168, column: 15, scope: !3551, inlinedAt: !3512)
!3556 = !DILocation(line: 168, column: 32, scope: !3551, inlinedAt: !3512)
!3557 = !DILocation(line: 169, column: 13, scope: !3551, inlinedAt: !3512)
!3558 = !DILocation(line: 0, scope: !3510, inlinedAt: !3512)
!3559 = !DILocation(line: 274, column: 3, scope: !3494)
!3560 = distinct !DISubprogram(name: "setlocale_null", scope: !606, file: !606, line: 301, type: !3515, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !605, retainedNodes: !3561)
!3561 = !{!3562}
!3562 = !DILocalVariable(name: "category", arg: 1, scope: !3560, file: !606, line: 301, type: !65)
!3563 = !DILocation(line: 0, scope: !3560)
!3564 = !DILocation(line: 0, scope: !3514, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 304, column: 10, scope: !3560)
!3566 = !DILocation(line: 62, column: 24, scope: !3514, inlinedAt: !3565)
!3567 = !DILocation(line: 304, column: 3, scope: !3560)
