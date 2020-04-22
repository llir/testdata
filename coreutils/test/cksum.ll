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
@crctab = internal unnamed_addr constant [256 x i64] [i64 0, i64 79764919, i64 159529838, i64 222504665, i64 319059676, i64 398814059, i64 445009330, i64 507990021, i64 638119352, i64 583659535, i64 797628118, i64 726387553, i64 890018660, i64 835552979, i64 1015980042, i64 944750013, i64 1276238704, i64 1221641927, i64 1167319070, i64 1095957929, i64 1595256236, i64 1540665371, i64 1452775106, i64 1381403509, i64 1780037320, i64 1859660671, i64 1671105958, i64 1733955601, i64 2031960084, i64 2111593891, i64 1889500026, i64 1952343757, i64 2552477408, i64 2632100695, i64 2443283854, i64 2506133561, i64 2334638140, i64 2414271883, i64 2191915858, i64 2254759653, i64 3190512472, i64 3135915759, i64 3081330742, i64 3009969537, i64 2905550212, i64 2850959411, i64 2762807018, i64 2691435357, i64 3560074640, i64 3505614887, i64 3719321342, i64 3648080713, i64 3342211916, i64 3287746299, i64 3467911202, i64 3396681109, i64 4063920168, i64 4143685023, i64 4223187782, i64 4286162673, i64 3779000052, i64 3858754371, i64 3904687514, i64 3967668269, i64 881225847, i64 809987520, i64 1023691545, i64 969234094, i64 662832811, i64 591600412, i64 771767749, i64 717299826, i64 311336399, i64 374308984, i64 453813921, i64 533576470, i64 25881363, i64 88864420, i64 134795389, i64 214552010, i64 2023205639, i64 2086057648, i64 1897238633, i64 1976864222, i64 1804852699, i64 1867694188, i64 1645340341, i64 1724971778, i64 1587496639, i64 1516133128, i64 1461550545, i64 1406951526, i64 1302016099, i64 1230646740, i64 1142491917, i64 1087903418, i64 2896545431, i64 2825181984, i64 2770861561, i64 2716262478, i64 3215044683, i64 3143675388, i64 3055782693, i64 3001194130, i64 2326604591, i64 2389456536, i64 2200899649, i64 2280525302, i64 2578013683, i64 2640855108, i64 2418763421, i64 2498394922, i64 3769900519, i64 3832873040, i64 3912640137, i64 3992402750, i64 4088425275, i64 4151408268, i64 4197601365, i64 4277358050, i64 3334271071, i64 3263032808, i64 3476998961, i64 3422541446, i64 3585640067, i64 3514407732, i64 3694837229, i64 3640369242, i64 1762451694, i64 1842216281, i64 1619975040, i64 1682949687, i64 2047383090, i64 2127137669, i64 1938468188, i64 2001449195, i64 1325665622, i64 1271206113, i64 1183200824, i64 1111960463, i64 1543535498, i64 1489069629, i64 1434599652, i64 1363369299, i64 622672798, i64 568075817, i64 748617968, i64 677256519, i64 907627842, i64 853037301, i64 1067152940, i64 995781531, i64 51762726, i64 131386257, i64 177728840, i64 240578815, i64 269590778, i64 349224269, i64 429104020, i64 491947555, i64 4046411278, i64 4126034873, i64 4172115296, i64 4234965207, i64 3794477266, i64 3874110821, i64 3953728444, i64 4016571915, i64 3609705398, i64 3555108353, i64 3735388376, i64 3664026991, i64 3290680682, i64 3236090077, i64 3449943556, i64 3378572211, i64 3174993278, i64 3120533705, i64 3032266256, i64 2961025959, i64 2923101090, i64 2868635157, i64 2813903052, i64 2742672763, i64 2604032198, i64 2683796849, i64 2461293480, i64 2524268063, i64 2284983834, i64 2364738477, i64 2175806836, i64 2238787779, i64 1569362073, i64 1498123566, i64 1409854455, i64 1355396672, i64 1317987909, i64 1246755826, i64 1192025387, i64 1137557660, i64 2072149281, i64 2135122070, i64 1912620623, i64 1992383480, i64 1753615357, i64 1816598090, i64 1627664531, i64 1707420964, i64 295390185, i64 358241886, i64 404320391, i64 483945776, i64 43990325, i64 106832002, i64 186451547, i64 266083308, i64 932423249, i64 861060070, i64 1041341759, i64 986742920, i64 613929101, i64 542559546, i64 756411363, i64 701822548, i64 3316196985, i64 3244833742, i64 3425377559, i64 3370778784, i64 3601682597, i64 3530312978, i64 3744426955, i64 3689838204, i64 3819031489, i64 3881883254, i64 3928223919, i64 4007849240, i64 4037393693, i64 4100235434, i64 4180117107, i64 4259748804, i64 2310601993, i64 2373574846, i64 2151335527, i64 2231098320, i64 2596047829, i64 2659030626, i64 2470359227, i64 2550115596, i64 2947551409, i64 2876312838, i64 2788305887, i64 2733848168, i64 3165939309, i64 3094707162, i64 3040238851, i64 2985771188], align 16, !dbg !154
@.str.29 = private unnamed_addr constant [18 x i8] c"%s: file too long\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%u %s %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%u %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"-: %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !162
@.str.34 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !167
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !210
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !212
@opterr = external local_unnamed_addr global i32, align 4
@.str.46 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.47, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.48, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !218
@.str.2.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !285
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !326
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !423
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !429
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !431
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !436
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !443
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !433
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !445
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !451
@.str.1.115 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.135 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) #0 !dbg !1168 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1171, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 %0, metadata !1170, metadata !DIExpression()), !dbg !1192
  %3 = icmp eq i32 %0, 0, !dbg !1193
  br i1 %3, label %9, label %4, !dbg !1194

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1195, !tbaa !1197
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !1195
  %7 = load i8*, i8** @program_name, align 8, !dbg !1195, !tbaa !1197
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !1195
  br label %58, !dbg !1195

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !1201
  %11 = load i8*, i8** @program_name, align 8, !dbg !1201, !tbaa !1197
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #12, !dbg !1201
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !1202
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1202, !tbaa !1197
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1202
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !1203
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1203, !tbaa !1197
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1203
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !1204
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1204, !tbaa !1197
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1204
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !1175, metadata !DIExpression()) #12, !dbg !1205
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1206
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1206
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %22, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !1188
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !1176, metadata !DIExpression()) #12, !dbg !1205
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1177, metadata !DIExpression()) #12, !dbg !1205
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1207
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !1177, metadata !DIExpression()) #12, !dbg !1205
  br label %24, !dbg !1208

24:                                               ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1177, metadata !DIExpression()) #12, !dbg !1205
  %27 = tail call i32 @strcmp(i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #21, !dbg !1209
  %28 = icmp eq i32 %27, 0, !dbg !1209
  br i1 %28, label %34, label %29, !dbg !1208

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !1210
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !1177, metadata !DIExpression()) #12, !dbg !1205
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !1211
  %32 = load i8*, i8** %31, align 8, !dbg !1211, !tbaa !1212
  %33 = icmp eq i8* %32, null, !dbg !1214
  br i1 %33, label %34, label %24, !dbg !1215, !llvm.loop !1216

34:                                               ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1177, metadata !DIExpression()) #12, !dbg !1205
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !1177, metadata !DIExpression()) #12, !dbg !1205
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !1217
  %37 = load i8*, i8** %36, align 8, !dbg !1217, !tbaa !1219
  %38 = icmp eq i8* %37, null, !dbg !1220
  %39 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %39, metadata !1176, metadata !DIExpression()) #12, !dbg !1205
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #12, !dbg !1222
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #12, !dbg !1222
  %42 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %42, metadata !1184, metadata !DIExpression()) #12, !dbg !1205
  %43 = icmp eq i8* %42, null, !dbg !1224
  br i1 %43, label %51, label %44, !dbg !1226

44:                                               ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #21, !dbg !1227
  %46 = icmp eq i32 %45, 0, !dbg !1227
  br i1 %46, label %51, label %47, !dbg !1228

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !1229
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1229, !tbaa !1197
  %50 = tail call i32 @fputs_unlocked(i8* %48, %struct._IO_FILE* %49) #12, !dbg !1229
  br label %51, !dbg !1231

51:                                               ; preds = %34, %44, %47
  %52 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !1232
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #12, !dbg !1232
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !1233
  %55 = icmp eq i8* %39, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), !dbg !1233
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !1233
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* %39, i8* %56) #12, !dbg !1233
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #12, !dbg !1234
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 %0) #22, !dbg !1235
  unreachable, !dbg !1235
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !30 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !40 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !105 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1240, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8** %1, metadata !1241, metadata !DIExpression()), !dbg !1244
  %3 = load i8*, i8** %1, align 8, !dbg !1245, !tbaa !1197
  tail call void @set_program_name(i8* %3) #12, !dbg !1246
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #12, !dbg !1247
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !1248
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #12, !dbg !1249
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !1250
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1251, !tbaa !1197
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #12, !dbg !1252
  %10 = load i8*, i8** @Version, align 8, !dbg !1253, !tbaa !1197
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %10, i1 zeroext true, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #12, !dbg !1254
  store i1 false, i1* @have_read_stdin, align 1, !dbg !1255
  %11 = load i32, i32* @optind, align 4, !dbg !1256, !tbaa !1258
  %12 = icmp eq i32 %11, %0, !dbg !1260
  br i1 %12, label %17, label %13, !dbg !1261

13:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i8 1, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 %11, metadata !1242, metadata !DIExpression()), !dbg !1244
  %14 = icmp slt i32 %11, %0, !dbg !1262
  br i1 %14, label %15, label %41, !dbg !1266

15:                                               ; preds = %13
  %16 = sext i32 %11 to i64, !dbg !1266
  br label %20, !dbg !1266

17:                                               ; preds = %2
  %18 = tail call fastcc zeroext i1 @cksum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i1 zeroext false), !dbg !1267
  %19 = zext i1 %18 to i8, !dbg !1268
  call void @llvm.dbg.value(metadata i8 %19, metadata !1243, metadata !DIExpression()), !dbg !1244
  br label %31, !dbg !1269

20:                                               ; preds = %20, %15
  %21 = phi i64 [ %16, %15 ], [ %28, %20 ]
  %22 = phi i8 [ 1, %15 ], [ %27, %20 ]
  call void @llvm.dbg.value(metadata i8 %22, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %21, metadata !1242, metadata !DIExpression()), !dbg !1244
  %23 = getelementptr inbounds i8*, i8** %1, i64 %21, !dbg !1270
  %24 = load i8*, i8** %23, align 8, !dbg !1270, !tbaa !1197
  %25 = tail call fastcc zeroext i1 @cksum(i8* %24, i1 zeroext true), !dbg !1271
  %26 = zext i1 %25 to i8, !dbg !1271
  %27 = and i8 %22, %26, !dbg !1272
  call void @llvm.dbg.value(metadata i8 %27, metadata !1243, metadata !DIExpression()), !dbg !1244
  %28 = add nsw i64 %21, 1, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %28, metadata !1242, metadata !DIExpression()), !dbg !1244
  %29 = trunc i64 %28 to i32, !dbg !1262
  %30 = icmp eq i32 %29, %0, !dbg !1262
  br i1 %30, label %31, label %20, !dbg !1266, !llvm.loop !1274

31:                                               ; preds = %20, %17
  %32 = phi i8 [ %19, %17 ], [ %27, %20 ]
  %33 = load i1, i1* @have_read_stdin, align 1, !dbg !1276
  call void @llvm.dbg.value(metadata i8 %32, metadata !1243, metadata !DIExpression()), !dbg !1244
  br i1 %33, label %34, label %41, !dbg !1278

34:                                               ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1279, !tbaa !1197
  %36 = tail call i32 @rpl_fclose(%struct._IO_FILE* %35) #12, !dbg !1280
  %37 = icmp eq i32 %36, -1, !dbg !1281
  br i1 %37, label %38, label %41, !dbg !1282

38:                                               ; preds = %34
  %39 = tail call i32* @__errno_location() #23, !dbg !1283
  %40 = load i32, i32* %39, align 4, !dbg !1283, !tbaa !1258
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #12, !dbg !1283
  unreachable, !dbg !1283

41:                                               ; preds = %13, %34, %31
  %42 = phi i8 [ %32, %34 ], [ %32, %31 ], [ 1, %13 ]
  %43 = xor i8 %42, 1, !dbg !1284
  %44 = zext i8 %43 to i32, !dbg !1284
  ret i32 %44, !dbg !1285
}

; Function Attrs: nounwind
declare !dbg !109 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !112 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !115 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !122 i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cksum(i8* %0, i1 zeroext %1) unnamed_addr #8 !dbg !1286 {
  %3 = alloca [65536 x i8], align 16
  %4 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !1290, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i1 %1, metadata !1291, metadata !DIExpression()), !dbg !1312
  %5 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 0, !dbg !1313
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %5) #12, !dbg !1313
  call void @llvm.dbg.declare(metadata [65536 x i8]* %3, metadata !1292, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i64 0, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 0, metadata !1298, metadata !DIExpression()), !dbg !1312
  %6 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0, !dbg !1315
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %6) #12, !dbg !1315
  call void @llvm.dbg.declare(metadata [21 x i8]* %4, metadata !1304, metadata !DIExpression()), !dbg !1316
  %7 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #21, !dbg !1317
  %8 = icmp eq i32 %7, 0, !dbg !1317
  br i1 %8, label %9, label %11, !dbg !1319

9:                                                ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1320, !tbaa !1197
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !1300, metadata !DIExpression()), !dbg !1312
  store i1 true, i1* @have_read_stdin, align 1, !dbg !1322
  br label %18, !dbg !1323

11:                                               ; preds = %2
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)), !dbg !1324
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !1300, metadata !DIExpression()), !dbg !1312
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !1326
  br i1 %13, label %14, label %18, !dbg !1328

14:                                               ; preds = %11
  %15 = tail call i32* @__errno_location() #23, !dbg !1329
  %16 = load i32, i32* %15, align 4, !dbg !1329, !tbaa !1258
  %17 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1331
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %17) #12, !dbg !1332
  br label %143, !dbg !1333

18:                                               ; preds = %11, %9
  %19 = phi %struct._IO_FILE* [ %10, %9 ], [ %12, %11 ], !dbg !1334
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1300, metadata !DIExpression()), !dbg !1312
  tail call void @fadvise(%struct._IO_FILE* %19, i32 2) #12, !dbg !1335
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %19, i64 0, i32 0, !dbg !1336
  %21 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 1, !dbg !1345
  br label %22, !dbg !1346

22:                                               ; preds = %81, %18
  %23 = phi i64 [ 0, %18 ], [ %82, %81 ], !dbg !1347
  %24 = phi i64 [ 0, %18 ], [ %30, %81 ], !dbg !1312
  call void @llvm.dbg.value(metadata i64 %24, metadata !1298, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %23, metadata !1297, metadata !DIExpression()), !dbg !1312
  %25 = call i64 @fread_unlocked(i8* nonnull %5, i64 1, i64 65536, %struct._IO_FILE* %19), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %25, metadata !1299, metadata !DIExpression()), !dbg !1312
  %26 = icmp eq i64 %25, 0, !dbg !1349
  br i1 %26, label %27, label %29, !dbg !1346

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %23, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %24, metadata !1298, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %23, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %24, metadata !1298, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %23, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %24, metadata !1298, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %23, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %24, metadata !1298, metadata !DIExpression()), !dbg !1312
  %28 = load i32, i32* %20, align 8, !dbg !1350, !tbaa !1356
  br label %86, !dbg !1346

29:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8* %5, metadata !1309, metadata !DIExpression()), !dbg !1345
  %30 = add i64 %25, %24, !dbg !1360
  %31 = icmp ult i64 %30, %24, !dbg !1362
  br i1 %31, label %52, label %32, !dbg !1363

32:                                               ; preds = %29
  %33 = and i64 %25, 1, !dbg !1364
  %34 = icmp eq i64 %33, 0, !dbg !1364
  br i1 %34, label %46, label %35, !dbg !1364

35:                                               ; preds = %32
  call void @llvm.dbg.value(metadata i8* %5, metadata !1309, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %25, metadata !1299, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %23, metadata !1297, metadata !DIExpression()), !dbg !1312
  %36 = add i64 %25, -1, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %36, metadata !1299, metadata !DIExpression()), !dbg !1312
  %37 = shl i64 %23, 8, !dbg !1366
  %38 = lshr i64 %23, 24, !dbg !1367
  call void @llvm.dbg.value(metadata i8* %21, metadata !1309, metadata !DIExpression()), !dbg !1345
  %39 = load i8, i8* %5, align 16, !dbg !1368, !tbaa !1369
  %40 = zext i8 %39 to i64, !dbg !1368
  %41 = and i64 %38, 255, !dbg !1370
  %42 = xor i64 %41, %40, !dbg !1370
  %43 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %42, !dbg !1371
  %44 = load i64, i64* %43, align 8, !dbg !1371, !tbaa !1372
  %45 = xor i64 %44, %37, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %45, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %36, metadata !1299, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1312
  br label %46, !dbg !1364

46:                                               ; preds = %35, %32
  %47 = phi i64 [ %45, %35 ], [ undef, %32 ]
  %48 = phi i8* [ %21, %35 ], [ %5, %32 ]
  %49 = phi i64 [ %36, %35 ], [ %25, %32 ]
  %50 = phi i64 [ %45, %35 ], [ %23, %32 ]
  %51 = icmp eq i64 %25, 1, !dbg !1364
  br i1 %51, label %81, label %55, !dbg !1364

52:                                               ; preds = %29
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 5) #12, !dbg !1374
  %54 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1374
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %53, i8* %54) #12, !dbg !1374
  unreachable, !dbg !1374

55:                                               ; preds = %46, %55
  %56 = phi i8* [ %72, %55 ], [ %48, %46 ]
  %57 = phi i64 [ %69, %55 ], [ %49, %46 ]
  %58 = phi i64 [ %79, %55 ], [ %50, %46 ]
  call void @llvm.dbg.value(metadata i8* %56, metadata !1309, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %57, metadata !1299, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %58, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %57, metadata !1299, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1312
  %59 = shl i64 %58, 8, !dbg !1366
  %60 = lshr i64 %58, 24, !dbg !1367
  %61 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %61, metadata !1309, metadata !DIExpression()), !dbg !1345
  %62 = load i8, i8* %56, align 1, !dbg !1368, !tbaa !1369
  %63 = zext i8 %62 to i64, !dbg !1368
  %64 = and i64 %60, 255, !dbg !1370
  %65 = xor i64 %64, %63, !dbg !1370
  %66 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %65, !dbg !1371
  %67 = load i64, i64* %66, align 8, !dbg !1371, !tbaa !1372
  %68 = xor i64 %67, %59, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %68, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %57, metadata !1299, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %57, metadata !1299, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1312
  %69 = add i64 %57, -2, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %69, metadata !1299, metadata !DIExpression()), !dbg !1312
  %70 = shl i64 %68, 8, !dbg !1366
  %71 = lshr i64 %68, 24, !dbg !1367
  %72 = getelementptr inbounds i8, i8* %56, i64 2, !dbg !1375
  call void @llvm.dbg.value(metadata i8* %72, metadata !1309, metadata !DIExpression()), !dbg !1345
  %73 = load i8, i8* %61, align 1, !dbg !1368, !tbaa !1369
  %74 = zext i8 %73 to i64, !dbg !1368
  %75 = and i64 %71, 255, !dbg !1370
  %76 = xor i64 %75, %74, !dbg !1370
  %77 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %76, !dbg !1371
  %78 = load i64, i64* %77, align 8, !dbg !1371, !tbaa !1372
  %79 = xor i64 %78, %70, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %79, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %69, metadata !1299, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1312
  %80 = icmp eq i64 %69, 0, !dbg !1364
  br i1 %80, label %81, label %55, !dbg !1364, !llvm.loop !1376

81:                                               ; preds = %55, %46
  %82 = phi i64 [ %47, %46 ], [ %79, %55 ], !dbg !1373
  call void @llvm.dbg.value(metadata i64 %82, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1342, metadata !DIExpression()), !dbg !1336
  %83 = load i32, i32* %20, align 8, !dbg !1378, !tbaa !1356
  %84 = and i32 %83, 16, !dbg !1378
  %85 = icmp eq i32 %84, 0, !dbg !1379
  br i1 %85, label %22, label %86, !llvm.loop !1380

86:                                               ; preds = %81, %27
  %87 = phi i32 [ %28, %27 ], [ %83, %81 ], !dbg !1350
  %88 = phi i64 [ %23, %27 ], [ %82, %81 ], !dbg !1347
  %89 = phi i64 [ %24, %27 ], [ %30, %81 ], !dbg !1312
  call void @llvm.dbg.value(metadata i64 %89, metadata !1298, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %88, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !1353, metadata !DIExpression()), !dbg !1382
  %90 = and i32 %87, 32, !dbg !1350
  %91 = icmp eq i32 %90, 0, !dbg !1383
  br i1 %91, label %100, label %92, !dbg !1384

92:                                               ; preds = %86
  %93 = tail call i32* @__errno_location() #23, !dbg !1385
  %94 = load i32, i32* %93, align 4, !dbg !1385, !tbaa !1258
  %95 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1387
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %95) #12, !dbg !1388
  %96 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #21, !dbg !1389
  %97 = icmp eq i32 %96, 0, !dbg !1389
  br i1 %97, label %143, label %98, !dbg !1391

98:                                               ; preds = %92
  %99 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %19) #12, !dbg !1392
  br label %143, !dbg !1392

100:                                              ; preds = %86
  %101 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #21, !dbg !1393
  %102 = icmp eq i32 %101, 0, !dbg !1393
  br i1 %102, label %110, label %103, !dbg !1395

103:                                              ; preds = %100
  %104 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %19) #12, !dbg !1396
  %105 = icmp eq i32 %104, -1, !dbg !1397
  br i1 %105, label %106, label %110, !dbg !1398

106:                                              ; preds = %103
  %107 = tail call i32* @__errno_location() #23, !dbg !1399
  %108 = load i32, i32* %107, align 4, !dbg !1399, !tbaa !1258
  %109 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1401
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %109) #12, !dbg !1402
  br label %143, !dbg !1403

110:                                              ; preds = %103, %100
  %111 = call i8* @umaxtostr(i64 %89, i8* nonnull %6) #12, !dbg !1404
  call void @llvm.dbg.value(metadata i8* %111, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %89, metadata !1298, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %88, metadata !1297, metadata !DIExpression()), !dbg !1312
  %112 = icmp eq i64 %89, 0, !dbg !1405
  br i1 %112, label %125, label %113, !dbg !1405

113:                                              ; preds = %110, %113
  %114 = phi i64 [ %123, %113 ], [ %89, %110 ]
  %115 = phi i64 [ %122, %113 ], [ %88, %110 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !1298, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %115, metadata !1297, metadata !DIExpression()), !dbg !1312
  %116 = shl i64 %115, 8, !dbg !1407
  %117 = lshr i64 %115, 24, !dbg !1409
  %118 = xor i64 %117, %114, !dbg !1410
  %119 = and i64 %118, 255, !dbg !1411
  %120 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %119, !dbg !1412
  %121 = load i64, i64* %120, align 8, !dbg !1412, !tbaa !1372
  %122 = xor i64 %121, %116, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %122, metadata !1297, metadata !DIExpression()), !dbg !1312
  %123 = lshr i64 %114, 8, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %123, metadata !1298, metadata !DIExpression()), !dbg !1312
  %124 = icmp eq i64 %123, 0, !dbg !1405
  br i1 %124, label %125, label %113, !dbg !1405, !llvm.loop !1415

125:                                              ; preds = %113, %110
  %126 = phi i64 [ %88, %110 ], [ %122, %113 ], !dbg !1312
  call void @llvm.dbg.value(metadata i64 %126, metadata !1297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %126, metadata !1297, metadata !DIExpression(DW_OP_constu, 4294967295, DW_OP_xor, DW_OP_stack_value)), !dbg !1312
  %127 = trunc i64 %126 to i32, !dbg !1417
  %128 = xor i32 %127, -1, !dbg !1417
  br i1 %1, label %129, label %131, !dbg !1419

129:                                              ; preds = %125
  %130 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 %128, i8* %111, i8* %0) #12, !dbg !1420
  br label %133, !dbg !1420

131:                                              ; preds = %125
  %132 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %128, i8* %111) #12, !dbg !1421
  br label %133

133:                                              ; preds = %131, %129
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1422, !tbaa !1197
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %134, metadata !1353, metadata !DIExpression()), !dbg !1424
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 0, !dbg !1426
  %136 = load i32, i32* %135, align 8, !dbg !1426, !tbaa !1356
  %137 = and i32 %136, 32, !dbg !1426
  %138 = icmp eq i32 %137, 0, !dbg !1422
  br i1 %138, label %143, label %139, !dbg !1427

139:                                              ; preds = %133
  %140 = tail call i32* @__errno_location() #23, !dbg !1428
  %141 = load i32, i32* %140, align 4, !dbg !1428, !tbaa !1258
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !1428
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %142) #12, !dbg !1428
  unreachable, !dbg !1428

143:                                              ; preds = %133, %92, %98, %106, %14
  %144 = phi i1 [ false, %106 ], [ false, %14 ], [ false, %98 ], [ false, %92 ], [ true, %133 ], !dbg !1312
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %6) #12, !dbg !1429
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %5) #12, !dbg !1429
  ret i1 %144, !dbg !1429
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

declare !dbg !138 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #10 !dbg !1430 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1432, metadata !DIExpression()), !dbg !1433
  store i8* %0, i8** @file_name, align 8, !dbg !1434, !tbaa !1197
  ret void, !dbg !1435
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #10 !dbg !1436 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1442, !tbaa !1443
  ret void, !dbg !1445
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1446 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1451, !tbaa !1197
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1452
  %3 = icmp eq i32 %2, 0, !dbg !1453
  br i1 %3, label %22, label %4, !dbg !1454

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1455, !tbaa !1443, !range !1456
  %6 = icmp eq i8 %5, 0, !dbg !1455
  br i1 %6, label %11, label %7, !dbg !1457

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #23, !dbg !1458
  %9 = load i32, i32* %8, align 4, !dbg !1458, !tbaa !1258
  %10 = icmp eq i32 %9, 32, !dbg !1459
  br i1 %10, label %22, label %11, !dbg !1460

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #12, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %12, metadata !1448, metadata !DIExpression()), !dbg !1462
  %13 = load i8*, i8** @file_name, align 8, !dbg !1463, !tbaa !1197
  %14 = icmp eq i8* %13, null, !dbg !1463
  %15 = tail call i32* @__errno_location() #23, !dbg !1465
  %16 = load i32, i32* %15, align 4, !dbg !1465, !tbaa !1258
  br i1 %14, label %19, label %17, !dbg !1466

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1467
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1468
  br label %20, !dbg !1468

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #12, !dbg !1469
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1470, !tbaa !1258
  tail call void @_exit(i32 %21) #22, !dbg !1471
  unreachable, !dbg !1471

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1472, !tbaa !1197
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1474
  %25 = icmp eq i32 %24, 0, !dbg !1475
  br i1 %25, label %28, label %26, !dbg !1476

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1477, !tbaa !1258
  tail call void @_exit(i32 %27) #22, !dbg !1478
  unreachable, !dbg !1478

28:                                               ; preds = %22
  ret void, !dbg !1479
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32 %0, i64 %1, i64 %2, i32 %3) local_unnamed_addr #8 !dbg !1480 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1486, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %1, metadata !1487, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i64 %2, metadata !1488, metadata !DIExpression()), !dbg !1492
  call void @llvm.dbg.value(metadata i32 %3, metadata !1489, metadata !DIExpression()), !dbg !1492
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1493
  call void @llvm.dbg.value(metadata i32 %5, metadata !1490, metadata !DIExpression()), !dbg !1494
  ret void, !dbg !1495
}

; Function Attrs: nounwind
declare !dbg !463 i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE* %0, i32 %1) local_unnamed_addr #8 !dbg !1496 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1502, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 %1, metadata !1503, metadata !DIExpression()), !dbg !1504
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1505
  br i1 %3, label %7, label %4, !dbg !1507

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %5, metadata !1486, metadata !DIExpression()) #12, !dbg !1509
  call void @llvm.dbg.value(metadata i64 0, metadata !1487, metadata !DIExpression()) #12, !dbg !1509
  call void @llvm.dbg.value(metadata i64 0, metadata !1488, metadata !DIExpression()) #12, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %1, metadata !1489, metadata !DIExpression()) #12, !dbg !1509
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %6, metadata !1490, metadata !DIExpression()) #12, !dbg !1512
  br label %7, !dbg !1513

7:                                                ; preds = %2, %4
  ret void, !dbg !1514
}

; Function Attrs: nofree nounwind
declare !dbg !467 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local nonnull i8* @umaxtostr(i64 %0, i8* %1) local_unnamed_addr #10 !dbg !1515 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1520, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i8* %1, metadata !1521, metadata !DIExpression()), !dbg !1523
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1524
  call void @llvm.dbg.value(metadata i8* %3, metadata !1522, metadata !DIExpression()), !dbg !1523
  store i8 0, i8* %3, align 1, !dbg !1525, !tbaa !1369
  br label %4, !dbg !1526

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1523
  call void @llvm.dbg.value(metadata i8* %6, metadata !1522, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i64 %5, metadata !1520, metadata !DIExpression()), !dbg !1523
  %7 = urem i64 %5, 10, !dbg !1527
  %8 = trunc i64 %7 to i8, !dbg !1530
  %9 = or i8 %8, 48, !dbg !1530
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1531
  call void @llvm.dbg.value(metadata i8* %10, metadata !1522, metadata !DIExpression()), !dbg !1523
  store i8 %9, i8* %10, align 1, !dbg !1532, !tbaa !1369
  %11 = udiv i64 %5, 10, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %11, metadata !1520, metadata !DIExpression()), !dbg !1523
  %12 = icmp ugt i64 %5, 9, !dbg !1534
  br i1 %12, label %4, label %13, !dbg !1535, !llvm.loop !1536

13:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1522, metadata !DIExpression()), !dbg !1523
  ret i8* %10, !dbg !1539
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, void (i32)* nocapture %5, ...) local_unnamed_addr #8 !dbg !1540 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1544, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8** %1, metadata !1545, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %2, metadata !1546, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %3, metadata !1547, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i8* %4, metadata !1548, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1549, metadata !DIExpression()), !dbg !1562
  %8 = load i32, i32* @opterr, align 4, !dbg !1563, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %8, metadata !1551, metadata !DIExpression()), !dbg !1562
  store i32 0, i32* @opterr, align 4, !dbg !1564, !tbaa !1258
  %9 = icmp eq i32 %0, 2, !dbg !1565
  br i1 %9, label %10, label %17, !dbg !1566

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %11, metadata !1550, metadata !DIExpression()), !dbg !1562
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1568

12:                                               ; preds = %10
  tail call void %5(i32 0) #12, !dbg !1569
  br label %17, !dbg !1570

13:                                               ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1571
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #12, !dbg !1571
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1552, metadata !DIExpression()), !dbg !1572
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1573
  call void @llvm.va_start(i8* nonnull %14), !dbg !1573
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1574, !tbaa !1197
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #12, !dbg !1575
  call void @exit(i32 0) #22, !dbg !1576
  unreachable, !dbg !1576

17:                                               ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1577, !tbaa !1258
  store i32 0, i32* @optind, align 4, !dbg !1578, !tbaa !1258
  ret void, !dbg !1579
}

; Function Attrs: nounwind
declare !dbg !223 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_gnu_standard_options_only(i32 %0, i8** %1, i8* %2, i8* %3, i8* %4, i1 zeroext %5, void (i32)* nocapture %6, ...) local_unnamed_addr #8 !dbg !1580 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1582, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8** %1, metadata !1583, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8* %2, metadata !1584, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8* %3, metadata !1585, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8* %4, metadata !1586, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i1 %5, metadata !1587, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1588, metadata !DIExpression()), !dbg !1597
  %9 = load i32, i32* @opterr, align 4, !dbg !1598, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %9, metadata !1590, metadata !DIExpression()), !dbg !1597
  store i32 1, i32* @opterr, align 4, !dbg !1599, !tbaa !1258
  %10 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0), !dbg !1600
  call void @llvm.dbg.value(metadata i8* %10, metadata !1591, metadata !DIExpression()), !dbg !1597
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* %10, %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #12, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %11, metadata !1589, metadata !DIExpression()), !dbg !1597
  switch i32 %11, label %16 [
    i32 -1, label %20
    i32 104, label %18
    i32 118, label %12
  ], !dbg !1602

12:                                               ; preds = %7
  %13 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*, !dbg !1603
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #12, !dbg !1603
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !1592, metadata !DIExpression()), !dbg !1604
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, !dbg !1605
  call void @llvm.va_start(i8* nonnull %13), !dbg !1605
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1606, !tbaa !1197
  call void @version_etc_va(%struct._IO_FILE* %15, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %14) #12, !dbg !1607
  call void @exit(i32 0) #22, !dbg !1608
  unreachable, !dbg !1608

16:                                               ; preds = %7
  %17 = load volatile i32, i32* @exit_failure, align 4, !dbg !1609, !tbaa !1258
  br label %18, !dbg !1610

18:                                               ; preds = %7, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  tail call void %6(i32 %19) #12, !dbg !1611
  br label %20, !dbg !1612

20:                                               ; preds = %18, %7
  store i32 %9, i32* @opterr, align 4, !dbg !1612, !tbaa !1258
  ret void, !dbg !1613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1616, metadata !DIExpression()), !dbg !1619
  %2 = icmp eq i8* %0, null, !dbg !1620
  br i1 %2, label %3, label %6, !dbg !1622

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1623, !tbaa !1197
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #24, !dbg !1625
  tail call void @abort() #22, !dbg !1626
  unreachable, !dbg !1626

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #21, !dbg !1627
  call void @llvm.dbg.value(metadata i8* %7, metadata !1617, metadata !DIExpression()), !dbg !1619
  %8 = icmp eq i8* %7, null, !dbg !1628
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1629
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1629
  call void @llvm.dbg.value(metadata i8* %10, metadata !1618, metadata !DIExpression()), !dbg !1619
  %11 = ptrtoint i8* %10 to i64, !dbg !1630
  %12 = ptrtoint i8* %0 to i64, !dbg !1630
  %13 = sub i64 %11, %12, !dbg !1630
  %14 = icmp sgt i64 %13, 6, !dbg !1632
  br i1 %14, label %15, label %24, !dbg !1633

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1634
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #21, !dbg !1635
  %18 = icmp eq i32 %17, 0, !dbg !1636
  br i1 %18, label %19, label %24, !dbg !1637

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1616, metadata !DIExpression()), !dbg !1619
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #21, !dbg !1638
  %21 = icmp eq i32 %20, 0, !dbg !1641
  br i1 %21, label %22, label %24, !dbg !1642

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %23, metadata !1616, metadata !DIExpression()), !dbg !1619
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1645, !tbaa !1197
  br label %24, !dbg !1646

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1616, metadata !DIExpression()), !dbg !1619
  store i8* %25, i8** @program_name, align 8, !dbg !1647, !tbaa !1197
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1648, !tbaa !1197
  ret void, !dbg !1649
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #13

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1650 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1655, metadata !DIExpression()), !dbg !1658
  %2 = tail call i32* @__errno_location() #23, !dbg !1659
  %3 = load i32, i32* %2, align 4, !dbg !1659, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %3, metadata !1656, metadata !DIExpression()), !dbg !1658
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1660
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1660
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1660
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !1661
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1661
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1657, metadata !DIExpression()), !dbg !1658
  store i32 %3, i32* %2, align 4, !dbg !1662, !tbaa !1258
  ret %struct.quoting_options* %8, !dbg !1663
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #14 !dbg !1664 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1668, metadata !DIExpression()), !dbg !1669
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1670
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1670
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1671
  %5 = load i32, i32* %4, align 8, !dbg !1671, !tbaa !1672
  ret i32 %5, !dbg !1674
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #10 !dbg !1675 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1679, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i32 %1, metadata !1680, metadata !DIExpression()), !dbg !1681
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1682
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1682
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1683
  store i32 %1, i32* %5, align 8, !dbg !1684, !tbaa !1672
  ret void, !dbg !1685
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #15 !dbg !1686 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1690, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %1, metadata !1691, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %2, metadata !1692, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %1, metadata !1693, metadata !DIExpression()), !dbg !1698
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1699
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1699
  %6 = lshr i8 %1, 5, !dbg !1700
  %7 = zext i8 %6 to i64, !dbg !1700
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1701
  call void @llvm.dbg.value(metadata i32* %8, metadata !1694, metadata !DIExpression()), !dbg !1698
  %9 = and i8 %1, 31, !dbg !1702
  %10 = zext i8 %9 to i32, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %10, metadata !1696, metadata !DIExpression()), !dbg !1698
  %11 = load i32, i32* %8, align 4, !dbg !1703, !tbaa !1258
  %12 = lshr i32 %11, %10, !dbg !1704
  %13 = and i32 %12, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %13, metadata !1697, metadata !DIExpression()), !dbg !1698
  %14 = and i32 %2, 1, !dbg !1706
  %15 = xor i32 %13, %14, !dbg !1707
  %16 = shl i32 %15, %10, !dbg !1708
  %17 = xor i32 %16, %11, !dbg !1709
  store i32 %17, i32* %8, align 4, !dbg !1709, !tbaa !1258
  ret i32 %13, !dbg !1710
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #15 !dbg !1711 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1715, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %1, metadata !1716, metadata !DIExpression()), !dbg !1718
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1719
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1715, metadata !DIExpression()), !dbg !1718
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1722
  %6 = load i32, i32* %5, align 4, !dbg !1722, !tbaa !1723
  call void @llvm.dbg.value(metadata i32 %6, metadata !1717, metadata !DIExpression()), !dbg !1718
  store i32 %1, i32* %5, align 4, !dbg !1724, !tbaa !1723
  ret i32 %6, !dbg !1725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1726 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1730, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8* %1, metadata !1731, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8* %2, metadata !1732, metadata !DIExpression()), !dbg !1733
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1734
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1736
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1730, metadata !DIExpression()), !dbg !1733
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1737
  store i32 10, i32* %6, align 8, !dbg !1738, !tbaa !1672
  %7 = icmp ne i8* %1, null, !dbg !1739
  %8 = icmp ne i8* %2, null, !dbg !1741
  %9 = and i1 %7, %8, !dbg !1742
  br i1 %9, label %11, label %10, !dbg !1742

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !1743
  unreachable, !dbg !1743

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1744
  store i8* %1, i8** %12, align 8, !dbg !1745, !tbaa !1746
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1747
  store i8* %2, i8** %13, align 8, !dbg !1748, !tbaa !1749
  ret void, !dbg !1750
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1751 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1755, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %1, metadata !1756, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8* %2, metadata !1757, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %3, metadata !1758, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1759, metadata !DIExpression()), !dbg !1763
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1764
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1764
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1760, metadata !DIExpression()), !dbg !1763
  %8 = tail call i32* @__errno_location() #23, !dbg !1765
  %9 = load i32, i32* %8, align 4, !dbg !1765, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %9, metadata !1761, metadata !DIExpression()), !dbg !1763
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1766
  %11 = load i32, i32* %10, align 8, !dbg !1766, !tbaa !1672
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1767
  %13 = load i32, i32* %12, align 4, !dbg !1767, !tbaa !1723
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1768
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1769
  %16 = load i8*, i8** %15, align 8, !dbg !1769, !tbaa !1746
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1770
  %18 = load i8*, i8** %17, align 8, !dbg !1770, !tbaa !1749
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %19, metadata !1762, metadata !DIExpression()), !dbg !1763
  store i32 %9, i32* %8, align 4, !dbg !1772, !tbaa !1258
  ret i64 %19, !dbg !1773
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1774 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1780, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %1, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %2, metadata !1782, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %3, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 %4, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 %5, metadata !1785, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32* %6, metadata !1786, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %7, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %8, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* null, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1793, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1794, metadata !DIExpression()), !dbg !1838
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !1839
  %14 = icmp eq i64 %13, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i1 %14, metadata !1795, metadata !DIExpression()), !dbg !1838
  %15 = lshr i32 %5, 1, !dbg !1841
  %16 = trunc i32 %15 to i8, !dbg !1841
  %17 = and i8 %16, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i8 %17, metadata !1796, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1799, metadata !DIExpression()), !dbg !1838
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1842
  %19 = and i32 %5, 4, !dbg !1844
  %20 = icmp eq i32 %19, 0, !dbg !1844
  %21 = and i32 %5, 1, !dbg !1847
  %22 = icmp eq i32 %21, 0, !dbg !1847
  %23 = bitcast i64* %10 to i8*, !dbg !1850
  %24 = bitcast i32* %12 to i8*, !dbg !1851
  %25 = icmp eq i32* %6, null, !dbg !1852
  br label %26, !dbg !1854

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !1855
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !1856
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !1857
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !1858
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !1838
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !1859
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !1860
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !1861
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %38, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %37, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %36, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %35, metadata !1796, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %34, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %33, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %32, metadata !1793, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %31, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %30, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %29, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %28, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 %27, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.label(metadata !1832), !dbg !1862
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
  ], !dbg !1863

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1796, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %35, metadata !1796, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 5, metadata !1784, metadata !DIExpression()), !dbg !1838
  br label %92, !dbg !1864

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1796, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 5, metadata !1784, metadata !DIExpression()), !dbg !1838
  %42 = and i8 %35, 1, !dbg !1866
  %43 = icmp eq i8 %42, 0, !dbg !1866
  br i1 %43, label %44, label %92, !dbg !1864

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1868
  br i1 %45, label %92, label %46, !dbg !1871

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1868, !tbaa !1369
  br label %92, !dbg !1868

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %27), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %48, metadata !1787, metadata !DIExpression()), !dbg !1838
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %27), !dbg !1876
  call void @llvm.dbg.value(metadata i8* %49, metadata !1788, metadata !DIExpression()), !dbg !1838
  br label %50, !dbg !1877

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %51, metadata !1787, metadata !DIExpression()), !dbg !1838
  %53 = and i8 %35, 1, !dbg !1878
  %54 = icmp eq i8 %53, 0, !dbg !1878
  br i1 %54, label %55, label %70, !dbg !1880

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1790, metadata !DIExpression()), !dbg !1838
  %56 = load i8, i8* %51, align 1, !dbg !1881, !tbaa !1369
  %57 = icmp eq i8 %56, 0, !dbg !1884
  br i1 %57, label %70, label %58, !dbg !1884

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %61, metadata !1790, metadata !DIExpression()), !dbg !1838
  %62 = icmp ult i64 %61, %39, !dbg !1885
  br i1 %62, label %63, label %65, !dbg !1888

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1885
  store i8 %59, i8* %64, align 1, !dbg !1885, !tbaa !1369
  br label %65, !dbg !1885

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %66, metadata !1790, metadata !DIExpression()), !dbg !1838
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1889
  call void @llvm.dbg.value(metadata i8* %67, metadata !1792, metadata !DIExpression()), !dbg !1838
  %68 = load i8, i8* %67, align 1, !dbg !1881, !tbaa !1369
  %69 = icmp eq i8 %68, 0, !dbg !1884
  br i1 %69, label %70, label %58, !dbg !1884, !llvm.loop !1890

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1892
  call void @llvm.dbg.value(metadata i64 %71, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %52, metadata !1792, metadata !DIExpression()), !dbg !1838
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #21, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %72, metadata !1793, metadata !DIExpression()), !dbg !1838
  br label %92, !dbg !1894

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1794, metadata !DIExpression()), !dbg !1838
  br label %74, !dbg !1895

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %75, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1796, metadata !DIExpression()), !dbg !1838
  br label %76, !dbg !1896

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1858
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %78, metadata !1796, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %77, metadata !1794, metadata !DIExpression()), !dbg !1838
  %79 = and i8 %78, 1, !dbg !1897
  %80 = icmp eq i8 %79, 0, !dbg !1897
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1899
  br label %82, !dbg !1899

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1838
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1841
  call void @llvm.dbg.value(metadata i8 %84, metadata !1796, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %83, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  %85 = and i8 %84, 1, !dbg !1900
  %86 = icmp eq i8 %85, 0, !dbg !1900
  br i1 %86, label %87, label %92, !dbg !1902

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1903
  br i1 %88, label %92, label %89, !dbg !1906

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1903, !tbaa !1369
  br label %92, !dbg !1903

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1796, metadata !DIExpression()), !dbg !1838
  br label %92, !dbg !1907

91:                                               ; preds = %26
  call void @abort() #22, !dbg !1908
  unreachable, !dbg !1908

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !1892
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %40 ], !dbg !1838
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !1838
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !1838
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %100, metadata !1796, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %98, metadata !1793, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %96, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 %93, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 0, metadata !1789, metadata !DIExpression()), !dbg !1838
  %101 = and i8 %99, 1, !dbg !1909
  %102 = icmp ne i8 %101, 0, !dbg !1909
  %103 = icmp ne i32 %93, 2, !dbg !1909
  %104 = and i1 %103, %102, !dbg !1909
  %105 = icmp ne i64 %98, 0, !dbg !1909
  %106 = and i1 %105, %104, !dbg !1909
  %107 = icmp ugt i64 %98, 1, !dbg !1909
  %108 = and i8 %100, 1, !dbg !1911
  %109 = icmp eq i8 %108, 0, !dbg !1911
  %110 = icmp eq i32 %93, 2, !dbg !1914
  %111 = or i1 %103, %109, !dbg !1916
  %112 = icmp ne i8 %108, 0, !dbg !1918
  %113 = and i1 %110, %112, !dbg !1918
  %114 = xor i1 %102, true, !dbg !1919
  %115 = xor i1 %104, true, !dbg !1852
  %116 = and i1 %109, %115, !dbg !1852
  %117 = or i1 %25, %116, !dbg !1852
  %118 = and i8 %99, %100, !dbg !1920
  %119 = and i8 %118, 1, !dbg !1920
  %120 = icmp ne i8 %119, 0, !dbg !1920
  %121 = and i1 %120, %105, !dbg !1920
  br label %122, !dbg !1922

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !1923
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !1892
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !1855
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !1859
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !1860
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !1861
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %126, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %123, metadata !1789, metadata !DIExpression()), !dbg !1838
  %131 = icmp eq i64 %126, -1, !dbg !1924
  br i1 %131, label %132, label %136, !dbg !1925

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1926
  %134 = load i8, i8* %133, align 1, !dbg !1926, !tbaa !1369
  %135 = icmp eq i8 %134, 0, !dbg !1927
  br i1 %135, label %581, label %138, !dbg !1928

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !1929
  br i1 %137, label %581, label %138, !dbg !1928

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1805, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, metadata !1806, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 0, metadata !1807, metadata !DIExpression()), !dbg !1930
  br i1 %106, label %139, label %154, !dbg !1931

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !1932
  %141 = and i1 %107, %131, !dbg !1933
  br i1 %141, label %142, label %144, !dbg !1933

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %143, metadata !1783, metadata !DIExpression()), !dbg !1838
  br label %144, !dbg !1935

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !1783, metadata !DIExpression()), !dbg !1838
  %146 = icmp ugt i64 %140, %145, !dbg !1936
  br i1 %146, label %154, label %147, !dbg !1937

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1938
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !1939
  %150 = icmp ne i32 %149, 0, !dbg !1940
  %151 = or i1 %150, %109, !dbg !1941
  %152 = xor i1 %150, true, !dbg !1941
  %153 = zext i1 %152 to i8, !dbg !1941
  br i1 %151, label %154, label %639, !dbg !1941

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !1930
  call void @llvm.dbg.value(metadata i8 %156, metadata !1805, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %155, metadata !1783, metadata !DIExpression()), !dbg !1838
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !1942
  %158 = load i8, i8* %157, align 1, !dbg !1942, !tbaa !1369
  call void @llvm.dbg.value(metadata i8 %158, metadata !1800, metadata !DIExpression()), !dbg !1930
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
  ], !dbg !1943

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !1944

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !1945

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1930
  %162 = and i8 %127, 1, !dbg !1948
  %163 = icmp eq i8 %162, 0, !dbg !1948
  %164 = and i1 %110, %163, !dbg !1948
  br i1 %164, label %165, label %181, !dbg !1948

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !1950
  br i1 %166, label %167, label %169, !dbg !1954

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !1950
  store i8 39, i8* %168, align 1, !dbg !1950, !tbaa !1369
  br label %169, !dbg !1950

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %170, metadata !1790, metadata !DIExpression()), !dbg !1838
  %171 = icmp ult i64 %170, %130, !dbg !1955
  br i1 %171, label %172, label %174, !dbg !1958

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !1955
  store i8 36, i8* %173, align 1, !dbg !1955, !tbaa !1369
  br label %174, !dbg !1955

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %175, metadata !1790, metadata !DIExpression()), !dbg !1838
  %176 = icmp ult i64 %175, %130, !dbg !1959
  br i1 %176, label %177, label %179, !dbg !1962

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !1959
  store i8 39, i8* %178, align 1, !dbg !1959, !tbaa !1369
  br label %179, !dbg !1959

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %180, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1797, metadata !DIExpression()), !dbg !1838
  br label %181, !dbg !1963

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !1838
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %183, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %182, metadata !1790, metadata !DIExpression()), !dbg !1838
  %184 = icmp ult i64 %182, %130, !dbg !1964
  br i1 %184, label %185, label %187, !dbg !1967

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1964
  store i8 92, i8* %186, align 1, !dbg !1964, !tbaa !1369
  br label %187, !dbg !1964

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %188, metadata !1790, metadata !DIExpression()), !dbg !1838
  br i1 %103, label %189, label %463, !dbg !1968

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !1970
  %191 = icmp ult i64 %190, %155, !dbg !1971
  br i1 %191, label %192, label %463, !dbg !1972

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !1973
  %194 = load i8, i8* %193, align 1, !dbg !1973, !tbaa !1369
  %195 = add i8 %194, -48, !dbg !1974
  %196 = icmp ult i8 %195, 10, !dbg !1974
  br i1 %196, label %197, label %463, !dbg !1974

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !1975
  br i1 %198, label %199, label %201, !dbg !1979

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !1975
  store i8 48, i8* %200, align 1, !dbg !1975, !tbaa !1369
  br label %201, !dbg !1975

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %202, metadata !1790, metadata !DIExpression()), !dbg !1838
  %203 = icmp ult i64 %202, %130, !dbg !1980
  br i1 %203, label %204, label %206, !dbg !1983

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !1980
  store i8 48, i8* %205, align 1, !dbg !1980, !tbaa !1369
  br label %206, !dbg !1980

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %207, metadata !1790, metadata !DIExpression()), !dbg !1838
  br label %463, !dbg !1984

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !1985

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !1986

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !1987

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !1988

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !1989
  %214 = icmp ult i64 %213, %155, !dbg !1990
  br i1 %214, label %215, label %463, !dbg !1991

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !1992
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !1993
  %218 = load i8, i8* %217, align 1, !dbg !1993, !tbaa !1369
  %219 = icmp eq i8 %218, 63, !dbg !1994
  br i1 %219, label %220, label %463, !dbg !1995

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !1996
  %222 = load i8, i8* %221, align 1, !dbg !1996, !tbaa !1369
  %223 = sext i8 %222 to i32, !dbg !1996
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
  ], !dbg !1997

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !1998

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1800, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 %213, metadata !1789, metadata !DIExpression()), !dbg !1838
  %226 = icmp ult i64 %124, %130, !dbg !2000
  br i1 %226, label %227, label %229, !dbg !2003

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2000
  store i8 63, i8* %228, align 1, !dbg !2000, !tbaa !1369
  br label %229, !dbg !2000

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %230, metadata !1790, metadata !DIExpression()), !dbg !1838
  %231 = icmp ult i64 %230, %130, !dbg !2004
  br i1 %231, label %232, label %234, !dbg !2007

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2004
  store i8 34, i8* %233, align 1, !dbg !2004, !tbaa !1369
  br label %234, !dbg !2004

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %235, metadata !1790, metadata !DIExpression()), !dbg !1838
  %236 = icmp ult i64 %235, %130, !dbg !2008
  br i1 %236, label %237, label %239, !dbg !2011

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2008
  store i8 34, i8* %238, align 1, !dbg !2008, !tbaa !1369
  br label %239, !dbg !2008

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %240, metadata !1790, metadata !DIExpression()), !dbg !1838
  %241 = icmp ult i64 %240, %130, !dbg !2012
  br i1 %241, label %242, label %244, !dbg !2015

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2012
  store i8 63, i8* %243, align 1, !dbg !2012, !tbaa !1369
  br label %244, !dbg !2012

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %245, metadata !1790, metadata !DIExpression()), !dbg !1838
  br label %463, !dbg !2016

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !1804, metadata !DIExpression()), !dbg !1930
  br label %256, !dbg !2017

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !1804, metadata !DIExpression()), !dbg !1930
  br label %256, !dbg !2018

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !1804, metadata !DIExpression()), !dbg !1930
  br label %254, !dbg !2019

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !1804, metadata !DIExpression()), !dbg !1930
  br label %254, !dbg !2020

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !1804, metadata !DIExpression()), !dbg !1930
  br label %256, !dbg !2021

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !1804, metadata !DIExpression()), !dbg !1930
  br i1 %110, label %252, label %253, !dbg !2022

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2023

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2026

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8 %255, metadata !1804, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.label(metadata !1833), !dbg !2028
  br i1 %111, label %256, label %625, !dbg !2029

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2027
  call void @llvm.dbg.value(metadata i8 %257, metadata !1804, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.label(metadata !1834), !dbg !2031
  br i1 %102, label %488, label %463, !dbg !2032

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2033

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2034, !tbaa !1369
  %261 = icmp eq i8 %260, 0, !dbg !2035
  br i1 %261, label %262, label %463, !dbg !2036

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2037
  br i1 %263, label %264, label %463, !dbg !2039

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1807, metadata !DIExpression()), !dbg !1930
  br label %265, !dbg !2040

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !1930
  call void @llvm.dbg.value(metadata i8 %266, metadata !1807, metadata !DIExpression()), !dbg !1930
  br i1 %111, label %463, label %625, !dbg !2041

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1807, metadata !DIExpression()), !dbg !1930
  br i1 %110, label %268, label %463, !dbg !2042

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2043

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2045
  %271 = icmp ne i64 %125, 0, !dbg !2047
  %272 = or i1 %271, %270, !dbg !2048
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2048
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %274, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %273, metadata !1791, metadata !DIExpression()), !dbg !1838
  %275 = icmp ult i64 %124, %274, !dbg !2049
  br i1 %275, label %276, label %278, !dbg !2052

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2049
  store i8 39, i8* %277, align 1, !dbg !2049, !tbaa !1369
  br label %278, !dbg !2049

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %279, metadata !1790, metadata !DIExpression()), !dbg !1838
  %280 = icmp ult i64 %279, %274, !dbg !2053
  br i1 %280, label %281, label %283, !dbg !2056

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2053
  store i8 92, i8* %282, align 1, !dbg !2053, !tbaa !1369
  br label %283, !dbg !2053

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %284, metadata !1790, metadata !DIExpression()), !dbg !1838
  %285 = icmp ult i64 %284, %274, !dbg !2057
  br i1 %285, label %286, label %288, !dbg !2060

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2057
  store i8 39, i8* %287, align 1, !dbg !2057, !tbaa !1369
  br label %288, !dbg !2057

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %289, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1838
  br label %463, !dbg !2061

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2062

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1808, metadata !DIExpression()), !dbg !2063
  %292 = tail call i16** @__ctype_b_loc() #23, !dbg !2064
  %293 = load i16*, i16** %292, align 8, !dbg !2064, !tbaa !1197
  %294 = zext i8 %158 to i64, !dbg !2064
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2064
  %296 = load i16, i16* %295, align 2, !dbg !2064, !tbaa !2066
  %297 = lshr i16 %296, 14, !dbg !2067
  %298 = trunc i16 %297 to i8, !dbg !2067
  %299 = and i8 %298, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i8 %299, metadata !1811, metadata !DIExpression()), !dbg !2063
  br label %355, !dbg !2068

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !2069
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1812, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i8* %23, metadata !2071, metadata !DIExpression()) #12, !dbg !2079
  call void @llvm.dbg.value(metadata i32 0, metadata !2077, metadata !DIExpression()) #12, !dbg !2079
  call void @llvm.dbg.value(metadata i64 8, metadata !2078, metadata !DIExpression()) #12, !dbg !2079
  store i64 0, i64* %10, align 8, !dbg !2081
  call void @llvm.dbg.value(metadata i64 0, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 1, metadata !1811, metadata !DIExpression()), !dbg !2063
  %301 = icmp eq i64 %155, -1, !dbg !2082
  br i1 %301, label %302, label %304, !dbg !2084

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #21, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %303, metadata !1783, metadata !DIExpression()), !dbg !1838
  br label %304, !dbg !2086

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !1930
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  br label %306, !dbg !2087

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2088
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2089
  call void @llvm.dbg.value(metadata i8 %308, metadata !1811, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #12, !dbg !2090
  %309 = add i64 %307, %123, !dbg !2091
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2092
  %311 = sub i64 %305, %309, !dbg !2093
  call void @llvm.dbg.value(metadata i32* %12, metadata !1818, metadata !DIExpression(DW_OP_deref)), !dbg !1851
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #12, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %312, metadata !1821, metadata !DIExpression()), !dbg !1851
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2095

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  %314 = icmp ugt i64 %305, %309, !dbg !2096
  br i1 %314, label %315, label %340, !dbg !2098

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2099
  br label %317, !dbg !2099

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !1808, metadata !DIExpression()), !dbg !2063
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2100
  %321 = load i8, i8* %320, align 1, !dbg !2100, !tbaa !1369
  %322 = icmp eq i8 %321, 0, !dbg !2098
  br i1 %322, label %340, label %323, !dbg !2099

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %324, metadata !1808, metadata !DIExpression()), !dbg !2063
  %325 = add i64 %324, %123, !dbg !2102
  %326 = icmp ult i64 %325, %305, !dbg !2096
  br i1 %326, label %317, label %340, !dbg !2098, !llvm.loop !2103

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2104
  %329 = and i1 %113, %328, !dbg !2107
  call void @llvm.dbg.value(metadata i64 1, metadata !1822, metadata !DIExpression()), !dbg !2108
  br i1 %329, label %330, label %343, !dbg !2107

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !1822, metadata !DIExpression()), !dbg !2108
  %332 = add i64 %331, %309, !dbg !2109
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2110
  %334 = load i8, i8* %333, align 1, !dbg !2110, !tbaa !1369
  %335 = sext i8 %334 to i32, !dbg !2110
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2111

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %337, metadata !1822, metadata !DIExpression()), !dbg !2108
  %338 = icmp eq i64 %337, %312, !dbg !2104
  br i1 %338, label %343, label %330, !dbg !2113, !llvm.loop !2114

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %308, metadata !1811, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %307, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %308, metadata !1811, metadata !DIExpression()), !dbg !2063
  br label %340, !dbg !2116

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !2116
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2117, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %344, metadata !1818, metadata !DIExpression()), !dbg !1851
  %345 = call i32 @iswprint(i32 %344) #12, !dbg !2119
  %346 = icmp eq i32 %345, 0, !dbg !2119
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2120
  call void @llvm.dbg.value(metadata i8 %347, metadata !1811, metadata !DIExpression()), !dbg !2063
  %348 = add i64 %312, %307, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %348, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i8 %347, metadata !1811, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %348, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !2116
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #21, !dbg !2122
  %350 = icmp eq i32 %349, 0, !dbg !2123
  br i1 %350, label %306, label %351, !dbg !2124, !llvm.loop !2125

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !2127
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 2, metadata !1784, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %99, metadata !1794, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %305, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #12, !dbg !2116
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !2127
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !1930
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2128
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2128
  call void @llvm.dbg.value(metadata i8 %358, metadata !1811, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %357, metadata !1808, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 %356, metadata !1783, metadata !DIExpression()), !dbg !1838
  %359 = and i8 %358, 1, !dbg !2129
  %360 = icmp ne i8 %359, 0, !dbg !2129
  call void @llvm.dbg.value(metadata i8 %359, metadata !1807, metadata !DIExpression()), !dbg !1930
  %361 = icmp ult i64 %357, 2, !dbg !2130
  %362 = or i1 %360, %114, !dbg !2131
  %363 = and i1 %361, %362, !dbg !2132
  br i1 %363, label %463, label %364, !dbg !2132

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %365, metadata !1829, metadata !DIExpression()), !dbg !2134
  br label %366, !dbg !2135

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !1923
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !1838
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !1859
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !1930
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !1930
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2136
  call void @llvm.dbg.value(metadata i8 %372, metadata !1806, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %371, metadata !1805, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %370, metadata !1800, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %369, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %368, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %367, metadata !1789, metadata !DIExpression()), !dbg !1838
  br i1 %362, label %419, label %373, !dbg !2137

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2142

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1930
  %375 = and i8 %369, 1, !dbg !2145
  %376 = icmp eq i8 %375, 0, !dbg !2145
  %377 = and i1 %110, %376, !dbg !2145
  br i1 %377, label %378, label %394, !dbg !2145

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2147
  br i1 %379, label %380, label %382, !dbg !2151

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2147
  store i8 39, i8* %381, align 1, !dbg !2147, !tbaa !1369
  br label %382, !dbg !2147

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %383, metadata !1790, metadata !DIExpression()), !dbg !1838
  %384 = icmp ult i64 %383, %130, !dbg !2152
  br i1 %384, label %385, label %387, !dbg !2155

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2152
  store i8 36, i8* %386, align 1, !dbg !2152, !tbaa !1369
  br label %387, !dbg !2152

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %388, metadata !1790, metadata !DIExpression()), !dbg !1838
  %389 = icmp ult i64 %388, %130, !dbg !2156
  br i1 %389, label %390, label %392, !dbg !2159

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2156
  store i8 39, i8* %391, align 1, !dbg !2156, !tbaa !1369
  br label %392, !dbg !2156

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %393, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1797, metadata !DIExpression()), !dbg !1838
  br label %394, !dbg !2160

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !1838
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %396, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %395, metadata !1790, metadata !DIExpression()), !dbg !1838
  %397 = icmp ult i64 %395, %130, !dbg !2161
  br i1 %397, label %398, label %400, !dbg !2164

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2161
  store i8 92, i8* %399, align 1, !dbg !2161, !tbaa !1369
  br label %400, !dbg !2161

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %401, metadata !1790, metadata !DIExpression()), !dbg !1838
  %402 = icmp ult i64 %401, %130, !dbg !2165
  br i1 %402, label %403, label %407, !dbg !2168

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2165
  %405 = or i8 %404, 48, !dbg !2165
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2165
  store i8 %405, i8* %406, align 1, !dbg !2165, !tbaa !1369
  br label %407, !dbg !2165

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %408, metadata !1790, metadata !DIExpression()), !dbg !1838
  %409 = icmp ult i64 %408, %130, !dbg !2169
  br i1 %409, label %410, label %415, !dbg !2172

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2169
  %412 = and i8 %411, 7, !dbg !2169
  %413 = or i8 %412, 48, !dbg !2169
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2169
  store i8 %413, i8* %414, align 1, !dbg !2169, !tbaa !1369
  br label %415, !dbg !2169

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %416, metadata !1790, metadata !DIExpression()), !dbg !1838
  %417 = and i8 %370, 7, !dbg !2173
  %418 = or i8 %417, 48, !dbg !2174
  call void @llvm.dbg.value(metadata i8 %418, metadata !1800, metadata !DIExpression()), !dbg !1930
  br label %428, !dbg !2175

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2176
  %421 = icmp eq i8 %420, 0, !dbg !2176
  br i1 %421, label %428, label %422, !dbg !2178

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2179
  br i1 %423, label %424, label %426, !dbg !2183

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2179
  store i8 92, i8* %425, align 1, !dbg !2179, !tbaa !1369
  br label %426, !dbg !2179

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %427, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1805, metadata !DIExpression()), !dbg !1930
  br label %428, !dbg !2184

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !1838
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !1859
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !1930
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !1930
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !1930
  call void @llvm.dbg.value(metadata i8 %433, metadata !1806, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %432, metadata !1805, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %431, metadata !1800, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %430, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %429, metadata !1790, metadata !DIExpression()), !dbg !1838
  %434 = add i64 %367, 1, !dbg !2185
  %435 = icmp ugt i64 %365, %434, !dbg !2187
  br i1 %435, label %436, label %526, !dbg !2188

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2189
  %438 = icmp ne i8 %437, 0, !dbg !2189
  %439 = and i8 %433, 1, !dbg !2189
  %440 = icmp eq i8 %439, 0, !dbg !2189
  %441 = and i1 %438, %440, !dbg !2189
  br i1 %441, label %442, label %453, !dbg !2189

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2192
  br i1 %443, label %444, label %446, !dbg !2196

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2192
  store i8 39, i8* %445, align 1, !dbg !2192, !tbaa !1369
  br label %446, !dbg !2192

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %447, metadata !1790, metadata !DIExpression()), !dbg !1838
  %448 = icmp ult i64 %447, %130, !dbg !2197
  br i1 %448, label %449, label %451, !dbg !2200

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2197
  store i8 39, i8* %450, align 1, !dbg !2197, !tbaa !1369
  br label %451, !dbg !2197

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %452, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1838
  br label %453, !dbg !2201

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2202
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %455, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %454, metadata !1790, metadata !DIExpression()), !dbg !1838
  %456 = icmp ult i64 %454, %130, !dbg !2203
  br i1 %456, label %457, label %459, !dbg !2206

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2203
  store i8 %431, i8* %458, align 1, !dbg !2203, !tbaa !1369
  br label %459, !dbg !2203

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %460, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %434, metadata !1789, metadata !DIExpression()), !dbg !1838
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2207
  %462 = load i8, i8* %461, align 1, !dbg !2207, !tbaa !1369
  call void @llvm.dbg.value(metadata i8 %462, metadata !1800, metadata !DIExpression()), !dbg !1930
  br label %366, !dbg !2208, !llvm.loop !2209

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !1923
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !1838
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !1855
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2212
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !1838
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !1838
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !1930
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !1930
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !1930
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %472, metadata !1807, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %471, metadata !1806, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %156, metadata !1805, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %470, metadata !1800, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %469, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %468, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %467, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %466, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %465, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %464, metadata !1789, metadata !DIExpression()), !dbg !1838
  br i1 %117, label %486, label %474, !dbg !2213

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2214
  %476 = zext i8 %475 to i64, !dbg !2214
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2215
  %478 = load i32, i32* %477, align 4, !dbg !2215, !tbaa !1258
  %479 = and i8 %470, 31, !dbg !2216
  %480 = zext i8 %479 to i32, !dbg !2216
  %481 = shl nuw i32 1, %480, !dbg !2217
  %482 = and i32 %478, %481, !dbg !2217
  %483 = icmp eq i32 %482, 0, !dbg !2217
  %484 = icmp eq i8 %156, 0, !dbg !2218
  %485 = and i1 %484, %483, !dbg !2219
  br i1 %485, label %526, label %488, !dbg !2219

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2218
  br i1 %487, label %526, label %488, !dbg !2220

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2221
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !1838
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !1855
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2212
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !1859
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !1860
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !1930
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !1930
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %496, metadata !1807, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %495, metadata !1800, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %494, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %493, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %492, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %491, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %490, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %489, metadata !1789, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.label(metadata !1835), !dbg !2222
  br i1 %109, label %498, label %629, !dbg !2223

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !1806, metadata !DIExpression()), !dbg !1930
  %499 = and i8 %493, 1, !dbg !2225
  %500 = icmp eq i8 %499, 0, !dbg !2225
  %501 = and i1 %110, %500, !dbg !2225
  br i1 %501, label %502, label %518, !dbg !2225

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2227
  br i1 %503, label %504, label %506, !dbg !2231

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2227
  store i8 39, i8* %505, align 1, !dbg !2227, !tbaa !1369
  br label %506, !dbg !2227

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %507, metadata !1790, metadata !DIExpression()), !dbg !1838
  %508 = icmp ult i64 %507, %497, !dbg !2232
  br i1 %508, label %509, label %511, !dbg !2235

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2232
  store i8 36, i8* %510, align 1, !dbg !2232, !tbaa !1369
  br label %511, !dbg !2232

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %512, metadata !1790, metadata !DIExpression()), !dbg !1838
  %513 = icmp ult i64 %512, %497, !dbg !2236
  br i1 %513, label %514, label %516, !dbg !2239

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2236
  store i8 39, i8* %515, align 1, !dbg !2236, !tbaa !1369
  br label %516, !dbg !2236

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %517, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 1, metadata !1797, metadata !DIExpression()), !dbg !1838
  br label %518, !dbg !2240

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !1930
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %520, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %519, metadata !1790, metadata !DIExpression()), !dbg !1838
  %521 = icmp ult i64 %519, %497, !dbg !2241
  br i1 %521, label %522, label %524, !dbg !2244

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2241
  store i8 92, i8* %523, align 1, !dbg !2241, !tbaa !1369
  br label %524, !dbg !2241

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %525, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %536, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %535, metadata !1807, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %534, metadata !1806, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %533, metadata !1800, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %532, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %531, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %530, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %529, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %528, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %527, metadata !1789, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.label(metadata !1836), !dbg !2245
  br label %553, !dbg !2246

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2221
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !1838
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !1855
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2212
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !1859
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !1860
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2249
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !1930
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !1930
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %535, metadata !1807, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %534, metadata !1806, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %533, metadata !1800, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 %532, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %531, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %530, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %529, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %528, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %527, metadata !1789, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.label(metadata !1836), !dbg !2245
  %537 = and i8 %531, 1, !dbg !2246
  %538 = icmp ne i8 %537, 0, !dbg !2246
  %539 = and i8 %534, 1, !dbg !2246
  %540 = icmp eq i8 %539, 0, !dbg !2246
  %541 = and i1 %538, %540, !dbg !2246
  br i1 %541, label %542, label %553, !dbg !2246

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2250
  br i1 %543, label %544, label %546, !dbg !2254

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2250
  store i8 39, i8* %545, align 1, !dbg !2250, !tbaa !1369
  br label %546, !dbg !2250

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %547, metadata !1790, metadata !DIExpression()), !dbg !1838
  %548 = icmp ult i64 %547, %536, !dbg !2255
  br i1 %548, label %549, label %551, !dbg !2258

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2255
  store i8 39, i8* %550, align 1, !dbg !2255, !tbaa !1369
  br label %551, !dbg !2255

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %552, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1838
  br label %553, !dbg !2259

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !1930
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !1838
  call void @llvm.dbg.value(metadata i8 %562, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %561, metadata !1790, metadata !DIExpression()), !dbg !1838
  %563 = icmp ult i64 %561, %554, !dbg !2260
  br i1 %563, label %564, label %566, !dbg !2263

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2260
  store i8 %556, i8* %565, align 1, !dbg !2260, !tbaa !1369
  br label %566, !dbg !2260

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %567, metadata !1790, metadata !DIExpression()), !dbg !1838
  %568 = and i8 %555, 1, !dbg !2264
  %569 = icmp eq i8 %568, 0, !dbg !2264
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2266
  call void @llvm.dbg.value(metadata i8 %570, metadata !1799, metadata !DIExpression()), !dbg !1838
  br label %571, !dbg !2267

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2221
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !1838
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !1855
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2212
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !1859
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !1838
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !1861
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %578, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %577, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %576, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %575, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %574, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %573, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %572, metadata !1789, metadata !DIExpression()), !dbg !1838
  %580 = add i64 %572, 1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %580, metadata !1789, metadata !DIExpression()), !dbg !1838
  br label %122, !dbg !2269, !llvm.loop !2270

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %127, metadata !1797, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %128, metadata !1798, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 %129, metadata !1799, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  %583 = icmp eq i64 %124, 0, !dbg !2272
  %584 = and i1 %110, %583, !dbg !2274
  %585 = xor i1 %584, true, !dbg !2274
  %586 = or i1 %109, %585, !dbg !2274
  br i1 %586, label %587, label %629, !dbg !2274

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2275
  %589 = xor i1 %588, true, !dbg !2275
  %590 = and i8 %128, 1, !dbg !2277
  %591 = icmp eq i8 %590, 0, !dbg !2277
  %592 = or i1 %591, %589, !dbg !2275
  br i1 %592, label %602, label %593, !dbg !2275

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2278
  %595 = icmp eq i8 %594, 0, !dbg !2278
  br i1 %595, label %598, label %596, !dbg !2281

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %94, metadata !1787, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %95, metadata !1788, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %125, metadata !1791, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %582, metadata !1783, metadata !DIExpression()), !dbg !1838
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2282
  br label %645, !dbg !2283

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2284
  %600 = icmp ne i64 %125, 0, !dbg !2286
  %601 = and i1 %600, %599, !dbg !2287
  br i1 %601, label %26, label %602, !dbg !2287

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %130, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  %603 = icmp ne i8* %97, null, !dbg !2288
  %604 = and i1 %603, %109, !dbg !2290
  br i1 %604, label %605, label %620, !dbg !2290

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %124, metadata !1790, metadata !DIExpression()), !dbg !1838
  %606 = load i8, i8* %97, align 1, !dbg !2291, !tbaa !1369
  %607 = icmp eq i8 %606, 0, !dbg !2294
  br i1 %607, label %620, label %608, !dbg !2294

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !1792, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %611, metadata !1790, metadata !DIExpression()), !dbg !1838
  %612 = icmp ult i64 %611, %130, !dbg !2295
  br i1 %612, label %613, label %615, !dbg !2298

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2295
  store i8 %609, i8* %614, align 1, !dbg !2295, !tbaa !1369
  br label %615, !dbg !2295

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %616, metadata !1790, metadata !DIExpression()), !dbg !1838
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2299
  call void @llvm.dbg.value(metadata i8* %617, metadata !1792, metadata !DIExpression()), !dbg !1838
  %618 = load i8, i8* %617, align 1, !dbg !2291, !tbaa !1369
  %619 = icmp eq i8 %618, 0, !dbg !2294
  br i1 %619, label %620, label %608, !dbg !2294, !llvm.loop !2300

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !1892
  call void @llvm.dbg.value(metadata i64 %621, metadata !1790, metadata !DIExpression()), !dbg !1838
  %622 = icmp ult i64 %621, %130, !dbg !2302
  br i1 %622, label %623, label %645, !dbg !2304

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2305
  store i8 0, i8* %624, align 1, !dbg !2306, !tbaa !1369
  br label %645, !dbg !2305

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %630, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.label(metadata !1837), !dbg !2307
  %627 = icmp eq i8 %101, 0, !dbg !2308
  %628 = select i1 %627, i32 2, i32 4, !dbg !2308
  br label %635, !dbg !2308

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !1781, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i64 %630, metadata !1783, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.label(metadata !1837), !dbg !2307
  %632 = icmp eq i32 %93, 2, !dbg !2310
  %633 = icmp eq i8 %101, 0, !dbg !2308
  %634 = select i1 %633, i32 2, i32 4, !dbg !2308
  br i1 %632, label %635, label %639, !dbg !2308

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2308

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !1784, metadata !DIExpression()), !dbg !1838
  %643 = and i32 %5, -3, !dbg !2311
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2312
  br label %645, !dbg !2313

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2314
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2319, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 %1, metadata !2320, metadata !DIExpression()), !dbg !2323
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !2324
  call void @llvm.dbg.value(metadata i8* %3, metadata !2321, metadata !DIExpression()), !dbg !2323
  %4 = icmp eq i8* %3, %0, !dbg !2325
  br i1 %4, label %5, label %71, !dbg !2327

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %6, metadata !2322, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %6, metadata !2329, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8* undef, metadata !2335, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 85, metadata !2336, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 84, metadata !2337, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 70, metadata !2338, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 45, metadata !2339, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 56, metadata !2340, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2341, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i8 0, metadata !2344, metadata !DIExpression()), !dbg !2345
  %7 = load i8, i8* %6, align 1, !dbg !2348, !tbaa !1369
  %8 = and i8 %7, -33, !dbg !2348
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2348

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2350, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8* undef, metadata !2355, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 84, metadata !2356, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 70, metadata !2357, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 45, metadata !2358, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 56, metadata !2359, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2360, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2361, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2364
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2368
  %11 = load i8, i8* %10, align 1, !dbg !2368, !tbaa !1369
  %12 = and i8 %11, -33, !dbg !2368
  %13 = icmp eq i8 %12, 84, !dbg !2368
  br i1 %13, label %14, label %68, !dbg !2368

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8* undef, metadata !2375, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 70, metadata !2376, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 45, metadata !2377, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 56, metadata !2378, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2379, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2380, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 0, metadata !2382, metadata !DIExpression()), !dbg !2383
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2387
  %16 = load i8, i8* %15, align 1, !dbg !2387, !tbaa !1369
  %17 = and i8 %16, -33, !dbg !2387
  %18 = icmp eq i8 %17, 70, !dbg !2387
  br i1 %18, label %19, label %68, !dbg !2387

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2389, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8* undef, metadata !2394, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 45, metadata !2395, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 56, metadata !2396, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 0, metadata !2397, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 0, metadata !2398, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2401
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2405
  %21 = load i8, i8* %20, align 1, !dbg !2405, !tbaa !1369
  %22 = icmp eq i8 %21, 45, !dbg !2405
  br i1 %22, label %23, label %68, !dbg !2407

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2408, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* undef, metadata !2413, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 56, metadata !2414, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 0, metadata !2418, metadata !DIExpression()), !dbg !2419
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2423
  %25 = load i8, i8* %24, align 1, !dbg !2423, !tbaa !1369
  %26 = icmp eq i8 %25, 56, !dbg !2423
  br i1 %26, label %27, label %68, !dbg !2425

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2426, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* undef, metadata !2431, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2436
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2440
  %29 = load i8, i8* %28, align 1, !dbg !2440, !tbaa !1369
  %30 = icmp eq i8 %29, 0, !dbg !2440
  br i1 %30, label %31, label %68, !dbg !2442

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2443, !tbaa !1369
  %33 = icmp eq i8 %32, 96, !dbg !2444
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !2443
  br label %71, !dbg !2445

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2350, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8* undef, metadata !2355, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 66, metadata !2356, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 49, metadata !2357, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 56, metadata !2358, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 48, metadata !2359, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 51, metadata !2360, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 48, metadata !2361, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 0, metadata !2362, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 0, metadata !2363, metadata !DIExpression()), !dbg !2446
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2450
  %37 = load i8, i8* %36, align 1, !dbg !2450, !tbaa !1369
  %38 = and i8 %37, -33, !dbg !2450
  %39 = icmp eq i8 %38, 66, !dbg !2450
  br i1 %39, label %40, label %68, !dbg !2450

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2370, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8* undef, metadata !2375, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 49, metadata !2376, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 56, metadata !2377, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 48, metadata !2378, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 51, metadata !2379, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 48, metadata !2380, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 0, metadata !2381, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8 0, metadata !2382, metadata !DIExpression()), !dbg !2451
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2453
  %42 = load i8, i8* %41, align 1, !dbg !2453, !tbaa !1369
  %43 = icmp eq i8 %42, 49, !dbg !2453
  br i1 %43, label %44, label %68, !dbg !2454

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2389, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8* undef, metadata !2394, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 56, metadata !2395, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 48, metadata !2396, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 51, metadata !2397, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 48, metadata !2398, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 0, metadata !2399, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8 0, metadata !2400, metadata !DIExpression()), !dbg !2455
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2457
  %46 = load i8, i8* %45, align 1, !dbg !2457, !tbaa !1369
  %47 = icmp eq i8 %46, 56, !dbg !2457
  br i1 %47, label %48, label %68, !dbg !2458

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2408, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* undef, metadata !2413, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 48, metadata !2414, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 51, metadata !2415, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 48, metadata !2416, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 0, metadata !2417, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8 0, metadata !2418, metadata !DIExpression()), !dbg !2459
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2461
  %50 = load i8, i8* %49, align 1, !dbg !2461, !tbaa !1369
  %51 = icmp eq i8 %50, 48, !dbg !2461
  br i1 %51, label %52, label %68, !dbg !2462

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2426, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* undef, metadata !2431, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 51, metadata !2432, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 48, metadata !2433, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2463
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2465
  %54 = load i8, i8* %53, align 1, !dbg !2465, !tbaa !1369
  %55 = icmp eq i8 %54, 51, !dbg !2465
  br i1 %55, label %56, label %68, !dbg !2466

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2467, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* undef, metadata !2472, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 48, metadata !2473, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 0, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8 0, metadata !2475, metadata !DIExpression()), !dbg !2476
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2480
  %58 = load i8, i8* %57, align 1, !dbg !2480, !tbaa !1369
  %59 = icmp eq i8 %58, 48, !dbg !2480
  br i1 %59, label %60, label %68, !dbg !2482

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2483, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8* undef, metadata !2488, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 0, metadata !2490, metadata !DIExpression()), !dbg !2491
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2495
  %62 = load i8, i8* %61, align 1, !dbg !2495, !tbaa !1369
  %63 = icmp eq i8 %62, 0, !dbg !2495
  br i1 %63, label %64, label %68, !dbg !2497

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2498, !tbaa !1369
  %66 = icmp eq i8 %65, 96, !dbg !2499
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !2498
  br label %71, !dbg !2500

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2501
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !2502
  br label %71, !dbg !2503

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2323
  ret i8* %72, !dbg !2504
}

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #16

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #17

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !397 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !401 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #18

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2505 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2509, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i64 %1, metadata !2510, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2511, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8* %0, metadata !2513, metadata !DIExpression()) #12, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %1, metadata !2518, metadata !DIExpression()) #12, !dbg !2526
  call void @llvm.dbg.value(metadata i64* null, metadata !2519, metadata !DIExpression()) #12, !dbg !2526
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2520, metadata !DIExpression()) #12, !dbg !2526
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2528
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2528
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2521, metadata !DIExpression()) #12, !dbg !2526
  %6 = tail call i32* @__errno_location() #23, !dbg !2529
  %7 = load i32, i32* %6, align 4, !dbg !2529, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %7, metadata !2522, metadata !DIExpression()) #12, !dbg !2526
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2530
  %9 = load i32, i32* %8, align 4, !dbg !2530, !tbaa !1723
  %10 = or i32 %9, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %10, metadata !2523, metadata !DIExpression()) #12, !dbg !2526
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2532
  %12 = load i32, i32* %11, align 8, !dbg !2532, !tbaa !1672
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2533
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2534
  %15 = load i8*, i8** %14, align 8, !dbg !2534, !tbaa !1746
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2535
  %17 = load i8*, i8** %16, align 8, !dbg !2535, !tbaa !1749
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !2536
  %19 = add i64 %18, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i64 %19, metadata !2524, metadata !DIExpression()) #12, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %19, metadata !2538, metadata !DIExpression()) #12, !dbg !2543
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !2545
  call void @llvm.dbg.value(metadata i8* %20, metadata !2525, metadata !DIExpression()) #12, !dbg !2526
  %21 = load i32, i32* %11, align 8, !dbg !2546, !tbaa !1672
  %22 = load i8*, i8** %14, align 8, !dbg !2547, !tbaa !1746
  %23 = load i8*, i8** %16, align 8, !dbg !2548, !tbaa !1749
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !2549
  store i32 %7, i32* %6, align 4, !dbg !2550, !tbaa !1258
  ret i8* %20, !dbg !2551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2514 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2513, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %1, metadata !2518, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64* %2, metadata !2519, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2520, metadata !DIExpression()), !dbg !2552
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2553
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2553
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2521, metadata !DIExpression()), !dbg !2552
  %7 = tail call i32* @__errno_location() #23, !dbg !2554
  %8 = load i32, i32* %7, align 4, !dbg !2554, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %8, metadata !2522, metadata !DIExpression()), !dbg !2552
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2555
  %10 = load i32, i32* %9, align 4, !dbg !2555, !tbaa !1723
  %11 = icmp ne i64* %2, null, !dbg !2556
  %12 = xor i1 %11, true, !dbg !2556
  %13 = zext i1 %12 to i32, !dbg !2556
  %14 = or i32 %10, %13, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %14, metadata !2523, metadata !DIExpression()), !dbg !2552
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2558
  %16 = load i32, i32* %15, align 8, !dbg !2558, !tbaa !1672
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2559
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2560
  %19 = load i8*, i8** %18, align 8, !dbg !2560, !tbaa !1746
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2561
  %21 = load i8*, i8** %20, align 8, !dbg !2561, !tbaa !1749
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2562
  %23 = add i64 %22, 1, !dbg !2563
  call void @llvm.dbg.value(metadata i64 %23, metadata !2524, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %23, metadata !2538, metadata !DIExpression()) #12, !dbg !2564
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !2566
  call void @llvm.dbg.value(metadata i8* %24, metadata !2525, metadata !DIExpression()), !dbg !2552
  %25 = load i32, i32* %15, align 8, !dbg !2567, !tbaa !1672
  %26 = load i8*, i8** %18, align 8, !dbg !2568, !tbaa !1746
  %27 = load i8*, i8** %20, align 8, !dbg !2569, !tbaa !1749
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2570
  store i32 %8, i32* %7, align 4, !dbg !2571, !tbaa !1258
  br i1 %11, label %29, label %30, !dbg !2572

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2573, !tbaa !1372
  br label %30, !dbg !2575

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2577 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2581, !tbaa !1197
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2579, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 1, metadata !2580, metadata !DIExpression()), !dbg !2582
  %2 = load i32, i32* @nslots, align 4, !dbg !2583, !tbaa !1258
  %3 = icmp sgt i32 %2, 1, !dbg !2586
  br i1 %3, label %4, label %12, !dbg !2587

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2580, metadata !DIExpression()), !dbg !2582
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2588
  %7 = load i8*, i8** %6, align 8, !dbg !2588, !tbaa !2589
  tail call void @free(i8* %7) #12, !dbg !2591
  %8 = add nuw nsw i64 %5, 1, !dbg !2592
  call void @llvm.dbg.value(metadata i64 %8, metadata !2580, metadata !DIExpression()), !dbg !2582
  %9 = load i32, i32* @nslots, align 4, !dbg !2583, !tbaa !1258
  %10 = sext i32 %9 to i64, !dbg !2586
  %11 = icmp slt i64 %8, %10, !dbg !2586
  br i1 %11, label %4, label %12, !dbg !2587, !llvm.loop !2593

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2595
  %14 = load i8*, i8** %13, align 8, !dbg !2595, !tbaa !2589
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2597
  br i1 %15, label %17, label %16, !dbg !2598

16:                                               ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !2599
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2601, !tbaa !2602
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2603, !tbaa !2589
  br label %17, !dbg !2604

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2605
  br i1 %18, label %21, label %19, !dbg !2607

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2608
  tail call void @free(i8* %20) #12, !dbg !2610
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2611, !tbaa !1197
  br label %21, !dbg !2612

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2613, !tbaa !1258
  ret void, !dbg !2614
}

; Function Attrs: nounwind
declare !dbg !374 void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2615 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* %1, metadata !2618, metadata !DIExpression()), !dbg !2619
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2620
  ret i8* %3, !dbg !2621
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2622 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8* %1, metadata !2627, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i64 %2, metadata !2628, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2629, metadata !DIExpression()), !dbg !2641
  %5 = tail call i32* @__errno_location() #23, !dbg !2642
  %6 = load i32, i32* %5, align 4, !dbg !2642, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %6, metadata !2630, metadata !DIExpression()), !dbg !2641
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2643, !tbaa !1197
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2631, metadata !DIExpression()), !dbg !2641
  %8 = icmp slt i32 %0, 0, !dbg !2644
  br i1 %8, label %9, label %10, !dbg !2646

9:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2647
  unreachable, !dbg !2647

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2648, !tbaa !1258
  %12 = icmp sgt i32 %11, %0, !dbg !2649
  br i1 %12, label %34, label %13, !dbg !2650

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2651
  call void @llvm.dbg.value(metadata i1 %14, metadata !2632, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2635, metadata !DIExpression()), !dbg !2652
  %15 = icmp eq i32 %0, 2147483647, !dbg !2653
  br i1 %15, label %16, label %17, !dbg !2655

16:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !2656
  unreachable, !dbg !2656

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2657
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2657
  %20 = add nuw nsw i32 %0, 1, !dbg !2658
  %21 = sext i32 %20 to i64, !dbg !2659
  %22 = shl nuw nsw i64 %21, 4, !dbg !2660
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !2661
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2661
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2631, metadata !DIExpression()), !dbg !2641
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2662, !tbaa !1197
  br i1 %14, label %25, label %26, !dbg !2663

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2664, !tbaa.struct !2666
  br label %26, !dbg !2667

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2668, !tbaa !1258
  %28 = sext i32 %27 to i64, !dbg !2669
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2669
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2670
  %31 = sub nsw i32 %20, %27, !dbg !2671
  %32 = sext i32 %31 to i64, !dbg !2672
  %33 = shl nsw i64 %32, 4, !dbg !2673
  call void @llvm.dbg.value(metadata i8* %30, metadata !2071, metadata !DIExpression()) #12, !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2077, metadata !DIExpression()) #12, !dbg !2674
  call void @llvm.dbg.value(metadata i64 %33, metadata !2078, metadata !DIExpression()) #12, !dbg !2674
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #12, !dbg !2676
  store i32 %20, i32* @nslots, align 4, !dbg !2677, !tbaa !1258
  br label %34, !dbg !2678

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2641
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2631, metadata !DIExpression()), !dbg !2641
  %36 = zext i32 %0 to i64, !dbg !2679
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2680
  %38 = load i64, i64* %37, align 8, !dbg !2680, !tbaa !2602
  call void @llvm.dbg.value(metadata i64 %38, metadata !2636, metadata !DIExpression()), !dbg !2681
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2682
  %40 = load i8*, i8** %39, align 8, !dbg !2682, !tbaa !2589
  call void @llvm.dbg.value(metadata i8* %40, metadata !2638, metadata !DIExpression()), !dbg !2681
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2683
  %42 = load i32, i32* %41, align 4, !dbg !2683, !tbaa !1723
  %43 = or i32 %42, 1, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %43, metadata !2639, metadata !DIExpression()), !dbg !2681
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2685
  %45 = load i32, i32* %44, align 8, !dbg !2685, !tbaa !1672
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2686
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2687
  %48 = load i8*, i8** %47, align 8, !dbg !2687, !tbaa !1746
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2688
  %50 = load i8*, i8** %49, align 8, !dbg !2688, !tbaa !1749
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2689
  call void @llvm.dbg.value(metadata i64 %51, metadata !2640, metadata !DIExpression()), !dbg !2681
  %52 = icmp ugt i64 %38, %51, !dbg !2690
  br i1 %52, label %63, label %53, !dbg !2692

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2693
  call void @llvm.dbg.value(metadata i64 %54, metadata !2636, metadata !DIExpression()), !dbg !2681
  store i64 %54, i64* %37, align 8, !dbg !2695, !tbaa !2602
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2696
  br i1 %55, label %57, label %56, !dbg !2698

56:                                               ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !2699
  br label %57, !dbg !2699

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2538, metadata !DIExpression()) #12, !dbg !2700
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !2702
  call void @llvm.dbg.value(metadata i8* %58, metadata !2638, metadata !DIExpression()), !dbg !2681
  store i8* %58, i8** %39, align 8, !dbg !2703, !tbaa !2589
  %59 = load i32, i32* %44, align 8, !dbg !2704, !tbaa !1672
  %60 = load i8*, i8** %47, align 8, !dbg !2705, !tbaa !1746
  %61 = load i8*, i8** %49, align 8, !dbg !2706, !tbaa !1749
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2707
  br label %63, !dbg !2708

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2681
  call void @llvm.dbg.value(metadata i8* %64, metadata !2638, metadata !DIExpression()), !dbg !2681
  store i32 %6, i32* %5, align 4, !dbg !2709, !tbaa !1258
  ret i8* %64, !dbg !2710
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %2, metadata !2717, metadata !DIExpression()), !dbg !2718
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2719
  ret i8* %4, !dbg !2720
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2721 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2723, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()) #12, !dbg !2725
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()) #12, !dbg !2725
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2727
  ret i8* %2, !dbg !2728
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2729 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2733, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %1, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 0, metadata !2715, metadata !DIExpression()) #12, !dbg !2736
  call void @llvm.dbg.value(metadata i8* %0, metadata !2716, metadata !DIExpression()) #12, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %1, metadata !2717, metadata !DIExpression()) #12, !dbg !2736
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !2738
  ret i8* %3, !dbg !2739
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2740 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2742, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i32 %1, metadata !2743, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i8* %2, metadata !2744, metadata !DIExpression()), !dbg !2746
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2747
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2747
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2745, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %1, metadata !2749, metadata !DIExpression()) #12, !dbg !2755
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2754, metadata !DIExpression()) #12, !dbg !2757
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2757, !alias.scope !2758
  %6 = icmp eq i32 %1, 10, !dbg !2761
  br i1 %6, label %7, label %8, !dbg !2763

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2764, !noalias !2758
  unreachable, !dbg !2764

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2765
  store i32 %1, i32* %9, align 8, !dbg !2766, !tbaa !1672, !alias.scope !2758
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2767
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2768
  ret i8* %10, !dbg !2769
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2770 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i32 %1, metadata !2775, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i8* %2, metadata !2776, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %3, metadata !2777, metadata !DIExpression()), !dbg !2779
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2780
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2780
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2778, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %1, metadata !2749, metadata !DIExpression()) #12, !dbg !2782
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2754, metadata !DIExpression()) #12, !dbg !2784
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #12, !dbg !2784, !alias.scope !2785
  %7 = icmp eq i32 %1, 10, !dbg !2788
  br i1 %7, label %8, label %9, !dbg !2789

8:                                                ; preds = %4
  tail call void @abort() #22, !dbg !2790, !noalias !2785
  unreachable, !dbg !2790

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2791
  store i32 %1, i32* %10, align 8, !dbg !2792, !tbaa !1672, !alias.scope !2785
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2793
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2794
  ret i8* %11, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2796 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2754, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2745, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i8* %1, metadata !2801, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i32 0, metadata !2742, metadata !DIExpression()) #12, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()) #12, !dbg !2807
  call void @llvm.dbg.value(metadata i8* %1, metadata !2744, metadata !DIExpression()) #12, !dbg !2807
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2808
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %0, metadata !2749, metadata !DIExpression()) #12, !dbg !2809
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #12, !dbg !2802, !alias.scope !2810
  %5 = icmp eq i32 %0, 10, !dbg !2813
  br i1 %5, label %6, label %7, !dbg !2814

6:                                                ; preds = %2
  tail call void @abort() #22, !dbg !2815, !noalias !2810
  unreachable, !dbg !2815

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2816
  store i32 %0, i32* %8, align 8, !dbg !2817, !tbaa !1672, !alias.scope !2810
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2818
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2819
  ret i8* %9, !dbg !2820
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2821 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2754, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2778, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.value(metadata i32 %0, metadata !2825, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %1, metadata !2826, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %2, metadata !2827, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()) #12, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %0, metadata !2775, metadata !DIExpression()) #12, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %1, metadata !2776, metadata !DIExpression()) #12, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %2, metadata !2777, metadata !DIExpression()) #12, !dbg !2833
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2834
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2834
  call void @llvm.dbg.value(metadata i32 %0, metadata !2749, metadata !DIExpression()) #12, !dbg !2835
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #12, !dbg !2828, !alias.scope !2836
  %6 = icmp eq i32 %0, 10, !dbg !2839
  br i1 %6, label %7, label %8, !dbg !2840

7:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2841, !noalias !2836
  unreachable, !dbg !2841

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2842
  store i32 %0, i32* %9, align 8, !dbg !2843, !tbaa !1672, !alias.scope !2836
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !2844
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2845
  ret i8* %10, !dbg !2846
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2847 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2851, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 %2, metadata !2853, metadata !DIExpression()), !dbg !2855
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2856
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2856
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2854, metadata !DIExpression()), !dbg !2857
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2858, !tbaa.struct !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1690, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %2, metadata !1691, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i32 1, metadata !1692, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i8 %2, metadata !1693, metadata !DIExpression()), !dbg !2860
  %6 = lshr i8 %2, 5, !dbg !2862
  %7 = zext i8 %6 to i64, !dbg !2862
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2863
  call void @llvm.dbg.value(metadata i32* %8, metadata !1694, metadata !DIExpression()), !dbg !2860
  %9 = and i8 %2, 31, !dbg !2864
  %10 = zext i8 %9 to i32, !dbg !2864
  call void @llvm.dbg.value(metadata i32 %10, metadata !1696, metadata !DIExpression()), !dbg !2860
  %11 = load i32, i32* %8, align 4, !dbg !2865, !tbaa !1258
  %12 = lshr i32 %11, %10, !dbg !2866
  %13 = and i32 %12, 1, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %13, metadata !1697, metadata !DIExpression()), !dbg !2860
  %14 = xor i32 %13, 1, !dbg !2868
  %15 = shl i32 %14, %10, !dbg !2869
  %16 = xor i32 %15, %11, !dbg !2870
  store i32 %16, i32* %8, align 4, !dbg !2870, !tbaa !1258
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2871
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !2872
  ret i8* %17, !dbg !2873
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2874 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2854, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8 %1, metadata !2879, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %0, metadata !2851, metadata !DIExpression()) #12, !dbg !2883
  call void @llvm.dbg.value(metadata i64 -1, metadata !2852, metadata !DIExpression()) #12, !dbg !2883
  call void @llvm.dbg.value(metadata i8 %1, metadata !2853, metadata !DIExpression()) #12, !dbg !2883
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2884
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2884
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2885, !tbaa.struct !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1690, metadata !DIExpression()) #12, !dbg !2886
  call void @llvm.dbg.value(metadata i8 %1, metadata !1691, metadata !DIExpression()) #12, !dbg !2886
  call void @llvm.dbg.value(metadata i32 1, metadata !1692, metadata !DIExpression()) #12, !dbg !2886
  call void @llvm.dbg.value(metadata i8 %1, metadata !1693, metadata !DIExpression()) #12, !dbg !2886
  %5 = lshr i8 %1, 5, !dbg !2888
  %6 = zext i8 %5 to i64, !dbg !2888
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2889
  call void @llvm.dbg.value(metadata i32* %7, metadata !1694, metadata !DIExpression()) #12, !dbg !2886
  %8 = and i8 %1, 31, !dbg !2890
  %9 = zext i8 %8 to i32, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %9, metadata !1696, metadata !DIExpression()) #12, !dbg !2886
  %10 = load i32, i32* %7, align 4, !dbg !2891, !tbaa !1258
  %11 = lshr i32 %10, %9, !dbg !2892
  %12 = and i32 %11, 1, !dbg !2893
  call void @llvm.dbg.value(metadata i32 %12, metadata !1697, metadata !DIExpression()) #12, !dbg !2886
  %13 = xor i32 %12, 1, !dbg !2894
  %14 = shl i32 %13, %9, !dbg !2895
  %15 = xor i32 %14, %10, !dbg !2896
  store i32 %15, i32* %7, align 4, !dbg !2896, !tbaa !1258
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !2897
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2898
  ret i8* %16, !dbg !2899
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2900 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2854, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i8* %0, metadata !2902, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()) #12, !dbg !2907
  call void @llvm.dbg.value(metadata i8 58, metadata !2879, metadata !DIExpression()) #12, !dbg !2907
  call void @llvm.dbg.value(metadata i8* %0, metadata !2851, metadata !DIExpression()) #12, !dbg !2908
  call void @llvm.dbg.value(metadata i64 -1, metadata !2852, metadata !DIExpression()) #12, !dbg !2908
  call void @llvm.dbg.value(metadata i8 58, metadata !2853, metadata !DIExpression()) #12, !dbg !2908
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2909
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2909
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2910, !tbaa.struct !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1690, metadata !DIExpression()) #12, !dbg !2911
  call void @llvm.dbg.value(metadata i8 58, metadata !1691, metadata !DIExpression()) #12, !dbg !2911
  call void @llvm.dbg.value(metadata i32 1, metadata !1692, metadata !DIExpression()) #12, !dbg !2911
  call void @llvm.dbg.value(metadata i8 58, metadata !1693, metadata !DIExpression()) #12, !dbg !2911
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2913
  call void @llvm.dbg.value(metadata i32* %4, metadata !1694, metadata !DIExpression()) #12, !dbg !2911
  call void @llvm.dbg.value(metadata i32 26, metadata !1696, metadata !DIExpression()) #12, !dbg !2911
  %5 = load i32, i32* %4, align 4, !dbg !2914, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %5, metadata !1697, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2911
  %6 = or i32 %5, 67108864, !dbg !2915
  store i32 %6, i32* %4, align 4, !dbg !2915, !tbaa !1258
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !2916
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !2917
  ret i8* %7, !dbg !2918
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2919 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2854, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8* %0, metadata !2921, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2922, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i8* %0, metadata !2851, metadata !DIExpression()) #12, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %1, metadata !2852, metadata !DIExpression()) #12, !dbg !2926
  call void @llvm.dbg.value(metadata i8 58, metadata !2853, metadata !DIExpression()) #12, !dbg !2926
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2927
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2928, !tbaa.struct !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1690, metadata !DIExpression()) #12, !dbg !2929
  call void @llvm.dbg.value(metadata i8 58, metadata !1691, metadata !DIExpression()) #12, !dbg !2929
  call void @llvm.dbg.value(metadata i32 1, metadata !1692, metadata !DIExpression()) #12, !dbg !2929
  call void @llvm.dbg.value(metadata i8 58, metadata !1693, metadata !DIExpression()) #12, !dbg !2929
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2931
  call void @llvm.dbg.value(metadata i32* %5, metadata !1694, metadata !DIExpression()) #12, !dbg !2929
  call void @llvm.dbg.value(metadata i32 26, metadata !1696, metadata !DIExpression()) #12, !dbg !2929
  %6 = load i32, i32* %5, align 4, !dbg !2932, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %6, metadata !1697, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #12, !dbg !2929
  %7 = or i32 %6, 67108864, !dbg !2933
  store i32 %7, i32* %5, align 4, !dbg !2933, !tbaa !1258
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !2934
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !2935
  ret i8* %8, !dbg !2936
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2937 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2754, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2943
  call void @llvm.dbg.value(metadata i32 %0, metadata !2939, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 %1, metadata !2940, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i8* %2, metadata !2941, metadata !DIExpression()), !dbg !2945
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2946
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2942, metadata !DIExpression()), !dbg !2947
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2948
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2948
  call void @llvm.dbg.value(metadata i32 %1, metadata !2749, metadata !DIExpression()) #12, !dbg !2949
  call void @llvm.dbg.value(metadata i32 0, metadata !2754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2949
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !2943, !alias.scope !2950
  %8 = icmp eq i32 %1, 10, !dbg !2953
  br i1 %8, label %9, label %10, !dbg !2954

9:                                                ; preds = %3
  tail call void @abort() #22, !dbg !2955, !noalias !2950
  unreachable, !dbg !2955

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2754, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2949
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2948
  store i32 %1, i32* %11, align 8, !dbg !2948, !tbaa.struct !2859
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2948
  %13 = bitcast i32* %12 to i8*, !dbg !2948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !2948, !tbaa.struct !2859
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1690, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8 58, metadata !1691, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 1, metadata !1692, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i8 58, metadata !1693, metadata !DIExpression()), !dbg !2956
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2958
  call void @llvm.dbg.value(metadata i32* %14, metadata !1694, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i32 26, metadata !1696, metadata !DIExpression()), !dbg !2956
  %15 = load i32, i32* %14, align 4, !dbg !2959, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %15, metadata !1697, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2956
  %16 = or i32 %15, 67108864, !dbg !2960
  store i32 %16, i32* %14, align 4, !dbg !2960, !tbaa !1258
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2961
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2962
  ret i8* %17, !dbg !2963
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !2964 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2972, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata i32 %0, metadata !2968, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8* %1, metadata !2969, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8* %2, metadata !2970, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8* %3, metadata !2971, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32 %0, metadata !2977, metadata !DIExpression()) #12, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %1, metadata !2978, metadata !DIExpression()) #12, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %2, metadata !2979, metadata !DIExpression()) #12, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %3, metadata !2980, metadata !DIExpression()) #12, !dbg !2985
  call void @llvm.dbg.value(metadata i64 -1, metadata !2981, metadata !DIExpression()) #12, !dbg !2985
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2986
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !2986
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !2987, !tbaa.struct !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1730, metadata !DIExpression()) #12, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %1, metadata !1731, metadata !DIExpression()) #12, !dbg !2988
  call void @llvm.dbg.value(metadata i8* %2, metadata !1732, metadata !DIExpression()) #12, !dbg !2988
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1730, metadata !DIExpression()) #12, !dbg !2988
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2990
  store i32 10, i32* %7, align 8, !dbg !2991, !tbaa !1672
  %8 = icmp ne i8* %1, null, !dbg !2992
  %9 = icmp ne i8* %2, null, !dbg !2993
  %10 = and i1 %8, %9, !dbg !2994
  br i1 %10, label %12, label %11, !dbg !2994

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !2995
  unreachable, !dbg !2995

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2996
  store i8* %1, i8** %13, align 8, !dbg !2997, !tbaa !1746
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2998
  store i8* %2, i8** %14, align 8, !dbg !2999, !tbaa !1749
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3000
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3001
  ret i8* %15, !dbg !3002
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !2973 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2977, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8* %1, metadata !2978, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8* %2, metadata !2979, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i8* %3, metadata !2980, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %4, metadata !2981, metadata !DIExpression()), !dbg !3003
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3004
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3004
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2972, metadata !DIExpression()), !dbg !3005
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3006, !tbaa.struct !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1730, metadata !DIExpression()) #12, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %1, metadata !1731, metadata !DIExpression()) #12, !dbg !3007
  call void @llvm.dbg.value(metadata i8* %2, metadata !1732, metadata !DIExpression()) #12, !dbg !3007
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1730, metadata !DIExpression()) #12, !dbg !3007
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3009
  store i32 10, i32* %8, align 8, !dbg !3010, !tbaa !1672
  %9 = icmp ne i8* %1, null, !dbg !3011
  %10 = icmp ne i8* %2, null, !dbg !3012
  %11 = and i1 %9, %10, !dbg !3013
  br i1 %11, label %13, label %12, !dbg !3013

12:                                               ; preds = %5
  tail call void @abort() #22, !dbg !3014
  unreachable, !dbg !3014

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3015
  store i8* %1, i8** %14, align 8, !dbg !3016, !tbaa !1746
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3017
  store i8* %2, i8** %15, align 8, !dbg !3018, !tbaa !1749
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3019
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3020
  ret i8* %16, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3022 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2972, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i8* %0, metadata !3026, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* %1, metadata !3027, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* %2, metadata !3028, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 0, metadata !2968, metadata !DIExpression()) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %0, metadata !2969, metadata !DIExpression()) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %1, metadata !2970, metadata !DIExpression()) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %2, metadata !2971, metadata !DIExpression()) #12, !dbg !3033
  call void @llvm.dbg.value(metadata i32 0, metadata !2977, metadata !DIExpression()) #12, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()) #12, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %1, metadata !2979, metadata !DIExpression()) #12, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()) #12, !dbg !3034
  call void @llvm.dbg.value(metadata i64 -1, metadata !2981, metadata !DIExpression()) #12, !dbg !3034
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3035
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3035
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3036, !tbaa.struct !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1730, metadata !DIExpression()) #12, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %0, metadata !1731, metadata !DIExpression()) #12, !dbg !3037
  call void @llvm.dbg.value(metadata i8* %1, metadata !1732, metadata !DIExpression()) #12, !dbg !3037
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1730, metadata !DIExpression()) #12, !dbg !3037
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3039
  store i32 10, i32* %6, align 8, !dbg !3040, !tbaa !1672
  %7 = icmp ne i8* %0, null, !dbg !3041
  %8 = icmp ne i8* %1, null, !dbg !3042
  %9 = and i1 %7, %8, !dbg !3043
  br i1 %9, label %11, label %10, !dbg !3043

10:                                               ; preds = %3
  tail call void @abort() #22, !dbg !3044
  unreachable, !dbg !3044

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3045
  store i8* %0, i8** %12, align 8, !dbg !3046, !tbaa !1746
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3047
  store i8* %1, i8** %13, align 8, !dbg !3048, !tbaa !1749
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3049
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3050
  ret i8* %14, !dbg !3051
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3052 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2972, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* %0, metadata !3056, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %1, metadata !3057, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8* %2, metadata !3058, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %3, metadata !3059, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i32 0, metadata !2977, metadata !DIExpression()) #12, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()) #12, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %1, metadata !2979, metadata !DIExpression()) #12, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %2, metadata !2980, metadata !DIExpression()) #12, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %3, metadata !2981, metadata !DIExpression()) #12, !dbg !3063
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3064
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3065, !tbaa.struct !2859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1730, metadata !DIExpression()) #12, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %0, metadata !1731, metadata !DIExpression()) #12, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %1, metadata !1732, metadata !DIExpression()) #12, !dbg !3066
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1730, metadata !DIExpression()) #12, !dbg !3066
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3068
  store i32 10, i32* %7, align 8, !dbg !3069, !tbaa !1672
  %8 = icmp ne i8* %0, null, !dbg !3070
  %9 = icmp ne i8* %1, null, !dbg !3071
  %10 = and i1 %8, %9, !dbg !3072
  br i1 %10, label %12, label %11, !dbg !3072

11:                                               ; preds = %4
  tail call void @abort() #22, !dbg !3073
  unreachable, !dbg !3073

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3074
  store i8* %0, i8** %13, align 8, !dbg !3075, !tbaa !1746
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3076
  store i8* %1, i8** %14, align 8, !dbg !3077, !tbaa !1749
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !3078
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3079
  ret i8* %15, !dbg !3080
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3081 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3085, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8* %1, metadata !3086, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %2, metadata !3087, metadata !DIExpression()), !dbg !3088
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3089
  ret i8* %4, !dbg !3090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3091 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i64 %1, metadata !3096, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 0, metadata !3085, metadata !DIExpression()) #12, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !3086, metadata !DIExpression()) #12, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()) #12, !dbg !3098
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3100
  ret i8* %3, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %1, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %0, metadata !3085, metadata !DIExpression()) #12, !dbg !3109
  call void @llvm.dbg.value(metadata i8* %1, metadata !3086, metadata !DIExpression()) #12, !dbg !3109
  call void @llvm.dbg.value(metadata i64 -1, metadata !3087, metadata !DIExpression()) #12, !dbg !3109
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3111
  ret i8* %3, !dbg !3112
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3113 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 0, metadata !3106, metadata !DIExpression()) #12, !dbg !3119
  call void @llvm.dbg.value(metadata i8* %0, metadata !3107, metadata !DIExpression()) #12, !dbg !3119
  call void @llvm.dbg.value(metadata i32 0, metadata !3085, metadata !DIExpression()) #12, !dbg !3121
  call void @llvm.dbg.value(metadata i8* %0, metadata !3086, metadata !DIExpression()) #12, !dbg !3121
  call void @llvm.dbg.value(metadata i64 -1, metadata !3087, metadata !DIExpression()) #12, !dbg !3121
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !3123
  ret i8* %2, !dbg !3124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3125 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3132, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %1, metadata !3133, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %2, metadata !3134, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %3, metadata !3135, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8** %4, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %5, metadata !3137, metadata !DIExpression()), !dbg !3138
  %7 = icmp eq i8* %1, null, !dbg !3139
  br i1 %7, label %10, label %8, !dbg !3141

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !3142
  br label %12, !dbg !3142

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !3143
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i32 5) #12, !dbg !3144
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #12, !dbg !3144
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.83, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3145
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.84, i64 0, i64 0), i32 5) #12, !dbg !3146
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.85, i64 0, i64 0)) #12, !dbg !3146
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.83, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3147
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
  ], !dbg !3148

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.86, i64 0, i64 0), i32 5) #12, !dbg !3149
  %21 = load i8*, i8** %4, align 8, !dbg !3149, !tbaa !1197
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #12, !dbg !3149
  br label %147, !dbg !3151

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.87, i64 0, i64 0), i32 5) #12, !dbg !3152
  %25 = load i8*, i8** %4, align 8, !dbg !3152, !tbaa !1197
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3152
  %27 = load i8*, i8** %26, align 8, !dbg !3152, !tbaa !1197
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #12, !dbg !3152
  br label %147, !dbg !3153

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.88, i64 0, i64 0), i32 5) #12, !dbg !3154
  %31 = load i8*, i8** %4, align 8, !dbg !3154, !tbaa !1197
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3154
  %33 = load i8*, i8** %32, align 8, !dbg !3154, !tbaa !1197
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3154
  %35 = load i8*, i8** %34, align 8, !dbg !3154, !tbaa !1197
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #12, !dbg !3154
  br label %147, !dbg !3155

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.89, i64 0, i64 0), i32 5) #12, !dbg !3156
  %39 = load i8*, i8** %4, align 8, !dbg !3156, !tbaa !1197
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3156
  %41 = load i8*, i8** %40, align 8, !dbg !3156, !tbaa !1197
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3156
  %43 = load i8*, i8** %42, align 8, !dbg !3156, !tbaa !1197
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3156
  %45 = load i8*, i8** %44, align 8, !dbg !3156, !tbaa !1197
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #12, !dbg !3156
  br label %147, !dbg !3157

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.90, i64 0, i64 0), i32 5) #12, !dbg !3158
  %49 = load i8*, i8** %4, align 8, !dbg !3158, !tbaa !1197
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3158
  %51 = load i8*, i8** %50, align 8, !dbg !3158, !tbaa !1197
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3158
  %53 = load i8*, i8** %52, align 8, !dbg !3158, !tbaa !1197
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3158
  %55 = load i8*, i8** %54, align 8, !dbg !3158, !tbaa !1197
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3158
  %57 = load i8*, i8** %56, align 8, !dbg !3158, !tbaa !1197
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #12, !dbg !3158
  br label %147, !dbg !3159

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.91, i64 0, i64 0), i32 5) #12, !dbg !3160
  %61 = load i8*, i8** %4, align 8, !dbg !3160, !tbaa !1197
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3160
  %63 = load i8*, i8** %62, align 8, !dbg !3160, !tbaa !1197
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3160
  %65 = load i8*, i8** %64, align 8, !dbg !3160, !tbaa !1197
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3160
  %67 = load i8*, i8** %66, align 8, !dbg !3160, !tbaa !1197
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3160
  %69 = load i8*, i8** %68, align 8, !dbg !3160, !tbaa !1197
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3160
  %71 = load i8*, i8** %70, align 8, !dbg !3160, !tbaa !1197
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #12, !dbg !3160
  br label %147, !dbg !3161

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.92, i64 0, i64 0), i32 5) #12, !dbg !3162
  %75 = load i8*, i8** %4, align 8, !dbg !3162, !tbaa !1197
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3162
  %77 = load i8*, i8** %76, align 8, !dbg !3162, !tbaa !1197
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3162
  %79 = load i8*, i8** %78, align 8, !dbg !3162, !tbaa !1197
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3162
  %81 = load i8*, i8** %80, align 8, !dbg !3162, !tbaa !1197
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3162
  %83 = load i8*, i8** %82, align 8, !dbg !3162, !tbaa !1197
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3162
  %85 = load i8*, i8** %84, align 8, !dbg !3162, !tbaa !1197
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3162
  %87 = load i8*, i8** %86, align 8, !dbg !3162, !tbaa !1197
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #12, !dbg !3162
  br label %147, !dbg !3163

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.93, i64 0, i64 0), i32 5) #12, !dbg !3164
  %91 = load i8*, i8** %4, align 8, !dbg !3164, !tbaa !1197
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3164
  %93 = load i8*, i8** %92, align 8, !dbg !3164, !tbaa !1197
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3164
  %95 = load i8*, i8** %94, align 8, !dbg !3164, !tbaa !1197
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3164
  %97 = load i8*, i8** %96, align 8, !dbg !3164, !tbaa !1197
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3164
  %99 = load i8*, i8** %98, align 8, !dbg !3164, !tbaa !1197
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3164
  %101 = load i8*, i8** %100, align 8, !dbg !3164, !tbaa !1197
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3164
  %103 = load i8*, i8** %102, align 8, !dbg !3164, !tbaa !1197
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3164
  %105 = load i8*, i8** %104, align 8, !dbg !3164, !tbaa !1197
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #12, !dbg !3164
  br label %147, !dbg !3165

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.94, i64 0, i64 0), i32 5) #12, !dbg !3166
  %109 = load i8*, i8** %4, align 8, !dbg !3166, !tbaa !1197
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3166
  %111 = load i8*, i8** %110, align 8, !dbg !3166, !tbaa !1197
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3166
  %113 = load i8*, i8** %112, align 8, !dbg !3166, !tbaa !1197
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3166
  %115 = load i8*, i8** %114, align 8, !dbg !3166, !tbaa !1197
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3166
  %117 = load i8*, i8** %116, align 8, !dbg !3166, !tbaa !1197
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3166
  %119 = load i8*, i8** %118, align 8, !dbg !3166, !tbaa !1197
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3166
  %121 = load i8*, i8** %120, align 8, !dbg !3166, !tbaa !1197
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3166
  %123 = load i8*, i8** %122, align 8, !dbg !3166, !tbaa !1197
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3166
  %125 = load i8*, i8** %124, align 8, !dbg !3166, !tbaa !1197
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #12, !dbg !3166
  br label %147, !dbg !3167

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.95, i64 0, i64 0), i32 5) #12, !dbg !3168
  %129 = load i8*, i8** %4, align 8, !dbg !3168, !tbaa !1197
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3168
  %131 = load i8*, i8** %130, align 8, !dbg !3168, !tbaa !1197
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3168
  %133 = load i8*, i8** %132, align 8, !dbg !3168, !tbaa !1197
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3168
  %135 = load i8*, i8** %134, align 8, !dbg !3168, !tbaa !1197
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3168
  %137 = load i8*, i8** %136, align 8, !dbg !3168, !tbaa !1197
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3168
  %139 = load i8*, i8** %138, align 8, !dbg !3168, !tbaa !1197
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3168
  %141 = load i8*, i8** %140, align 8, !dbg !3168, !tbaa !1197
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3168
  %143 = load i8*, i8** %142, align 8, !dbg !3168, !tbaa !1197
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3168
  %145 = load i8*, i8** %144, align 8, !dbg !3168, !tbaa !1197
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #12, !dbg !3168
  br label %147, !dbg !3169

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3170
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3171 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3175, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %1, metadata !3176, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %2, metadata !3177, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8* %3, metadata !3178, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8** %4, metadata !3179, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 0, metadata !3180, metadata !DIExpression()), !dbg !3181
  br label %6, !dbg !3182

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3184
  call void @llvm.dbg.value(metadata i64 %7, metadata !3180, metadata !DIExpression()), !dbg !3181
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3185
  %9 = load i8*, i8** %8, align 8, !dbg !3185, !tbaa !1197
  %10 = icmp eq i8* %9, null, !dbg !3187
  %11 = add i64 %7, 1, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %11, metadata !3180, metadata !DIExpression()), !dbg !3181
  br i1 %10, label %12, label %6, !dbg !3187, !llvm.loop !3189

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %7, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %7, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %7, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %7, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i64 %7, metadata !3180, metadata !DIExpression()), !dbg !3181
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3191
  ret void, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3193 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3204, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %1, metadata !3205, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %2, metadata !3206, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i8* %3, metadata !3207, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3208, metadata !DIExpression()), !dbg !3212
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3213
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3213
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3210, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 0, metadata !3209, metadata !DIExpression()), !dbg !3212
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3215
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3215
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3215
  %11 = load i32, i32* %8, align 8, !dbg !3218
  %12 = icmp ult i32 %11, 41, !dbg !3218
  br i1 %12, label %13, label %18, !dbg !3218

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3218
  %15 = zext i32 %11 to i64, !dbg !3218
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3218
  %17 = add nuw nsw i32 %11, 8, !dbg !3218
  store i32 %17, i32* %8, align 8, !dbg !3218
  br label %21, !dbg !3218

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3218
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3218
  store i8* %20, i8** %9, align 8, !dbg !3218
  br label %21, !dbg !3218

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3218
  %25 = load i8*, i8** %24, align 8, !dbg !3218
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3219
  store i8* %25, i8** %26, align 16, !dbg !3220, !tbaa !1197
  %27 = icmp eq i8* %25, null, !dbg !3221
  br i1 %27, label %30, label %28, !dbg !3222

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3209, metadata !DIExpression()), !dbg !3212
  %29 = icmp ult i32 %22, 41, !dbg !3218
  br i1 %29, label %35, label %32, !dbg !3218

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3223
  call void @llvm.dbg.value(metadata i64 %31, metadata !3209, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %31, metadata !3209, metadata !DIExpression()), !dbg !3212
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3224
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !3225
  ret void, !dbg !3225

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3218
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3218
  store i8* %34, i8** %9, align 8, !dbg !3218
  br label %40, !dbg !3218

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3218
  %37 = zext i32 %22 to i64, !dbg !3218
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3218
  %39 = add nuw nsw i32 %22, 8, !dbg !3218
  store i32 %39, i32* %8, align 8, !dbg !3218
  br label %40, !dbg !3218

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3218
  %44 = load i8*, i8** %43, align 8, !dbg !3218
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3219
  store i8* %44, i8** %45, align 8, !dbg !3220, !tbaa !1197
  %46 = icmp eq i8* %44, null, !dbg !3221
  br i1 %46, label %30, label %47, !dbg !3222

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3209, metadata !DIExpression()), !dbg !3212
  %48 = icmp ult i32 %41, 41, !dbg !3218
  br i1 %48, label %52, label %49, !dbg !3218

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3218
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3218
  store i8* %51, i8** %9, align 8, !dbg !3218
  br label %57, !dbg !3218

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3218
  %54 = zext i32 %41 to i64, !dbg !3218
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3218
  %56 = add nuw nsw i32 %41, 8, !dbg !3218
  store i32 %56, i32* %8, align 8, !dbg !3218
  br label %57, !dbg !3218

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3218
  %61 = load i8*, i8** %60, align 8, !dbg !3218
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3219
  store i8* %61, i8** %62, align 16, !dbg !3220, !tbaa !1197
  %63 = icmp eq i8* %61, null, !dbg !3221
  br i1 %63, label %30, label %64, !dbg !3222

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3209, metadata !DIExpression()), !dbg !3212
  %65 = icmp ult i32 %58, 41, !dbg !3218
  br i1 %65, label %69, label %66, !dbg !3218

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3218
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3218
  store i8* %68, i8** %9, align 8, !dbg !3218
  br label %74, !dbg !3218

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3218
  %71 = zext i32 %58 to i64, !dbg !3218
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3218
  %73 = add nuw nsw i32 %58, 8, !dbg !3218
  store i32 %73, i32* %8, align 8, !dbg !3218
  br label %74, !dbg !3218

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3218
  %78 = load i8*, i8** %77, align 8, !dbg !3218
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3219
  store i8* %78, i8** %79, align 8, !dbg !3220, !tbaa !1197
  %80 = icmp eq i8* %78, null, !dbg !3221
  br i1 %80, label %30, label %81, !dbg !3222

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3209, metadata !DIExpression()), !dbg !3212
  %82 = icmp ult i32 %75, 41, !dbg !3218
  br i1 %82, label %86, label %83, !dbg !3218

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3218
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3218
  store i8* %85, i8** %9, align 8, !dbg !3218
  br label %91, !dbg !3218

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3218
  %88 = zext i32 %75 to i64, !dbg !3218
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3218
  %90 = add nuw nsw i32 %75, 8, !dbg !3218
  store i32 %90, i32* %8, align 8, !dbg !3218
  br label %91, !dbg !3218

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3218
  %95 = load i8*, i8** %94, align 8, !dbg !3218
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3219
  store i8* %95, i8** %96, align 16, !dbg !3220, !tbaa !1197
  %97 = icmp eq i8* %95, null, !dbg !3221
  br i1 %97, label %30, label %98, !dbg !3222

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3209, metadata !DIExpression()), !dbg !3212
  %99 = icmp ult i32 %92, 41, !dbg !3218
  br i1 %99, label %103, label %100, !dbg !3218

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3218
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3218
  store i8* %102, i8** %9, align 8, !dbg !3218
  br label %108, !dbg !3218

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3218
  %105 = zext i32 %92 to i64, !dbg !3218
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3218
  %107 = add nuw nsw i32 %92, 8, !dbg !3218
  store i32 %107, i32* %8, align 8, !dbg !3218
  br label %108, !dbg !3218

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3218
  %111 = load i8*, i8** %110, align 8, !dbg !3218
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3219
  store i8* %111, i8** %112, align 8, !dbg !3220, !tbaa !1197
  %113 = icmp eq i8* %111, null, !dbg !3221
  br i1 %113, label %30, label %114, !dbg !3222

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3209, metadata !DIExpression()), !dbg !3212
  %115 = load i8*, i8** %9, align 8, !dbg !3218
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3218
  store i8* %116, i8** %9, align 8, !dbg !3218
  %117 = bitcast i8* %115 to i8**, !dbg !3218
  %118 = load i8*, i8** %117, align 8, !dbg !3218
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3219
  store i8* %118, i8** %119, align 16, !dbg !3220, !tbaa !1197
  %120 = icmp eq i8* %118, null, !dbg !3221
  br i1 %120, label %30, label %121, !dbg !3222

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3209, metadata !DIExpression()), !dbg !3212
  %122 = load i8*, i8** %9, align 8, !dbg !3218
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3218
  store i8* %123, i8** %9, align 8, !dbg !3218
  %124 = bitcast i8* %122 to i8**, !dbg !3218
  %125 = load i8*, i8** %124, align 8, !dbg !3218
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3219
  store i8* %125, i8** %126, align 8, !dbg !3220, !tbaa !1197
  %127 = icmp eq i8* %125, null, !dbg !3221
  br i1 %127, label %30, label %128, !dbg !3222

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3209, metadata !DIExpression()), !dbg !3212
  %129 = load i8*, i8** %9, align 8, !dbg !3218
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3218
  store i8* %130, i8** %9, align 8, !dbg !3218
  %131 = bitcast i8* %129 to i8**, !dbg !3218
  %132 = load i8*, i8** %131, align 8, !dbg !3218
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3219
  store i8* %132, i8** %133, align 16, !dbg !3220, !tbaa !1197
  %134 = icmp eq i8* %132, null, !dbg !3221
  br i1 %134, label %30, label %135, !dbg !3222

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3209, metadata !DIExpression()), !dbg !3212
  %136 = load i8*, i8** %9, align 8, !dbg !3218
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3218
  store i8* %137, i8** %9, align 8, !dbg !3218
  %138 = bitcast i8* %136 to i8**, !dbg !3218
  %139 = load i8*, i8** %138, align 8, !dbg !3218
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3219
  store i8* %139, i8** %140, align 8, !dbg !3220, !tbaa !1197
  %141 = icmp eq i8* %139, null, !dbg !3221
  %142 = select i1 %141, i64 9, i64 10, !dbg !3222
  br label %30, !dbg !3222
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3226 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3230, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8* %1, metadata !3231, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8* %2, metadata !3232, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8* %3, metadata !3233, metadata !DIExpression()), !dbg !3239
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3240
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3240
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3234, metadata !DIExpression()), !dbg !3241
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3242
  call void @llvm.va_start(i8* nonnull %6), !dbg !3242
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3243
  call void @llvm.va_end(i8* nonnull %6), !dbg !3244
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !3245
  ret void, !dbg !3245
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3246 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3247, !tbaa !1197
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.83, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3247
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.98, i64 0, i64 0), i32 5) #12, !dbg !3248
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.99, i64 0, i64 0)) #12, !dbg !3248
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.100, i64 0, i64 0), i32 5) #12, !dbg !3249
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.101, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.102, i64 0, i64 0)) #12, !dbg !3249
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.103, i64 0, i64 0), i32 5) #12, !dbg !3250
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.104, i64 0, i64 0)) #12, !dbg !3250
  ret void, !dbg !3251
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #19 !dbg !3252 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3257, metadata !DIExpression()), !dbg !3258
  %3 = udiv i64 9223372036854775807, %1, !dbg !3259
  %4 = icmp ult i64 %3, %0, !dbg !3259
  br i1 %4, label %5, label %6, !dbg !3261

5:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3262
  unreachable, !dbg !3262

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3263
  call void @llvm.dbg.value(metadata i64 %7, metadata !3264, metadata !DIExpression()) #12, !dbg !3270
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %8, metadata !3269, metadata !DIExpression()) #12, !dbg !3270
  %9 = icmp eq i8* %8, null, !dbg !3273
  %10 = icmp ne i64 %7, 0, !dbg !3275
  %11 = and i1 %10, %9, !dbg !3276
  br i1 %11, label %12, label %13, !dbg !3276

12:                                               ; preds = %6
  tail call void @xalloc_die() #22, !dbg !3277
  unreachable, !dbg !3277

13:                                               ; preds = %6
  ret i8* %8, !dbg !3278
}

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3265 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3264, metadata !DIExpression()), !dbg !3279
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %2, metadata !3269, metadata !DIExpression()), !dbg !3279
  %3 = icmp eq i8* %2, null, !dbg !3281
  %4 = icmp ne i64 %0, 0, !dbg !3282
  %5 = and i1 %4, %3, !dbg !3283
  br i1 %5, label %6, label %7, !dbg !3283

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3284
  unreachable, !dbg !3284

7:                                                ; preds = %1
  ret i8* %2, !dbg !3285
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #19 !dbg !3286 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3290, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %1, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 %2, metadata !3292, metadata !DIExpression()), !dbg !3293
  %4 = udiv i64 9223372036854775807, %2, !dbg !3294
  %5 = icmp ult i64 %4, %1, !dbg !3294
  br i1 %5, label %6, label %7, !dbg !3296

6:                                                ; preds = %3
  tail call void @xalloc_die() #22, !dbg !3297
  unreachable, !dbg !3297

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()) #12, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %8, metadata !3304, metadata !DIExpression()) #12, !dbg !3305
  %9 = icmp eq i64 %8, 0, !dbg !3307
  %10 = icmp ne i8* %0, null, !dbg !3309
  %11 = and i1 %10, %9, !dbg !3310
  br i1 %11, label %12, label %13, !dbg !3310

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !3311
  br label %19, !dbg !3313

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !3314
  call void @llvm.dbg.value(metadata i8* %14, metadata !3299, metadata !DIExpression()) #12, !dbg !3305
  %15 = icmp eq i8* %14, null, !dbg !3315
  %16 = icmp ne i64 %8, 0, !dbg !3317
  %17 = and i1 %16, %15, !dbg !3318
  br i1 %17, label %18, label %19, !dbg !3318

18:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3319
  unreachable, !dbg !3319

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3305
  ret i8* %20, !dbg !3320
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3300 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %1, metadata !3304, metadata !DIExpression()), !dbg !3321
  %3 = icmp eq i64 %1, 0, !dbg !3322
  %4 = icmp ne i8* %0, null, !dbg !3323
  %5 = and i1 %4, %3, !dbg !3324
  br i1 %5, label %6, label %7, !dbg !3324

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !3325
  br label %13, !dbg !3326

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %8, metadata !3299, metadata !DIExpression()), !dbg !3321
  %9 = icmp eq i8* %8, null, !dbg !3328
  %10 = icmp ne i64 %1, 0, !dbg !3329
  %11 = and i1 %10, %9, !dbg !3330
  br i1 %11, label %12, label %13, !dbg !3330

12:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3331
  unreachable, !dbg !3331

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3321
  ret i8* %14, !dbg !3332
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #19 !dbg !553 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !558, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64* %1, metadata !559, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %2, metadata !560, metadata !DIExpression()), !dbg !3333
  %4 = load i64, i64* %1, align 8, !dbg !3334, !tbaa !1372
  call void @llvm.dbg.value(metadata i64 %4, metadata !561, metadata !DIExpression()), !dbg !3333
  %5 = icmp eq i8* %0, null, !dbg !3335
  br i1 %5, label %6, label %20, !dbg !3337

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3338
  br i1 %7, label %8, label %13, !dbg !3341

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %9, metadata !561, metadata !DIExpression()), !dbg !3333
  %10 = icmp ugt i64 %2, 128, !dbg !3344
  %11 = zext i1 %10 to i64, !dbg !3344
  %12 = add nuw nsw i64 %9, %11, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %12, metadata !561, metadata !DIExpression()), !dbg !3333
  br label %13, !dbg !3346

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3333
  call void @llvm.dbg.value(metadata i64 %14, metadata !561, metadata !DIExpression()), !dbg !3333
  %15 = udiv i64 9223372036854775807, %2, !dbg !3347
  %16 = icmp ult i64 %15, %14, !dbg !3347
  br i1 %16, label %19, label %17, !dbg !3349

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !561, metadata !DIExpression()), !dbg !3333
  store i64 %14, i64* %1, align 8, !dbg !3350, !tbaa !1372
  %18 = mul i64 %14, %2, !dbg !3351
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()) #12, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %28, metadata !3304, metadata !DIExpression()) #12, !dbg !3352
  br label %31, !dbg !3354

19:                                               ; preds = %13
  tail call void @xalloc_die() #22, !dbg !3355
  unreachable, !dbg !3355

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3356
  %22 = icmp ugt i64 %21, %4, !dbg !3359
  br i1 %22, label %24, label %23, !dbg !3360

23:                                               ; preds = %20
  tail call void @xalloc_die() #22, !dbg !3361
  unreachable, !dbg !3361

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3362
  %26 = add nuw i64 %4, 1, !dbg !3363
  %27 = add i64 %26, %25, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %27, metadata !561, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %27, metadata !561, metadata !DIExpression()), !dbg !3333
  store i64 %27, i64* %1, align 8, !dbg !3350, !tbaa !1372
  %28 = mul i64 %27, %2, !dbg !3351
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()) #12, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %28, metadata !3304, metadata !DIExpression()) #12, !dbg !3352
  %29 = icmp eq i64 %28, 0, !dbg !3365
  br i1 %29, label %30, label %31, !dbg !3354

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !3366
  br label %38, !dbg !3367

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !3368
  call void @llvm.dbg.value(metadata i8* %33, metadata !3299, metadata !DIExpression()) #12, !dbg !3352
  %34 = icmp eq i8* %33, null, !dbg !3369
  %35 = icmp ne i64 %32, 0, !dbg !3370
  %36 = and i1 %35, %34, !dbg !3371
  br i1 %36, label %37, label %38, !dbg !3371

37:                                               ; preds = %31
  tail call void @xalloc_die() #22, !dbg !3372
  unreachable, !dbg !3372

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3352
  ret i8* %39, !dbg !3373
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #19 !dbg !3374 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %0, metadata !3264, metadata !DIExpression()) #12, !dbg !3378
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %2, metadata !3269, metadata !DIExpression()) #12, !dbg !3378
  %3 = icmp eq i8* %2, null, !dbg !3381
  %4 = icmp ne i64 %0, 0, !dbg !3382
  %5 = and i1 %4, %3, !dbg !3383
  br i1 %5, label %6, label %7, !dbg !3383

6:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3384
  unreachable, !dbg !3384

7:                                                ; preds = %1
  ret i8* %2, !dbg !3385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3386 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64* %1, metadata !3391, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8* %0, metadata !558, metadata !DIExpression()) #12, !dbg !3393
  call void @llvm.dbg.value(metadata i64* %1, metadata !559, metadata !DIExpression()) #12, !dbg !3393
  call void @llvm.dbg.value(metadata i64 1, metadata !560, metadata !DIExpression()) #12, !dbg !3393
  %3 = load i64, i64* %1, align 8, !dbg !3395, !tbaa !1372
  call void @llvm.dbg.value(metadata i64 %3, metadata !561, metadata !DIExpression()) #12, !dbg !3393
  %4 = icmp eq i8* %0, null, !dbg !3396
  br i1 %4, label %5, label %12, !dbg !3397

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3398
  br i1 %6, label %9, label %7, !dbg !3399

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !561, metadata !DIExpression()) #12, !dbg !3393
  %8 = icmp slt i64 %3, 0, !dbg !3400
  br i1 %8, label %11, label %9, !dbg !3401

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !561, metadata !DIExpression()) #12, !dbg !3393
  store i64 %10, i64* %1, align 8, !dbg !3402, !tbaa !1372
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()) #12, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %18, metadata !3304, metadata !DIExpression()) #12, !dbg !3403
  br label %21, !dbg !3405

11:                                               ; preds = %7
  tail call void @xalloc_die() #22, !dbg !3406
  unreachable, !dbg !3406

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3407
  br i1 %13, label %15, label %14, !dbg !3408

14:                                               ; preds = %12
  tail call void @xalloc_die() #22, !dbg !3409
  unreachable, !dbg !3409

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3410
  %17 = add nuw nsw i64 %3, 1, !dbg !3411
  %18 = add nuw nsw i64 %17, %16, !dbg !3412
  call void @llvm.dbg.value(metadata i64 %18, metadata !561, metadata !DIExpression()) #12, !dbg !3393
  call void @llvm.dbg.value(metadata i64 %18, metadata !561, metadata !DIExpression()) #12, !dbg !3393
  store i64 %18, i64* %1, align 8, !dbg !3402, !tbaa !1372
  call void @llvm.dbg.value(metadata i8* %0, metadata !3299, metadata !DIExpression()) #12, !dbg !3403
  call void @llvm.dbg.value(metadata i64 %18, metadata !3304, metadata !DIExpression()) #12, !dbg !3403
  %19 = icmp eq i64 %18, 0, !dbg !3413
  br i1 %19, label %20, label %21, !dbg !3405

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !3414
  br label %28, !dbg !3415

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %23, metadata !3299, metadata !DIExpression()) #12, !dbg !3403
  %24 = icmp eq i8* %23, null, !dbg !3417
  %25 = icmp ne i64 %22, 0, !dbg !3418
  %26 = and i1 %25, %24, !dbg !3419
  br i1 %26, label %27, label %28, !dbg !3419

27:                                               ; preds = %21
  tail call void @xalloc_die() #22, !dbg !3420
  unreachable, !dbg !3420

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3403
  ret i8* %29, !dbg !3421
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3422 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 %0, metadata !3426, metadata !DIExpression()) #12, !dbg !3431
  call void @llvm.dbg.value(metadata i64 1, metadata !3429, metadata !DIExpression()) #12, !dbg !3431
  %2 = icmp slt i64 %0, 0, !dbg !3433
  br i1 %2, label %6, label %3, !dbg !3435

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #12, !dbg !3436
  call void @llvm.dbg.value(metadata i8* %4, metadata !3430, metadata !DIExpression()) #12, !dbg !3431
  %5 = icmp eq i8* %4, null, !dbg !3437
  br i1 %5, label %6, label %7, !dbg !3438

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #22, !dbg !3439
  unreachable, !dbg !3439

7:                                                ; preds = %3
  ret i8* %4, !dbg !3440
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3427 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3426, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %1, metadata !3429, metadata !DIExpression()), !dbg !3441
  %3 = udiv i64 9223372036854775807, %1, !dbg !3442
  %4 = icmp ult i64 %3, %0, !dbg !3442
  br i1 %4, label %8, label %5, !dbg !3443

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %6, metadata !3430, metadata !DIExpression()), !dbg !3441
  %7 = icmp eq i8* %6, null, !dbg !3445
  br i1 %7, label %8, label %9, !dbg !3446

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #22, !dbg !3447
  unreachable, !dbg !3447

9:                                                ; preds = %5
  ret i8* %6, !dbg !3448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3449 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3264, metadata !DIExpression()) #12, !dbg !3456
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %3, metadata !3269, metadata !DIExpression()) #12, !dbg !3456
  %4 = icmp eq i8* %3, null, !dbg !3459
  %5 = icmp ne i64 %1, 0, !dbg !3460
  %6 = and i1 %5, %4, !dbg !3461
  br i1 %6, label %7, label %8, !dbg !3461

7:                                                ; preds = %2
  tail call void @xalloc_die() #22, !dbg !3462
  unreachable, !dbg !3462

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3463, metadata !DIExpression()) #12, !dbg !3472
  call void @llvm.dbg.value(metadata i8* %0, metadata !3470, metadata !DIExpression()) #12, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %1, metadata !3471, metadata !DIExpression()) #12, !dbg !3472
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #12, !dbg !3474
  ret i8* %3, !dbg !3475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3476 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3478, metadata !DIExpression()), !dbg !3479
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #21, !dbg !3480
  %3 = add i64 %2, 1, !dbg !3481
  call void @llvm.dbg.value(metadata i8* %0, metadata !3453, metadata !DIExpression()) #12, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %3, metadata !3454, metadata !DIExpression()) #12, !dbg !3482
  call void @llvm.dbg.value(metadata i64 %3, metadata !3264, metadata !DIExpression()) #12, !dbg !3484
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !3486
  call void @llvm.dbg.value(metadata i8* %4, metadata !3269, metadata !DIExpression()) #12, !dbg !3484
  %5 = icmp eq i8* %4, null, !dbg !3487
  %6 = icmp ne i64 %3, 0, !dbg !3488
  %7 = and i1 %6, %5, !dbg !3489
  br i1 %7, label %8, label %9, !dbg !3489

8:                                                ; preds = %1
  tail call void @xalloc_die() #22, !dbg !3490
  unreachable, !dbg !3490

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3463, metadata !DIExpression()) #12, !dbg !3491
  call void @llvm.dbg.value(metadata i8* %0, metadata !3470, metadata !DIExpression()) #12, !dbg !3491
  call void @llvm.dbg.value(metadata i64 %3, metadata !3471, metadata !DIExpression()) #12, !dbg !3491
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #12, !dbg !3493
  ret i8* %4, !dbg !3494
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3495 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3496, !tbaa !1258
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.115, i64 0, i64 0), i32 5) #12, !dbg !3497
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i64 0, i64 0), i8* %2) #12, !dbg !3498
  tail call void @abort() #22, !dbg !3499
  unreachable, !dbg !3499
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #20 !dbg !3500 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3502, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %1, metadata !3503, metadata !DIExpression()), !dbg !3508
  %3 = icmp eq i64 %0, 0, !dbg !3509
  %4 = icmp eq i64 %1, 0, !dbg !3510
  %5 = or i1 %3, %4, !dbg !3511
  br i1 %5, label %11, label %6, !dbg !3511

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3505, metadata !DIExpression()), !dbg !3512
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3513
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3513
  br i1 %8, label %9, label %11, !dbg !3515

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #23, !dbg !3516
  store i32 12, i32* %10, align 4, !dbg !3518, !tbaa !1258
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3502, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 %12, metadata !3503, metadata !DIExpression()), !dbg !3508
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #12, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %14, metadata !3504, metadata !DIExpression()), !dbg !3508
  br label %15, !dbg !3520

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3508
  ret i8* %16, !dbg !3521
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3522 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3528, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 0, metadata !3529, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 0, metadata !3531, metadata !DIExpression()), !dbg !3532
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3533
  call void @llvm.dbg.value(metadata i32 %2, metadata !3530, metadata !DIExpression()), !dbg !3532
  %3 = icmp slt i32 %2, 0, !dbg !3534
  br i1 %3, label %4, label %6, !dbg !3536

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3537
  br label %24, !dbg !3538

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3539
  %8 = icmp eq i32 %7, 0, !dbg !3539
  br i1 %8, label %13, label %9, !dbg !3541

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3542
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !3543
  %12 = icmp eq i64 %11, -1, !dbg !3544
  br i1 %12, label %16, label %13, !dbg !3545

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !3546
  %15 = icmp eq i32 %14, 0, !dbg !3546
  br i1 %15, label %16, label %18, !dbg !3547

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3529, metadata !DIExpression()), !dbg !3532
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3548
  call void @llvm.dbg.value(metadata i32 %21, metadata !3531, metadata !DIExpression()), !dbg !3532
  br label %24, !dbg !3549

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #23, !dbg !3550
  %20 = load i32, i32* %19, align 4, !dbg !3550, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 %20, metadata !3529, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 %20, metadata !3529, metadata !DIExpression()), !dbg !3532
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3548
  call void @llvm.dbg.value(metadata i32 %21, metadata !3531, metadata !DIExpression()), !dbg !3532
  %22 = icmp eq i32 %20, 0, !dbg !3551
  br i1 %22, label %24, label %23, !dbg !3549

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3553, !tbaa !1258
  call void @llvm.dbg.value(metadata i32 -1, metadata !3531, metadata !DIExpression()), !dbg !3532
  br label %24, !dbg !3555

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3532
  ret i32 %25, !dbg !3556
}

; Function Attrs: nofree nounwind
declare !dbg !614 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !615 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3557 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3563, metadata !DIExpression()), !dbg !3564
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3565
  br i1 %2, label %6, label %3, !dbg !3567

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !3568
  %5 = icmp eq i32 %4, 0, !dbg !3568
  br i1 %5, label %6, label %8, !dbg !3569

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3570
  br label %17, !dbg !3571

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3572, metadata !DIExpression()) #12, !dbg !3577
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3579
  %10 = load i32, i32* %9, align 8, !dbg !3579, !tbaa !1356
  %11 = and i32 %10, 256, !dbg !3581
  %12 = icmp eq i32 %11, 0, !dbg !3581
  br i1 %12, label %15, label %13, !dbg !3582

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !3583
  br label %15, !dbg !3583

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3584
  br label %17, !dbg !3585

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3564
  ret i32 %18, !dbg !3586
}

; Function Attrs: nofree nounwind
declare !dbg !623 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3587 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3593, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i64 %1, metadata !3594, metadata !DIExpression()), !dbg !3599
  call void @llvm.dbg.value(metadata i32 %2, metadata !3595, metadata !DIExpression()), !dbg !3599
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3600
  %5 = load i8*, i8** %4, align 8, !dbg !3600, !tbaa !3601
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3602
  %7 = load i8*, i8** %6, align 8, !dbg !3602, !tbaa !3603
  %8 = icmp eq i8* %5, %7, !dbg !3604
  br i1 %8, label %9, label %28, !dbg !3605

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3606
  %11 = load i8*, i8** %10, align 8, !dbg !3606, !tbaa !3607
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3608
  %13 = load i8*, i8** %12, align 8, !dbg !3608, !tbaa !3609
  %14 = icmp eq i8* %11, %13, !dbg !3610
  br i1 %14, label %15, label %28, !dbg !3611

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3612
  %17 = load i8*, i8** %16, align 8, !dbg !3612, !tbaa !3613
  %18 = icmp eq i8* %17, null, !dbg !3614
  br i1 %18, label %19, label %28, !dbg !3615

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !3616
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %21, metadata !3596, metadata !DIExpression()), !dbg !3618
  %22 = icmp eq i64 %21, -1, !dbg !3619
  br i1 %22, label %30, label %23, !dbg !3621

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3622
  %25 = load i32, i32* %24, align 8, !dbg !3623, !tbaa !1356
  %26 = and i32 %25, -17, !dbg !3623
  store i32 %26, i32* %24, align 8, !dbg !3623, !tbaa !1356
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3624
  store i64 %21, i64* %27, align 8, !dbg !3625, !tbaa !3626
  br label %30, !dbg !3627

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3628
  br label %30, !dbg !3629

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3599
  ret i32 %31, !dbg !3630
}

; Function Attrs: nofree nounwind
declare !dbg !699 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3631 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3639, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8* %1, metadata !3640, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %2, metadata !3641, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3642, metadata !DIExpression()), !dbg !3648
  %6 = bitcast i32* %5 to i8*, !dbg !3649
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3649
  %7 = icmp eq i32* %0, null, !dbg !3650
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3652
  call void @llvm.dbg.value(metadata i32* %8, metadata !3639, metadata !DIExpression()), !dbg !3648
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !3653
  call void @llvm.dbg.value(metadata i64 %9, metadata !3643, metadata !DIExpression()), !dbg !3648
  %10 = icmp ugt i64 %9, -3, !dbg !3654
  %11 = icmp ne i64 %2, 0, !dbg !3655
  %12 = and i1 %11, %10, !dbg !3656
  br i1 %12, label %13, label %18, !dbg !3656

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !3657
  br i1 %14, label %18, label %15, !dbg !3658

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3659, !tbaa !1369
  call void @llvm.dbg.value(metadata i8 %16, metadata !3645, metadata !DIExpression()), !dbg !3660
  %17 = zext i8 %16 to i32, !dbg !3661
  store i32 %17, i32* %8, align 4, !dbg !3662, !tbaa !1258
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3648
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !3663
  ret i64 %19, !dbg !3663
}

; Function Attrs: nounwind
declare !dbg !705 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3664 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3670, metadata !DIExpression()), !dbg !3675
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !3676
  call void @llvm.dbg.value(metadata i1 undef, metadata !3671, metadata !DIExpression()), !dbg !3675
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3677, metadata !DIExpression()), !dbg !3680
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3682
  %4 = load i32, i32* %3, align 8, !dbg !3682, !tbaa !1356
  %5 = and i32 %4, 32, !dbg !3682
  %6 = icmp eq i32 %5, 0, !dbg !3683
  call void @llvm.dbg.value(metadata i1 %6, metadata !3673, metadata !DIExpression()), !dbg !3675
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !3684
  %8 = icmp ne i32 %7, 0, !dbg !3685
  call void @llvm.dbg.value(metadata i1 %8, metadata !3674, metadata !DIExpression()), !dbg !3675
  br i1 %6, label %9, label %19, !dbg !3686

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3688
  call void @llvm.dbg.value(metadata i1 %10, metadata !3671, metadata !DIExpression()), !dbg !3675
  %11 = xor i1 %8, true, !dbg !3689
  %12 = or i1 %10, %11, !dbg !3689
  %13 = sext i1 %8 to i32, !dbg !3689
  br i1 %12, label %22, label %14, !dbg !3689

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #23, !dbg !3690
  %16 = load i32, i32* %15, align 4, !dbg !3690, !tbaa !1258
  %17 = icmp ne i32 %16, 9, !dbg !3691
  %18 = sext i1 %17 to i32, !dbg !3692
  br label %22, !dbg !3692

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3693

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #23, !dbg !3695
  store i32 0, i32* %21, align 4, !dbg !3697, !tbaa !1258
  br label %22, !dbg !3695

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3675
  ret i32 %23, !dbg !3698
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !3699 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3701, metadata !DIExpression()), !dbg !3706
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3707
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3707
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3702, metadata !DIExpression()), !dbg !3708
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #12, !dbg !3709
  %5 = icmp eq i32 %4, 0, !dbg !3709
  br i1 %5, label %6, label %13, !dbg !3711

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !3712
  %8 = load i16, i16* %7, align 16, !dbg !3712
  %9 = icmp eq i16 %8, 67, !dbg !3712
  br i1 %9, label %13, label %10, !dbg !3713

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.131, i64 0, i64 0), i64 6), !dbg !3714
  %12 = icmp ne i32 %11, 0, !dbg !3715
  br label %13, !dbg !3713

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !3706
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #12, !dbg !3716
  ret i1 %14, !dbg !3716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !3717 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !3720
  call void @llvm.dbg.value(metadata i8* %1, metadata !3719, metadata !DIExpression()), !dbg !3721
  %2 = icmp eq i8* %1, null, !dbg !3722
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.134, i64 0, i64 0), i8* %1, !dbg !3724
  call void @llvm.dbg.value(metadata i8* %3, metadata !3719, metadata !DIExpression()), !dbg !3721
  %4 = load i8, i8* %3, align 1, !dbg !3725, !tbaa !1369
  %5 = icmp eq i8 %4, 0, !dbg !3729
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.135, i64 0, i64 0), i8* %3, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %6, metadata !3719, metadata !DIExpression()), !dbg !3721
  ret i8* %6, !dbg !3731
}

; Function Attrs: nounwind
declare !dbg !1156 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !3732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3736, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i8* %1, metadata !3737, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i64 %2, metadata !3738, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()) #12, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %1, metadata !3743, metadata !DIExpression()) #12, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %2, metadata !3744, metadata !DIExpression()) #12, !dbg !3749
  call void @llvm.dbg.value(metadata i32 %0, metadata !3751, metadata !DIExpression()) #12, !dbg !3757
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3759
  call void @llvm.dbg.value(metadata i8* %4, metadata !3756, metadata !DIExpression()) #12, !dbg !3757
  call void @llvm.dbg.value(metadata i8* %4, metadata !3745, metadata !DIExpression()) #12, !dbg !3749
  %5 = icmp eq i8* %4, null, !dbg !3760
  br i1 %5, label %6, label %9, !dbg !3761

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3762
  br i1 %7, label %19, label %8, !dbg !3765

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3766, !tbaa !1369
  br label %19, !dbg !3767

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #21, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %10, metadata !3746, metadata !DIExpression()) #12, !dbg !3769
  %11 = icmp ult i64 %10, %2, !dbg !3770
  br i1 %11, label %12, label %14, !dbg !3772

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()) #12, !dbg !3780
  call void @llvm.dbg.value(metadata i8* %4, metadata !3778, metadata !DIExpression()) #12, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %13, metadata !3779, metadata !DIExpression()) #12, !dbg !3780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #12, !dbg !3782
  br label %19, !dbg !3783

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3784
  br i1 %15, label %19, label %16, !dbg !3787

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %1, metadata !3775, metadata !DIExpression()) #12, !dbg !3790
  call void @llvm.dbg.value(metadata i8* %4, metadata !3778, metadata !DIExpression()) #12, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %17, metadata !3779, metadata !DIExpression()) #12, !dbg !3790
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #12, !dbg !3792
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3793
  store i8 0, i8* %18, align 1, !dbg !3794, !tbaa !1369
  br label %19, !dbg !3795

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !3796
  ret i32 %20, !dbg !3797
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !3798 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3800, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %0, metadata !3751, metadata !DIExpression()) #12, !dbg !3802
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !3804
  call void @llvm.dbg.value(metadata i8* %2, metadata !3756, metadata !DIExpression()) #12, !dbg !3802
  ret i8* %2, !dbg !3805
}

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
attributes #12 = { nounwind }
attributes #13 = { nofree nounwind }
attributes #14 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind readonly }
attributes #18 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #21 = { nounwind readonly }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind readnone }
attributes #24 = { cold }

!llvm.dbg.cu = !{!2, !164, !169, !214, !459, !502, !220, !287, !328, !507, !453, !549, !570, !573, !576, !620, !661, !702, !721, !759, !766, !1159}
!llvm.ident = !{!1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162, !1162}
!llvm.module.flags = !{!1163, !1164, !1165, !1166, !1167}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 169, type: !130, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !152, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/cksum.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !20}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 45, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!27 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!28 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!29 = !{!30, !40, !101, !105, !109, !112, !115, !122, !36, !91, !125, !134, !138, !142, !145, !148, !7}
!30 = !DISubprogram(name: "dcgettext", scope: !31, file: !31, line: 51, type: !32, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!31 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !36, !36, !38}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{}
!40 = !DISubprogram(name: "fputs_unlocked", scope: !41, file: !41, line: 662, type: !42, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!42 = !DISubroutineType(types: !43)
!43 = !{!38, !36, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !47)
!46 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !64, !65, !66, !70, !72, !74, !78, !81, !83, !86, !89, !90, !92, !96, !97}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !46, line: 51, baseType: !38, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !45, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !45, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !45, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !45, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !45, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !45, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !45, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !45, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !45, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !45, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !45, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !45, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !46, line: 36, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !45, file: !46, line: 70, baseType: !44, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !45, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !45, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 152, baseType: !69)
!68 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !45, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !45, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !45, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !46, line: 43, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 153, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !45, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !46, line: 37, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !45, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !46, line: 38, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !45, file: !46, line: 93, baseType: !44, size: 64, offset: 1344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !45, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !45, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 46, baseType: !95)
!94 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !45, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !45, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 20)
!101 = !DISubprogram(name: "set_program_name", scope: !102, file: !102, line: 37, type: !103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!102 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!103 = !DISubroutineType(types: !104)
!104 = !{null, !36}
!105 = !DISubprogram(name: "setlocale", scope: !106, file: !106, line: 122, type: !107, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!106 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!107 = !DISubroutineType(types: !108)
!108 = !{!34, !38, !36}
!109 = !DISubprogram(name: "bindtextdomain", scope: !31, file: !31, line: 86, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!110 = !DISubroutineType(types: !111)
!111 = !{!34, !36, !36}
!112 = !DISubprogram(name: "textdomain", scope: !31, file: !31, line: 82, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!113 = !DISubroutineType(types: !114)
!114 = !{!34, !36}
!115 = !DISubprogram(name: "atexit", scope: !116, file: !116, line: 595, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!116 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!117 = !DISubroutineType(types: !118)
!118 = !{!38, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DISubprogram(name: "setvbuf", scope: !41, file: !41, line: 308, type: !123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!123 = !DISubroutineType(types: !124)
!124 = !{!38, !44, !34, !38, !95}
!125 = !DISubprogram(name: "parse_gnu_standard_options_only", scope: !126, file: !126, line: 33, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!126 = !DIFile(filename: "./lib/long-options.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!127 = !DISubroutineType(types: !128)
!128 = !{null, !38, !129, !36, !36, !36, !130, !131, null}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!130 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !38}
!134 = !DISubprogram(name: "rpl_fclose", scope: !135, file: !135, line: 672, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!135 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!136 = !DISubroutineType(types: !137)
!137 = !{!38, !44}
!138 = !DISubprogram(name: "error", scope: !139, file: !139, line: 52, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!139 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!140 = !DISubroutineType(types: !141)
!141 = !{null, !38, !38, !36, null}
!142 = !DISubprogram(name: "quotearg_n_style_colon", scope: !6, file: !6, line: 397, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!143 = !DISubroutineType(types: !144)
!144 = !{!34, !38, !5, !36}
!145 = !DISubprogram(name: "fadvise", scope: !21, file: !21, line: 72, type: !146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !44, !20}
!148 = !DISubprogram(name: "umaxtostr", scope: !149, file: !149, line: 46, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!149 = !DIFile(filename: "./lib/inttostr.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!150 = !DISubroutineType(types: !151)
!151 = !{!34, !95, !34}
!152 = !{!153, !154}
!153 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "crctab", scope: !2, file: !3, line: 112, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 16384, elements: !160)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !159, line: 74, baseType: !95)
!159 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!160 = !{!161}
!161 = !DISubrange(count: 256)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "Version", scope: !164, file: !165, line: 2, type: !36, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !166, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!166 = !{!162}
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "file_name", scope: !169, file: !170, line: 46, type: !36, isLocal: true, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !171, globals: !209, splitDebugInlining: false, nameTableKind: None)
!170 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!171 = !{!172, !30, !208, !138}
!172 = !DISubprogram(name: "close_stream", scope: !173, file: !173, line: 2, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!173 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!174 = !DISubroutineType(types: !175)
!175 = !{!38, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !177, file: !46, line: 51, baseType: !38, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !177, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !177, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !177, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !177, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !177, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !177, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !177, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !177, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !177, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !177, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !177, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !177, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !177, file: !46, line: 70, baseType: !176, size: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !177, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !177, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !177, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !177, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !177, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !177, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !177, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !177, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !177, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !177, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !177, file: !46, line: 93, baseType: !176, size: 64, offset: 1344)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !177, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !177, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !177, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !177, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!208 = !DISubprogram(name: "quotearg_colon", scope: !6, file: !6, line: 391, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!209 = !{!167, !210}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !169, file: !170, line: 56, type: !130, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "exit_failure", scope: !214, file: !215, line: 24, type: !217, isLocal: false, isDefinition: true)
!214 = distinct !DICompileUnit(language: DW_LANG_C99, file: !215, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !216, splitDebugInlining: false, nameTableKind: None)
!215 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!216 = !{!212}
!217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "long_options", scope: !220, file: !221, line: 34, type: !282, isLocal: true, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !222, globals: !281, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!222 = !{!223, !238}
!223 = !DISubprogram(name: "getopt_long", scope: !224, file: !224, line: 66, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!224 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!225 = !DISubroutineType(types: !226)
!226 = !{!38, !38, !227, !36, !229, !236}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !224, line: 50, size: 256, elements: !232)
!232 = !{!233, !234, !235, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !224, line: 52, baseType: !36, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !231, file: !224, line: 55, baseType: !38, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !231, file: !224, line: 56, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !231, file: !224, line: 57, baseType: !38, size: 32, offset: 192)
!238 = !DISubprogram(name: "version_etc_va", scope: !239, file: !239, line: 63, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!239 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!240 = !DISubroutineType(types: !241)
!241 = !{null, !242, !36, !36, !36, !274}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !243, file: !46, line: 51, baseType: !38, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !243, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !243, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !243, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !243, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !243, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !243, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !243, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !243, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !243, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !243, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !243, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !243, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !243, file: !46, line: 70, baseType: !242, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !243, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !243, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !243, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !243, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !243, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !243, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !243, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !243, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !243, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !243, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !243, file: !46, line: 93, baseType: !242, size: 64, offset: 1344)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !243, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !243, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !243, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !243, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !221, line: 72, size: 192, elements: !276)
!276 = !{!277, !278, !279, !280}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !275, file: !221, line: 72, baseType: !7, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !275, file: !221, line: 72, baseType: !7, size: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !275, file: !221, line: 72, baseType: !91, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !275, file: !221, line: 72, baseType: !91, size: 64, offset: 128)
!281 = !{!218}
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 768, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 3)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "program_name", scope: !287, file: !288, line: 33, type: !36, isLocal: false, isDefinition: true)
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !289, globals: !325, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!289 = !{!91, !290, !34}
!290 = !DISubprogram(name: "fputs", scope: !41, file: !41, line: 626, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!291 = !DISubroutineType(types: !292)
!292 = !{!38, !36, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !294, file: !46, line: 51, baseType: !38, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !294, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !294, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !294, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !294, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !294, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !294, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !294, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !294, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !294, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !294, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !294, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !294, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !294, file: !46, line: 70, baseType: !293, size: 64, offset: 832)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !294, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !294, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !294, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !294, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !294, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !294, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !294, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !294, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !294, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !294, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !294, file: !46, line: 93, baseType: !293, size: 64, offset: 1344)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !294, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !294, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !294, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !294, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!325 = !{!285}
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !328, file: !329, line: 85, type: !447, isLocal: false, isDefinition: true)
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !330, retainedTypes: !351, globals: !422, splitDebugInlining: false, nameTableKind: None)
!329 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!330 = !{!5, !331, !336}
!331 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !332)
!332 = !{!333, !334, !335}
!333 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!335 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!336 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !337, line: 46, baseType: !7, size: 32, elements: !338)
!337 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!339 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!340 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!341 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!342 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!343 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!344 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!345 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!346 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!347 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!348 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!349 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!350 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!351 = !{!352, !358, !374, !377, !38, !71, !380, !93, !397, !401, !30, !407, !411, !34, !415, !418, !419}
!352 = !DISubprogram(name: "xmemdup", scope: !353, file: !353, line: 62, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!353 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!354 = !DISubroutineType(types: !355)
!355 = !{!91, !356, !95}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!358 = !DISubprogram(name: "quotearg_alloc_mem", scope: !6, file: !6, line: 342, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!359 = !DISubroutineType(types: !360)
!360 = !{!34, !36, !95, !361, !362}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !329, line: 65, size: 448, elements: !365)
!365 = !{!366, !367, !368, !372, !373}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !364, file: !329, line: 68, baseType: !5, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !329, line: 71, baseType: !38, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !364, file: !329, line: 75, baseType: !369, size: 256, offset: 64)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 8)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !364, file: !329, line: 78, baseType: !36, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !364, file: !329, line: 81, baseType: !36, size: 64, offset: 384)
!374 = !DISubprogram(name: "free", scope: !116, file: !116, line: 565, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !91}
!377 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !6, file: !6, line: 408, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!378 = !DISubroutineType(types: !379)
!379 = !{!34, !38, !36, !36, !36, !95}
!380 = !DISubprogram(name: "rpl_mbrtowc", scope: !381, file: !381, line: 717, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!381 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!382 = !DISubroutineType(types: !383)
!383 = !{!95, !236, !36, !95, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 13, size: 64, elements: !387)
!386 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !385, file: !386, line: 15, baseType: !38, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !385, file: !386, line: 20, baseType: !390, size: 32, offset: 32)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !386, line: 16, size: 32, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !390, file: !386, line: 18, baseType: !7, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !390, file: !386, line: 19, baseType: !394, size: 32)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 4)
!397 = !DISubprogram(name: "iswprint", scope: !398, file: !398, line: 120, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!398 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!399 = !DISubroutineType(types: !400)
!400 = !{!38, !7}
!401 = !DISubprogram(name: "mbsinit", scope: !402, file: !402, line: 292, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!402 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!403 = !DISubroutineType(types: !404)
!404 = !{!38, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!407 = !DISubprogram(name: "locale_charset", scope: !408, file: !408, line: 35, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!408 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!409 = !DISubroutineType(types: !410)
!410 = !{!36}
!411 = !DISubprogram(name: "c_strcasecmp", scope: !412, file: !412, line: 42, type: !413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!412 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!413 = !DISubroutineType(types: !414)
!414 = !{!38, !36, !36}
!415 = !DISubprogram(name: "xmalloc", scope: !353, file: !353, line: 53, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!416 = !DISubroutineType(types: !417)
!417 = !{!91, !95}
!418 = !DISubprogram(name: "xalloc_die", scope: !353, file: !353, line: 51, type: !120, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !39)
!419 = !DISubprogram(name: "xrealloc", scope: !353, file: !353, line: 59, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!420 = !DISubroutineType(types: !421)
!421 = !{!91, !91, !95}
!422 = !{!326, !423, !429, !431, !433, !436, !443, !445}
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !328, file: !329, line: 101, type: !425, isLocal: false, isDefinition: true)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 320, elements: !427)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!427 = !{!428}
!428 = !DISubrange(count: 10)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !328, file: !329, line: 1052, type: !364, isLocal: false, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !328, file: !329, line: 116, type: !364, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "slot0", scope: !328, file: !329, line: 842, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !160)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "slotvec", scope: !328, file: !329, line: 845, type: !438, isLocal: true, isDefinition: true)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !329, line: 834, size: 128, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !439, file: !329, line: 836, baseType: !93, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !439, file: !329, line: 837, baseType: !34, size: 64, offset: 64)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "nslots", scope: !328, file: !329, line: 843, type: !38, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(name: "slotvec0", scope: !328, file: !329, line: 844, type: !439, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 704, elements: !449)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!449 = !{!450}
!450 = !DISubrange(count: 11)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !453, file: !454, line: 26, type: !456, isLocal: false, isDefinition: true)
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, globals: !455, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!455 = !{!451}
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 376, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 47)
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !461, retainedTypes: !462, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!461 = !{!20}
!462 = !{!463, !467}
!463 = !DISubprogram(name: "posix_fadvise", scope: !464, file: !464, line: 288, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!464 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!465 = !DISubroutineType(types: !466)
!466 = !{!38, !38, !69, !69, !38}
!467 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!468 = !DISubroutineType(types: !469)
!469 = !{!38, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !471, file: !46, line: 51, baseType: !38, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !471, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !471, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !471, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !471, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !471, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !471, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !471, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !471, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !471, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !471, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !471, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !471, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !471, file: !46, line: 70, baseType: !470, size: 64, offset: 832)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !471, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !471, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !471, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !471, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !471, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !471, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !471, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !471, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !471, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !471, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !471, file: !46, line: 93, baseType: !470, size: 64, offset: 1344)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !471, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !471, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !471, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !471, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!502 = distinct !DICompileUnit(language: DW_LANG_C99, file: !503, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !504, splitDebugInlining: false, nameTableKind: None)
!503 = !DIFile(filename: "lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !159, line: 102, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !68, line: 73, baseType: !95)
!507 = distinct !DICompileUnit(language: DW_LANG_C99, file: !508, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !509, retainedTypes: !513, splitDebugInlining: false, nameTableKind: None)
!508 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!509 = !{!510}
!510 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !508, line: 40, baseType: !7, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!513 = !{!30, !514, !91}
!514 = !DISubprogram(name: "fputs_unlocked", scope: !41, file: !41, line: 662, type: !515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!515 = !DISubroutineType(types: !516)
!516 = !{!38, !36, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !518, file: !46, line: 51, baseType: !38, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !518, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !518, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !518, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !518, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !518, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !518, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !518, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !518, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !518, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !518, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !518, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !518, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !518, file: !46, line: 70, baseType: !517, size: 64, offset: 832)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !518, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !518, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !518, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !518, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !518, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !518, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !518, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !518, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !518, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !518, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !518, file: !46, line: 93, baseType: !517, size: 64, offset: 1344)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !518, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !518, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !518, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !518, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!549 = distinct !DICompileUnit(language: DW_LANG_C99, file: !550, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !551, retainedTypes: !564, splitDebugInlining: false, nameTableKind: None)
!550 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!551 = !{!552}
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !553, file: !353, line: 186, baseType: !7, size: 32, elements: !562)
!553 = distinct !DISubprogram(name: "x2nrealloc", scope: !353, file: !353, line: 174, type: !554, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !557)
!554 = !DISubroutineType(types: !555)
!555 = !{!91, !91, !556, !93}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!557 = !{!558, !559, !560, !561}
!558 = !DILocalVariable(name: "p", arg: 1, scope: !553, file: !353, line: 174, type: !91)
!559 = !DILocalVariable(name: "pn", arg: 2, scope: !553, file: !353, line: 174, type: !556)
!560 = !DILocalVariable(name: "s", arg: 3, scope: !553, file: !353, line: 174, type: !93)
!561 = !DILocalVariable(name: "n", scope: !553, file: !353, line: 176, type: !93)
!562 = !{!563}
!563 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!564 = !{!93, !418, !415, !419, !34, !374, !91, !565, !568}
!565 = !DISubprogram(name: "xcalloc", scope: !353, file: !353, line: 57, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!566 = !DISubroutineType(types: !567)
!567 = !{!91, !95, !95}
!568 = !DISubprogram(name: "rpl_calloc", scope: !569, file: !569, line: 688, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!569 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!570 = distinct !DICompileUnit(language: DW_LANG_C99, file: !571, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !572, splitDebugInlining: false, nameTableKind: None)
!571 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!572 = !{!30, !138}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !575, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !{!91}
!576 = distinct !DICompileUnit(language: DW_LANG_C99, file: !577, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !578, splitDebugInlining: false, nameTableKind: None)
!577 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!578 = !{!579, !614, !615, !619}
!579 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!580 = !DISubroutineType(types: !581)
!581 = !{!38, !582}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !583, file: !46, line: 51, baseType: !38, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !583, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !583, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !583, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !583, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !583, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !583, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !583, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !583, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !583, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !583, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !583, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !583, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !583, file: !46, line: 70, baseType: !582, size: 64, offset: 832)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !583, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !583, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !583, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !583, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !583, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !583, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !583, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !583, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !583, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !583, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !583, file: !46, line: 93, baseType: !582, size: 64, offset: 1344)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !583, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !583, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !583, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !583, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!614 = !DISubprogram(name: "fclose", scope: !41, file: !41, line: 213, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!615 = !DISubprogram(name: "lseek", scope: !616, file: !616, line: 334, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!616 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!617 = !DISubroutineType(types: !618)
!618 = !{!69, !38, !69, !38}
!619 = !DISubprogram(name: "rpl_fflush", scope: !135, file: !135, line: 718, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!620 = distinct !DICompileUnit(language: DW_LANG_C99, file: !621, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !622, splitDebugInlining: false, nameTableKind: None)
!621 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!622 = !{!91, !623, !658}
!623 = !DISubprogram(name: "fflush", scope: !41, file: !41, line: 218, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!624 = !DISubroutineType(types: !625)
!625 = !{!38, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !627, file: !46, line: 51, baseType: !38, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !627, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !627, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !627, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !627, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !627, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !627, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !627, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !627, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !627, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !627, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !627, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !627, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !627, file: !46, line: 70, baseType: !626, size: 64, offset: 832)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !627, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !627, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !627, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !627, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !627, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !627, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !627, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !627, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !627, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !627, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !627, file: !46, line: 93, baseType: !626, size: 64, offset: 1344)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !627, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !627, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !627, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !627, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!658 = !DISubprogram(name: "rpl_fseeko", scope: !135, file: !135, line: 1034, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!659 = !DISubroutineType(types: !660)
!660 = !{!38, !626, !69, !38}
!661 = distinct !DICompileUnit(language: DW_LANG_C99, file: !662, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!663 = !{!91, !664, !615, !699}
!664 = !DISubprogram(name: "fileno", scope: !41, file: !41, line: 786, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!665 = !DISubroutineType(types: !666)
!666 = !{!38, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !668, file: !46, line: 51, baseType: !38, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !668, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !668, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !668, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !668, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !668, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !668, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !668, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !668, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !668, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !668, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !668, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !668, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !668, file: !46, line: 70, baseType: !667, size: 64, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !668, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !668, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !668, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !668, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !668, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !668, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !668, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !668, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !668, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !668, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !668, file: !46, line: 93, baseType: !667, size: 64, offset: 1344)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !668, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !668, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !668, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !668, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!699 = !DISubprogram(name: "fseeko", scope: !41, file: !41, line: 707, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!700 = !DISubroutineType(types: !701)
!701 = !{!38, !667, !69, !38}
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !704, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!704 = !{!705, !93, !717}
!705 = !DISubprogram(name: "mbrtowc", scope: !402, file: !402, line: 296, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!706 = !DISubroutineType(types: !707)
!707 = !{!95, !236, !36, !95, !708}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !386, line: 13, size: 64, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !709, file: !386, line: 15, baseType: !38, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !709, file: !386, line: 20, baseType: !713, size: 32, offset: 32)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !709, file: !386, line: 16, size: 32, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !713, file: !386, line: 18, baseType: !7, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !713, file: !386, line: 19, baseType: !394, size: 32)
!717 = !DISubprogram(name: "hard_locale", scope: !718, file: !718, line: 26, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!718 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!719 = !DISubroutineType(types: !720)
!720 = !{!130, !38}
!721 = distinct !DICompileUnit(language: DW_LANG_C99, file: !722, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !723, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!723 = !{!724}
!724 = !DISubprogram(name: "rpl_fclose", scope: !135, file: !135, line: 672, type: !725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!725 = !DISubroutineType(types: !726)
!726 = !{!38, !727}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !728, file: !46, line: 51, baseType: !38, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !728, file: !46, line: 54, baseType: !34, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !728, file: !46, line: 55, baseType: !34, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !728, file: !46, line: 56, baseType: !34, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !728, file: !46, line: 57, baseType: !34, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !728, file: !46, line: 58, baseType: !34, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !728, file: !46, line: 59, baseType: !34, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !728, file: !46, line: 60, baseType: !34, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !728, file: !46, line: 61, baseType: !34, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !728, file: !46, line: 64, baseType: !34, size: 64, offset: 576)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !728, file: !46, line: 65, baseType: !34, size: 64, offset: 640)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !728, file: !46, line: 66, baseType: !34, size: 64, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !728, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !728, file: !46, line: 70, baseType: !727, size: 64, offset: 832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !728, file: !46, line: 72, baseType: !38, size: 32, offset: 896)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !728, file: !46, line: 73, baseType: !38, size: 32, offset: 928)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !728, file: !46, line: 74, baseType: !67, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !728, file: !46, line: 77, baseType: !71, size: 16, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !728, file: !46, line: 78, baseType: !73, size: 8, offset: 1040)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !728, file: !46, line: 79, baseType: !75, size: 8, offset: 1048)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !728, file: !46, line: 81, baseType: !79, size: 64, offset: 1088)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !728, file: !46, line: 89, baseType: !82, size: 64, offset: 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !728, file: !46, line: 91, baseType: !84, size: 64, offset: 1216)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !728, file: !46, line: 92, baseType: !87, size: 64, offset: 1280)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !728, file: !46, line: 93, baseType: !727, size: 64, offset: 1344)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !728, file: !46, line: 94, baseType: !91, size: 64, offset: 1408)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !728, file: !46, line: 95, baseType: !93, size: 64, offset: 1472)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !728, file: !46, line: 96, baseType: !38, size: 32, offset: 1536)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !728, file: !46, line: 98, baseType: !98, size: 160, offset: 1568)
!759 = distinct !DICompileUnit(language: DW_LANG_C99, file: !760, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !761, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!761 = !{!762}
!762 = !DISubprogram(name: "setlocale_null_r", scope: !763, file: !763, line: 64, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!763 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!764 = !DISubroutineType(types: !765)
!765 = !{!38, !38, !34, !95}
!766 = distinct !DICompileUnit(language: DW_LANG_C99, file: !767, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !768, retainedTypes: !1155, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!768 = !{!769}
!769 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !770, line: 41, baseType: !7, size: 32, elements: !771)
!770 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154}
!772 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!773 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!774 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!775 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!776 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!777 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!778 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!779 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!780 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!781 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!782 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!783 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!784 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!785 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!786 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!787 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!788 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!789 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!790 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!791 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!792 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!793 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!794 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!795 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!796 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!797 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!798 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!799 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!800 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!801 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!802 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!803 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!804 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!805 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!806 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!807 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!808 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!809 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!810 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!811 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!812 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!813 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!814 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!815 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!816 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!817 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!818 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!819 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!820 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!821 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!822 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!823 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!824 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!825 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!826 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!827 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!828 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!829 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!830 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!831 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!832 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!833 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!834 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!835 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!836 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!837 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!838 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!839 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!840 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!841 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!842 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!843 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!844 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!845 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!846 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!847 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!848 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!849 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!850 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!851 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!852 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!853 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!854 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!855 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!856 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!857 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!858 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!859 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!860 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!861 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!862 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!863 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!864 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!865 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!866 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!867 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!868 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!869 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!870 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!871 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!872 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!873 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!874 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!875 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!876 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!877 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!878 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!879 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!880 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!881 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!882 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!883 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!884 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!885 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!886 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!887 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!888 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!889 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!890 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!891 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!892 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!893 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!894 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!895 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!896 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!897 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!898 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!899 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!900 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!901 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!902 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!903 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!904 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!905 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!906 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!907 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!908 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!909 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!910 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!911 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!912 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!913 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!914 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!915 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!916 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!917 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!918 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!919 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!920 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!921 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!922 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!923 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!924 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!925 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!926 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!927 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!928 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!929 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!930 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!931 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!932 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!933 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!934 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!935 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!936 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!937 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!938 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!939 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!940 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!941 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!942 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!943 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!944 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!945 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!946 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!947 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!948 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!949 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!967 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1008 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1011 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1012 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1013 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1014 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1015 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1016 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1017 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1018 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1019 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1020 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1021 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1022 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1040 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1041 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1042 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1043 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1044 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1045 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1046 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1047 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1048 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1049 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1050 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1051 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1052 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1053 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1054 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1056 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1057 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1058 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1059 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1060 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1061 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1087 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1088 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1089 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1090 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1091 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1095 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1096 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1097 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1098 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1099 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1155 = !{!1156, !91}
!1156 = !DISubprogram(name: "nl_langinfo", scope: !770, file: !770, line: 661, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !39)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!34, !38}
!1159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1160, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !1161, splitDebugInlining: false, nameTableKind: None)
!1160 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1161 = !{!91, !105}
!1162 = !{!"clang version 10.0.0 "}
!1163 = !{i32 7, !"Dwarf Version", i32 4}
!1164 = !{i32 2, !"Debug Info Version", i32 3}
!1165 = !{i32 1, !"wchar_size", i32 4}
!1166 = !{i32 7, !"PIC Level", i32 2}
!1167 = !{i32 7, !"PIE Level", i32 2}
!1168 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 251, type: !132, scopeLine: 252, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1169)
!1169 = !{!1170}
!1170 = !DILocalVariable(name: "status", arg: 1, scope: !1168, file: !3, line: 251, type: !38)
!1171 = !DILocalVariable(name: "infomap", scope: !1172, file: !1173, line: 636, type: !1185)
!1172 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1173, file: !1173, line: 634, type: !103, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1174)
!1173 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1174 = !{!1175, !1171, !1176, !1177, !1184}
!1175 = !DILocalVariable(name: "program", arg: 1, scope: !1172, file: !1173, line: 634, type: !36)
!1176 = !DILocalVariable(name: "node", scope: !1172, file: !1173, line: 646, type: !36)
!1177 = !DILocalVariable(name: "map_prog", scope: !1172, file: !1173, line: 647, type: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1172, file: !1173, line: 636, size: 128, elements: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1180, file: !1173, line: 636, baseType: !36, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1180, file: !1173, line: 636, baseType: !36, size: 64, offset: 64)
!1184 = !DILocalVariable(name: "lc_messages", scope: !1172, file: !1173, line: 659, type: !36)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1179, size: 896, elements: !1186)
!1186 = !{!1187}
!1187 = !DISubrange(count: 7)
!1188 = !DILocation(line: 636, column: 67, scope: !1172, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 268, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 256, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 253, column: 7)
!1192 = !DILocation(line: 0, scope: !1168)
!1193 = !DILocation(line: 253, column: 14, scope: !1191)
!1194 = !DILocation(line: 253, column: 7, scope: !1168)
!1195 = !DILocation(line: 254, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 254, column: 5)
!1197 = !{!1198, !1198, i64 0}
!1198 = !{!"any pointer", !1199, i64 0}
!1199 = !{!"omnipotent char", !1200, i64 0}
!1200 = !{!"Simple C/C++ TBAA"}
!1201 = !DILocation(line: 257, column: 7, scope: !1190)
!1202 = !DILocation(line: 262, column: 7, scope: !1190)
!1203 = !DILocation(line: 266, column: 7, scope: !1190)
!1204 = !DILocation(line: 267, column: 7, scope: !1190)
!1205 = !DILocation(line: 0, scope: !1172, inlinedAt: !1189)
!1206 = !DILocation(line: 636, column: 3, scope: !1172, inlinedAt: !1189)
!1207 = !DILocation(line: 647, column: 36, scope: !1172, inlinedAt: !1189)
!1208 = !DILocation(line: 649, column: 3, scope: !1172, inlinedAt: !1189)
!1209 = !DILocation(line: 649, column: 33, scope: !1172, inlinedAt: !1189)
!1210 = !DILocation(line: 650, column: 13, scope: !1172, inlinedAt: !1189)
!1211 = !DILocation(line: 649, column: 20, scope: !1172, inlinedAt: !1189)
!1212 = !{!1213, !1198, i64 0}
!1213 = !{!"infomap", !1198, i64 0, !1198, i64 8}
!1214 = !DILocation(line: 649, column: 10, scope: !1172, inlinedAt: !1189)
!1215 = !DILocation(line: 649, column: 28, scope: !1172, inlinedAt: !1189)
!1216 = distinct !{!1216, !1208, !1210}
!1217 = !DILocation(line: 652, column: 17, scope: !1218, inlinedAt: !1189)
!1218 = distinct !DILexicalBlock(scope: !1172, file: !1173, line: 652, column: 7)
!1219 = !{!1213, !1198, i64 8}
!1220 = !DILocation(line: 652, column: 7, scope: !1218, inlinedAt: !1189)
!1221 = !DILocation(line: 652, column: 7, scope: !1172, inlinedAt: !1189)
!1222 = !DILocation(line: 655, column: 3, scope: !1172, inlinedAt: !1189)
!1223 = !DILocation(line: 659, column: 29, scope: !1172, inlinedAt: !1189)
!1224 = !DILocation(line: 660, column: 7, scope: !1225, inlinedAt: !1189)
!1225 = distinct !DILexicalBlock(scope: !1172, file: !1173, line: 660, column: 7)
!1226 = !DILocation(line: 660, column: 19, scope: !1225, inlinedAt: !1189)
!1227 = !DILocation(line: 660, column: 22, scope: !1225, inlinedAt: !1189)
!1228 = !DILocation(line: 660, column: 7, scope: !1172, inlinedAt: !1189)
!1229 = !DILocation(line: 666, column: 7, scope: !1230, inlinedAt: !1189)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !1173, line: 661, column: 5)
!1231 = !DILocation(line: 668, column: 5, scope: !1230, inlinedAt: !1189)
!1232 = !DILocation(line: 669, column: 3, scope: !1172, inlinedAt: !1189)
!1233 = !DILocation(line: 671, column: 3, scope: !1172, inlinedAt: !1189)
!1234 = !DILocation(line: 673, column: 1, scope: !1172, inlinedAt: !1189)
!1235 = !DILocation(line: 270, column: 3, scope: !1168)
!1236 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 274, type: !1237, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!38, !38, !129}
!1239 = !{!1240, !1241, !1242, !1243}
!1240 = !DILocalVariable(name: "argc", arg: 1, scope: !1236, file: !3, line: 274, type: !38)
!1241 = !DILocalVariable(name: "argv", arg: 2, scope: !1236, file: !3, line: 274, type: !129)
!1242 = !DILocalVariable(name: "i", scope: !1236, file: !3, line: 276, type: !38)
!1243 = !DILocalVariable(name: "ok", scope: !1236, file: !3, line: 277, type: !130)
!1244 = !DILocation(line: 0, scope: !1236)
!1245 = !DILocation(line: 280, column: 21, scope: !1236)
!1246 = !DILocation(line: 280, column: 3, scope: !1236)
!1247 = !DILocation(line: 281, column: 3, scope: !1236)
!1248 = !DILocation(line: 282, column: 3, scope: !1236)
!1249 = !DILocation(line: 283, column: 3, scope: !1236)
!1250 = !DILocation(line: 285, column: 3, scope: !1236)
!1251 = !DILocation(line: 289, column: 12, scope: !1236)
!1252 = !DILocation(line: 289, column: 3, scope: !1236)
!1253 = !DILocation(line: 291, column: 71, scope: !1236)
!1254 = !DILocation(line: 291, column: 3, scope: !1236)
!1255 = !DILocation(line: 294, column: 19, scope: !1236)
!1256 = !DILocation(line: 296, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 296, column: 7)
!1258 = !{!1259, !1259, i64 0}
!1259 = !{!"int", !1199, i64 0}
!1260 = !DILocation(line: 296, column: 14, scope: !1257)
!1261 = !DILocation(line: 296, column: 7, scope: !1236)
!1262 = !DILocation(line: 301, column: 26, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 301, column: 7)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 301, column: 7)
!1265 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 299, column: 5)
!1266 = !DILocation(line: 301, column: 7, scope: !1264)
!1267 = !DILocation(line: 297, column: 10, scope: !1257)
!1268 = !DILocation(line: 297, column: 8, scope: !1257)
!1269 = !DILocation(line: 297, column: 5, scope: !1257)
!1270 = !DILocation(line: 302, column: 22, scope: !1263)
!1271 = !DILocation(line: 302, column: 15, scope: !1263)
!1272 = !DILocation(line: 302, column: 12, scope: !1263)
!1273 = !DILocation(line: 301, column: 35, scope: !1263)
!1274 = distinct !{!1274, !1266, !1275}
!1275 = !DILocation(line: 302, column: 35, scope: !1264)
!1276 = !DILocation(line: 305, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 305, column: 7)
!1278 = !DILocation(line: 305, column: 23, scope: !1277)
!1279 = !DILocation(line: 305, column: 34, scope: !1277)
!1280 = !DILocation(line: 305, column: 26, scope: !1277)
!1281 = !DILocation(line: 305, column: 41, scope: !1277)
!1282 = !DILocation(line: 305, column: 7, scope: !1236)
!1283 = !DILocation(line: 306, column: 5, scope: !1277)
!1284 = !DILocation(line: 307, column: 10, scope: !1236)
!1285 = !DILocation(line: 307, column: 3, scope: !1236)
!1286 = distinct !DISubprogram(name: "cksum", scope: !3, file: !3, line: 177, type: !1287, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!130, !36, !130}
!1289 = !{!1290, !1291, !1292, !1297, !1298, !1299, !1300, !1304, !1308, !1309}
!1290 = !DILocalVariable(name: "file", arg: 1, scope: !1286, file: !3, line: 177, type: !36)
!1291 = !DILocalVariable(name: "print_name", arg: 2, scope: !1286, file: !3, line: 177, type: !130)
!1292 = !DILocalVariable(name: "buf", scope: !1286, file: !3, line: 179, type: !1293)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 524288, elements: !1295)
!1294 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1295 = !{!1296}
!1296 = !DISubrange(count: 65536)
!1297 = !DILocalVariable(name: "crc", scope: !1286, file: !3, line: 180, type: !158)
!1298 = !DILocalVariable(name: "length", scope: !1286, file: !3, line: 181, type: !505)
!1299 = !DILocalVariable(name: "bytes_read", scope: !1286, file: !3, line: 182, type: !93)
!1300 = !DILocalVariable(name: "fp", scope: !1286, file: !3, line: 183, type: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1303, line: 7, baseType: !45)
!1303 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!1304 = !DILocalVariable(name: "length_buf", scope: !1286, file: !3, line: 184, type: !1305)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 168, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 21)
!1308 = !DILocalVariable(name: "hp", scope: !1286, file: !3, line: 185, type: !36)
!1309 = !DILocalVariable(name: "cp", scope: !1310, file: !3, line: 207, type: !1311)
!1310 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 206, column: 5)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1312 = !DILocation(line: 0, scope: !1286)
!1313 = !DILocation(line: 179, column: 3, scope: !1286)
!1314 = !DILocation(line: 179, column: 17, scope: !1286)
!1315 = !DILocation(line: 184, column: 3, scope: !1286)
!1316 = !DILocation(line: 184, column: 8, scope: !1286)
!1317 = !DILocation(line: 187, column: 7, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 187, column: 7)
!1319 = !DILocation(line: 187, column: 7, scope: !1286)
!1320 = !DILocation(line: 189, column: 12, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 188, column: 5)
!1322 = !DILocation(line: 190, column: 23, scope: !1321)
!1323 = !DILocation(line: 192, column: 5, scope: !1321)
!1324 = !DILocation(line: 195, column: 12, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 194, column: 5)
!1326 = !DILocation(line: 196, column: 14, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 196, column: 11)
!1328 = !DILocation(line: 196, column: 11, scope: !1325)
!1329 = !DILocation(line: 198, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 197, column: 9)
!1331 = !DILocation(line: 198, column: 34, scope: !1330)
!1332 = !DILocation(line: 198, column: 11, scope: !1330)
!1333 = !DILocation(line: 199, column: 11, scope: !1330)
!1334 = !DILocation(line: 0, scope: !1318)
!1335 = !DILocation(line: 203, column: 3, scope: !1286)
!1336 = !DILocation(line: 0, scope: !1337, inlinedAt: !1343)
!1337 = distinct !DISubprogram(name: "feof_unlocked", scope: !1338, file: !1338, line: 128, type: !1339, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1341)
!1338 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!38, !1301}
!1341 = !{!1342}
!1342 = !DILocalVariable(name: "__stream", arg: 1, scope: !1337, file: !1338, line: 128, type: !1301)
!1343 = distinct !DILocation(line: 214, column: 11, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 214, column: 11)
!1345 = !DILocation(line: 0, scope: !1310)
!1346 = !DILocation(line: 205, column: 3, scope: !1286)
!1347 = !DILocation(line: 180, column: 17, scope: !1286)
!1348 = !DILocation(line: 205, column: 24, scope: !1286)
!1349 = !DILocation(line: 205, column: 52, scope: !1286)
!1350 = !DILocation(line: 137, column: 10, scope: !1351, inlinedAt: !1354)
!1351 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1338, file: !1338, line: 135, type: !1339, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1352 = !{!1353}
!1353 = !DILocalVariable(name: "__stream", arg: 1, scope: !1351, file: !1338, line: 135, type: !1301)
!1354 = distinct !DILocation(line: 218, column: 7, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 218, column: 7)
!1356 = !{!1357, !1259, i64 0}
!1357 = !{!"_IO_FILE", !1259, i64 0, !1198, i64 8, !1198, i64 16, !1198, i64 24, !1198, i64 32, !1198, i64 40, !1198, i64 48, !1198, i64 56, !1198, i64 64, !1198, i64 72, !1198, i64 80, !1198, i64 88, !1198, i64 96, !1198, i64 104, !1259, i64 112, !1259, i64 116, !1358, i64 120, !1359, i64 128, !1199, i64 130, !1199, i64 131, !1198, i64 136, !1358, i64 144, !1198, i64 152, !1198, i64 160, !1198, i64 168, !1198, i64 176, !1358, i64 184, !1259, i64 192, !1199, i64 196}
!1358 = !{!"long", !1199, i64 0}
!1359 = !{!"short", !1199, i64 0}
!1360 = !DILocation(line: 209, column: 18, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 209, column: 11)
!1362 = !DILocation(line: 209, column: 31, scope: !1361)
!1363 = !DILocation(line: 209, column: 11, scope: !1310)
!1364 = !DILocation(line: 212, column: 7, scope: !1310)
!1365 = !DILocation(line: 212, column: 24, scope: !1310)
!1366 = !DILocation(line: 213, column: 20, scope: !1310)
!1367 = !DILocation(line: 213, column: 41, scope: !1310)
!1368 = !DILocation(line: 213, column: 50, scope: !1310)
!1369 = !{!1199, !1199, i64 0}
!1370 = !DILocation(line: 213, column: 57, scope: !1310)
!1371 = !DILocation(line: 213, column: 28, scope: !1310)
!1372 = !{!1358, !1358, i64 0}
!1373 = !DILocation(line: 213, column: 26, scope: !1310)
!1374 = !DILocation(line: 210, column: 9, scope: !1361)
!1375 = !DILocation(line: 213, column: 53, scope: !1310)
!1376 = distinct !{!1376, !1364, !1377}
!1377 = !DILocation(line: 213, column: 63, scope: !1310)
!1378 = !DILocation(line: 130, column: 10, scope: !1337, inlinedAt: !1343)
!1379 = !DILocation(line: 214, column: 11, scope: !1344)
!1380 = distinct !{!1380, !1346, !1381}
!1381 = !DILocation(line: 216, column: 5, scope: !1286)
!1382 = !DILocation(line: 0, scope: !1351, inlinedAt: !1354)
!1383 = !DILocation(line: 218, column: 7, scope: !1355)
!1384 = !DILocation(line: 218, column: 7, scope: !1286)
!1385 = !DILocation(line: 220, column: 17, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 219, column: 5)
!1387 = !DILocation(line: 220, column: 30, scope: !1386)
!1388 = !DILocation(line: 220, column: 7, scope: !1386)
!1389 = !DILocation(line: 221, column: 12, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 221, column: 11)
!1391 = !DILocation(line: 221, column: 11, scope: !1386)
!1392 = !DILocation(line: 222, column: 9, scope: !1390)
!1393 = !DILocation(line: 226, column: 8, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 226, column: 7)
!1395 = !DILocation(line: 226, column: 26, scope: !1394)
!1396 = !DILocation(line: 226, column: 29, scope: !1394)
!1397 = !DILocation(line: 226, column: 41, scope: !1394)
!1398 = !DILocation(line: 226, column: 7, scope: !1286)
!1399 = !DILocation(line: 228, column: 17, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 227, column: 5)
!1401 = !DILocation(line: 228, column: 30, scope: !1400)
!1402 = !DILocation(line: 228, column: 7, scope: !1400)
!1403 = !DILocation(line: 229, column: 7, scope: !1400)
!1404 = !DILocation(line: 232, column: 8, scope: !1286)
!1405 = !DILocation(line: 234, column: 3, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 234, column: 3)
!1407 = !DILocation(line: 235, column: 16, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 234, column: 3)
!1409 = !DILocation(line: 235, column: 37, scope: !1408)
!1410 = !DILocation(line: 235, column: 44, scope: !1408)
!1411 = !DILocation(line: 235, column: 54, scope: !1408)
!1412 = !DILocation(line: 235, column: 24, scope: !1408)
!1413 = !DILocation(line: 235, column: 22, scope: !1408)
!1414 = !DILocation(line: 234, column: 25, scope: !1408)
!1415 = distinct !{!1415, !1405, !1416}
!1416 = !DILocation(line: 235, column: 60, scope: !1406)
!1417 = !DILocation(line: 0, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 239, column: 7)
!1419 = !DILocation(line: 239, column: 7, scope: !1286)
!1420 = !DILocation(line: 240, column: 5, scope: !1418)
!1421 = !DILocation(line: 242, column: 5, scope: !1418)
!1422 = !DILocation(line: 244, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 244, column: 7)
!1424 = !DILocation(line: 0, scope: !1351, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 244, column: 7, scope: !1423)
!1426 = !DILocation(line: 137, column: 10, scope: !1351, inlinedAt: !1425)
!1427 = !DILocation(line: 244, column: 7, scope: !1286)
!1428 = !DILocation(line: 245, column: 5, scope: !1423)
!1429 = !DILocation(line: 248, column: 1, scope: !1286)
!1430 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !170, file: !170, line: 51, type: !103, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1431)
!1431 = !{!1432}
!1432 = !DILocalVariable(name: "file", arg: 1, scope: !1430, file: !170, line: 51, type: !36)
!1433 = !DILocation(line: 0, scope: !1430)
!1434 = !DILocation(line: 53, column: 13, scope: !1430)
!1435 = !DILocation(line: 54, column: 1, scope: !1430)
!1436 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !170, file: !170, line: 88, type: !1437, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !130}
!1439 = !{!1440}
!1440 = !DILocalVariable(name: "ignore", arg: 1, scope: !1436, file: !170, line: 88, type: !130)
!1441 = !DILocation(line: 0, scope: !1436)
!1442 = !DILocation(line: 90, column: 16, scope: !1436)
!1443 = !{!1444, !1444, i64 0}
!1444 = !{!"_Bool", !1199, i64 0}
!1445 = !DILocation(line: 91, column: 1, scope: !1436)
!1446 = distinct !DISubprogram(name: "close_stdout", scope: !170, file: !170, line: 117, type: !120, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !169, retainedNodes: !1447)
!1447 = !{!1448}
!1448 = !DILocalVariable(name: "write_error", scope: !1449, file: !170, line: 122, type: !36)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !170, line: 121, column: 5)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !170, line: 119, column: 7)
!1451 = !DILocation(line: 119, column: 21, scope: !1450)
!1452 = !DILocation(line: 119, column: 7, scope: !1450)
!1453 = !DILocation(line: 119, column: 29, scope: !1450)
!1454 = !DILocation(line: 120, column: 7, scope: !1450)
!1455 = !DILocation(line: 120, column: 12, scope: !1450)
!1456 = !{i8 0, i8 2}
!1457 = !DILocation(line: 120, column: 25, scope: !1450)
!1458 = !DILocation(line: 120, column: 28, scope: !1450)
!1459 = !DILocation(line: 120, column: 34, scope: !1450)
!1460 = !DILocation(line: 119, column: 7, scope: !1446)
!1461 = !DILocation(line: 122, column: 33, scope: !1449)
!1462 = !DILocation(line: 0, scope: !1449)
!1463 = !DILocation(line: 123, column: 11, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1449, file: !170, line: 123, column: 11)
!1465 = !DILocation(line: 0, scope: !1464)
!1466 = !DILocation(line: 123, column: 11, scope: !1449)
!1467 = !DILocation(line: 124, column: 36, scope: !1464)
!1468 = !DILocation(line: 124, column: 9, scope: !1464)
!1469 = !DILocation(line: 127, column: 9, scope: !1464)
!1470 = !DILocation(line: 129, column: 14, scope: !1449)
!1471 = !DILocation(line: 129, column: 7, scope: !1449)
!1472 = !DILocation(line: 134, column: 42, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1446, file: !170, line: 134, column: 7)
!1474 = !DILocation(line: 134, column: 28, scope: !1473)
!1475 = !DILocation(line: 134, column: 50, scope: !1473)
!1476 = !DILocation(line: 134, column: 7, scope: !1446)
!1477 = !DILocation(line: 135, column: 12, scope: !1473)
!1478 = !DILocation(line: 135, column: 5, scope: !1473)
!1479 = !DILocation(line: 136, column: 1, scope: !1446)
!1480 = distinct !DISubprogram(name: "fdadvise", scope: !460, file: !460, line: 31, type: !1481, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !1485)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !38, !1483, !1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !41, line: 63, baseType: !67)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1485 = !{!1486, !1487, !1488, !1489, !1490}
!1486 = !DILocalVariable(name: "fd", arg: 1, scope: !1480, file: !460, line: 31, type: !38)
!1487 = !DILocalVariable(name: "offset", arg: 2, scope: !1480, file: !460, line: 31, type: !1483)
!1488 = !DILocalVariable(name: "len", arg: 3, scope: !1480, file: !460, line: 31, type: !1483)
!1489 = !DILocalVariable(name: "advice", arg: 4, scope: !1480, file: !460, line: 31, type: !1484)
!1490 = !DILocalVariable(name: "__x", scope: !1491, file: !460, line: 34, type: !38)
!1491 = distinct !DILexicalBlock(scope: !1480, file: !460, line: 34, column: 3)
!1492 = !DILocation(line: 0, scope: !1480)
!1493 = !DILocation(line: 34, column: 3, scope: !1491)
!1494 = !DILocation(line: 0, scope: !1491)
!1495 = !DILocation(line: 36, column: 1, scope: !1480)
!1496 = distinct !DISubprogram(name: "fadvise", scope: !460, file: !460, line: 39, type: !1497, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !1501)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1499, !1484}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1303, line: 7, baseType: !471)
!1501 = !{!1502, !1503}
!1502 = !DILocalVariable(name: "fp", arg: 1, scope: !1496, file: !460, line: 39, type: !1499)
!1503 = !DILocalVariable(name: "advice", arg: 2, scope: !1496, file: !460, line: 39, type: !1484)
!1504 = !DILocation(line: 0, scope: !1496)
!1505 = !DILocation(line: 41, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1496, file: !460, line: 41, column: 7)
!1507 = !DILocation(line: 41, column: 7, scope: !1496)
!1508 = !DILocation(line: 42, column: 15, scope: !1506)
!1509 = !DILocation(line: 0, scope: !1480, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 42, column: 5, scope: !1506)
!1511 = !DILocation(line: 34, column: 3, scope: !1491, inlinedAt: !1510)
!1512 = !DILocation(line: 0, scope: !1491, inlinedAt: !1510)
!1513 = !DILocation(line: 42, column: 5, scope: !1506)
!1514 = !DILocation(line: 43, column: 1, scope: !1496)
!1515 = distinct !DISubprogram(name: "umaxtostr", scope: !1516, file: !1516, line: 36, type: !1517, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !502, retainedNodes: !1519)
!1516 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!34, !505, !34}
!1519 = !{!1520, !1521, !1522}
!1520 = !DILocalVariable(name: "i", arg: 1, scope: !1515, file: !1516, line: 36, type: !505)
!1521 = !DILocalVariable(name: "buf", arg: 2, scope: !1515, file: !1516, line: 36, type: !34)
!1522 = !DILocalVariable(name: "p", scope: !1515, file: !1516, line: 38, type: !34)
!1523 = !DILocation(line: 0, scope: !1515)
!1524 = !DILocation(line: 38, column: 17, scope: !1515)
!1525 = !DILocation(line: 39, column: 6, scope: !1515)
!1526 = !DILocation(line: 41, column: 7, scope: !1515)
!1527 = !DILocation(line: 52, column: 24, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !1516, line: 50, column: 5)
!1529 = distinct !DILexicalBlock(scope: !1515, file: !1516, line: 41, column: 7)
!1530 = !DILocation(line: 52, column: 16, scope: !1528)
!1531 = !DILocation(line: 52, column: 10, scope: !1528)
!1532 = !DILocation(line: 52, column: 14, scope: !1528)
!1533 = !DILocation(line: 53, column: 17, scope: !1528)
!1534 = !DILocation(line: 53, column: 24, scope: !1528)
!1535 = !DILocation(line: 52, column: 9, scope: !1528)
!1536 = distinct !{!1536, !1537, !1538}
!1537 = !DILocation(line: 51, column: 7, scope: !1528)
!1538 = !DILocation(line: 53, column: 28, scope: !1528)
!1539 = !DILocation(line: 56, column: 3, scope: !1515)
!1540 = distinct !DISubprogram(name: "parse_long_options", scope: !221, file: !221, line: 45, type: !1541, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !1543)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !38, !129, !36, !36, !36, !131, null}
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552}
!1544 = !DILocalVariable(name: "argc", arg: 1, scope: !1540, file: !221, line: 45, type: !38)
!1545 = !DILocalVariable(name: "argv", arg: 2, scope: !1540, file: !221, line: 46, type: !129)
!1546 = !DILocalVariable(name: "command_name", arg: 3, scope: !1540, file: !221, line: 47, type: !36)
!1547 = !DILocalVariable(name: "package", arg: 4, scope: !1540, file: !221, line: 48, type: !36)
!1548 = !DILocalVariable(name: "version", arg: 5, scope: !1540, file: !221, line: 49, type: !36)
!1549 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1540, file: !221, line: 50, type: !131)
!1550 = !DILocalVariable(name: "c", scope: !1540, file: !221, line: 53, type: !38)
!1551 = !DILocalVariable(name: "saved_opterr", scope: !1540, file: !221, line: 54, type: !38)
!1552 = !DILocalVariable(name: "authors", scope: !1553, file: !221, line: 72, type: !1557)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !221, line: 71, column: 11)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !221, line: 65, column: 9)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !221, line: 63, column: 5)
!1556 = distinct !DILexicalBlock(scope: !1540, file: !221, line: 61, column: 7)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !41, line: 52, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1559, line: 32, baseType: !1560)
!1559 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !221, line: 72, baseType: !1561)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 192, elements: !76)
!1562 = !DILocation(line: 0, scope: !1540)
!1563 = !DILocation(line: 56, column: 18, scope: !1540)
!1564 = !DILocation(line: 59, column: 10, scope: !1540)
!1565 = !DILocation(line: 61, column: 12, scope: !1556)
!1566 = !DILocation(line: 62, column: 7, scope: !1556)
!1567 = !DILocation(line: 62, column: 15, scope: !1556)
!1568 = !DILocation(line: 61, column: 7, scope: !1540)
!1569 = !DILocation(line: 67, column: 11, scope: !1554)
!1570 = !DILocation(line: 68, column: 11, scope: !1554)
!1571 = !DILocation(line: 72, column: 13, scope: !1553)
!1572 = !DILocation(line: 72, column: 21, scope: !1553)
!1573 = !DILocation(line: 73, column: 13, scope: !1553)
!1574 = !DILocation(line: 74, column: 29, scope: !1553)
!1575 = !DILocation(line: 74, column: 13, scope: !1553)
!1576 = !DILocation(line: 75, column: 13, scope: !1553)
!1577 = !DILocation(line: 85, column: 10, scope: !1540)
!1578 = !DILocation(line: 89, column: 10, scope: !1540)
!1579 = !DILocation(line: 90, column: 1, scope: !1540)
!1580 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !221, file: !221, line: 98, type: !127, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1582 = !DILocalVariable(name: "argc", arg: 1, scope: !1580, file: !221, line: 98, type: !38)
!1583 = !DILocalVariable(name: "argv", arg: 2, scope: !1580, file: !221, line: 99, type: !129)
!1584 = !DILocalVariable(name: "command_name", arg: 3, scope: !1580, file: !221, line: 100, type: !36)
!1585 = !DILocalVariable(name: "package", arg: 4, scope: !1580, file: !221, line: 101, type: !36)
!1586 = !DILocalVariable(name: "version", arg: 5, scope: !1580, file: !221, line: 102, type: !36)
!1587 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1580, file: !221, line: 103, type: !130)
!1588 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1580, file: !221, line: 104, type: !131)
!1589 = !DILocalVariable(name: "c", scope: !1580, file: !221, line: 107, type: !38)
!1590 = !DILocalVariable(name: "saved_opterr", scope: !1580, file: !221, line: 108, type: !38)
!1591 = !DILocalVariable(name: "optstring", scope: !1580, file: !221, line: 113, type: !36)
!1592 = !DILocalVariable(name: "authors", scope: !1593, file: !221, line: 125, type: !1557)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !221, line: 124, column: 11)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !221, line: 118, column: 9)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !221, line: 116, column: 5)
!1596 = distinct !DILexicalBlock(scope: !1580, file: !221, line: 115, column: 7)
!1597 = !DILocation(line: 0, scope: !1580)
!1598 = !DILocation(line: 108, column: 22, scope: !1580)
!1599 = !DILocation(line: 111, column: 10, scope: !1580)
!1600 = !DILocation(line: 113, column: 27, scope: !1580)
!1601 = !DILocation(line: 115, column: 12, scope: !1596)
!1602 = !DILocation(line: 115, column: 7, scope: !1580)
!1603 = !DILocation(line: 125, column: 13, scope: !1593)
!1604 = !DILocation(line: 125, column: 21, scope: !1593)
!1605 = !DILocation(line: 126, column: 13, scope: !1593)
!1606 = !DILocation(line: 127, column: 29, scope: !1593)
!1607 = !DILocation(line: 127, column: 13, scope: !1593)
!1608 = !DILocation(line: 128, column: 13, scope: !1593)
!1609 = !DILocation(line: 132, column: 26, scope: !1594)
!1610 = !DILocation(line: 133, column: 11, scope: !1594)
!1611 = !DILocation(line: 0, scope: !1594)
!1612 = !DILocation(line: 138, column: 10, scope: !1580)
!1613 = !DILocation(line: 139, column: 1, scope: !1580)
!1614 = distinct !DISubprogram(name: "set_program_name", scope: !288, file: !288, line: 39, type: !103, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !287, retainedNodes: !1615)
!1615 = !{!1616, !1617, !1618}
!1616 = !DILocalVariable(name: "argv0", arg: 1, scope: !1614, file: !288, line: 39, type: !36)
!1617 = !DILocalVariable(name: "slash", scope: !1614, file: !288, line: 46, type: !36)
!1618 = !DILocalVariable(name: "base", scope: !1614, file: !288, line: 47, type: !36)
!1619 = !DILocation(line: 0, scope: !1614)
!1620 = !DILocation(line: 51, column: 13, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1614, file: !288, line: 51, column: 7)
!1622 = !DILocation(line: 51, column: 7, scope: !1614)
!1623 = !DILocation(line: 55, column: 14, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !288, line: 52, column: 5)
!1625 = !DILocation(line: 54, column: 7, scope: !1624)
!1626 = !DILocation(line: 56, column: 7, scope: !1624)
!1627 = !DILocation(line: 59, column: 11, scope: !1614)
!1628 = !DILocation(line: 60, column: 17, scope: !1614)
!1629 = !DILocation(line: 60, column: 11, scope: !1614)
!1630 = !DILocation(line: 61, column: 12, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1614, file: !288, line: 61, column: 7)
!1632 = !DILocation(line: 61, column: 20, scope: !1631)
!1633 = !DILocation(line: 61, column: 25, scope: !1631)
!1634 = !DILocation(line: 61, column: 42, scope: !1631)
!1635 = !DILocation(line: 61, column: 28, scope: !1631)
!1636 = !DILocation(line: 61, column: 61, scope: !1631)
!1637 = !DILocation(line: 61, column: 7, scope: !1614)
!1638 = !DILocation(line: 64, column: 11, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !288, line: 64, column: 11)
!1640 = distinct !DILexicalBlock(scope: !1631, file: !288, line: 62, column: 5)
!1641 = !DILocation(line: 64, column: 36, scope: !1639)
!1642 = !DILocation(line: 64, column: 11, scope: !1640)
!1643 = !DILocation(line: 66, column: 24, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !288, line: 65, column: 9)
!1645 = !DILocation(line: 70, column: 41, scope: !1644)
!1646 = !DILocation(line: 72, column: 9, scope: !1644)
!1647 = !DILocation(line: 84, column: 16, scope: !1614)
!1648 = !DILocation(line: 90, column: 27, scope: !1614)
!1649 = !DILocation(line: 92, column: 1, scope: !1614)
!1650 = distinct !DISubprogram(name: "clone_quoting_options", scope: !329, file: !329, line: 122, type: !1651, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1654)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1653, !1653}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1654 = !{!1655, !1656, !1657}
!1655 = !DILocalVariable(name: "o", arg: 1, scope: !1650, file: !329, line: 122, type: !1653)
!1656 = !DILocalVariable(name: "e", scope: !1650, file: !329, line: 124, type: !38)
!1657 = !DILocalVariable(name: "p", scope: !1650, file: !329, line: 125, type: !1653)
!1658 = !DILocation(line: 0, scope: !1650)
!1659 = !DILocation(line: 124, column: 11, scope: !1650)
!1660 = !DILocation(line: 125, column: 40, scope: !1650)
!1661 = !DILocation(line: 125, column: 31, scope: !1650)
!1662 = !DILocation(line: 127, column: 9, scope: !1650)
!1663 = !DILocation(line: 128, column: 3, scope: !1650)
!1664 = distinct !DISubprogram(name: "get_quoting_style", scope: !329, file: !329, line: 133, type: !1665, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!5, !362}
!1667 = !{!1668}
!1668 = !DILocalVariable(name: "o", arg: 1, scope: !1664, file: !329, line: 133, type: !362)
!1669 = !DILocation(line: 0, scope: !1664)
!1670 = !DILocation(line: 135, column: 11, scope: !1664)
!1671 = !DILocation(line: 135, column: 46, scope: !1664)
!1672 = !{!1673, !1199, i64 0}
!1673 = !{!"quoting_options", !1199, i64 0, !1259, i64 4, !1199, i64 8, !1198, i64 40, !1198, i64 48}
!1674 = !DILocation(line: 135, column: 3, scope: !1664)
!1675 = distinct !DISubprogram(name: "set_quoting_style", scope: !329, file: !329, line: 141, type: !1676, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !1653, !5}
!1678 = !{!1679, !1680}
!1679 = !DILocalVariable(name: "o", arg: 1, scope: !1675, file: !329, line: 141, type: !1653)
!1680 = !DILocalVariable(name: "s", arg: 2, scope: !1675, file: !329, line: 141, type: !5)
!1681 = !DILocation(line: 0, scope: !1675)
!1682 = !DILocation(line: 143, column: 4, scope: !1675)
!1683 = !DILocation(line: 143, column: 39, scope: !1675)
!1684 = !DILocation(line: 143, column: 45, scope: !1675)
!1685 = !DILocation(line: 144, column: 1, scope: !1675)
!1686 = distinct !DISubprogram(name: "set_char_quoting", scope: !329, file: !329, line: 152, type: !1687, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!38, !1653, !35, !38}
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1696, !1697}
!1690 = !DILocalVariable(name: "o", arg: 1, scope: !1686, file: !329, line: 152, type: !1653)
!1691 = !DILocalVariable(name: "c", arg: 2, scope: !1686, file: !329, line: 152, type: !35)
!1692 = !DILocalVariable(name: "i", arg: 3, scope: !1686, file: !329, line: 152, type: !38)
!1693 = !DILocalVariable(name: "uc", scope: !1686, file: !329, line: 154, type: !1294)
!1694 = !DILocalVariable(name: "p", scope: !1686, file: !329, line: 155, type: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1696 = !DILocalVariable(name: "shift", scope: !1686, file: !329, line: 157, type: !38)
!1697 = !DILocalVariable(name: "r", scope: !1686, file: !329, line: 158, type: !38)
!1698 = !DILocation(line: 0, scope: !1686)
!1699 = !DILocation(line: 156, column: 6, scope: !1686)
!1700 = !DILocation(line: 156, column: 62, scope: !1686)
!1701 = !DILocation(line: 156, column: 57, scope: !1686)
!1702 = !DILocation(line: 157, column: 15, scope: !1686)
!1703 = !DILocation(line: 158, column: 12, scope: !1686)
!1704 = !DILocation(line: 158, column: 15, scope: !1686)
!1705 = !DILocation(line: 158, column: 25, scope: !1686)
!1706 = !DILocation(line: 159, column: 13, scope: !1686)
!1707 = !DILocation(line: 159, column: 18, scope: !1686)
!1708 = !DILocation(line: 159, column: 23, scope: !1686)
!1709 = !DILocation(line: 159, column: 6, scope: !1686)
!1710 = !DILocation(line: 160, column: 3, scope: !1686)
!1711 = distinct !DISubprogram(name: "set_quoting_flags", scope: !329, file: !329, line: 168, type: !1712, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!38, !1653, !38}
!1714 = !{!1715, !1716, !1717}
!1715 = !DILocalVariable(name: "o", arg: 1, scope: !1711, file: !329, line: 168, type: !1653)
!1716 = !DILocalVariable(name: "i", arg: 2, scope: !1711, file: !329, line: 168, type: !38)
!1717 = !DILocalVariable(name: "r", scope: !1711, file: !329, line: 170, type: !38)
!1718 = !DILocation(line: 0, scope: !1711)
!1719 = !DILocation(line: 171, column: 8, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1711, file: !329, line: 171, column: 7)
!1721 = !DILocation(line: 171, column: 7, scope: !1711)
!1722 = !DILocation(line: 173, column: 10, scope: !1711)
!1723 = !{!1673, !1259, i64 4}
!1724 = !DILocation(line: 174, column: 12, scope: !1711)
!1725 = !DILocation(line: 175, column: 3, scope: !1711)
!1726 = distinct !DISubprogram(name: "set_custom_quoting", scope: !329, file: !329, line: 179, type: !1727, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !1653, !36, !36}
!1729 = !{!1730, !1731, !1732}
!1730 = !DILocalVariable(name: "o", arg: 1, scope: !1726, file: !329, line: 179, type: !1653)
!1731 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1726, file: !329, line: 180, type: !36)
!1732 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1726, file: !329, line: 180, type: !36)
!1733 = !DILocation(line: 0, scope: !1726)
!1734 = !DILocation(line: 182, column: 8, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1726, file: !329, line: 182, column: 7)
!1736 = !DILocation(line: 182, column: 7, scope: !1726)
!1737 = !DILocation(line: 184, column: 6, scope: !1726)
!1738 = !DILocation(line: 184, column: 12, scope: !1726)
!1739 = !DILocation(line: 185, column: 8, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1726, file: !329, line: 185, column: 7)
!1741 = !DILocation(line: 185, column: 23, scope: !1740)
!1742 = !DILocation(line: 185, column: 19, scope: !1740)
!1743 = !DILocation(line: 186, column: 5, scope: !1740)
!1744 = !DILocation(line: 187, column: 6, scope: !1726)
!1745 = !DILocation(line: 187, column: 17, scope: !1726)
!1746 = !{!1673, !1198, i64 40}
!1747 = !DILocation(line: 188, column: 6, scope: !1726)
!1748 = !DILocation(line: 188, column: 18, scope: !1726)
!1749 = !{!1673, !1198, i64 48}
!1750 = !DILocation(line: 189, column: 1, scope: !1726)
!1751 = distinct !DISubprogram(name: "quotearg_buffer", scope: !329, file: !329, line: 784, type: !1752, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1754)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!93, !34, !93, !36, !93, !362}
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762}
!1755 = !DILocalVariable(name: "buffer", arg: 1, scope: !1751, file: !329, line: 784, type: !34)
!1756 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1751, file: !329, line: 784, type: !93)
!1757 = !DILocalVariable(name: "arg", arg: 3, scope: !1751, file: !329, line: 785, type: !36)
!1758 = !DILocalVariable(name: "argsize", arg: 4, scope: !1751, file: !329, line: 785, type: !93)
!1759 = !DILocalVariable(name: "o", arg: 5, scope: !1751, file: !329, line: 786, type: !362)
!1760 = !DILocalVariable(name: "p", scope: !1751, file: !329, line: 788, type: !362)
!1761 = !DILocalVariable(name: "e", scope: !1751, file: !329, line: 789, type: !38)
!1762 = !DILocalVariable(name: "r", scope: !1751, file: !329, line: 790, type: !93)
!1763 = !DILocation(line: 0, scope: !1751)
!1764 = !DILocation(line: 788, column: 37, scope: !1751)
!1765 = !DILocation(line: 789, column: 11, scope: !1751)
!1766 = !DILocation(line: 791, column: 43, scope: !1751)
!1767 = !DILocation(line: 791, column: 53, scope: !1751)
!1768 = !DILocation(line: 791, column: 60, scope: !1751)
!1769 = !DILocation(line: 792, column: 43, scope: !1751)
!1770 = !DILocation(line: 792, column: 58, scope: !1751)
!1771 = !DILocation(line: 790, column: 14, scope: !1751)
!1772 = !DILocation(line: 793, column: 9, scope: !1751)
!1773 = !DILocation(line: 794, column: 3, scope: !1751)
!1774 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !329, file: !329, line: 256, type: !1775, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1779)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!93, !34, !93, !36, !93, !5, !38, !1777, !36, !36}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1804, !1805, !1806, !1807, !1808, !1811, !1812, !1818, !1821, !1822, !1829, !1832, !1833, !1834, !1835, !1836, !1837}
!1780 = !DILocalVariable(name: "buffer", arg: 1, scope: !1774, file: !329, line: 256, type: !34)
!1781 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1774, file: !329, line: 256, type: !93)
!1782 = !DILocalVariable(name: "arg", arg: 3, scope: !1774, file: !329, line: 257, type: !36)
!1783 = !DILocalVariable(name: "argsize", arg: 4, scope: !1774, file: !329, line: 257, type: !93)
!1784 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1774, file: !329, line: 258, type: !5)
!1785 = !DILocalVariable(name: "flags", arg: 6, scope: !1774, file: !329, line: 258, type: !38)
!1786 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1774, file: !329, line: 259, type: !1777)
!1787 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1774, file: !329, line: 260, type: !36)
!1788 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1774, file: !329, line: 261, type: !36)
!1789 = !DILocalVariable(name: "i", scope: !1774, file: !329, line: 263, type: !93)
!1790 = !DILocalVariable(name: "len", scope: !1774, file: !329, line: 264, type: !93)
!1791 = !DILocalVariable(name: "orig_buffersize", scope: !1774, file: !329, line: 265, type: !93)
!1792 = !DILocalVariable(name: "quote_string", scope: !1774, file: !329, line: 266, type: !36)
!1793 = !DILocalVariable(name: "quote_string_len", scope: !1774, file: !329, line: 267, type: !93)
!1794 = !DILocalVariable(name: "backslash_escapes", scope: !1774, file: !329, line: 268, type: !130)
!1795 = !DILocalVariable(name: "unibyte_locale", scope: !1774, file: !329, line: 269, type: !130)
!1796 = !DILocalVariable(name: "elide_outer_quotes", scope: !1774, file: !329, line: 270, type: !130)
!1797 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1774, file: !329, line: 271, type: !130)
!1798 = !DILocalVariable(name: "encountered_single_quote", scope: !1774, file: !329, line: 272, type: !130)
!1799 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1774, file: !329, line: 273, type: !130)
!1800 = !DILocalVariable(name: "c", scope: !1801, file: !329, line: 402, type: !1294)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !329, line: 401, column: 5)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !329, line: 400, column: 3)
!1803 = distinct !DILexicalBlock(scope: !1774, file: !329, line: 400, column: 3)
!1804 = !DILocalVariable(name: "esc", scope: !1801, file: !329, line: 403, type: !1294)
!1805 = !DILocalVariable(name: "is_right_quote", scope: !1801, file: !329, line: 404, type: !130)
!1806 = !DILocalVariable(name: "escaping", scope: !1801, file: !329, line: 405, type: !130)
!1807 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1801, file: !329, line: 406, type: !130)
!1808 = !DILocalVariable(name: "m", scope: !1809, file: !329, line: 610, type: !93)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 608, column: 11)
!1810 = distinct !DILexicalBlock(scope: !1801, file: !329, line: 426, column: 9)
!1811 = !DILocalVariable(name: "printable", scope: !1809, file: !329, line: 612, type: !130)
!1812 = !DILocalVariable(name: "mbstate", scope: !1813, file: !329, line: 621, type: !1815)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !329, line: 620, column: 15)
!1814 = distinct !DILexicalBlock(scope: !1809, file: !329, line: 614, column: 17)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1816, line: 6, baseType: !1817)
!1816 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !386, line: 21, baseType: !385)
!1818 = !DILocalVariable(name: "w", scope: !1819, file: !329, line: 631, type: !1820)
!1819 = distinct !DILexicalBlock(scope: !1813, file: !329, line: 630, column: 19)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !94, line: 74, baseType: !38)
!1821 = !DILocalVariable(name: "bytes", scope: !1819, file: !329, line: 632, type: !93)
!1822 = !DILocalVariable(name: "j", scope: !1823, file: !329, line: 657, type: !93)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !329, line: 656, column: 27)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !329, line: 654, column: 29)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !329, line: 649, column: 23)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !329, line: 641, column: 30)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !329, line: 636, column: 30)
!1828 = distinct !DILexicalBlock(scope: !1819, file: !329, line: 634, column: 25)
!1829 = !DILocalVariable(name: "ilim", scope: !1830, file: !329, line: 684, type: !93)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !329, line: 681, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1809, file: !329, line: 680, column: 17)
!1832 = !DILabel(scope: !1774, name: "process_input", file: !329, line: 314)
!1833 = !DILabel(scope: !1810, name: "c_and_shell_escape", file: !329, line: 512)
!1834 = !DILabel(scope: !1810, name: "c_escape", file: !329, line: 517)
!1835 = !DILabel(scope: !1801, name: "store_escape", file: !329, line: 719)
!1836 = !DILabel(scope: !1801, name: "store_c", file: !329, line: 722)
!1837 = !DILabel(scope: !1774, name: "force_outer_quoting_style", file: !329, line: 763)
!1838 = !DILocation(line: 0, scope: !1774)
!1839 = !DILocation(line: 269, column: 25, scope: !1774)
!1840 = !DILocation(line: 269, column: 36, scope: !1774)
!1841 = !DILocation(line: 270, column: 8, scope: !1774)
!1842 = !DILocation(line: 0, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 526, column: 15)
!1844 = !DILocation(line: 0, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !329, line: 462, column: 19)
!1846 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 455, column: 13)
!1847 = !DILocation(line: 0, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !329, line: 449, column: 20)
!1849 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 428, column: 15)
!1850 = !DILocation(line: 0, scope: !1813)
!1851 = !DILocation(line: 0, scope: !1819)
!1852 = !DILocation(line: 0, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1801, file: !329, line: 712, column: 11)
!1854 = !DILocation(line: 273, column: 3, scope: !1774)
!1855 = !DILocation(line: 265, column: 10, scope: !1774)
!1856 = !DILocation(line: 266, column: 15, scope: !1774)
!1857 = !DILocation(line: 267, column: 10, scope: !1774)
!1858 = !DILocation(line: 268, column: 8, scope: !1774)
!1859 = !DILocation(line: 271, column: 8, scope: !1774)
!1860 = !DILocation(line: 272, column: 8, scope: !1774)
!1861 = !DILocation(line: 273, column: 8, scope: !1774)
!1862 = !DILocation(line: 314, column: 2, scope: !1774)
!1863 = !DILocation(line: 316, column: 3, scope: !1774)
!1864 = !DILocation(line: 323, column: 11, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1774, file: !329, line: 317, column: 5)
!1866 = !DILocation(line: 323, column: 12, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1865, file: !329, line: 323, column: 11)
!1868 = !DILocation(line: 324, column: 9, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !329, line: 324, column: 9)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !329, line: 324, column: 9)
!1871 = !DILocation(line: 324, column: 9, scope: !1870)
!1872 = !DILocation(line: 362, column: 26, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !329, line: 340, column: 11)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !329, line: 339, column: 13)
!1875 = distinct !DILexicalBlock(scope: !1865, file: !329, line: 338, column: 7)
!1876 = !DILocation(line: 363, column: 27, scope: !1873)
!1877 = !DILocation(line: 364, column: 11, scope: !1873)
!1878 = !DILocation(line: 365, column: 14, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !329, line: 365, column: 13)
!1880 = !DILocation(line: 365, column: 13, scope: !1875)
!1881 = !DILocation(line: 366, column: 43, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !329, line: 366, column: 11)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !329, line: 366, column: 11)
!1884 = !DILocation(line: 366, column: 11, scope: !1883)
!1885 = !DILocation(line: 367, column: 13, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !329, line: 367, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !329, line: 367, column: 13)
!1888 = !DILocation(line: 367, column: 13, scope: !1887)
!1889 = !DILocation(line: 366, column: 70, scope: !1882)
!1890 = distinct !{!1890, !1884, !1891}
!1891 = !DILocation(line: 367, column: 13, scope: !1883)
!1892 = !DILocation(line: 264, column: 10, scope: !1774)
!1893 = !DILocation(line: 370, column: 28, scope: !1875)
!1894 = !DILocation(line: 372, column: 7, scope: !1865)
!1895 = !DILocation(line: 376, column: 7, scope: !1865)
!1896 = !DILocation(line: 379, column: 7, scope: !1865)
!1897 = !DILocation(line: 381, column: 12, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1865, file: !329, line: 381, column: 11)
!1899 = !DILocation(line: 381, column: 11, scope: !1865)
!1900 = !DILocation(line: 386, column: 12, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1865, file: !329, line: 386, column: 11)
!1902 = !DILocation(line: 386, column: 11, scope: !1865)
!1903 = !DILocation(line: 387, column: 9, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !329, line: 387, column: 9)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !329, line: 387, column: 9)
!1906 = !DILocation(line: 387, column: 9, scope: !1905)
!1907 = !DILocation(line: 394, column: 7, scope: !1865)
!1908 = !DILocation(line: 397, column: 7, scope: !1865)
!1909 = !DILocation(line: 0, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1801, file: !329, line: 408, column: 11)
!1911 = !DILocation(line: 0, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !329, line: 419, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !329, line: 418, column: 9)
!1914 = !DILocation(line: 0, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 556, column: 15)
!1916 = !DILocation(line: 0, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 548, column: 15)
!1918 = !DILocation(line: 0, scope: !1824)
!1919 = !DILocation(line: 0, scope: !1831)
!1920 = !DILocation(line: 0, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 509, column: 15)
!1922 = !DILocation(line: 400, column: 8, scope: !1803)
!1923 = !DILocation(line: 0, scope: !1803)
!1924 = !DILocation(line: 400, column: 27, scope: !1802)
!1925 = !DILocation(line: 400, column: 19, scope: !1802)
!1926 = !DILocation(line: 400, column: 41, scope: !1802)
!1927 = !DILocation(line: 400, column: 48, scope: !1802)
!1928 = !DILocation(line: 400, column: 3, scope: !1803)
!1929 = !DILocation(line: 400, column: 60, scope: !1802)
!1930 = !DILocation(line: 0, scope: !1801)
!1931 = !DILocation(line: 409, column: 11, scope: !1910)
!1932 = !DILocation(line: 411, column: 17, scope: !1910)
!1933 = !DILocation(line: 412, column: 39, scope: !1910)
!1934 = !DILocation(line: 416, column: 32, scope: !1910)
!1935 = !DILocation(line: 412, column: 19, scope: !1910)
!1936 = !DILocation(line: 412, column: 15, scope: !1910)
!1937 = !DILocation(line: 417, column: 11, scope: !1910)
!1938 = !DILocation(line: 417, column: 26, scope: !1910)
!1939 = !DILocation(line: 417, column: 14, scope: !1910)
!1940 = !DILocation(line: 417, column: 63, scope: !1910)
!1941 = !DILocation(line: 408, column: 11, scope: !1801)
!1942 = !DILocation(line: 424, column: 11, scope: !1801)
!1943 = !DILocation(line: 425, column: 7, scope: !1801)
!1944 = !DILocation(line: 428, column: 15, scope: !1810)
!1945 = !DILocation(line: 430, column: 15, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !329, line: 430, column: 15)
!1947 = distinct !DILexicalBlock(scope: !1849, file: !329, line: 429, column: 13)
!1948 = !DILocation(line: 430, column: 15, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !329, line: 430, column: 15)
!1950 = !DILocation(line: 430, column: 15, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !329, line: 430, column: 15)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !329, line: 430, column: 15)
!1953 = distinct !DILexicalBlock(scope: !1949, file: !329, line: 430, column: 15)
!1954 = !DILocation(line: 430, column: 15, scope: !1952)
!1955 = !DILocation(line: 430, column: 15, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !329, line: 430, column: 15)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !329, line: 430, column: 15)
!1958 = !DILocation(line: 430, column: 15, scope: !1957)
!1959 = !DILocation(line: 430, column: 15, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !329, line: 430, column: 15)
!1961 = distinct !DILexicalBlock(scope: !1953, file: !329, line: 430, column: 15)
!1962 = !DILocation(line: 430, column: 15, scope: !1961)
!1963 = !DILocation(line: 430, column: 15, scope: !1953)
!1964 = !DILocation(line: 430, column: 15, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !329, line: 430, column: 15)
!1966 = distinct !DILexicalBlock(scope: !1946, file: !329, line: 430, column: 15)
!1967 = !DILocation(line: 430, column: 15, scope: !1966)
!1968 = !DILocation(line: 438, column: 19, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1947, file: !329, line: 437, column: 19)
!1970 = !DILocation(line: 438, column: 24, scope: !1969)
!1971 = !DILocation(line: 438, column: 28, scope: !1969)
!1972 = !DILocation(line: 438, column: 38, scope: !1969)
!1973 = !DILocation(line: 438, column: 48, scope: !1969)
!1974 = !DILocation(line: 438, column: 59, scope: !1969)
!1975 = !DILocation(line: 440, column: 19, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !329, line: 440, column: 19)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !329, line: 440, column: 19)
!1978 = distinct !DILexicalBlock(scope: !1969, file: !329, line: 439, column: 17)
!1979 = !DILocation(line: 440, column: 19, scope: !1977)
!1980 = !DILocation(line: 441, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !329, line: 441, column: 19)
!1982 = distinct !DILexicalBlock(scope: !1978, file: !329, line: 441, column: 19)
!1983 = !DILocation(line: 441, column: 19, scope: !1982)
!1984 = !DILocation(line: 442, column: 17, scope: !1978)
!1985 = !DILocation(line: 449, column: 20, scope: !1849)
!1986 = !DILocation(line: 454, column: 11, scope: !1810)
!1987 = !DILocation(line: 457, column: 19, scope: !1846)
!1988 = !DILocation(line: 463, column: 19, scope: !1845)
!1989 = !DILocation(line: 463, column: 24, scope: !1845)
!1990 = !DILocation(line: 463, column: 28, scope: !1845)
!1991 = !DILocation(line: 463, column: 38, scope: !1845)
!1992 = !DILocation(line: 463, column: 47, scope: !1845)
!1993 = !DILocation(line: 463, column: 41, scope: !1845)
!1994 = !DILocation(line: 463, column: 52, scope: !1845)
!1995 = !DILocation(line: 462, column: 19, scope: !1846)
!1996 = !DILocation(line: 464, column: 25, scope: !1845)
!1997 = !DILocation(line: 464, column: 17, scope: !1845)
!1998 = !DILocation(line: 471, column: 25, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1845, file: !329, line: 465, column: 19)
!2000 = !DILocation(line: 475, column: 21, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !329, line: 475, column: 21)
!2002 = distinct !DILexicalBlock(scope: !1999, file: !329, line: 475, column: 21)
!2003 = !DILocation(line: 475, column: 21, scope: !2002)
!2004 = !DILocation(line: 476, column: 21, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !329, line: 476, column: 21)
!2006 = distinct !DILexicalBlock(scope: !1999, file: !329, line: 476, column: 21)
!2007 = !DILocation(line: 476, column: 21, scope: !2006)
!2008 = !DILocation(line: 477, column: 21, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !329, line: 477, column: 21)
!2010 = distinct !DILexicalBlock(scope: !1999, file: !329, line: 477, column: 21)
!2011 = !DILocation(line: 477, column: 21, scope: !2010)
!2012 = !DILocation(line: 478, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !329, line: 478, column: 21)
!2014 = distinct !DILexicalBlock(scope: !1999, file: !329, line: 478, column: 21)
!2015 = !DILocation(line: 478, column: 21, scope: !2014)
!2016 = !DILocation(line: 479, column: 21, scope: !1999)
!2017 = !DILocation(line: 492, column: 31, scope: !1810)
!2018 = !DILocation(line: 493, column: 31, scope: !1810)
!2019 = !DILocation(line: 495, column: 31, scope: !1810)
!2020 = !DILocation(line: 496, column: 31, scope: !1810)
!2021 = !DILocation(line: 497, column: 31, scope: !1810)
!2022 = !DILocation(line: 500, column: 15, scope: !1810)
!2023 = !DILocation(line: 502, column: 19, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !329, line: 501, column: 13)
!2025 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 500, column: 15)
!2026 = !DILocation(line: 509, column: 33, scope: !1921)
!2027 = !DILocation(line: 0, scope: !1810)
!2028 = !DILocation(line: 512, column: 9, scope: !1810)
!2029 = !DILocation(line: 514, column: 15, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 513, column: 15)
!2031 = !DILocation(line: 517, column: 9, scope: !1810)
!2032 = !DILocation(line: 518, column: 15, scope: !1810)
!2033 = !DILocation(line: 526, column: 15, scope: !1810)
!2034 = !DILocation(line: 526, column: 40, scope: !1843)
!2035 = !DILocation(line: 526, column: 47, scope: !1843)
!2036 = !DILocation(line: 526, column: 18, scope: !1843)
!2037 = !DILocation(line: 530, column: 17, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1810, file: !329, line: 530, column: 15)
!2039 = !DILocation(line: 530, column: 15, scope: !1810)
!2040 = !DILocation(line: 535, column: 11, scope: !1810)
!2041 = !DILocation(line: 549, column: 15, scope: !1917)
!2042 = !DILocation(line: 556, column: 15, scope: !1810)
!2043 = !DILocation(line: 558, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1915, file: !329, line: 557, column: 13)
!2045 = !DILocation(line: 561, column: 19, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2044, file: !329, line: 561, column: 19)
!2047 = !DILocation(line: 561, column: 35, scope: !2046)
!2048 = !DILocation(line: 561, column: 30, scope: !2046)
!2049 = !DILocation(line: 570, column: 15, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !329, line: 570, column: 15)
!2051 = distinct !DILexicalBlock(scope: !2044, file: !329, line: 570, column: 15)
!2052 = !DILocation(line: 570, column: 15, scope: !2051)
!2053 = !DILocation(line: 571, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !329, line: 571, column: 15)
!2055 = distinct !DILexicalBlock(scope: !2044, file: !329, line: 571, column: 15)
!2056 = !DILocation(line: 571, column: 15, scope: !2055)
!2057 = !DILocation(line: 572, column: 15, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !329, line: 572, column: 15)
!2059 = distinct !DILexicalBlock(scope: !2044, file: !329, line: 572, column: 15)
!2060 = !DILocation(line: 572, column: 15, scope: !2059)
!2061 = !DILocation(line: 574, column: 13, scope: !2044)
!2062 = !DILocation(line: 614, column: 17, scope: !1809)
!2063 = !DILocation(line: 0, scope: !1809)
!2064 = !DILocation(line: 617, column: 29, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1814, file: !329, line: 615, column: 15)
!2066 = !{!1359, !1359, i64 0}
!2067 = !DILocation(line: 617, column: 27, scope: !2065)
!2068 = !DILocation(line: 618, column: 15, scope: !2065)
!2069 = !DILocation(line: 621, column: 17, scope: !1813)
!2070 = !DILocation(line: 621, column: 27, scope: !1813)
!2071 = !DILocalVariable(name: "__dest", arg: 1, scope: !2072, file: !2073, line: 59, type: !91)
!2072 = distinct !DISubprogram(name: "memset", scope: !2073, file: !2073, line: 59, type: !2074, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2076)
!2073 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!91, !91, !38, !93}
!2076 = !{!2071, !2077, !2078}
!2077 = !DILocalVariable(name: "__ch", arg: 2, scope: !2072, file: !2073, line: 59, type: !38)
!2078 = !DILocalVariable(name: "__len", arg: 3, scope: !2072, file: !2073, line: 59, type: !93)
!2079 = !DILocation(line: 0, scope: !2072, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 622, column: 17, scope: !1813)
!2081 = !DILocation(line: 71, column: 10, scope: !2072, inlinedAt: !2080)
!2082 = !DILocation(line: 626, column: 29, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !1813, file: !329, line: 626, column: 21)
!2084 = !DILocation(line: 626, column: 21, scope: !1813)
!2085 = !DILocation(line: 627, column: 29, scope: !2083)
!2086 = !DILocation(line: 627, column: 19, scope: !2083)
!2087 = !DILocation(line: 629, column: 17, scope: !1813)
!2088 = !DILocation(line: 624, column: 19, scope: !1813)
!2089 = !DILocation(line: 625, column: 27, scope: !1813)
!2090 = !DILocation(line: 631, column: 21, scope: !1819)
!2091 = !DILocation(line: 632, column: 56, scope: !1819)
!2092 = !DILocation(line: 632, column: 50, scope: !1819)
!2093 = !DILocation(line: 633, column: 53, scope: !1819)
!2094 = !DILocation(line: 632, column: 36, scope: !1819)
!2095 = !DILocation(line: 634, column: 25, scope: !1819)
!2096 = !DILocation(line: 644, column: 38, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1826, file: !329, line: 642, column: 23)
!2098 = !DILocation(line: 644, column: 48, scope: !2097)
!2099 = !DILocation(line: 644, column: 25, scope: !2097)
!2100 = !DILocation(line: 644, column: 51, scope: !2097)
!2101 = !DILocation(line: 645, column: 28, scope: !2097)
!2102 = !DILocation(line: 644, column: 34, scope: !2097)
!2103 = distinct !{!2103, !2099, !2101}
!2104 = !DILocation(line: 658, column: 43, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !329, line: 658, column: 29)
!2106 = distinct !DILexicalBlock(scope: !1823, file: !329, line: 658, column: 29)
!2107 = !DILocation(line: 655, column: 29, scope: !1824)
!2108 = !DILocation(line: 0, scope: !1823)
!2109 = !DILocation(line: 659, column: 49, scope: !2105)
!2110 = !DILocation(line: 659, column: 39, scope: !2105)
!2111 = !DILocation(line: 659, column: 31, scope: !2105)
!2112 = !DILocation(line: 658, column: 53, scope: !2105)
!2113 = !DILocation(line: 658, column: 29, scope: !2106)
!2114 = distinct !{!2114, !2113, !2115}
!2115 = !DILocation(line: 667, column: 33, scope: !2106)
!2116 = !DILocation(line: 674, column: 19, scope: !1813)
!2117 = !DILocation(line: 670, column: 41, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1825, file: !329, line: 670, column: 29)
!2119 = !DILocation(line: 670, column: 31, scope: !2118)
!2120 = !DILocation(line: 670, column: 29, scope: !1825)
!2121 = !DILocation(line: 672, column: 27, scope: !1825)
!2122 = !DILocation(line: 675, column: 26, scope: !1813)
!2123 = !DILocation(line: 675, column: 24, scope: !1813)
!2124 = !DILocation(line: 674, column: 19, scope: !1819)
!2125 = distinct !{!2125, !2087, !2126}
!2126 = !DILocation(line: 675, column: 44, scope: !1813)
!2127 = !DILocation(line: 676, column: 15, scope: !1814)
!2128 = !DILocation(line: 0, scope: !1814)
!2129 = !DILocation(line: 678, column: 40, scope: !1809)
!2130 = !DILocation(line: 680, column: 19, scope: !1831)
!2131 = !DILocation(line: 680, column: 45, scope: !1831)
!2132 = !DILocation(line: 680, column: 23, scope: !1831)
!2133 = !DILocation(line: 684, column: 33, scope: !1830)
!2134 = !DILocation(line: 0, scope: !1830)
!2135 = !DILocation(line: 686, column: 17, scope: !1830)
!2136 = !DILocation(line: 405, column: 12, scope: !1801)
!2137 = !DILocation(line: 688, column: 43, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !329, line: 688, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !329, line: 687, column: 19)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !329, line: 686, column: 17)
!2141 = distinct !DILexicalBlock(scope: !1830, file: !329, line: 686, column: 17)
!2142 = !DILocation(line: 690, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !329, line: 690, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2138, file: !329, line: 689, column: 23)
!2145 = !DILocation(line: 690, column: 25, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !329, line: 690, column: 25)
!2147 = !DILocation(line: 690, column: 25, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !329, line: 690, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !329, line: 690, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !329, line: 690, column: 25)
!2151 = !DILocation(line: 690, column: 25, scope: !2149)
!2152 = !DILocation(line: 690, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !329, line: 690, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !329, line: 690, column: 25)
!2155 = !DILocation(line: 690, column: 25, scope: !2154)
!2156 = !DILocation(line: 690, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !329, line: 690, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2150, file: !329, line: 690, column: 25)
!2159 = !DILocation(line: 690, column: 25, scope: !2158)
!2160 = !DILocation(line: 690, column: 25, scope: !2150)
!2161 = !DILocation(line: 690, column: 25, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !329, line: 690, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2143, file: !329, line: 690, column: 25)
!2164 = !DILocation(line: 690, column: 25, scope: !2163)
!2165 = !DILocation(line: 691, column: 25, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !329, line: 691, column: 25)
!2167 = distinct !DILexicalBlock(scope: !2144, file: !329, line: 691, column: 25)
!2168 = !DILocation(line: 691, column: 25, scope: !2167)
!2169 = !DILocation(line: 692, column: 25, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !329, line: 692, column: 25)
!2171 = distinct !DILexicalBlock(scope: !2144, file: !329, line: 692, column: 25)
!2172 = !DILocation(line: 692, column: 25, scope: !2171)
!2173 = !DILocation(line: 693, column: 38, scope: !2144)
!2174 = !DILocation(line: 693, column: 33, scope: !2144)
!2175 = !DILocation(line: 694, column: 23, scope: !2144)
!2176 = !DILocation(line: 695, column: 30, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2138, file: !329, line: 695, column: 30)
!2178 = !DILocation(line: 695, column: 30, scope: !2138)
!2179 = !DILocation(line: 697, column: 25, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !329, line: 697, column: 25)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !329, line: 697, column: 25)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !329, line: 696, column: 23)
!2183 = !DILocation(line: 697, column: 25, scope: !2181)
!2184 = !DILocation(line: 699, column: 23, scope: !2182)
!2185 = !DILocation(line: 700, column: 35, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2139, file: !329, line: 700, column: 25)
!2187 = !DILocation(line: 700, column: 30, scope: !2186)
!2188 = !DILocation(line: 700, column: 25, scope: !2139)
!2189 = !DILocation(line: 702, column: 21, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !329, line: 702, column: 21)
!2191 = distinct !DILexicalBlock(scope: !2139, file: !329, line: 702, column: 21)
!2192 = !DILocation(line: 702, column: 21, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !329, line: 702, column: 21)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !329, line: 702, column: 21)
!2195 = distinct !DILexicalBlock(scope: !2190, file: !329, line: 702, column: 21)
!2196 = !DILocation(line: 702, column: 21, scope: !2194)
!2197 = !DILocation(line: 702, column: 21, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !329, line: 702, column: 21)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !329, line: 702, column: 21)
!2200 = !DILocation(line: 702, column: 21, scope: !2199)
!2201 = !DILocation(line: 702, column: 21, scope: !2195)
!2202 = !DILocation(line: 0, scope: !2139)
!2203 = !DILocation(line: 703, column: 21, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !329, line: 703, column: 21)
!2205 = distinct !DILexicalBlock(scope: !2139, file: !329, line: 703, column: 21)
!2206 = !DILocation(line: 703, column: 21, scope: !2205)
!2207 = !DILocation(line: 704, column: 25, scope: !2139)
!2208 = !DILocation(line: 686, column: 17, scope: !2140)
!2209 = distinct !{!2209, !2210, !2211}
!2210 = !DILocation(line: 686, column: 17, scope: !2141)
!2211 = !DILocation(line: 705, column: 19, scope: !2141)
!2212 = !DILocation(line: 416, column: 30, scope: !1910)
!2213 = !DILocation(line: 712, column: 34, scope: !1853)
!2214 = !DILocation(line: 715, column: 35, scope: !1853)
!2215 = !DILocation(line: 715, column: 17, scope: !1853)
!2216 = !DILocation(line: 715, column: 47, scope: !1853)
!2217 = !DILocation(line: 715, column: 65, scope: !1853)
!2218 = !DILocation(line: 716, column: 15, scope: !1853)
!2219 = !DILocation(line: 716, column: 11, scope: !1853)
!2220 = !DILocation(line: 712, column: 11, scope: !1801)
!2221 = !DILocation(line: 400, column: 10, scope: !1803)
!2222 = !DILocation(line: 719, column: 5, scope: !1801)
!2223 = !DILocation(line: 720, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1801, file: !329, line: 720, column: 7)
!2225 = !DILocation(line: 720, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2224, file: !329, line: 720, column: 7)
!2227 = !DILocation(line: 720, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !329, line: 720, column: 7)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !329, line: 720, column: 7)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !329, line: 720, column: 7)
!2231 = !DILocation(line: 720, column: 7, scope: !2229)
!2232 = !DILocation(line: 720, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !329, line: 720, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !329, line: 720, column: 7)
!2235 = !DILocation(line: 720, column: 7, scope: !2234)
!2236 = !DILocation(line: 720, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !329, line: 720, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2230, file: !329, line: 720, column: 7)
!2239 = !DILocation(line: 720, column: 7, scope: !2238)
!2240 = !DILocation(line: 720, column: 7, scope: !2230)
!2241 = !DILocation(line: 720, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !329, line: 720, column: 7)
!2243 = distinct !DILexicalBlock(scope: !2224, file: !329, line: 720, column: 7)
!2244 = !DILocation(line: 720, column: 7, scope: !2243)
!2245 = !DILocation(line: 722, column: 5, scope: !1801)
!2246 = !DILocation(line: 723, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !329, line: 723, column: 7)
!2248 = distinct !DILexicalBlock(scope: !1801, file: !329, line: 723, column: 7)
!2249 = !DILocation(line: 424, column: 9, scope: !1801)
!2250 = !DILocation(line: 723, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !329, line: 723, column: 7)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !329, line: 723, column: 7)
!2253 = distinct !DILexicalBlock(scope: !2247, file: !329, line: 723, column: 7)
!2254 = !DILocation(line: 723, column: 7, scope: !2252)
!2255 = !DILocation(line: 723, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !329, line: 723, column: 7)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !329, line: 723, column: 7)
!2258 = !DILocation(line: 723, column: 7, scope: !2257)
!2259 = !DILocation(line: 723, column: 7, scope: !2253)
!2260 = !DILocation(line: 724, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !329, line: 724, column: 7)
!2262 = distinct !DILexicalBlock(scope: !1801, file: !329, line: 724, column: 7)
!2263 = !DILocation(line: 724, column: 7, scope: !2262)
!2264 = !DILocation(line: 726, column: 13, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !1801, file: !329, line: 726, column: 11)
!2266 = !DILocation(line: 726, column: 11, scope: !1801)
!2267 = !DILocation(line: 728, column: 5, scope: !1802)
!2268 = !DILocation(line: 400, column: 75, scope: !1802)
!2269 = !DILocation(line: 400, column: 3, scope: !1802)
!2270 = distinct !{!2270, !1928, !2271}
!2271 = !DILocation(line: 728, column: 5, scope: !1803)
!2272 = !DILocation(line: 730, column: 11, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !1774, file: !329, line: 730, column: 7)
!2274 = !DILocation(line: 730, column: 16, scope: !2273)
!2275 = !DILocation(line: 738, column: 51, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !1774, file: !329, line: 738, column: 7)
!2277 = !DILocation(line: 739, column: 10, scope: !2276)
!2278 = !DILocation(line: 741, column: 11, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !329, line: 741, column: 11)
!2280 = distinct !DILexicalBlock(scope: !2276, file: !329, line: 740, column: 5)
!2281 = !DILocation(line: 741, column: 11, scope: !2280)
!2282 = !DILocation(line: 742, column: 16, scope: !2279)
!2283 = !DILocation(line: 742, column: 9, scope: !2279)
!2284 = !DILocation(line: 746, column: 18, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2279, file: !329, line: 746, column: 16)
!2286 = !DILocation(line: 746, column: 32, scope: !2285)
!2287 = !DILocation(line: 746, column: 29, scope: !2285)
!2288 = !DILocation(line: 755, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !1774, file: !329, line: 755, column: 7)
!2290 = !DILocation(line: 755, column: 20, scope: !2289)
!2291 = !DILocation(line: 756, column: 12, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !329, line: 756, column: 5)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !329, line: 756, column: 5)
!2294 = !DILocation(line: 756, column: 5, scope: !2293)
!2295 = !DILocation(line: 757, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !329, line: 757, column: 7)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !329, line: 757, column: 7)
!2298 = !DILocation(line: 757, column: 7, scope: !2297)
!2299 = !DILocation(line: 756, column: 39, scope: !2292)
!2300 = distinct !{!2300, !2294, !2301}
!2301 = !DILocation(line: 757, column: 7, scope: !2293)
!2302 = !DILocation(line: 759, column: 11, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !1774, file: !329, line: 759, column: 7)
!2304 = !DILocation(line: 759, column: 7, scope: !1774)
!2305 = !DILocation(line: 760, column: 5, scope: !2303)
!2306 = !DILocation(line: 760, column: 17, scope: !2303)
!2307 = !DILocation(line: 763, column: 2, scope: !1774)
!2308 = !DILocation(line: 766, column: 51, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !1774, file: !329, line: 766, column: 7)
!2310 = !DILocation(line: 766, column: 21, scope: !2309)
!2311 = !DILocation(line: 770, column: 42, scope: !1774)
!2312 = !DILocation(line: 768, column: 10, scope: !1774)
!2313 = !DILocation(line: 768, column: 3, scope: !1774)
!2314 = !DILocation(line: 772, column: 1, scope: !1774)
!2315 = distinct !DISubprogram(name: "gettext_quote", scope: !329, file: !329, line: 207, type: !2316, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!36, !36, !5}
!2318 = !{!2319, !2320, !2321, !2322}
!2319 = !DILocalVariable(name: "msgid", arg: 1, scope: !2315, file: !329, line: 207, type: !36)
!2320 = !DILocalVariable(name: "s", arg: 2, scope: !2315, file: !329, line: 207, type: !5)
!2321 = !DILocalVariable(name: "translation", scope: !2315, file: !329, line: 209, type: !36)
!2322 = !DILocalVariable(name: "locale_code", scope: !2315, file: !329, line: 210, type: !36)
!2323 = !DILocation(line: 0, scope: !2315)
!2324 = !DILocation(line: 209, column: 29, scope: !2315)
!2325 = !DILocation(line: 212, column: 19, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2315, file: !329, line: 212, column: 7)
!2327 = !DILocation(line: 212, column: 7, scope: !2315)
!2328 = !DILocation(line: 233, column: 17, scope: !2315)
!2329 = !DILocalVariable(name: "s1", arg: 1, scope: !2330, file: !2331, line: 160, type: !36)
!2330 = distinct !DISubprogram(name: "strcaseeq0", scope: !2331, file: !2331, line: 160, type: !2332, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2334)
!2331 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35, !35}
!2334 = !{!2329, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2335 = !DILocalVariable(name: "s2", arg: 2, scope: !2330, file: !2331, line: 160, type: !36)
!2336 = !DILocalVariable(name: "s20", arg: 3, scope: !2330, file: !2331, line: 160, type: !35)
!2337 = !DILocalVariable(name: "s21", arg: 4, scope: !2330, file: !2331, line: 160, type: !35)
!2338 = !DILocalVariable(name: "s22", arg: 5, scope: !2330, file: !2331, line: 160, type: !35)
!2339 = !DILocalVariable(name: "s23", arg: 6, scope: !2330, file: !2331, line: 160, type: !35)
!2340 = !DILocalVariable(name: "s24", arg: 7, scope: !2330, file: !2331, line: 160, type: !35)
!2341 = !DILocalVariable(name: "s25", arg: 8, scope: !2330, file: !2331, line: 160, type: !35)
!2342 = !DILocalVariable(name: "s26", arg: 9, scope: !2330, file: !2331, line: 160, type: !35)
!2343 = !DILocalVariable(name: "s27", arg: 10, scope: !2330, file: !2331, line: 160, type: !35)
!2344 = !DILocalVariable(name: "s28", arg: 11, scope: !2330, file: !2331, line: 160, type: !35)
!2345 = !DILocation(line: 0, scope: !2330, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 234, column: 7, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2315, file: !329, line: 234, column: 7)
!2348 = !DILocation(line: 162, column: 7, scope: !2349, inlinedAt: !2346)
!2349 = distinct !DILexicalBlock(scope: !2330, file: !2331, line: 162, column: 7)
!2350 = !DILocalVariable(name: "s1", arg: 1, scope: !2351, file: !2331, line: 146, type: !36)
!2351 = distinct !DISubprogram(name: "strcaseeq1", scope: !2331, file: !2331, line: 146, type: !2352, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35, !35}
!2354 = !{!2350, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363}
!2355 = !DILocalVariable(name: "s2", arg: 2, scope: !2351, file: !2331, line: 146, type: !36)
!2356 = !DILocalVariable(name: "s21", arg: 3, scope: !2351, file: !2331, line: 146, type: !35)
!2357 = !DILocalVariable(name: "s22", arg: 4, scope: !2351, file: !2331, line: 146, type: !35)
!2358 = !DILocalVariable(name: "s23", arg: 5, scope: !2351, file: !2331, line: 146, type: !35)
!2359 = !DILocalVariable(name: "s24", arg: 6, scope: !2351, file: !2331, line: 146, type: !35)
!2360 = !DILocalVariable(name: "s25", arg: 7, scope: !2351, file: !2331, line: 146, type: !35)
!2361 = !DILocalVariable(name: "s26", arg: 8, scope: !2351, file: !2331, line: 146, type: !35)
!2362 = !DILocalVariable(name: "s27", arg: 9, scope: !2351, file: !2331, line: 146, type: !35)
!2363 = !DILocalVariable(name: "s28", arg: 10, scope: !2351, file: !2331, line: 146, type: !35)
!2364 = !DILocation(line: 0, scope: !2351, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 167, column: 16, scope: !2366, inlinedAt: !2346)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !2331, line: 164, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2349, file: !2331, line: 163, column: 5)
!2368 = !DILocation(line: 148, column: 7, scope: !2369, inlinedAt: !2365)
!2369 = distinct !DILexicalBlock(scope: !2351, file: !2331, line: 148, column: 7)
!2370 = !DILocalVariable(name: "s1", arg: 1, scope: !2371, file: !2331, line: 132, type: !36)
!2371 = distinct !DISubprogram(name: "strcaseeq2", scope: !2331, file: !2331, line: 132, type: !2372, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35, !35}
!2374 = !{!2370, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2375 = !DILocalVariable(name: "s2", arg: 2, scope: !2371, file: !2331, line: 132, type: !36)
!2376 = !DILocalVariable(name: "s22", arg: 3, scope: !2371, file: !2331, line: 132, type: !35)
!2377 = !DILocalVariable(name: "s23", arg: 4, scope: !2371, file: !2331, line: 132, type: !35)
!2378 = !DILocalVariable(name: "s24", arg: 5, scope: !2371, file: !2331, line: 132, type: !35)
!2379 = !DILocalVariable(name: "s25", arg: 6, scope: !2371, file: !2331, line: 132, type: !35)
!2380 = !DILocalVariable(name: "s26", arg: 7, scope: !2371, file: !2331, line: 132, type: !35)
!2381 = !DILocalVariable(name: "s27", arg: 8, scope: !2371, file: !2331, line: 132, type: !35)
!2382 = !DILocalVariable(name: "s28", arg: 9, scope: !2371, file: !2331, line: 132, type: !35)
!2383 = !DILocation(line: 0, scope: !2371, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 153, column: 16, scope: !2385, inlinedAt: !2365)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !2331, line: 150, column: 11)
!2386 = distinct !DILexicalBlock(scope: !2369, file: !2331, line: 149, column: 5)
!2387 = !DILocation(line: 134, column: 7, scope: !2388, inlinedAt: !2384)
!2388 = distinct !DILexicalBlock(scope: !2371, file: !2331, line: 134, column: 7)
!2389 = !DILocalVariable(name: "s1", arg: 1, scope: !2390, file: !2331, line: 118, type: !36)
!2390 = distinct !DISubprogram(name: "strcaseeq3", scope: !2331, file: !2331, line: 118, type: !2391, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!38, !36, !36, !35, !35, !35, !35, !35, !35}
!2393 = !{!2389, !2394, !2395, !2396, !2397, !2398, !2399, !2400}
!2394 = !DILocalVariable(name: "s2", arg: 2, scope: !2390, file: !2331, line: 118, type: !36)
!2395 = !DILocalVariable(name: "s23", arg: 3, scope: !2390, file: !2331, line: 118, type: !35)
!2396 = !DILocalVariable(name: "s24", arg: 4, scope: !2390, file: !2331, line: 118, type: !35)
!2397 = !DILocalVariable(name: "s25", arg: 5, scope: !2390, file: !2331, line: 118, type: !35)
!2398 = !DILocalVariable(name: "s26", arg: 6, scope: !2390, file: !2331, line: 118, type: !35)
!2399 = !DILocalVariable(name: "s27", arg: 7, scope: !2390, file: !2331, line: 118, type: !35)
!2400 = !DILocalVariable(name: "s28", arg: 8, scope: !2390, file: !2331, line: 118, type: !35)
!2401 = !DILocation(line: 0, scope: !2390, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 139, column: 16, scope: !2403, inlinedAt: !2384)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !2331, line: 136, column: 11)
!2404 = distinct !DILexicalBlock(scope: !2388, file: !2331, line: 135, column: 5)
!2405 = !DILocation(line: 120, column: 7, scope: !2406, inlinedAt: !2402)
!2406 = distinct !DILexicalBlock(scope: !2390, file: !2331, line: 120, column: 7)
!2407 = !DILocation(line: 120, column: 7, scope: !2390, inlinedAt: !2402)
!2408 = !DILocalVariable(name: "s1", arg: 1, scope: !2409, file: !2331, line: 104, type: !36)
!2409 = distinct !DISubprogram(name: "strcaseeq4", scope: !2331, file: !2331, line: 104, type: !2410, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2412)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!38, !36, !36, !35, !35, !35, !35, !35}
!2412 = !{!2408, !2413, !2414, !2415, !2416, !2417, !2418}
!2413 = !DILocalVariable(name: "s2", arg: 2, scope: !2409, file: !2331, line: 104, type: !36)
!2414 = !DILocalVariable(name: "s24", arg: 3, scope: !2409, file: !2331, line: 104, type: !35)
!2415 = !DILocalVariable(name: "s25", arg: 4, scope: !2409, file: !2331, line: 104, type: !35)
!2416 = !DILocalVariable(name: "s26", arg: 5, scope: !2409, file: !2331, line: 104, type: !35)
!2417 = !DILocalVariable(name: "s27", arg: 6, scope: !2409, file: !2331, line: 104, type: !35)
!2418 = !DILocalVariable(name: "s28", arg: 7, scope: !2409, file: !2331, line: 104, type: !35)
!2419 = !DILocation(line: 0, scope: !2409, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 125, column: 16, scope: !2421, inlinedAt: !2402)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !2331, line: 122, column: 11)
!2422 = distinct !DILexicalBlock(scope: !2406, file: !2331, line: 121, column: 5)
!2423 = !DILocation(line: 106, column: 7, scope: !2424, inlinedAt: !2420)
!2424 = distinct !DILexicalBlock(scope: !2409, file: !2331, line: 106, column: 7)
!2425 = !DILocation(line: 106, column: 7, scope: !2409, inlinedAt: !2420)
!2426 = !DILocalVariable(name: "s1", arg: 1, scope: !2427, file: !2331, line: 90, type: !36)
!2427 = distinct !DISubprogram(name: "strcaseeq5", scope: !2331, file: !2331, line: 90, type: !2428, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!38, !36, !36, !35, !35, !35, !35}
!2430 = !{!2426, !2431, !2432, !2433, !2434, !2435}
!2431 = !DILocalVariable(name: "s2", arg: 2, scope: !2427, file: !2331, line: 90, type: !36)
!2432 = !DILocalVariable(name: "s25", arg: 3, scope: !2427, file: !2331, line: 90, type: !35)
!2433 = !DILocalVariable(name: "s26", arg: 4, scope: !2427, file: !2331, line: 90, type: !35)
!2434 = !DILocalVariable(name: "s27", arg: 5, scope: !2427, file: !2331, line: 90, type: !35)
!2435 = !DILocalVariable(name: "s28", arg: 6, scope: !2427, file: !2331, line: 90, type: !35)
!2436 = !DILocation(line: 0, scope: !2427, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 111, column: 16, scope: !2438, inlinedAt: !2420)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !2331, line: 108, column: 11)
!2439 = distinct !DILexicalBlock(scope: !2424, file: !2331, line: 107, column: 5)
!2440 = !DILocation(line: 92, column: 7, scope: !2441, inlinedAt: !2437)
!2441 = distinct !DILexicalBlock(scope: !2427, file: !2331, line: 92, column: 7)
!2442 = !DILocation(line: 92, column: 7, scope: !2427, inlinedAt: !2437)
!2443 = !DILocation(line: 235, column: 12, scope: !2347)
!2444 = !DILocation(line: 235, column: 21, scope: !2347)
!2445 = !DILocation(line: 235, column: 5, scope: !2347)
!2446 = !DILocation(line: 0, scope: !2351, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 167, column: 16, scope: !2366, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 236, column: 7, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2315, file: !329, line: 236, column: 7)
!2450 = !DILocation(line: 148, column: 7, scope: !2369, inlinedAt: !2447)
!2451 = !DILocation(line: 0, scope: !2371, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 153, column: 16, scope: !2385, inlinedAt: !2447)
!2453 = !DILocation(line: 134, column: 7, scope: !2388, inlinedAt: !2452)
!2454 = !DILocation(line: 134, column: 7, scope: !2371, inlinedAt: !2452)
!2455 = !DILocation(line: 0, scope: !2390, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 139, column: 16, scope: !2403, inlinedAt: !2452)
!2457 = !DILocation(line: 120, column: 7, scope: !2406, inlinedAt: !2456)
!2458 = !DILocation(line: 120, column: 7, scope: !2390, inlinedAt: !2456)
!2459 = !DILocation(line: 0, scope: !2409, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 125, column: 16, scope: !2421, inlinedAt: !2456)
!2461 = !DILocation(line: 106, column: 7, scope: !2424, inlinedAt: !2460)
!2462 = !DILocation(line: 106, column: 7, scope: !2409, inlinedAt: !2460)
!2463 = !DILocation(line: 0, scope: !2427, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 111, column: 16, scope: !2438, inlinedAt: !2460)
!2465 = !DILocation(line: 92, column: 7, scope: !2441, inlinedAt: !2464)
!2466 = !DILocation(line: 92, column: 7, scope: !2427, inlinedAt: !2464)
!2467 = !DILocalVariable(name: "s1", arg: 1, scope: !2468, file: !2331, line: 76, type: !36)
!2468 = distinct !DISubprogram(name: "strcaseeq6", scope: !2331, file: !2331, line: 76, type: !2469, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!38, !36, !36, !35, !35, !35}
!2471 = !{!2467, !2472, !2473, !2474, !2475}
!2472 = !DILocalVariable(name: "s2", arg: 2, scope: !2468, file: !2331, line: 76, type: !36)
!2473 = !DILocalVariable(name: "s26", arg: 3, scope: !2468, file: !2331, line: 76, type: !35)
!2474 = !DILocalVariable(name: "s27", arg: 4, scope: !2468, file: !2331, line: 76, type: !35)
!2475 = !DILocalVariable(name: "s28", arg: 5, scope: !2468, file: !2331, line: 76, type: !35)
!2476 = !DILocation(line: 0, scope: !2468, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 97, column: 16, scope: !2478, inlinedAt: !2464)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !2331, line: 94, column: 11)
!2479 = distinct !DILexicalBlock(scope: !2441, file: !2331, line: 93, column: 5)
!2480 = !DILocation(line: 78, column: 7, scope: !2481, inlinedAt: !2477)
!2481 = distinct !DILexicalBlock(scope: !2468, file: !2331, line: 78, column: 7)
!2482 = !DILocation(line: 78, column: 7, scope: !2468, inlinedAt: !2477)
!2483 = !DILocalVariable(name: "s1", arg: 1, scope: !2484, file: !2331, line: 62, type: !36)
!2484 = distinct !DISubprogram(name: "strcaseeq7", scope: !2331, file: !2331, line: 62, type: !2485, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!38, !36, !36, !35, !35}
!2487 = !{!2483, !2488, !2489, !2490}
!2488 = !DILocalVariable(name: "s2", arg: 2, scope: !2484, file: !2331, line: 62, type: !36)
!2489 = !DILocalVariable(name: "s27", arg: 3, scope: !2484, file: !2331, line: 62, type: !35)
!2490 = !DILocalVariable(name: "s28", arg: 4, scope: !2484, file: !2331, line: 62, type: !35)
!2491 = !DILocation(line: 0, scope: !2484, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 83, column: 16, scope: !2493, inlinedAt: !2477)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !2331, line: 80, column: 11)
!2494 = distinct !DILexicalBlock(scope: !2481, file: !2331, line: 79, column: 5)
!2495 = !DILocation(line: 64, column: 7, scope: !2496, inlinedAt: !2492)
!2496 = distinct !DILexicalBlock(scope: !2484, file: !2331, line: 64, column: 7)
!2497 = !DILocation(line: 236, column: 7, scope: !2315)
!2498 = !DILocation(line: 237, column: 12, scope: !2449)
!2499 = !DILocation(line: 237, column: 21, scope: !2449)
!2500 = !DILocation(line: 237, column: 5, scope: !2449)
!2501 = !DILocation(line: 239, column: 13, scope: !2315)
!2502 = !DILocation(line: 239, column: 11, scope: !2315)
!2503 = !DILocation(line: 239, column: 3, scope: !2315)
!2504 = !DILocation(line: 240, column: 1, scope: !2315)
!2505 = distinct !DISubprogram(name: "quotearg_alloc", scope: !329, file: !329, line: 799, type: !2506, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2508)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!34, !36, !93, !362}
!2508 = !{!2509, !2510, !2511}
!2509 = !DILocalVariable(name: "arg", arg: 1, scope: !2505, file: !329, line: 799, type: !36)
!2510 = !DILocalVariable(name: "argsize", arg: 2, scope: !2505, file: !329, line: 799, type: !93)
!2511 = !DILocalVariable(name: "o", arg: 3, scope: !2505, file: !329, line: 800, type: !362)
!2512 = !DILocation(line: 0, scope: !2505)
!2513 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !329, line: 812, type: !36)
!2514 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !329, file: !329, line: 812, type: !2515, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!34, !36, !93, !556, !362}
!2517 = !{!2513, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2518 = !DILocalVariable(name: "argsize", arg: 2, scope: !2514, file: !329, line: 812, type: !93)
!2519 = !DILocalVariable(name: "size", arg: 3, scope: !2514, file: !329, line: 812, type: !556)
!2520 = !DILocalVariable(name: "o", arg: 4, scope: !2514, file: !329, line: 813, type: !362)
!2521 = !DILocalVariable(name: "p", scope: !2514, file: !329, line: 815, type: !362)
!2522 = !DILocalVariable(name: "e", scope: !2514, file: !329, line: 816, type: !38)
!2523 = !DILocalVariable(name: "flags", scope: !2514, file: !329, line: 818, type: !38)
!2524 = !DILocalVariable(name: "bufsize", scope: !2514, file: !329, line: 819, type: !93)
!2525 = !DILocalVariable(name: "buf", scope: !2514, file: !329, line: 823, type: !34)
!2526 = !DILocation(line: 0, scope: !2514, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 802, column: 10, scope: !2505)
!2528 = !DILocation(line: 815, column: 37, scope: !2514, inlinedAt: !2527)
!2529 = !DILocation(line: 816, column: 11, scope: !2514, inlinedAt: !2527)
!2530 = !DILocation(line: 818, column: 18, scope: !2514, inlinedAt: !2527)
!2531 = !DILocation(line: 818, column: 24, scope: !2514, inlinedAt: !2527)
!2532 = !DILocation(line: 819, column: 69, scope: !2514, inlinedAt: !2527)
!2533 = !DILocation(line: 820, column: 53, scope: !2514, inlinedAt: !2527)
!2534 = !DILocation(line: 821, column: 49, scope: !2514, inlinedAt: !2527)
!2535 = !DILocation(line: 822, column: 49, scope: !2514, inlinedAt: !2527)
!2536 = !DILocation(line: 819, column: 20, scope: !2514, inlinedAt: !2527)
!2537 = !DILocation(line: 822, column: 62, scope: !2514, inlinedAt: !2527)
!2538 = !DILocalVariable(name: "n", arg: 1, scope: !2539, file: !353, line: 216, type: !93)
!2539 = distinct !DISubprogram(name: "xcharalloc", scope: !353, file: !353, line: 216, type: !2540, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2542)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!34, !93}
!2542 = !{!2538}
!2543 = !DILocation(line: 0, scope: !2539, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 823, column: 15, scope: !2514, inlinedAt: !2527)
!2545 = !DILocation(line: 218, column: 10, scope: !2539, inlinedAt: !2544)
!2546 = !DILocation(line: 824, column: 60, scope: !2514, inlinedAt: !2527)
!2547 = !DILocation(line: 826, column: 32, scope: !2514, inlinedAt: !2527)
!2548 = !DILocation(line: 826, column: 47, scope: !2514, inlinedAt: !2527)
!2549 = !DILocation(line: 824, column: 3, scope: !2514, inlinedAt: !2527)
!2550 = !DILocation(line: 827, column: 9, scope: !2514, inlinedAt: !2527)
!2551 = !DILocation(line: 802, column: 3, scope: !2505)
!2552 = !DILocation(line: 0, scope: !2514)
!2553 = !DILocation(line: 815, column: 37, scope: !2514)
!2554 = !DILocation(line: 816, column: 11, scope: !2514)
!2555 = !DILocation(line: 818, column: 18, scope: !2514)
!2556 = !DILocation(line: 818, column: 27, scope: !2514)
!2557 = !DILocation(line: 818, column: 24, scope: !2514)
!2558 = !DILocation(line: 819, column: 69, scope: !2514)
!2559 = !DILocation(line: 820, column: 53, scope: !2514)
!2560 = !DILocation(line: 821, column: 49, scope: !2514)
!2561 = !DILocation(line: 822, column: 49, scope: !2514)
!2562 = !DILocation(line: 819, column: 20, scope: !2514)
!2563 = !DILocation(line: 822, column: 62, scope: !2514)
!2564 = !DILocation(line: 0, scope: !2539, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 823, column: 15, scope: !2514)
!2566 = !DILocation(line: 218, column: 10, scope: !2539, inlinedAt: !2565)
!2567 = !DILocation(line: 824, column: 60, scope: !2514)
!2568 = !DILocation(line: 826, column: 32, scope: !2514)
!2569 = !DILocation(line: 826, column: 47, scope: !2514)
!2570 = !DILocation(line: 824, column: 3, scope: !2514)
!2571 = !DILocation(line: 827, column: 9, scope: !2514)
!2572 = !DILocation(line: 828, column: 7, scope: !2514)
!2573 = !DILocation(line: 829, column: 11, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2514, file: !329, line: 828, column: 7)
!2575 = !DILocation(line: 829, column: 5, scope: !2574)
!2576 = !DILocation(line: 830, column: 3, scope: !2514)
!2577 = distinct !DISubprogram(name: "quotearg_free", scope: !329, file: !329, line: 848, type: !120, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2578)
!2578 = !{!2579, !2580}
!2579 = !DILocalVariable(name: "sv", scope: !2577, file: !329, line: 850, type: !438)
!2580 = !DILocalVariable(name: "i", scope: !2577, file: !329, line: 851, type: !38)
!2581 = !DILocation(line: 850, column: 24, scope: !2577)
!2582 = !DILocation(line: 0, scope: !2577)
!2583 = !DILocation(line: 852, column: 19, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !329, line: 852, column: 3)
!2585 = distinct !DILexicalBlock(scope: !2577, file: !329, line: 852, column: 3)
!2586 = !DILocation(line: 852, column: 17, scope: !2584)
!2587 = !DILocation(line: 852, column: 3, scope: !2585)
!2588 = !DILocation(line: 853, column: 17, scope: !2584)
!2589 = !{!2590, !1198, i64 8}
!2590 = !{!"slotvec", !1358, i64 0, !1198, i64 8}
!2591 = !DILocation(line: 853, column: 5, scope: !2584)
!2592 = !DILocation(line: 852, column: 28, scope: !2584)
!2593 = distinct !{!2593, !2587, !2594}
!2594 = !DILocation(line: 853, column: 20, scope: !2585)
!2595 = !DILocation(line: 854, column: 13, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2577, file: !329, line: 854, column: 7)
!2597 = !DILocation(line: 854, column: 17, scope: !2596)
!2598 = !DILocation(line: 854, column: 7, scope: !2577)
!2599 = !DILocation(line: 856, column: 7, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !329, line: 855, column: 5)
!2601 = !DILocation(line: 857, column: 21, scope: !2600)
!2602 = !{!2590, !1358, i64 0}
!2603 = !DILocation(line: 858, column: 20, scope: !2600)
!2604 = !DILocation(line: 859, column: 5, scope: !2600)
!2605 = !DILocation(line: 860, column: 10, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2577, file: !329, line: 860, column: 7)
!2607 = !DILocation(line: 860, column: 7, scope: !2577)
!2608 = !DILocation(line: 862, column: 13, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !329, line: 861, column: 5)
!2610 = !DILocation(line: 862, column: 7, scope: !2609)
!2611 = !DILocation(line: 863, column: 15, scope: !2609)
!2612 = !DILocation(line: 864, column: 5, scope: !2609)
!2613 = !DILocation(line: 865, column: 10, scope: !2577)
!2614 = !DILocation(line: 866, column: 1, scope: !2577)
!2615 = distinct !DISubprogram(name: "quotearg_n", scope: !329, file: !329, line: 931, type: !107, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2616)
!2616 = !{!2617, !2618}
!2617 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !329, line: 931, type: !38)
!2618 = !DILocalVariable(name: "arg", arg: 2, scope: !2615, file: !329, line: 931, type: !36)
!2619 = !DILocation(line: 0, scope: !2615)
!2620 = !DILocation(line: 933, column: 10, scope: !2615)
!2621 = !DILocation(line: 933, column: 3, scope: !2615)
!2622 = distinct !DISubprogram(name: "quotearg_n_options", scope: !329, file: !329, line: 877, type: !2623, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!34, !38, !36, !93, !362}
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631, !2632, !2635, !2636, !2638, !2639, !2640}
!2626 = !DILocalVariable(name: "n", arg: 1, scope: !2622, file: !329, line: 877, type: !38)
!2627 = !DILocalVariable(name: "arg", arg: 2, scope: !2622, file: !329, line: 877, type: !36)
!2628 = !DILocalVariable(name: "argsize", arg: 3, scope: !2622, file: !329, line: 877, type: !93)
!2629 = !DILocalVariable(name: "options", arg: 4, scope: !2622, file: !329, line: 878, type: !362)
!2630 = !DILocalVariable(name: "e", scope: !2622, file: !329, line: 880, type: !38)
!2631 = !DILocalVariable(name: "sv", scope: !2622, file: !329, line: 882, type: !438)
!2632 = !DILocalVariable(name: "preallocated", scope: !2633, file: !329, line: 889, type: !130)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !329, line: 888, column: 5)
!2634 = distinct !DILexicalBlock(scope: !2622, file: !329, line: 887, column: 7)
!2635 = !DILocalVariable(name: "nmax", scope: !2633, file: !329, line: 890, type: !38)
!2636 = !DILocalVariable(name: "size", scope: !2637, file: !329, line: 903, type: !93)
!2637 = distinct !DILexicalBlock(scope: !2622, file: !329, line: 902, column: 3)
!2638 = !DILocalVariable(name: "val", scope: !2637, file: !329, line: 904, type: !34)
!2639 = !DILocalVariable(name: "flags", scope: !2637, file: !329, line: 906, type: !38)
!2640 = !DILocalVariable(name: "qsize", scope: !2637, file: !329, line: 907, type: !93)
!2641 = !DILocation(line: 0, scope: !2622)
!2642 = !DILocation(line: 880, column: 11, scope: !2622)
!2643 = !DILocation(line: 882, column: 24, scope: !2622)
!2644 = !DILocation(line: 884, column: 9, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2622, file: !329, line: 884, column: 7)
!2646 = !DILocation(line: 884, column: 7, scope: !2622)
!2647 = !DILocation(line: 885, column: 5, scope: !2645)
!2648 = !DILocation(line: 887, column: 7, scope: !2634)
!2649 = !DILocation(line: 887, column: 14, scope: !2634)
!2650 = !DILocation(line: 887, column: 7, scope: !2622)
!2651 = !DILocation(line: 889, column: 31, scope: !2633)
!2652 = !DILocation(line: 0, scope: !2633)
!2653 = !DILocation(line: 892, column: 16, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2633, file: !329, line: 892, column: 11)
!2655 = !DILocation(line: 892, column: 11, scope: !2633)
!2656 = !DILocation(line: 893, column: 9, scope: !2654)
!2657 = !DILocation(line: 895, column: 32, scope: !2633)
!2658 = !DILocation(line: 895, column: 61, scope: !2633)
!2659 = !DILocation(line: 895, column: 58, scope: !2633)
!2660 = !DILocation(line: 895, column: 66, scope: !2633)
!2661 = !DILocation(line: 895, column: 22, scope: !2633)
!2662 = !DILocation(line: 895, column: 15, scope: !2633)
!2663 = !DILocation(line: 896, column: 11, scope: !2633)
!2664 = !DILocation(line: 897, column: 15, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2633, file: !329, line: 896, column: 11)
!2666 = !{i64 0, i64 8, !1372, i64 8, i64 8, !1197}
!2667 = !DILocation(line: 897, column: 9, scope: !2665)
!2668 = !DILocation(line: 898, column: 20, scope: !2633)
!2669 = !DILocation(line: 898, column: 18, scope: !2633)
!2670 = !DILocation(line: 898, column: 15, scope: !2633)
!2671 = !DILocation(line: 898, column: 38, scope: !2633)
!2672 = !DILocation(line: 898, column: 31, scope: !2633)
!2673 = !DILocation(line: 898, column: 48, scope: !2633)
!2674 = !DILocation(line: 0, scope: !2072, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 898, column: 7, scope: !2633)
!2676 = !DILocation(line: 71, column: 10, scope: !2072, inlinedAt: !2675)
!2677 = !DILocation(line: 899, column: 14, scope: !2633)
!2678 = !DILocation(line: 900, column: 5, scope: !2633)
!2679 = !DILocation(line: 903, column: 19, scope: !2637)
!2680 = !DILocation(line: 903, column: 25, scope: !2637)
!2681 = !DILocation(line: 0, scope: !2637)
!2682 = !DILocation(line: 904, column: 23, scope: !2637)
!2683 = !DILocation(line: 906, column: 26, scope: !2637)
!2684 = !DILocation(line: 906, column: 32, scope: !2637)
!2685 = !DILocation(line: 908, column: 55, scope: !2637)
!2686 = !DILocation(line: 909, column: 46, scope: !2637)
!2687 = !DILocation(line: 910, column: 55, scope: !2637)
!2688 = !DILocation(line: 911, column: 55, scope: !2637)
!2689 = !DILocation(line: 907, column: 20, scope: !2637)
!2690 = !DILocation(line: 913, column: 14, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2637, file: !329, line: 913, column: 9)
!2692 = !DILocation(line: 913, column: 9, scope: !2637)
!2693 = !DILocation(line: 915, column: 35, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2691, file: !329, line: 914, column: 7)
!2695 = !DILocation(line: 915, column: 20, scope: !2694)
!2696 = !DILocation(line: 916, column: 17, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !329, line: 916, column: 13)
!2698 = !DILocation(line: 916, column: 13, scope: !2694)
!2699 = !DILocation(line: 917, column: 11, scope: !2697)
!2700 = !DILocation(line: 0, scope: !2539, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 918, column: 27, scope: !2694)
!2702 = !DILocation(line: 218, column: 10, scope: !2539, inlinedAt: !2701)
!2703 = !DILocation(line: 918, column: 19, scope: !2694)
!2704 = !DILocation(line: 919, column: 69, scope: !2694)
!2705 = !DILocation(line: 921, column: 44, scope: !2694)
!2706 = !DILocation(line: 922, column: 44, scope: !2694)
!2707 = !DILocation(line: 919, column: 9, scope: !2694)
!2708 = !DILocation(line: 923, column: 7, scope: !2694)
!2709 = !DILocation(line: 925, column: 11, scope: !2637)
!2710 = !DILocation(line: 926, column: 5, scope: !2637)
!2711 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !329, file: !329, line: 937, type: !2712, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!34, !38, !36, !93}
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "n", arg: 1, scope: !2711, file: !329, line: 937, type: !38)
!2716 = !DILocalVariable(name: "arg", arg: 2, scope: !2711, file: !329, line: 937, type: !36)
!2717 = !DILocalVariable(name: "argsize", arg: 3, scope: !2711, file: !329, line: 937, type: !93)
!2718 = !DILocation(line: 0, scope: !2711)
!2719 = !DILocation(line: 939, column: 10, scope: !2711)
!2720 = !DILocation(line: 939, column: 3, scope: !2711)
!2721 = distinct !DISubprogram(name: "quotearg", scope: !329, file: !329, line: 943, type: !113, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2722)
!2722 = !{!2723}
!2723 = !DILocalVariable(name: "arg", arg: 1, scope: !2721, file: !329, line: 943, type: !36)
!2724 = !DILocation(line: 0, scope: !2721)
!2725 = !DILocation(line: 0, scope: !2615, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 945, column: 10, scope: !2721)
!2727 = !DILocation(line: 933, column: 10, scope: !2615, inlinedAt: !2726)
!2728 = !DILocation(line: 945, column: 3, scope: !2721)
!2729 = distinct !DISubprogram(name: "quotearg_mem", scope: !329, file: !329, line: 949, type: !2730, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!34, !36, !93}
!2732 = !{!2733, !2734}
!2733 = !DILocalVariable(name: "arg", arg: 1, scope: !2729, file: !329, line: 949, type: !36)
!2734 = !DILocalVariable(name: "argsize", arg: 2, scope: !2729, file: !329, line: 949, type: !93)
!2735 = !DILocation(line: 0, scope: !2729)
!2736 = !DILocation(line: 0, scope: !2711, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 951, column: 10, scope: !2729)
!2738 = !DILocation(line: 939, column: 10, scope: !2711, inlinedAt: !2737)
!2739 = !DILocation(line: 951, column: 3, scope: !2729)
!2740 = distinct !DISubprogram(name: "quotearg_n_style", scope: !329, file: !329, line: 955, type: !143, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2741)
!2741 = !{!2742, !2743, !2744, !2745}
!2742 = !DILocalVariable(name: "n", arg: 1, scope: !2740, file: !329, line: 955, type: !38)
!2743 = !DILocalVariable(name: "s", arg: 2, scope: !2740, file: !329, line: 955, type: !5)
!2744 = !DILocalVariable(name: "arg", arg: 3, scope: !2740, file: !329, line: 955, type: !36)
!2745 = !DILocalVariable(name: "o", scope: !2740, file: !329, line: 957, type: !363)
!2746 = !DILocation(line: 0, scope: !2740)
!2747 = !DILocation(line: 957, column: 3, scope: !2740)
!2748 = !DILocation(line: 957, column: 32, scope: !2740)
!2749 = !DILocalVariable(name: "style", arg: 1, scope: !2750, file: !329, line: 193, type: !5)
!2750 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !329, file: !329, line: 193, type: !2751, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!364, !5}
!2753 = !{!2749, !2754}
!2754 = !DILocalVariable(name: "o", scope: !2750, file: !329, line: 195, type: !364)
!2755 = !DILocation(line: 0, scope: !2750, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 957, column: 36, scope: !2740)
!2757 = !DILocation(line: 195, column: 26, scope: !2750, inlinedAt: !2756)
!2758 = !{!2759}
!2759 = distinct !{!2759, !2760, !"quoting_options_from_style: argument 0"}
!2760 = distinct !{!2760, !"quoting_options_from_style"}
!2761 = !DILocation(line: 196, column: 13, scope: !2762, inlinedAt: !2756)
!2762 = distinct !DILexicalBlock(scope: !2750, file: !329, line: 196, column: 7)
!2763 = !DILocation(line: 196, column: 7, scope: !2750, inlinedAt: !2756)
!2764 = !DILocation(line: 197, column: 5, scope: !2762, inlinedAt: !2756)
!2765 = !DILocation(line: 198, column: 5, scope: !2750, inlinedAt: !2756)
!2766 = !DILocation(line: 198, column: 11, scope: !2750, inlinedAt: !2756)
!2767 = !DILocation(line: 958, column: 10, scope: !2740)
!2768 = !DILocation(line: 959, column: 1, scope: !2740)
!2769 = !DILocation(line: 958, column: 3, scope: !2740)
!2770 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !329, file: !329, line: 962, type: !2771, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!34, !38, !5, !36, !93}
!2773 = !{!2774, !2775, !2776, !2777, !2778}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !329, line: 962, type: !38)
!2775 = !DILocalVariable(name: "s", arg: 2, scope: !2770, file: !329, line: 962, type: !5)
!2776 = !DILocalVariable(name: "arg", arg: 3, scope: !2770, file: !329, line: 963, type: !36)
!2777 = !DILocalVariable(name: "argsize", arg: 4, scope: !2770, file: !329, line: 963, type: !93)
!2778 = !DILocalVariable(name: "o", scope: !2770, file: !329, line: 965, type: !363)
!2779 = !DILocation(line: 0, scope: !2770)
!2780 = !DILocation(line: 965, column: 3, scope: !2770)
!2781 = !DILocation(line: 965, column: 32, scope: !2770)
!2782 = !DILocation(line: 0, scope: !2750, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 965, column: 36, scope: !2770)
!2784 = !DILocation(line: 195, column: 26, scope: !2750, inlinedAt: !2783)
!2785 = !{!2786}
!2786 = distinct !{!2786, !2787, !"quoting_options_from_style: argument 0"}
!2787 = distinct !{!2787, !"quoting_options_from_style"}
!2788 = !DILocation(line: 196, column: 13, scope: !2762, inlinedAt: !2783)
!2789 = !DILocation(line: 196, column: 7, scope: !2750, inlinedAt: !2783)
!2790 = !DILocation(line: 197, column: 5, scope: !2762, inlinedAt: !2783)
!2791 = !DILocation(line: 198, column: 5, scope: !2750, inlinedAt: !2783)
!2792 = !DILocation(line: 198, column: 11, scope: !2750, inlinedAt: !2783)
!2793 = !DILocation(line: 966, column: 10, scope: !2770)
!2794 = !DILocation(line: 967, column: 1, scope: !2770)
!2795 = !DILocation(line: 966, column: 3, scope: !2770)
!2796 = distinct !DISubprogram(name: "quotearg_style", scope: !329, file: !329, line: 970, type: !2797, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!34, !5, !36}
!2799 = !{!2800, !2801}
!2800 = !DILocalVariable(name: "s", arg: 1, scope: !2796, file: !329, line: 970, type: !5)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2796, file: !329, line: 970, type: !36)
!2802 = !DILocation(line: 195, column: 26, scope: !2750, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 957, column: 36, scope: !2740, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 972, column: 10, scope: !2796)
!2805 = !DILocation(line: 957, column: 32, scope: !2740, inlinedAt: !2804)
!2806 = !DILocation(line: 0, scope: !2796)
!2807 = !DILocation(line: 0, scope: !2740, inlinedAt: !2804)
!2808 = !DILocation(line: 957, column: 3, scope: !2740, inlinedAt: !2804)
!2809 = !DILocation(line: 0, scope: !2750, inlinedAt: !2803)
!2810 = !{!2811}
!2811 = distinct !{!2811, !2812, !"quoting_options_from_style: argument 0"}
!2812 = distinct !{!2812, !"quoting_options_from_style"}
!2813 = !DILocation(line: 196, column: 13, scope: !2762, inlinedAt: !2803)
!2814 = !DILocation(line: 196, column: 7, scope: !2750, inlinedAt: !2803)
!2815 = !DILocation(line: 197, column: 5, scope: !2762, inlinedAt: !2803)
!2816 = !DILocation(line: 198, column: 5, scope: !2750, inlinedAt: !2803)
!2817 = !DILocation(line: 198, column: 11, scope: !2750, inlinedAt: !2803)
!2818 = !DILocation(line: 958, column: 10, scope: !2740, inlinedAt: !2804)
!2819 = !DILocation(line: 959, column: 1, scope: !2740, inlinedAt: !2804)
!2820 = !DILocation(line: 972, column: 3, scope: !2796)
!2821 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !329, file: !329, line: 976, type: !2822, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!34, !5, !36, !93}
!2824 = !{!2825, !2826, !2827}
!2825 = !DILocalVariable(name: "s", arg: 1, scope: !2821, file: !329, line: 976, type: !5)
!2826 = !DILocalVariable(name: "arg", arg: 2, scope: !2821, file: !329, line: 976, type: !36)
!2827 = !DILocalVariable(name: "argsize", arg: 3, scope: !2821, file: !329, line: 976, type: !93)
!2828 = !DILocation(line: 195, column: 26, scope: !2750, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 965, column: 36, scope: !2770, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 978, column: 10, scope: !2821)
!2831 = !DILocation(line: 965, column: 32, scope: !2770, inlinedAt: !2830)
!2832 = !DILocation(line: 0, scope: !2821)
!2833 = !DILocation(line: 0, scope: !2770, inlinedAt: !2830)
!2834 = !DILocation(line: 965, column: 3, scope: !2770, inlinedAt: !2830)
!2835 = !DILocation(line: 0, scope: !2750, inlinedAt: !2829)
!2836 = !{!2837}
!2837 = distinct !{!2837, !2838, !"quoting_options_from_style: argument 0"}
!2838 = distinct !{!2838, !"quoting_options_from_style"}
!2839 = !DILocation(line: 196, column: 13, scope: !2762, inlinedAt: !2829)
!2840 = !DILocation(line: 196, column: 7, scope: !2750, inlinedAt: !2829)
!2841 = !DILocation(line: 197, column: 5, scope: !2762, inlinedAt: !2829)
!2842 = !DILocation(line: 198, column: 5, scope: !2750, inlinedAt: !2829)
!2843 = !DILocation(line: 198, column: 11, scope: !2750, inlinedAt: !2829)
!2844 = !DILocation(line: 966, column: 10, scope: !2770, inlinedAt: !2830)
!2845 = !DILocation(line: 967, column: 1, scope: !2770, inlinedAt: !2830)
!2846 = !DILocation(line: 978, column: 3, scope: !2821)
!2847 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !329, file: !329, line: 982, type: !2848, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!34, !36, !93, !35}
!2850 = !{!2851, !2852, !2853, !2854}
!2851 = !DILocalVariable(name: "arg", arg: 1, scope: !2847, file: !329, line: 982, type: !36)
!2852 = !DILocalVariable(name: "argsize", arg: 2, scope: !2847, file: !329, line: 982, type: !93)
!2853 = !DILocalVariable(name: "ch", arg: 3, scope: !2847, file: !329, line: 982, type: !35)
!2854 = !DILocalVariable(name: "options", scope: !2847, file: !329, line: 984, type: !364)
!2855 = !DILocation(line: 0, scope: !2847)
!2856 = !DILocation(line: 984, column: 3, scope: !2847)
!2857 = !DILocation(line: 984, column: 26, scope: !2847)
!2858 = !DILocation(line: 985, column: 13, scope: !2847)
!2859 = !{i64 0, i64 4, !1369, i64 4, i64 4, !1258, i64 8, i64 32, !1369, i64 40, i64 8, !1197, i64 48, i64 8, !1197}
!2860 = !DILocation(line: 0, scope: !1686, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 986, column: 3, scope: !2847)
!2862 = !DILocation(line: 156, column: 62, scope: !1686, inlinedAt: !2861)
!2863 = !DILocation(line: 156, column: 57, scope: !1686, inlinedAt: !2861)
!2864 = !DILocation(line: 157, column: 15, scope: !1686, inlinedAt: !2861)
!2865 = !DILocation(line: 158, column: 12, scope: !1686, inlinedAt: !2861)
!2866 = !DILocation(line: 158, column: 15, scope: !1686, inlinedAt: !2861)
!2867 = !DILocation(line: 158, column: 25, scope: !1686, inlinedAt: !2861)
!2868 = !DILocation(line: 159, column: 18, scope: !1686, inlinedAt: !2861)
!2869 = !DILocation(line: 159, column: 23, scope: !1686, inlinedAt: !2861)
!2870 = !DILocation(line: 159, column: 6, scope: !1686, inlinedAt: !2861)
!2871 = !DILocation(line: 987, column: 10, scope: !2847)
!2872 = !DILocation(line: 988, column: 1, scope: !2847)
!2873 = !DILocation(line: 987, column: 3, scope: !2847)
!2874 = distinct !DISubprogram(name: "quotearg_char", scope: !329, file: !329, line: 991, type: !2875, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!34, !36, !35}
!2877 = !{!2878, !2879}
!2878 = !DILocalVariable(name: "arg", arg: 1, scope: !2874, file: !329, line: 991, type: !36)
!2879 = !DILocalVariable(name: "ch", arg: 2, scope: !2874, file: !329, line: 991, type: !35)
!2880 = !DILocation(line: 984, column: 26, scope: !2847, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 993, column: 10, scope: !2874)
!2882 = !DILocation(line: 0, scope: !2874)
!2883 = !DILocation(line: 0, scope: !2847, inlinedAt: !2881)
!2884 = !DILocation(line: 984, column: 3, scope: !2847, inlinedAt: !2881)
!2885 = !DILocation(line: 985, column: 13, scope: !2847, inlinedAt: !2881)
!2886 = !DILocation(line: 0, scope: !1686, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 986, column: 3, scope: !2847, inlinedAt: !2881)
!2888 = !DILocation(line: 156, column: 62, scope: !1686, inlinedAt: !2887)
!2889 = !DILocation(line: 156, column: 57, scope: !1686, inlinedAt: !2887)
!2890 = !DILocation(line: 157, column: 15, scope: !1686, inlinedAt: !2887)
!2891 = !DILocation(line: 158, column: 12, scope: !1686, inlinedAt: !2887)
!2892 = !DILocation(line: 158, column: 15, scope: !1686, inlinedAt: !2887)
!2893 = !DILocation(line: 158, column: 25, scope: !1686, inlinedAt: !2887)
!2894 = !DILocation(line: 159, column: 18, scope: !1686, inlinedAt: !2887)
!2895 = !DILocation(line: 159, column: 23, scope: !1686, inlinedAt: !2887)
!2896 = !DILocation(line: 159, column: 6, scope: !1686, inlinedAt: !2887)
!2897 = !DILocation(line: 987, column: 10, scope: !2847, inlinedAt: !2881)
!2898 = !DILocation(line: 988, column: 1, scope: !2847, inlinedAt: !2881)
!2899 = !DILocation(line: 993, column: 3, scope: !2874)
!2900 = distinct !DISubprogram(name: "quotearg_colon", scope: !329, file: !329, line: 997, type: !113, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2901)
!2901 = !{!2902}
!2902 = !DILocalVariable(name: "arg", arg: 1, scope: !2900, file: !329, line: 997, type: !36)
!2903 = !DILocation(line: 984, column: 26, scope: !2847, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 993, column: 10, scope: !2874, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 999, column: 10, scope: !2900)
!2906 = !DILocation(line: 0, scope: !2900)
!2907 = !DILocation(line: 0, scope: !2874, inlinedAt: !2905)
!2908 = !DILocation(line: 0, scope: !2847, inlinedAt: !2904)
!2909 = !DILocation(line: 984, column: 3, scope: !2847, inlinedAt: !2904)
!2910 = !DILocation(line: 985, column: 13, scope: !2847, inlinedAt: !2904)
!2911 = !DILocation(line: 0, scope: !1686, inlinedAt: !2912)
!2912 = distinct !DILocation(line: 986, column: 3, scope: !2847, inlinedAt: !2904)
!2913 = !DILocation(line: 156, column: 57, scope: !1686, inlinedAt: !2912)
!2914 = !DILocation(line: 158, column: 12, scope: !1686, inlinedAt: !2912)
!2915 = !DILocation(line: 159, column: 6, scope: !1686, inlinedAt: !2912)
!2916 = !DILocation(line: 987, column: 10, scope: !2847, inlinedAt: !2904)
!2917 = !DILocation(line: 988, column: 1, scope: !2847, inlinedAt: !2904)
!2918 = !DILocation(line: 999, column: 3, scope: !2900)
!2919 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !329, file: !329, line: 1003, type: !2730, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2920)
!2920 = !{!2921, !2922}
!2921 = !DILocalVariable(name: "arg", arg: 1, scope: !2919, file: !329, line: 1003, type: !36)
!2922 = !DILocalVariable(name: "argsize", arg: 2, scope: !2919, file: !329, line: 1003, type: !93)
!2923 = !DILocation(line: 984, column: 26, scope: !2847, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 1005, column: 10, scope: !2919)
!2925 = !DILocation(line: 0, scope: !2919)
!2926 = !DILocation(line: 0, scope: !2847, inlinedAt: !2924)
!2927 = !DILocation(line: 984, column: 3, scope: !2847, inlinedAt: !2924)
!2928 = !DILocation(line: 985, column: 13, scope: !2847, inlinedAt: !2924)
!2929 = !DILocation(line: 0, scope: !1686, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 986, column: 3, scope: !2847, inlinedAt: !2924)
!2931 = !DILocation(line: 156, column: 57, scope: !1686, inlinedAt: !2930)
!2932 = !DILocation(line: 158, column: 12, scope: !1686, inlinedAt: !2930)
!2933 = !DILocation(line: 159, column: 6, scope: !1686, inlinedAt: !2930)
!2934 = !DILocation(line: 987, column: 10, scope: !2847, inlinedAt: !2924)
!2935 = !DILocation(line: 988, column: 1, scope: !2847, inlinedAt: !2924)
!2936 = !DILocation(line: 1005, column: 3, scope: !2919)
!2937 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !329, file: !329, line: 1009, type: !143, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2938)
!2938 = !{!2939, !2940, !2941, !2942}
!2939 = !DILocalVariable(name: "n", arg: 1, scope: !2937, file: !329, line: 1009, type: !38)
!2940 = !DILocalVariable(name: "s", arg: 2, scope: !2937, file: !329, line: 1009, type: !5)
!2941 = !DILocalVariable(name: "arg", arg: 3, scope: !2937, file: !329, line: 1009, type: !36)
!2942 = !DILocalVariable(name: "options", scope: !2937, file: !329, line: 1011, type: !364)
!2943 = !DILocation(line: 195, column: 26, scope: !2750, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1012, column: 13, scope: !2937)
!2945 = !DILocation(line: 0, scope: !2937)
!2946 = !DILocation(line: 1011, column: 3, scope: !2937)
!2947 = !DILocation(line: 1011, column: 26, scope: !2937)
!2948 = !DILocation(line: 1012, column: 13, scope: !2937)
!2949 = !DILocation(line: 0, scope: !2750, inlinedAt: !2944)
!2950 = !{!2951}
!2951 = distinct !{!2951, !2952, !"quoting_options_from_style: argument 0"}
!2952 = distinct !{!2952, !"quoting_options_from_style"}
!2953 = !DILocation(line: 196, column: 13, scope: !2762, inlinedAt: !2944)
!2954 = !DILocation(line: 196, column: 7, scope: !2750, inlinedAt: !2944)
!2955 = !DILocation(line: 197, column: 5, scope: !2762, inlinedAt: !2944)
!2956 = !DILocation(line: 0, scope: !1686, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 1013, column: 3, scope: !2937)
!2958 = !DILocation(line: 156, column: 57, scope: !1686, inlinedAt: !2957)
!2959 = !DILocation(line: 158, column: 12, scope: !1686, inlinedAt: !2957)
!2960 = !DILocation(line: 159, column: 6, scope: !1686, inlinedAt: !2957)
!2961 = !DILocation(line: 1014, column: 10, scope: !2937)
!2962 = !DILocation(line: 1015, column: 1, scope: !2937)
!2963 = !DILocation(line: 1014, column: 3, scope: !2937)
!2964 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !329, file: !329, line: 1018, type: !2965, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!34, !38, !36, !36, !36}
!2967 = !{!2968, !2969, !2970, !2971}
!2968 = !DILocalVariable(name: "n", arg: 1, scope: !2964, file: !329, line: 1018, type: !38)
!2969 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2964, file: !329, line: 1018, type: !36)
!2970 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2964, file: !329, line: 1019, type: !36)
!2971 = !DILocalVariable(name: "arg", arg: 4, scope: !2964, file: !329, line: 1019, type: !36)
!2972 = !DILocalVariable(name: "o", scope: !2973, file: !329, line: 1030, type: !364)
!2973 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !329, file: !329, line: 1026, type: !2974, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!34, !38, !36, !36, !36, !93}
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2972}
!2977 = !DILocalVariable(name: "n", arg: 1, scope: !2973, file: !329, line: 1026, type: !38)
!2978 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2973, file: !329, line: 1026, type: !36)
!2979 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2973, file: !329, line: 1027, type: !36)
!2980 = !DILocalVariable(name: "arg", arg: 4, scope: !2973, file: !329, line: 1028, type: !36)
!2981 = !DILocalVariable(name: "argsize", arg: 5, scope: !2973, file: !329, line: 1028, type: !93)
!2982 = !DILocation(line: 1030, column: 26, scope: !2973, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 1021, column: 10, scope: !2964)
!2984 = !DILocation(line: 0, scope: !2964)
!2985 = !DILocation(line: 0, scope: !2973, inlinedAt: !2983)
!2986 = !DILocation(line: 1030, column: 3, scope: !2973, inlinedAt: !2983)
!2987 = !DILocation(line: 1030, column: 30, scope: !2973, inlinedAt: !2983)
!2988 = !DILocation(line: 0, scope: !1726, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 1031, column: 3, scope: !2973, inlinedAt: !2983)
!2990 = !DILocation(line: 184, column: 6, scope: !1726, inlinedAt: !2989)
!2991 = !DILocation(line: 184, column: 12, scope: !1726, inlinedAt: !2989)
!2992 = !DILocation(line: 185, column: 8, scope: !1740, inlinedAt: !2989)
!2993 = !DILocation(line: 185, column: 23, scope: !1740, inlinedAt: !2989)
!2994 = !DILocation(line: 185, column: 19, scope: !1740, inlinedAt: !2989)
!2995 = !DILocation(line: 186, column: 5, scope: !1740, inlinedAt: !2989)
!2996 = !DILocation(line: 187, column: 6, scope: !1726, inlinedAt: !2989)
!2997 = !DILocation(line: 187, column: 17, scope: !1726, inlinedAt: !2989)
!2998 = !DILocation(line: 188, column: 6, scope: !1726, inlinedAt: !2989)
!2999 = !DILocation(line: 188, column: 18, scope: !1726, inlinedAt: !2989)
!3000 = !DILocation(line: 1032, column: 10, scope: !2973, inlinedAt: !2983)
!3001 = !DILocation(line: 1033, column: 1, scope: !2973, inlinedAt: !2983)
!3002 = !DILocation(line: 1021, column: 3, scope: !2964)
!3003 = !DILocation(line: 0, scope: !2973)
!3004 = !DILocation(line: 1030, column: 3, scope: !2973)
!3005 = !DILocation(line: 1030, column: 26, scope: !2973)
!3006 = !DILocation(line: 1030, column: 30, scope: !2973)
!3007 = !DILocation(line: 0, scope: !1726, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 1031, column: 3, scope: !2973)
!3009 = !DILocation(line: 184, column: 6, scope: !1726, inlinedAt: !3008)
!3010 = !DILocation(line: 184, column: 12, scope: !1726, inlinedAt: !3008)
!3011 = !DILocation(line: 185, column: 8, scope: !1740, inlinedAt: !3008)
!3012 = !DILocation(line: 185, column: 23, scope: !1740, inlinedAt: !3008)
!3013 = !DILocation(line: 185, column: 19, scope: !1740, inlinedAt: !3008)
!3014 = !DILocation(line: 186, column: 5, scope: !1740, inlinedAt: !3008)
!3015 = !DILocation(line: 187, column: 6, scope: !1726, inlinedAt: !3008)
!3016 = !DILocation(line: 187, column: 17, scope: !1726, inlinedAt: !3008)
!3017 = !DILocation(line: 188, column: 6, scope: !1726, inlinedAt: !3008)
!3018 = !DILocation(line: 188, column: 18, scope: !1726, inlinedAt: !3008)
!3019 = !DILocation(line: 1032, column: 10, scope: !2973)
!3020 = !DILocation(line: 1033, column: 1, scope: !2973)
!3021 = !DILocation(line: 1032, column: 3, scope: !2973)
!3022 = distinct !DISubprogram(name: "quotearg_custom", scope: !329, file: !329, line: 1036, type: !3023, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!34, !36, !36, !36}
!3025 = !{!3026, !3027, !3028}
!3026 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3022, file: !329, line: 1036, type: !36)
!3027 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3022, file: !329, line: 1036, type: !36)
!3028 = !DILocalVariable(name: "arg", arg: 3, scope: !3022, file: !329, line: 1037, type: !36)
!3029 = !DILocation(line: 1030, column: 26, scope: !2973, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 1021, column: 10, scope: !2964, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 1039, column: 10, scope: !3022)
!3032 = !DILocation(line: 0, scope: !3022)
!3033 = !DILocation(line: 0, scope: !2964, inlinedAt: !3031)
!3034 = !DILocation(line: 0, scope: !2973, inlinedAt: !3030)
!3035 = !DILocation(line: 1030, column: 3, scope: !2973, inlinedAt: !3030)
!3036 = !DILocation(line: 1030, column: 30, scope: !2973, inlinedAt: !3030)
!3037 = !DILocation(line: 0, scope: !1726, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 1031, column: 3, scope: !2973, inlinedAt: !3030)
!3039 = !DILocation(line: 184, column: 6, scope: !1726, inlinedAt: !3038)
!3040 = !DILocation(line: 184, column: 12, scope: !1726, inlinedAt: !3038)
!3041 = !DILocation(line: 185, column: 8, scope: !1740, inlinedAt: !3038)
!3042 = !DILocation(line: 185, column: 23, scope: !1740, inlinedAt: !3038)
!3043 = !DILocation(line: 185, column: 19, scope: !1740, inlinedAt: !3038)
!3044 = !DILocation(line: 186, column: 5, scope: !1740, inlinedAt: !3038)
!3045 = !DILocation(line: 187, column: 6, scope: !1726, inlinedAt: !3038)
!3046 = !DILocation(line: 187, column: 17, scope: !1726, inlinedAt: !3038)
!3047 = !DILocation(line: 188, column: 6, scope: !1726, inlinedAt: !3038)
!3048 = !DILocation(line: 188, column: 18, scope: !1726, inlinedAt: !3038)
!3049 = !DILocation(line: 1032, column: 10, scope: !2973, inlinedAt: !3030)
!3050 = !DILocation(line: 1033, column: 1, scope: !2973, inlinedAt: !3030)
!3051 = !DILocation(line: 1039, column: 3, scope: !3022)
!3052 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !329, file: !329, line: 1043, type: !3053, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!34, !36, !36, !36, !93}
!3055 = !{!3056, !3057, !3058, !3059}
!3056 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3052, file: !329, line: 1043, type: !36)
!3057 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3052, file: !329, line: 1043, type: !36)
!3058 = !DILocalVariable(name: "arg", arg: 3, scope: !3052, file: !329, line: 1044, type: !36)
!3059 = !DILocalVariable(name: "argsize", arg: 4, scope: !3052, file: !329, line: 1044, type: !93)
!3060 = !DILocation(line: 1030, column: 26, scope: !2973, inlinedAt: !3061)
!3061 = distinct !DILocation(line: 1046, column: 10, scope: !3052)
!3062 = !DILocation(line: 0, scope: !3052)
!3063 = !DILocation(line: 0, scope: !2973, inlinedAt: !3061)
!3064 = !DILocation(line: 1030, column: 3, scope: !2973, inlinedAt: !3061)
!3065 = !DILocation(line: 1030, column: 30, scope: !2973, inlinedAt: !3061)
!3066 = !DILocation(line: 0, scope: !1726, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 1031, column: 3, scope: !2973, inlinedAt: !3061)
!3068 = !DILocation(line: 184, column: 6, scope: !1726, inlinedAt: !3067)
!3069 = !DILocation(line: 184, column: 12, scope: !1726, inlinedAt: !3067)
!3070 = !DILocation(line: 185, column: 8, scope: !1740, inlinedAt: !3067)
!3071 = !DILocation(line: 185, column: 23, scope: !1740, inlinedAt: !3067)
!3072 = !DILocation(line: 185, column: 19, scope: !1740, inlinedAt: !3067)
!3073 = !DILocation(line: 186, column: 5, scope: !1740, inlinedAt: !3067)
!3074 = !DILocation(line: 187, column: 6, scope: !1726, inlinedAt: !3067)
!3075 = !DILocation(line: 187, column: 17, scope: !1726, inlinedAt: !3067)
!3076 = !DILocation(line: 188, column: 6, scope: !1726, inlinedAt: !3067)
!3077 = !DILocation(line: 188, column: 18, scope: !1726, inlinedAt: !3067)
!3078 = !DILocation(line: 1032, column: 10, scope: !2973, inlinedAt: !3061)
!3079 = !DILocation(line: 1033, column: 1, scope: !2973, inlinedAt: !3061)
!3080 = !DILocation(line: 1046, column: 3, scope: !3052)
!3081 = distinct !DISubprogram(name: "quote_n_mem", scope: !329, file: !329, line: 1061, type: !3082, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!36, !38, !36, !93}
!3084 = !{!3085, !3086, !3087}
!3085 = !DILocalVariable(name: "n", arg: 1, scope: !3081, file: !329, line: 1061, type: !38)
!3086 = !DILocalVariable(name: "arg", arg: 2, scope: !3081, file: !329, line: 1061, type: !36)
!3087 = !DILocalVariable(name: "argsize", arg: 3, scope: !3081, file: !329, line: 1061, type: !93)
!3088 = !DILocation(line: 0, scope: !3081)
!3089 = !DILocation(line: 1063, column: 10, scope: !3081)
!3090 = !DILocation(line: 1063, column: 3, scope: !3081)
!3091 = distinct !DISubprogram(name: "quote_mem", scope: !329, file: !329, line: 1067, type: !3092, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!36, !36, !93}
!3094 = !{!3095, !3096}
!3095 = !DILocalVariable(name: "arg", arg: 1, scope: !3091, file: !329, line: 1067, type: !36)
!3096 = !DILocalVariable(name: "argsize", arg: 2, scope: !3091, file: !329, line: 1067, type: !93)
!3097 = !DILocation(line: 0, scope: !3091)
!3098 = !DILocation(line: 0, scope: !3081, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 1069, column: 10, scope: !3091)
!3100 = !DILocation(line: 1063, column: 10, scope: !3081, inlinedAt: !3099)
!3101 = !DILocation(line: 1069, column: 3, scope: !3091)
!3102 = distinct !DISubprogram(name: "quote_n", scope: !329, file: !329, line: 1073, type: !3103, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!36, !38, !36}
!3105 = !{!3106, !3107}
!3106 = !DILocalVariable(name: "n", arg: 1, scope: !3102, file: !329, line: 1073, type: !38)
!3107 = !DILocalVariable(name: "arg", arg: 2, scope: !3102, file: !329, line: 1073, type: !36)
!3108 = !DILocation(line: 0, scope: !3102)
!3109 = !DILocation(line: 0, scope: !3081, inlinedAt: !3110)
!3110 = distinct !DILocation(line: 1075, column: 10, scope: !3102)
!3111 = !DILocation(line: 1063, column: 10, scope: !3081, inlinedAt: !3110)
!3112 = !DILocation(line: 1075, column: 3, scope: !3102)
!3113 = distinct !DISubprogram(name: "quote", scope: !329, file: !329, line: 1079, type: !3114, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!36, !36}
!3116 = !{!3117}
!3117 = !DILocalVariable(name: "arg", arg: 1, scope: !3113, file: !329, line: 1079, type: !36)
!3118 = !DILocation(line: 0, scope: !3113)
!3119 = !DILocation(line: 0, scope: !3102, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1081, column: 10, scope: !3113)
!3121 = !DILocation(line: 0, scope: !3081, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1075, column: 10, scope: !3102, inlinedAt: !3120)
!3123 = !DILocation(line: 1063, column: 10, scope: !3081, inlinedAt: !3122)
!3124 = !DILocation(line: 1081, column: 3, scope: !3113)
!3125 = distinct !DISubprogram(name: "version_etc_arn", scope: !508, file: !508, line: 61, type: !3126, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3131)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{null, !3128, !36, !36, !36, !3130, !93}
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1303, line: 7, baseType: !518)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137}
!3132 = !DILocalVariable(name: "stream", arg: 1, scope: !3125, file: !508, line: 61, type: !3128)
!3133 = !DILocalVariable(name: "command_name", arg: 2, scope: !3125, file: !508, line: 62, type: !36)
!3134 = !DILocalVariable(name: "package", arg: 3, scope: !3125, file: !508, line: 62, type: !36)
!3135 = !DILocalVariable(name: "version", arg: 4, scope: !3125, file: !508, line: 63, type: !36)
!3136 = !DILocalVariable(name: "authors", arg: 5, scope: !3125, file: !508, line: 64, type: !3130)
!3137 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3125, file: !508, line: 64, type: !93)
!3138 = !DILocation(line: 0, scope: !3125)
!3139 = !DILocation(line: 66, column: 7, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3125, file: !508, line: 66, column: 7)
!3141 = !DILocation(line: 66, column: 7, scope: !3125)
!3142 = !DILocation(line: 67, column: 5, scope: !3140)
!3143 = !DILocation(line: 69, column: 5, scope: !3140)
!3144 = !DILocation(line: 83, column: 3, scope: !3125)
!3145 = !DILocation(line: 85, column: 3, scope: !3125)
!3146 = !DILocation(line: 88, column: 3, scope: !3125)
!3147 = !DILocation(line: 95, column: 3, scope: !3125)
!3148 = !DILocation(line: 97, column: 3, scope: !3125)
!3149 = !DILocation(line: 105, column: 7, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3125, file: !508, line: 98, column: 5)
!3151 = !DILocation(line: 106, column: 7, scope: !3150)
!3152 = !DILocation(line: 109, column: 7, scope: !3150)
!3153 = !DILocation(line: 110, column: 7, scope: !3150)
!3154 = !DILocation(line: 113, column: 7, scope: !3150)
!3155 = !DILocation(line: 115, column: 7, scope: !3150)
!3156 = !DILocation(line: 120, column: 7, scope: !3150)
!3157 = !DILocation(line: 122, column: 7, scope: !3150)
!3158 = !DILocation(line: 127, column: 7, scope: !3150)
!3159 = !DILocation(line: 129, column: 7, scope: !3150)
!3160 = !DILocation(line: 134, column: 7, scope: !3150)
!3161 = !DILocation(line: 137, column: 7, scope: !3150)
!3162 = !DILocation(line: 142, column: 7, scope: !3150)
!3163 = !DILocation(line: 145, column: 7, scope: !3150)
!3164 = !DILocation(line: 150, column: 7, scope: !3150)
!3165 = !DILocation(line: 154, column: 7, scope: !3150)
!3166 = !DILocation(line: 159, column: 7, scope: !3150)
!3167 = !DILocation(line: 163, column: 7, scope: !3150)
!3168 = !DILocation(line: 170, column: 7, scope: !3150)
!3169 = !DILocation(line: 174, column: 7, scope: !3150)
!3170 = !DILocation(line: 176, column: 1, scope: !3125)
!3171 = distinct !DISubprogram(name: "version_etc_ar", scope: !508, file: !508, line: 183, type: !3172, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3174)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{null, !3128, !36, !36, !36, !3130}
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3180}
!3175 = !DILocalVariable(name: "stream", arg: 1, scope: !3171, file: !508, line: 183, type: !3128)
!3176 = !DILocalVariable(name: "command_name", arg: 2, scope: !3171, file: !508, line: 184, type: !36)
!3177 = !DILocalVariable(name: "package", arg: 3, scope: !3171, file: !508, line: 184, type: !36)
!3178 = !DILocalVariable(name: "version", arg: 4, scope: !3171, file: !508, line: 185, type: !36)
!3179 = !DILocalVariable(name: "authors", arg: 5, scope: !3171, file: !508, line: 185, type: !3130)
!3180 = !DILocalVariable(name: "n_authors", scope: !3171, file: !508, line: 187, type: !93)
!3181 = !DILocation(line: 0, scope: !3171)
!3182 = !DILocation(line: 189, column: 8, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3171, file: !508, line: 189, column: 3)
!3184 = !DILocation(line: 0, scope: !3183)
!3185 = !DILocation(line: 189, column: 23, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !508, line: 189, column: 3)
!3187 = !DILocation(line: 189, column: 3, scope: !3183)
!3188 = !DILocation(line: 189, column: 52, scope: !3186)
!3189 = distinct !{!3189, !3187, !3190}
!3190 = !DILocation(line: 190, column: 5, scope: !3183)
!3191 = !DILocation(line: 191, column: 3, scope: !3171)
!3192 = !DILocation(line: 192, column: 1, scope: !3171)
!3193 = distinct !DISubprogram(name: "version_etc_va", scope: !508, file: !508, line: 199, type: !3194, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3203)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !3128, !36, !36, !36, !3196}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !508, line: 192, size: 192, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3197, file: !508, line: 192, baseType: !7, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3197, file: !508, line: 192, baseType: !7, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3197, file: !508, line: 192, baseType: !91, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3197, file: !508, line: 192, baseType: !91, size: 64, offset: 128)
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3204 = !DILocalVariable(name: "stream", arg: 1, scope: !3193, file: !508, line: 199, type: !3128)
!3205 = !DILocalVariable(name: "command_name", arg: 2, scope: !3193, file: !508, line: 200, type: !36)
!3206 = !DILocalVariable(name: "package", arg: 3, scope: !3193, file: !508, line: 200, type: !36)
!3207 = !DILocalVariable(name: "version", arg: 4, scope: !3193, file: !508, line: 201, type: !36)
!3208 = !DILocalVariable(name: "authors", arg: 5, scope: !3193, file: !508, line: 201, type: !3196)
!3209 = !DILocalVariable(name: "n_authors", scope: !3193, file: !508, line: 203, type: !93)
!3210 = !DILocalVariable(name: "authtab", scope: !3193, file: !508, line: 204, type: !3211)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 640, elements: !427)
!3212 = !DILocation(line: 0, scope: !3193)
!3213 = !DILocation(line: 204, column: 3, scope: !3193)
!3214 = !DILocation(line: 204, column: 15, scope: !3193)
!3215 = !DILocation(line: 0, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !508, line: 206, column: 3)
!3217 = distinct !DILexicalBlock(scope: !3193, file: !508, line: 206, column: 3)
!3218 = !DILocation(line: 208, column: 35, scope: !3216)
!3219 = !DILocation(line: 208, column: 14, scope: !3216)
!3220 = !DILocation(line: 208, column: 33, scope: !3216)
!3221 = !DILocation(line: 208, column: 67, scope: !3216)
!3222 = !DILocation(line: 206, column: 3, scope: !3217)
!3223 = !DILocation(line: 0, scope: !3217)
!3224 = !DILocation(line: 211, column: 3, scope: !3193)
!3225 = !DILocation(line: 213, column: 1, scope: !3193)
!3226 = distinct !DISubprogram(name: "version_etc", scope: !508, file: !508, line: 230, type: !3227, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !3128, !36, !36, !36, null}
!3229 = !{!3230, !3231, !3232, !3233, !3234}
!3230 = !DILocalVariable(name: "stream", arg: 1, scope: !3226, file: !508, line: 230, type: !3128)
!3231 = !DILocalVariable(name: "command_name", arg: 2, scope: !3226, file: !508, line: 231, type: !36)
!3232 = !DILocalVariable(name: "package", arg: 3, scope: !3226, file: !508, line: 231, type: !36)
!3233 = !DILocalVariable(name: "version", arg: 4, scope: !3226, file: !508, line: 232, type: !36)
!3234 = !DILocalVariable(name: "authors", scope: !3226, file: !508, line: 234, type: !3235)
!3235 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !41, line: 52, baseType: !3236)
!3236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1559, line: 32, baseType: !3237)
!3237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !508, line: 234, baseType: !3238)
!3238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3197, size: 192, elements: !76)
!3239 = !DILocation(line: 0, scope: !3226)
!3240 = !DILocation(line: 234, column: 3, scope: !3226)
!3241 = !DILocation(line: 234, column: 11, scope: !3226)
!3242 = !DILocation(line: 236, column: 3, scope: !3226)
!3243 = !DILocation(line: 237, column: 3, scope: !3226)
!3244 = !DILocation(line: 238, column: 3, scope: !3226)
!3245 = !DILocation(line: 239, column: 1, scope: !3226)
!3246 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !508, file: !508, line: 242, type: !120, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !507, retainedNodes: !39)
!3247 = !DILocation(line: 244, column: 3, scope: !3246)
!3248 = !DILocation(line: 249, column: 3, scope: !3246)
!3249 = !DILocation(line: 255, column: 3, scope: !3246)
!3250 = !DILocation(line: 260, column: 3, scope: !3246)
!3251 = !DILocation(line: 262, column: 1, scope: !3246)
!3252 = distinct !DISubprogram(name: "xnmalloc", scope: !353, file: !353, line: 99, type: !3253, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3255)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!91, !93, !93}
!3255 = !{!3256, !3257}
!3256 = !DILocalVariable(name: "n", arg: 1, scope: !3252, file: !353, line: 99, type: !93)
!3257 = !DILocalVariable(name: "s", arg: 2, scope: !3252, file: !353, line: 99, type: !93)
!3258 = !DILocation(line: 0, scope: !3252)
!3259 = !DILocation(line: 101, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3252, file: !353, line: 101, column: 7)
!3261 = !DILocation(line: 101, column: 7, scope: !3252)
!3262 = !DILocation(line: 102, column: 5, scope: !3260)
!3263 = !DILocation(line: 103, column: 21, scope: !3252)
!3264 = !DILocalVariable(name: "n", arg: 1, scope: !3265, file: !550, line: 39, type: !93)
!3265 = distinct !DISubprogram(name: "xmalloc", scope: !550, file: !550, line: 39, type: !3266, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!91, !93}
!3268 = !{!3264, !3269}
!3269 = !DILocalVariable(name: "p", scope: !3265, file: !550, line: 41, type: !91)
!3270 = !DILocation(line: 0, scope: !3265, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 103, column: 10, scope: !3252)
!3272 = !DILocation(line: 41, column: 13, scope: !3265, inlinedAt: !3271)
!3273 = !DILocation(line: 42, column: 8, scope: !3274, inlinedAt: !3271)
!3274 = distinct !DILexicalBlock(scope: !3265, file: !550, line: 42, column: 7)
!3275 = !DILocation(line: 42, column: 15, scope: !3274, inlinedAt: !3271)
!3276 = !DILocation(line: 42, column: 10, scope: !3274, inlinedAt: !3271)
!3277 = !DILocation(line: 43, column: 5, scope: !3274, inlinedAt: !3271)
!3278 = !DILocation(line: 103, column: 3, scope: !3252)
!3279 = !DILocation(line: 0, scope: !3265)
!3280 = !DILocation(line: 41, column: 13, scope: !3265)
!3281 = !DILocation(line: 42, column: 8, scope: !3274)
!3282 = !DILocation(line: 42, column: 15, scope: !3274)
!3283 = !DILocation(line: 42, column: 10, scope: !3274)
!3284 = !DILocation(line: 43, column: 5, scope: !3274)
!3285 = !DILocation(line: 44, column: 3, scope: !3265)
!3286 = distinct !DISubprogram(name: "xnrealloc", scope: !353, file: !353, line: 112, type: !3287, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!91, !91, !93, !93}
!3289 = !{!3290, !3291, !3292}
!3290 = !DILocalVariable(name: "p", arg: 1, scope: !3286, file: !353, line: 112, type: !91)
!3291 = !DILocalVariable(name: "n", arg: 2, scope: !3286, file: !353, line: 112, type: !93)
!3292 = !DILocalVariable(name: "s", arg: 3, scope: !3286, file: !353, line: 112, type: !93)
!3293 = !DILocation(line: 0, scope: !3286)
!3294 = !DILocation(line: 114, column: 7, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3286, file: !353, line: 114, column: 7)
!3296 = !DILocation(line: 114, column: 7, scope: !3286)
!3297 = !DILocation(line: 115, column: 5, scope: !3295)
!3298 = !DILocation(line: 116, column: 25, scope: !3286)
!3299 = !DILocalVariable(name: "p", arg: 1, scope: !3300, file: !550, line: 51, type: !91)
!3300 = distinct !DISubprogram(name: "xrealloc", scope: !550, file: !550, line: 51, type: !3301, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!91, !91, !93}
!3303 = !{!3299, !3304}
!3304 = !DILocalVariable(name: "n", arg: 2, scope: !3300, file: !550, line: 51, type: !93)
!3305 = !DILocation(line: 0, scope: !3300, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 116, column: 10, scope: !3286)
!3307 = !DILocation(line: 53, column: 8, scope: !3308, inlinedAt: !3306)
!3308 = distinct !DILexicalBlock(scope: !3300, file: !550, line: 53, column: 7)
!3309 = !DILocation(line: 53, column: 13, scope: !3308, inlinedAt: !3306)
!3310 = !DILocation(line: 53, column: 10, scope: !3308, inlinedAt: !3306)
!3311 = !DILocation(line: 57, column: 7, scope: !3312, inlinedAt: !3306)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !550, line: 54, column: 5)
!3313 = !DILocation(line: 58, column: 7, scope: !3312, inlinedAt: !3306)
!3314 = !DILocation(line: 61, column: 7, scope: !3300, inlinedAt: !3306)
!3315 = !DILocation(line: 62, column: 8, scope: !3316, inlinedAt: !3306)
!3316 = distinct !DILexicalBlock(scope: !3300, file: !550, line: 62, column: 7)
!3317 = !DILocation(line: 62, column: 13, scope: !3316, inlinedAt: !3306)
!3318 = !DILocation(line: 62, column: 10, scope: !3316, inlinedAt: !3306)
!3319 = !DILocation(line: 63, column: 5, scope: !3316, inlinedAt: !3306)
!3320 = !DILocation(line: 116, column: 3, scope: !3286)
!3321 = !DILocation(line: 0, scope: !3300)
!3322 = !DILocation(line: 53, column: 8, scope: !3308)
!3323 = !DILocation(line: 53, column: 13, scope: !3308)
!3324 = !DILocation(line: 53, column: 10, scope: !3308)
!3325 = !DILocation(line: 57, column: 7, scope: !3312)
!3326 = !DILocation(line: 58, column: 7, scope: !3312)
!3327 = !DILocation(line: 61, column: 7, scope: !3300)
!3328 = !DILocation(line: 62, column: 8, scope: !3316)
!3329 = !DILocation(line: 62, column: 13, scope: !3316)
!3330 = !DILocation(line: 62, column: 10, scope: !3316)
!3331 = !DILocation(line: 63, column: 5, scope: !3316)
!3332 = !DILocation(line: 65, column: 1, scope: !3300)
!3333 = !DILocation(line: 0, scope: !553)
!3334 = !DILocation(line: 176, column: 14, scope: !553)
!3335 = !DILocation(line: 178, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !553, file: !353, line: 178, column: 7)
!3337 = !DILocation(line: 178, column: 7, scope: !553)
!3338 = !DILocation(line: 180, column: 13, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !353, line: 180, column: 11)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !353, line: 179, column: 5)
!3341 = !DILocation(line: 180, column: 11, scope: !3340)
!3342 = !DILocation(line: 188, column: 30, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !353, line: 181, column: 9)
!3344 = !DILocation(line: 189, column: 16, scope: !3343)
!3345 = !DILocation(line: 189, column: 13, scope: !3343)
!3346 = !DILocation(line: 190, column: 9, scope: !3343)
!3347 = !DILocation(line: 191, column: 11, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3340, file: !353, line: 191, column: 11)
!3349 = !DILocation(line: 191, column: 11, scope: !3340)
!3350 = !DILocation(line: 206, column: 7, scope: !553)
!3351 = !DILocation(line: 207, column: 25, scope: !553)
!3352 = !DILocation(line: 0, scope: !3300, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 207, column: 10, scope: !553)
!3354 = !DILocation(line: 53, column: 10, scope: !3308, inlinedAt: !3353)
!3355 = !DILocation(line: 192, column: 9, scope: !3348)
!3356 = !DILocation(line: 200, column: 69, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !353, line: 200, column: 11)
!3358 = distinct !DILexicalBlock(scope: !3336, file: !353, line: 195, column: 5)
!3359 = !DILocation(line: 201, column: 11, scope: !3357)
!3360 = !DILocation(line: 200, column: 11, scope: !3358)
!3361 = !DILocation(line: 202, column: 9, scope: !3357)
!3362 = !DILocation(line: 203, column: 14, scope: !3358)
!3363 = !DILocation(line: 203, column: 18, scope: !3358)
!3364 = !DILocation(line: 203, column: 9, scope: !3358)
!3365 = !DILocation(line: 53, column: 8, scope: !3308, inlinedAt: !3353)
!3366 = !DILocation(line: 57, column: 7, scope: !3312, inlinedAt: !3353)
!3367 = !DILocation(line: 58, column: 7, scope: !3312, inlinedAt: !3353)
!3368 = !DILocation(line: 61, column: 7, scope: !3300, inlinedAt: !3353)
!3369 = !DILocation(line: 62, column: 8, scope: !3316, inlinedAt: !3353)
!3370 = !DILocation(line: 62, column: 13, scope: !3316, inlinedAt: !3353)
!3371 = !DILocation(line: 62, column: 10, scope: !3316, inlinedAt: !3353)
!3372 = !DILocation(line: 63, column: 5, scope: !3316, inlinedAt: !3353)
!3373 = !DILocation(line: 207, column: 3, scope: !553)
!3374 = distinct !DISubprogram(name: "xcharalloc", scope: !353, file: !353, line: 216, type: !2540, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3375)
!3375 = !{!3376}
!3376 = !DILocalVariable(name: "n", arg: 1, scope: !3374, file: !353, line: 216, type: !93)
!3377 = !DILocation(line: 0, scope: !3374)
!3378 = !DILocation(line: 0, scope: !3265, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 218, column: 10, scope: !3374)
!3380 = !DILocation(line: 41, column: 13, scope: !3265, inlinedAt: !3379)
!3381 = !DILocation(line: 42, column: 8, scope: !3274, inlinedAt: !3379)
!3382 = !DILocation(line: 42, column: 15, scope: !3274, inlinedAt: !3379)
!3383 = !DILocation(line: 42, column: 10, scope: !3274, inlinedAt: !3379)
!3384 = !DILocation(line: 43, column: 5, scope: !3274, inlinedAt: !3379)
!3385 = !DILocation(line: 218, column: 3, scope: !3374)
!3386 = distinct !DISubprogram(name: "x2realloc", scope: !550, file: !550, line: 74, type: !3387, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!91, !91, !556}
!3389 = !{!3390, !3391}
!3390 = !DILocalVariable(name: "p", arg: 1, scope: !3386, file: !550, line: 74, type: !91)
!3391 = !DILocalVariable(name: "pn", arg: 2, scope: !3386, file: !550, line: 74, type: !556)
!3392 = !DILocation(line: 0, scope: !3386)
!3393 = !DILocation(line: 0, scope: !553, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 76, column: 10, scope: !3386)
!3395 = !DILocation(line: 176, column: 14, scope: !553, inlinedAt: !3394)
!3396 = !DILocation(line: 178, column: 9, scope: !3336, inlinedAt: !3394)
!3397 = !DILocation(line: 178, column: 7, scope: !553, inlinedAt: !3394)
!3398 = !DILocation(line: 180, column: 13, scope: !3339, inlinedAt: !3394)
!3399 = !DILocation(line: 180, column: 11, scope: !3340, inlinedAt: !3394)
!3400 = !DILocation(line: 191, column: 11, scope: !3348, inlinedAt: !3394)
!3401 = !DILocation(line: 191, column: 11, scope: !3340, inlinedAt: !3394)
!3402 = !DILocation(line: 206, column: 7, scope: !553, inlinedAt: !3394)
!3403 = !DILocation(line: 0, scope: !3300, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 207, column: 10, scope: !553, inlinedAt: !3394)
!3405 = !DILocation(line: 53, column: 10, scope: !3308, inlinedAt: !3404)
!3406 = !DILocation(line: 192, column: 9, scope: !3348, inlinedAt: !3394)
!3407 = !DILocation(line: 201, column: 11, scope: !3357, inlinedAt: !3394)
!3408 = !DILocation(line: 200, column: 11, scope: !3358, inlinedAt: !3394)
!3409 = !DILocation(line: 202, column: 9, scope: !3357, inlinedAt: !3394)
!3410 = !DILocation(line: 203, column: 14, scope: !3358, inlinedAt: !3394)
!3411 = !DILocation(line: 203, column: 18, scope: !3358, inlinedAt: !3394)
!3412 = !DILocation(line: 203, column: 9, scope: !3358, inlinedAt: !3394)
!3413 = !DILocation(line: 53, column: 8, scope: !3308, inlinedAt: !3404)
!3414 = !DILocation(line: 57, column: 7, scope: !3312, inlinedAt: !3404)
!3415 = !DILocation(line: 58, column: 7, scope: !3312, inlinedAt: !3404)
!3416 = !DILocation(line: 61, column: 7, scope: !3300, inlinedAt: !3404)
!3417 = !DILocation(line: 62, column: 8, scope: !3316, inlinedAt: !3404)
!3418 = !DILocation(line: 62, column: 13, scope: !3316, inlinedAt: !3404)
!3419 = !DILocation(line: 62, column: 10, scope: !3316, inlinedAt: !3404)
!3420 = !DILocation(line: 63, column: 5, scope: !3316, inlinedAt: !3404)
!3421 = !DILocation(line: 76, column: 3, scope: !3386)
!3422 = distinct !DISubprogram(name: "xzalloc", scope: !550, file: !550, line: 84, type: !3266, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3423)
!3423 = !{!3424}
!3424 = !DILocalVariable(name: "n", arg: 1, scope: !3422, file: !550, line: 84, type: !93)
!3425 = !DILocation(line: 0, scope: !3422)
!3426 = !DILocalVariable(name: "n", arg: 1, scope: !3427, file: !550, line: 93, type: !93)
!3427 = distinct !DISubprogram(name: "xcalloc", scope: !550, file: !550, line: 93, type: !3253, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3428)
!3428 = !{!3426, !3429, !3430}
!3429 = !DILocalVariable(name: "s", arg: 2, scope: !3427, file: !550, line: 93, type: !93)
!3430 = !DILocalVariable(name: "p", scope: !3427, file: !550, line: 95, type: !91)
!3431 = !DILocation(line: 0, scope: !3427, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 86, column: 10, scope: !3422)
!3433 = !DILocation(line: 100, column: 7, scope: !3434, inlinedAt: !3432)
!3434 = distinct !DILexicalBlock(scope: !3427, file: !550, line: 100, column: 7)
!3435 = !DILocation(line: 101, column: 7, scope: !3434, inlinedAt: !3432)
!3436 = !DILocation(line: 101, column: 18, scope: !3434, inlinedAt: !3432)
!3437 = !DILocation(line: 101, column: 16, scope: !3434, inlinedAt: !3432)
!3438 = !DILocation(line: 100, column: 7, scope: !3427, inlinedAt: !3432)
!3439 = !DILocation(line: 102, column: 5, scope: !3434, inlinedAt: !3432)
!3440 = !DILocation(line: 86, column: 3, scope: !3422)
!3441 = !DILocation(line: 0, scope: !3427)
!3442 = !DILocation(line: 100, column: 7, scope: !3434)
!3443 = !DILocation(line: 101, column: 7, scope: !3434)
!3444 = !DILocation(line: 101, column: 18, scope: !3434)
!3445 = !DILocation(line: 101, column: 16, scope: !3434)
!3446 = !DILocation(line: 100, column: 7, scope: !3427)
!3447 = !DILocation(line: 102, column: 5, scope: !3434)
!3448 = !DILocation(line: 103, column: 3, scope: !3427)
!3449 = distinct !DISubprogram(name: "xmemdup", scope: !550, file: !550, line: 111, type: !3450, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3452)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!91, !356, !93}
!3452 = !{!3453, !3454}
!3453 = !DILocalVariable(name: "p", arg: 1, scope: !3449, file: !550, line: 111, type: !356)
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3449, file: !550, line: 111, type: !93)
!3455 = !DILocation(line: 0, scope: !3449)
!3456 = !DILocation(line: 0, scope: !3265, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 113, column: 18, scope: !3449)
!3458 = !DILocation(line: 41, column: 13, scope: !3265, inlinedAt: !3457)
!3459 = !DILocation(line: 42, column: 8, scope: !3274, inlinedAt: !3457)
!3460 = !DILocation(line: 42, column: 15, scope: !3274, inlinedAt: !3457)
!3461 = !DILocation(line: 42, column: 10, scope: !3274, inlinedAt: !3457)
!3462 = !DILocation(line: 43, column: 5, scope: !3274, inlinedAt: !3457)
!3463 = !DILocalVariable(name: "__dest", arg: 1, scope: !3464, file: !2073, line: 31, type: !3467)
!3464 = distinct !DISubprogram(name: "memcpy", scope: !2073, file: !2073, line: 31, type: !3465, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3469)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!91, !3467, !3468, !93}
!3467 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3468 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !356)
!3469 = !{!3463, !3470, !3471}
!3470 = !DILocalVariable(name: "__src", arg: 2, scope: !3464, file: !2073, line: 31, type: !3468)
!3471 = !DILocalVariable(name: "__len", arg: 3, scope: !3464, file: !2073, line: 31, type: !93)
!3472 = !DILocation(line: 0, scope: !3464, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 113, column: 10, scope: !3449)
!3474 = !DILocation(line: 34, column: 10, scope: !3464, inlinedAt: !3473)
!3475 = !DILocation(line: 113, column: 3, scope: !3449)
!3476 = distinct !DISubprogram(name: "xstrdup", scope: !550, file: !550, line: 119, type: !113, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !549, retainedNodes: !3477)
!3477 = !{!3478}
!3478 = !DILocalVariable(name: "string", arg: 1, scope: !3476, file: !550, line: 119, type: !36)
!3479 = !DILocation(line: 0, scope: !3476)
!3480 = !DILocation(line: 121, column: 27, scope: !3476)
!3481 = !DILocation(line: 121, column: 43, scope: !3476)
!3482 = !DILocation(line: 0, scope: !3449, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 121, column: 10, scope: !3476)
!3484 = !DILocation(line: 0, scope: !3265, inlinedAt: !3485)
!3485 = distinct !DILocation(line: 113, column: 18, scope: !3449, inlinedAt: !3483)
!3486 = !DILocation(line: 41, column: 13, scope: !3265, inlinedAt: !3485)
!3487 = !DILocation(line: 42, column: 8, scope: !3274, inlinedAt: !3485)
!3488 = !DILocation(line: 42, column: 15, scope: !3274, inlinedAt: !3485)
!3489 = !DILocation(line: 42, column: 10, scope: !3274, inlinedAt: !3485)
!3490 = !DILocation(line: 43, column: 5, scope: !3274, inlinedAt: !3485)
!3491 = !DILocation(line: 0, scope: !3464, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 113, column: 10, scope: !3449, inlinedAt: !3483)
!3493 = !DILocation(line: 34, column: 10, scope: !3464, inlinedAt: !3492)
!3494 = !DILocation(line: 121, column: 3, scope: !3476)
!3495 = distinct !DISubprogram(name: "xalloc_die", scope: !571, file: !571, line: 32, type: !120, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !570, retainedNodes: !39)
!3496 = !DILocation(line: 34, column: 10, scope: !3495)
!3497 = !DILocation(line: 34, column: 33, scope: !3495)
!3498 = !DILocation(line: 34, column: 3, scope: !3495)
!3499 = !DILocation(line: 40, column: 3, scope: !3495)
!3500 = distinct !DISubprogram(name: "rpl_calloc", scope: !574, file: !574, line: 42, type: !3253, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !3501)
!3501 = !{!3502, !3503, !3504, !3505}
!3502 = !DILocalVariable(name: "n", arg: 1, scope: !3500, file: !574, line: 42, type: !93)
!3503 = !DILocalVariable(name: "s", arg: 2, scope: !3500, file: !574, line: 42, type: !93)
!3504 = !DILocalVariable(name: "result", scope: !3500, file: !574, line: 44, type: !91)
!3505 = !DILocalVariable(name: "bytes", scope: !3506, file: !574, line: 56, type: !93)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !574, line: 53, column: 5)
!3507 = distinct !DILexicalBlock(scope: !3500, file: !574, line: 47, column: 7)
!3508 = !DILocation(line: 0, scope: !3500)
!3509 = !DILocation(line: 47, column: 9, scope: !3507)
!3510 = !DILocation(line: 47, column: 19, scope: !3507)
!3511 = !DILocation(line: 47, column: 14, scope: !3507)
!3512 = !DILocation(line: 0, scope: !3506)
!3513 = !DILocation(line: 57, column: 21, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3506, file: !574, line: 57, column: 11)
!3515 = !DILocation(line: 57, column: 11, scope: !3506)
!3516 = !DILocation(line: 59, column: 11, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !574, line: 58, column: 9)
!3518 = !DILocation(line: 59, column: 17, scope: !3517)
!3519 = !DILocation(line: 65, column: 12, scope: !3500)
!3520 = !DILocation(line: 72, column: 3, scope: !3500)
!3521 = !DILocation(line: 73, column: 1, scope: !3500)
!3522 = distinct !DISubprogram(name: "rpl_fclose", scope: !577, file: !577, line: 58, type: !3523, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !576, retainedNodes: !3527)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!38, !3525}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1303, line: 7, baseType: !583)
!3527 = !{!3528, !3529, !3530, !3531}
!3528 = !DILocalVariable(name: "fp", arg: 1, scope: !3522, file: !577, line: 58, type: !3525)
!3529 = !DILocalVariable(name: "saved_errno", scope: !3522, file: !577, line: 60, type: !38)
!3530 = !DILocalVariable(name: "fd", scope: !3522, file: !577, line: 61, type: !38)
!3531 = !DILocalVariable(name: "result", scope: !3522, file: !577, line: 62, type: !38)
!3532 = !DILocation(line: 0, scope: !3522)
!3533 = !DILocation(line: 65, column: 8, scope: !3522)
!3534 = !DILocation(line: 66, column: 10, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3522, file: !577, line: 66, column: 7)
!3536 = !DILocation(line: 66, column: 7, scope: !3522)
!3537 = !DILocation(line: 67, column: 12, scope: !3535)
!3538 = !DILocation(line: 67, column: 5, scope: !3535)
!3539 = !DILocation(line: 72, column: 9, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3522, file: !577, line: 72, column: 7)
!3541 = !DILocation(line: 72, column: 23, scope: !3540)
!3542 = !DILocation(line: 72, column: 33, scope: !3540)
!3543 = !DILocation(line: 72, column: 26, scope: !3540)
!3544 = !DILocation(line: 72, column: 59, scope: !3540)
!3545 = !DILocation(line: 73, column: 7, scope: !3540)
!3546 = !DILocation(line: 73, column: 10, scope: !3540)
!3547 = !DILocation(line: 72, column: 7, scope: !3522)
!3548 = !DILocation(line: 100, column: 12, scope: !3522)
!3549 = !DILocation(line: 105, column: 7, scope: !3522)
!3550 = !DILocation(line: 74, column: 19, scope: !3540)
!3551 = !DILocation(line: 105, column: 19, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3522, file: !577, line: 105, column: 7)
!3553 = !DILocation(line: 107, column: 13, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3552, file: !577, line: 106, column: 5)
!3555 = !DILocation(line: 109, column: 5, scope: !3554)
!3556 = !DILocation(line: 112, column: 1, scope: !3522)
!3557 = distinct !DISubprogram(name: "rpl_fflush", scope: !621, file: !621, line: 129, type: !3558, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !620, retainedNodes: !3562)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!38, !3560}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1303, line: 7, baseType: !627)
!3562 = !{!3563}
!3563 = !DILocalVariable(name: "stream", arg: 1, scope: !3557, file: !621, line: 129, type: !3560)
!3564 = !DILocation(line: 0, scope: !3557)
!3565 = !DILocation(line: 150, column: 14, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3557, file: !621, line: 150, column: 7)
!3567 = !DILocation(line: 150, column: 22, scope: !3566)
!3568 = !DILocation(line: 150, column: 27, scope: !3566)
!3569 = !DILocation(line: 150, column: 7, scope: !3557)
!3570 = !DILocation(line: 151, column: 12, scope: !3566)
!3571 = !DILocation(line: 151, column: 5, scope: !3566)
!3572 = !DILocalVariable(name: "fp", arg: 1, scope: !3573, file: !621, line: 41, type: !3560)
!3573 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !621, file: !621, line: 41, type: !3574, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !620, retainedNodes: !3576)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{null, !3560}
!3576 = !{!3572}
!3577 = !DILocation(line: 0, scope: !3573, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 156, column: 3, scope: !3557)
!3579 = !DILocation(line: 43, column: 11, scope: !3580, inlinedAt: !3578)
!3580 = distinct !DILexicalBlock(scope: !3573, file: !621, line: 43, column: 7)
!3581 = !DILocation(line: 43, column: 18, scope: !3580, inlinedAt: !3578)
!3582 = !DILocation(line: 43, column: 7, scope: !3573, inlinedAt: !3578)
!3583 = !DILocation(line: 45, column: 5, scope: !3580, inlinedAt: !3578)
!3584 = !DILocation(line: 158, column: 10, scope: !3557)
!3585 = !DILocation(line: 158, column: 3, scope: !3557)
!3586 = !DILocation(line: 235, column: 1, scope: !3557)
!3587 = distinct !DISubprogram(name: "rpl_fseeko", scope: !662, file: !662, line: 28, type: !3588, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3592)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!38, !3590, !1483, !38}
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1303, line: 7, baseType: !668)
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DILocalVariable(name: "fp", arg: 1, scope: !3587, file: !662, line: 28, type: !3590)
!3594 = !DILocalVariable(name: "offset", arg: 2, scope: !3587, file: !662, line: 28, type: !1483)
!3595 = !DILocalVariable(name: "whence", arg: 3, scope: !3587, file: !662, line: 28, type: !38)
!3596 = !DILocalVariable(name: "pos", scope: !3597, file: !662, line: 117, type: !1483)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !662, line: 113, column: 5)
!3598 = distinct !DILexicalBlock(scope: !3587, file: !662, line: 52, column: 7)
!3599 = !DILocation(line: 0, scope: !3587)
!3600 = !DILocation(line: 52, column: 11, scope: !3598)
!3601 = !{!1357, !1198, i64 16}
!3602 = !DILocation(line: 52, column: 31, scope: !3598)
!3603 = !{!1357, !1198, i64 8}
!3604 = !DILocation(line: 52, column: 24, scope: !3598)
!3605 = !DILocation(line: 53, column: 7, scope: !3598)
!3606 = !DILocation(line: 53, column: 14, scope: !3598)
!3607 = !{!1357, !1198, i64 40}
!3608 = !DILocation(line: 53, column: 35, scope: !3598)
!3609 = !{!1357, !1198, i64 32}
!3610 = !DILocation(line: 53, column: 28, scope: !3598)
!3611 = !DILocation(line: 54, column: 7, scope: !3598)
!3612 = !DILocation(line: 54, column: 14, scope: !3598)
!3613 = !{!1357, !1198, i64 72}
!3614 = !DILocation(line: 54, column: 28, scope: !3598)
!3615 = !DILocation(line: 52, column: 7, scope: !3587)
!3616 = !DILocation(line: 117, column: 26, scope: !3597)
!3617 = !DILocation(line: 117, column: 19, scope: !3597)
!3618 = !DILocation(line: 0, scope: !3597)
!3619 = !DILocation(line: 118, column: 15, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3597, file: !662, line: 118, column: 11)
!3621 = !DILocation(line: 118, column: 11, scope: !3597)
!3622 = !DILocation(line: 129, column: 11, scope: !3597)
!3623 = !DILocation(line: 129, column: 18, scope: !3597)
!3624 = !DILocation(line: 130, column: 11, scope: !3597)
!3625 = !DILocation(line: 130, column: 19, scope: !3597)
!3626 = !{!1357, !1358, i64 144}
!3627 = !DILocation(line: 161, column: 7, scope: !3597)
!3628 = !DILocation(line: 163, column: 10, scope: !3587)
!3629 = !DILocation(line: 163, column: 3, scope: !3587)
!3630 = !DILocation(line: 164, column: 1, scope: !3587)
!3631 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !703, file: !703, line: 86, type: !3632, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3638)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!93, !3634, !36, !93, !3635}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1816, line: 6, baseType: !3637)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !386, line: 21, baseType: !709)
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644, !3645}
!3639 = !DILocalVariable(name: "pwc", arg: 1, scope: !3631, file: !703, line: 86, type: !3634)
!3640 = !DILocalVariable(name: "s", arg: 2, scope: !3631, file: !703, line: 86, type: !36)
!3641 = !DILocalVariable(name: "n", arg: 3, scope: !3631, file: !703, line: 86, type: !93)
!3642 = !DILocalVariable(name: "ps", arg: 4, scope: !3631, file: !703, line: 86, type: !3635)
!3643 = !DILocalVariable(name: "ret", scope: !3631, file: !703, line: 88, type: !93)
!3644 = !DILocalVariable(name: "wc", scope: !3631, file: !703, line: 89, type: !1820)
!3645 = !DILocalVariable(name: "uc", scope: !3646, file: !703, line: 156, type: !1294)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !703, line: 155, column: 5)
!3647 = distinct !DILexicalBlock(scope: !3631, file: !703, line: 154, column: 7)
!3648 = !DILocation(line: 0, scope: !3631)
!3649 = !DILocation(line: 89, column: 3, scope: !3631)
!3650 = !DILocation(line: 105, column: 9, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3631, file: !703, line: 105, column: 7)
!3652 = !DILocation(line: 105, column: 7, scope: !3631)
!3653 = !DILocation(line: 145, column: 9, scope: !3631)
!3654 = !DILocation(line: 154, column: 19, scope: !3647)
!3655 = !DILocation(line: 154, column: 31, scope: !3647)
!3656 = !DILocation(line: 154, column: 26, scope: !3647)
!3657 = !DILocation(line: 154, column: 41, scope: !3647)
!3658 = !DILocation(line: 154, column: 7, scope: !3631)
!3659 = !DILocation(line: 156, column: 26, scope: !3646)
!3660 = !DILocation(line: 0, scope: !3646)
!3661 = !DILocation(line: 157, column: 14, scope: !3646)
!3662 = !DILocation(line: 157, column: 12, scope: !3646)
!3663 = !DILocation(line: 163, column: 1, scope: !3631)
!3664 = distinct !DISubprogram(name: "close_stream", scope: !722, file: !722, line: 56, type: !3665, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3669)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!38, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1303, line: 7, baseType: !728)
!3669 = !{!3670, !3671, !3673, !3674}
!3670 = !DILocalVariable(name: "stream", arg: 1, scope: !3664, file: !722, line: 56, type: !3667)
!3671 = !DILocalVariable(name: "some_pending", scope: !3664, file: !722, line: 58, type: !3672)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!3673 = !DILocalVariable(name: "prev_fail", scope: !3664, file: !722, line: 59, type: !3672)
!3674 = !DILocalVariable(name: "fclose_fail", scope: !3664, file: !722, line: 60, type: !3672)
!3675 = !DILocation(line: 0, scope: !3664)
!3676 = !DILocation(line: 58, column: 30, scope: !3664)
!3677 = !DILocalVariable(name: "__stream", arg: 1, scope: !3678, file: !1338, line: 135, type: !3667)
!3678 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1338, file: !1338, line: 135, type: !3665, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3679)
!3679 = !{!3677}
!3680 = !DILocation(line: 0, scope: !3678, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 59, column: 27, scope: !3664)
!3682 = !DILocation(line: 137, column: 10, scope: !3678, inlinedAt: !3681)
!3683 = !DILocation(line: 59, column: 43, scope: !3664)
!3684 = !DILocation(line: 60, column: 29, scope: !3664)
!3685 = !DILocation(line: 60, column: 45, scope: !3664)
!3686 = !DILocation(line: 70, column: 17, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3664, file: !722, line: 70, column: 7)
!3688 = !DILocation(line: 58, column: 50, scope: !3664)
!3689 = !DILocation(line: 70, column: 33, scope: !3687)
!3690 = !DILocation(line: 70, column: 53, scope: !3687)
!3691 = !DILocation(line: 70, column: 59, scope: !3687)
!3692 = !DILocation(line: 70, column: 7, scope: !3664)
!3693 = !DILocation(line: 72, column: 11, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3687, file: !722, line: 71, column: 5)
!3695 = !DILocation(line: 73, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3694, file: !722, line: 72, column: 11)
!3697 = !DILocation(line: 73, column: 15, scope: !3696)
!3698 = !DILocation(line: 78, column: 1, scope: !3664)
!3699 = distinct !DISubprogram(name: "hard_locale", scope: !760, file: !760, line: 27, type: !719, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3700)
!3700 = !{!3701, !3702}
!3701 = !DILocalVariable(name: "category", arg: 1, scope: !3699, file: !760, line: 27, type: !38)
!3702 = !DILocalVariable(name: "locale", scope: !3699, file: !760, line: 29, type: !3703)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2056, elements: !3704)
!3704 = !{!3705}
!3705 = !DISubrange(count: 257)
!3706 = !DILocation(line: 0, scope: !3699)
!3707 = !DILocation(line: 29, column: 3, scope: !3699)
!3708 = !DILocation(line: 29, column: 8, scope: !3699)
!3709 = !DILocation(line: 31, column: 7, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3699, file: !760, line: 31, column: 7)
!3711 = !DILocation(line: 31, column: 7, scope: !3699)
!3712 = !DILocation(line: 34, column: 12, scope: !3699)
!3713 = !DILocation(line: 34, column: 38, scope: !3699)
!3714 = !DILocation(line: 34, column: 41, scope: !3699)
!3715 = !DILocation(line: 34, column: 66, scope: !3699)
!3716 = !DILocation(line: 35, column: 1, scope: !3699)
!3717 = distinct !DISubprogram(name: "locale_charset", scope: !767, file: !767, line: 831, type: !409, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3718)
!3718 = !{!3719}
!3719 = !DILocalVariable(name: "codeset", scope: !3717, file: !767, line: 833, type: !36)
!3720 = !DILocation(line: 847, column: 13, scope: !3717)
!3721 = !DILocation(line: 0, scope: !3717)
!3722 = !DILocation(line: 911, column: 15, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3717, file: !767, line: 911, column: 7)
!3724 = !DILocation(line: 911, column: 7, scope: !3717)
!3725 = !DILocation(line: 1070, column: 13, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !767, line: 1070, column: 13)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !767, line: 1060, column: 7)
!3728 = distinct !DILexicalBlock(scope: !3717, file: !767, line: 1019, column: 3)
!3729 = !DILocation(line: 1070, column: 24, scope: !3726)
!3730 = !DILocation(line: 1070, column: 13, scope: !3727)
!3731 = !DILocation(line: 1158, column: 3, scope: !3717)
!3732 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1160, file: !1160, line: 269, type: !3733, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1159, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!38, !38, !34, !93}
!3735 = !{!3736, !3737, !3738}
!3736 = !DILocalVariable(name: "category", arg: 1, scope: !3732, file: !1160, line: 269, type: !38)
!3737 = !DILocalVariable(name: "buf", arg: 2, scope: !3732, file: !1160, line: 269, type: !34)
!3738 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3732, file: !1160, line: 269, type: !93)
!3739 = !DILocation(line: 0, scope: !3732)
!3740 = !DILocalVariable(name: "category", arg: 1, scope: !3741, file: !1160, line: 91, type: !38)
!3741 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1160, file: !1160, line: 91, type: !3733, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1159, retainedNodes: !3742)
!3742 = !{!3740, !3743, !3744, !3745, !3746}
!3743 = !DILocalVariable(name: "buf", arg: 2, scope: !3741, file: !1160, line: 91, type: !34)
!3744 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3741, file: !1160, line: 91, type: !93)
!3745 = !DILocalVariable(name: "result", scope: !3741, file: !1160, line: 140, type: !36)
!3746 = !DILocalVariable(name: "length", scope: !3747, file: !1160, line: 154, type: !93)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !1160, line: 153, column: 5)
!3748 = distinct !DILexicalBlock(scope: !3741, file: !1160, line: 142, column: 7)
!3749 = !DILocation(line: 0, scope: !3741, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 274, column: 10, scope: !3732)
!3751 = !DILocalVariable(name: "category", arg: 1, scope: !3752, file: !1160, line: 60, type: !38)
!3752 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1160, file: !1160, line: 60, type: !3753, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1159, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!36, !38}
!3755 = !{!3751, !3756}
!3756 = !DILocalVariable(name: "result", scope: !3752, file: !1160, line: 62, type: !36)
!3757 = !DILocation(line: 0, scope: !3752, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 140, column: 24, scope: !3741, inlinedAt: !3750)
!3759 = !DILocation(line: 62, column: 24, scope: !3752, inlinedAt: !3758)
!3760 = !DILocation(line: 142, column: 14, scope: !3748, inlinedAt: !3750)
!3761 = !DILocation(line: 142, column: 7, scope: !3741, inlinedAt: !3750)
!3762 = !DILocation(line: 145, column: 19, scope: !3763, inlinedAt: !3750)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !1160, line: 145, column: 11)
!3764 = distinct !DILexicalBlock(scope: !3748, file: !1160, line: 143, column: 5)
!3765 = !DILocation(line: 145, column: 11, scope: !3764, inlinedAt: !3750)
!3766 = !DILocation(line: 149, column: 16, scope: !3763, inlinedAt: !3750)
!3767 = !DILocation(line: 149, column: 9, scope: !3763, inlinedAt: !3750)
!3768 = !DILocation(line: 154, column: 23, scope: !3747, inlinedAt: !3750)
!3769 = !DILocation(line: 0, scope: !3747, inlinedAt: !3750)
!3770 = !DILocation(line: 155, column: 18, scope: !3771, inlinedAt: !3750)
!3771 = distinct !DILexicalBlock(scope: !3747, file: !1160, line: 155, column: 11)
!3772 = !DILocation(line: 155, column: 11, scope: !3747, inlinedAt: !3750)
!3773 = !DILocation(line: 157, column: 39, scope: !3774, inlinedAt: !3750)
!3774 = distinct !DILexicalBlock(scope: !3771, file: !1160, line: 156, column: 9)
!3775 = !DILocalVariable(name: "__dest", arg: 1, scope: !3776, file: !2073, line: 31, type: !3467)
!3776 = distinct !DISubprogram(name: "memcpy", scope: !2073, file: !2073, line: 31, type: !3465, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1159, retainedNodes: !3777)
!3777 = !{!3775, !3778, !3779}
!3778 = !DILocalVariable(name: "__src", arg: 2, scope: !3776, file: !2073, line: 31, type: !3468)
!3779 = !DILocalVariable(name: "__len", arg: 3, scope: !3776, file: !2073, line: 31, type: !93)
!3780 = !DILocation(line: 0, scope: !3776, inlinedAt: !3781)
!3781 = distinct !DILocation(line: 157, column: 11, scope: !3774, inlinedAt: !3750)
!3782 = !DILocation(line: 34, column: 10, scope: !3776, inlinedAt: !3781)
!3783 = !DILocation(line: 158, column: 11, scope: !3774, inlinedAt: !3750)
!3784 = !DILocation(line: 162, column: 23, scope: !3785, inlinedAt: !3750)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !1160, line: 162, column: 15)
!3786 = distinct !DILexicalBlock(scope: !3771, file: !1160, line: 161, column: 9)
!3787 = !DILocation(line: 162, column: 15, scope: !3786, inlinedAt: !3750)
!3788 = !DILocation(line: 167, column: 44, scope: !3789, inlinedAt: !3750)
!3789 = distinct !DILexicalBlock(scope: !3785, file: !1160, line: 163, column: 13)
!3790 = !DILocation(line: 0, scope: !3776, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 167, column: 15, scope: !3789, inlinedAt: !3750)
!3792 = !DILocation(line: 34, column: 10, scope: !3776, inlinedAt: !3791)
!3793 = !DILocation(line: 168, column: 15, scope: !3789, inlinedAt: !3750)
!3794 = !DILocation(line: 168, column: 32, scope: !3789, inlinedAt: !3750)
!3795 = !DILocation(line: 169, column: 13, scope: !3789, inlinedAt: !3750)
!3796 = !DILocation(line: 0, scope: !3748, inlinedAt: !3750)
!3797 = !DILocation(line: 274, column: 3, scope: !3732)
!3798 = distinct !DISubprogram(name: "setlocale_null", scope: !1160, file: !1160, line: 301, type: !3753, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1159, retainedNodes: !3799)
!3799 = !{!3800}
!3800 = !DILocalVariable(name: "category", arg: 1, scope: !3798, file: !1160, line: 301, type: !38)
!3801 = !DILocation(line: 0, scope: !3798)
!3802 = !DILocation(line: 0, scope: !3752, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 304, column: 10, scope: !3798)
!3804 = !DILocation(line: 62, column: 24, scope: !3752, inlinedAt: !3803)
!3805 = !DILocation(line: 304, column: 3, scope: !3798)
