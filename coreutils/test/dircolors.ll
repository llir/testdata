; ModuleID = 'coreutils-8.32/src/dircolors.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon.12 }
%union.anon.12 = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [274 x i8] c"Output commands to set the LS_COLORS environment variable.\0A\0ADetermine format of output:\0A  -b, --sh, --bourne-shell    output Bourne shell code to set LS_COLORS\0A  -c, --csh, --c-shell        output C shell code to set LS_COLORS\0A  -p, --print-database        output defaults\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [222 x i8] c"\0AIf FILE is specified, read it to determine which colors to use for which\0Afile types and extensions.  Otherwise, a precompiled database is used.\0AFor details on the format of these files, run 'dircolors --print-database'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dircolors\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bcp\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.12 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [103 x i8] c"the options to output dircolors' internal database and\0Ato select a shell syntax are mutually exclusive\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@G_line = internal constant [4304 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2020 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Below are TERM entries, which can be a glob patterns, to match\00# against the TERM environment variable to determine if it is colorizable.\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM xterm*\00# Below are the color init strings for the basic file types.\00# One can use codes for 256 or more colors supported by modern terminals.\00# The default color codes use the capabilities of an 8 color terminal\00# with some additional attributes as per the following codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # file that is setuid (u+s)\00SETGID 30;43 # file that is setgid (g+s)\00CAPABILITY 30;41 # file with capability\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for files with execute permission:\00EXEC 01;32\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to colorize below. Put the extension, a space, and the color init string.\00# (and any comments you want to add after a '#')\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to colorize scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00 # archives or compressed (bright red)\00.tar 01;31\00.tgz 01;31\00.arc 01;31\00.arj 01;31\00.taz 01;31\00.lha 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.tlz 01;31\00.txz 01;31\00.tzo 01;31\00.t7z 01;31\00.zip 01;31\00.z 01;31\00.dz 01;31\00.gz 01;31\00.lrz 01;31\00.lz 01;31\00.lzo 01;31\00.xz 01;31\00.zst 01;31\00.tzst 01;31\00.bz2 01;31\00.bz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tz 01;31\00.deb 01;31\00.rpm 01;31\00.jar 01;31\00.war 01;31\00.ear 01;31\00.sar 01;31\00.rar 01;31\00.alz 01;31\00.ace 01;31\00.zoo 01;31\00.cpio 01;31\00.7z 01;31\00.rz 01;31\00.cab 01;31\00.wim 01;31\00.swm 01;31\00.dwm 01;31\00.esd 01;31\00# image formats\00.jpg 01;35\00.jpeg 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.webp 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00", align 16, !dbg !347
@.str.44 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"tcsh\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"no SHELL environment variable, and no shell type option given\00", align 1
@lsc_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !345
@.str.115 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.116 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"LS_COLORS='\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"setenv LS_COLORS '\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"';\0Aexport LS_COLORS\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%s:%lu: invalid line;  missing second token\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"EIGHTBIT\00", align 1
@slack_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null], align 16, !dbg !353
@ls_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* null], align 16, !dbg !359
@.str.52 = private unnamed_addr constant [32 x i8] c"%s:%lu: unrecognized keyword %s\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"<internal>\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"ow\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"tw\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"mh\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"ORPHAN\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"CHR\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"DOOR\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"LEFTCODE\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"RIGHTCODE\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"ENDCODE\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"SUID\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"SETUID\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"SGID\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"SETGID\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"STICKY\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"OTHER_WRITABLE\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"OWR\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"STICKY_OTHER_WRITABLE\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"OWT\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"MULTIHARDLINK\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"CLRTOEOL\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"bourne-shell\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"c-shell\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"print-database\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0), align 8, !dbg !364
@.str.118 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !369
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !412
@.str.123 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.124 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !414
@.str.132 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !420
@.str.137 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.138 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.139 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.142, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.143, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.144, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.145, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.147, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.148, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.149, i32 0, i32 0), i8* null], align 16, !dbg !461
@.str.140 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.142 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.143 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.144 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.145 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.146 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.147 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.148 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.149 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !530
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !536
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !538
@.str.11.150 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.151 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.152 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.153 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.154 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.155 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.156 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !545
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !552
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !540
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !554
@.str.163 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.164 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.165 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.166 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.167 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.168 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.169 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.170 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.171 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.172 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.173 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.174 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.175 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.176 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.177 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.178 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.181 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.182 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.183 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.184 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.185 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.186 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.187 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !559
@.str.1.198 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = dso_local local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !567
@.str.1.212 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1.222 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.225 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.226 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !1296 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !1301, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %0, metadata !1300, metadata !DIExpression()), !dbg !1322
  %3 = icmp eq i32 %0, 0, !dbg !1323
  br i1 %3, label %9, label %4, !dbg !1324

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1325, !tbaa !1327
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #20, !dbg !1325
  %7 = load i8*, i8** @program_name, align 8, !dbg !1325, !tbaa !1327
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #20, !dbg !1325
  br label %61, !dbg !1325

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #20, !dbg !1331
  %11 = load i8*, i8** @program_name, align 8, !dbg !1331, !tbaa !1327
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #20, !dbg !1331
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.2, i64 0, i64 0), i32 5) #20, !dbg !1332
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1332, !tbaa !1327
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !1332
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #20, !dbg !1333
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1333, !tbaa !1327
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !1333
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #20, !dbg !1334
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1334, !tbaa !1327
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !1334
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.5, i64 0, i64 0), i32 5) #20, !dbg !1335
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1335, !tbaa !1327
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !1335
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), metadata !1305, metadata !DIExpression()) #20, !dbg !1336
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !1337
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #20, !dbg !1337
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #20, !dbg !1318
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), metadata !1306, metadata !DIExpression()) #20, !dbg !1336
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !1307, metadata !DIExpression()) #20, !dbg !1336
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !1338
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !1307, metadata !DIExpression()) #20, !dbg !1336
  br label %27, !dbg !1339

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !1307, metadata !DIExpression()) #20, !dbg !1336
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #23, !dbg !1340
  %31 = icmp eq i32 %30, 0, !dbg !1340
  br i1 %31, label %37, label %32, !dbg !1339

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !1341
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !1307, metadata !DIExpression()) #20, !dbg !1336
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !1342
  %35 = load i8*, i8** %34, align 8, !dbg !1342, !tbaa !1343
  %36 = icmp eq i8* %35, null, !dbg !1345
  br i1 %36, label %37, label %27, !dbg !1346, !llvm.loop !1347

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1307, metadata !DIExpression()) #20, !dbg !1336
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !1307, metadata !DIExpression()) #20, !dbg !1336
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !1348
  %40 = load i8*, i8** %39, align 8, !dbg !1348, !tbaa !1350
  %41 = icmp eq i8* %40, null, !dbg !1351
  %42 = select i1 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !1352
  call void @llvm.dbg.value(metadata i8* %42, metadata !1306, metadata !DIExpression()) #20, !dbg !1336
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #20, !dbg !1353
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #20, !dbg !1353
  %45 = tail call i8* @setlocale(i32 5, i8* null) #20, !dbg !1354
  call void @llvm.dbg.value(metadata i8* %45, metadata !1314, metadata !DIExpression()) #20, !dbg !1336
  %46 = icmp eq i8* %45, null, !dbg !1355
  br i1 %46, label %54, label %47, !dbg !1357

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #23, !dbg !1358
  %49 = icmp eq i32 %48, 0, !dbg !1358
  br i1 %49, label %54, label %50, !dbg !1359

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #20, !dbg !1360
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1360, !tbaa !1327
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #20, !dbg !1360
  br label %54, !dbg !1362

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #20, !dbg !1363
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #20, !dbg !1363
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #20, !dbg !1364
  %58 = icmp eq i8* %42, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), !dbg !1364
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !1364
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #20, !dbg !1364
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #20, !dbg !1365
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #24, !dbg !1366
  unreachable, !dbg !1366
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !242 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !247 i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !255 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !1367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1372, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8** %1, metadata !1373, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 1, metadata !1374, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 2, metadata !1376, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 0, metadata !1377, metadata !DIExpression()), !dbg !1397
  %3 = load i8*, i8** %1, align 8, !dbg !1398, !tbaa !1327
  tail call void @set_program_name(i8* %3) #20, !dbg !1399
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #20, !dbg !1400
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #20, !dbg !1401
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #20, !dbg !1402
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #20, !dbg !1403
  br label %8, !dbg !1404

8:                                                ; preds = %11, %2
  %9 = phi i8 [ 0, %2 ], [ 1, %11 ]
  %10 = phi i32 [ 2, %2 ], [ %12, %11 ]
  br label %11, !dbg !1404

11:                                               ; preds = %14, %8
  %12 = phi i32 [ %10, %8 ], [ %15, %14 ], !dbg !1405
  call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %9, metadata !1377, metadata !DIExpression()), !dbg !1397
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #20, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %13, metadata !1375, metadata !DIExpression()), !dbg !1397
  switch i32 %13, label %21 [
    i32 -1, label %22
    i32 98, label %14
    i32 99, label %16
    i32 112, label %8
    i32 -130, label %17
    i32 -131, label %18
  ], !dbg !1404, !llvm.loop !1407

14:                                               ; preds = %11, %16
  %15 = phi i32 [ 1, %16 ], [ 0, %11 ]
  br label %11, !dbg !1397, !llvm.loop !1407

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 1, metadata !1376, metadata !DIExpression()), !dbg !1397
  br label %14, !dbg !1409

17:                                               ; preds = %11
  tail call void @usage(i32 0) #25, !dbg !1411
  unreachable, !dbg !1411

18:                                               ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1412, !tbaa !1327
  %20 = load i8*, i8** @Version, align 8, !dbg !1412, !tbaa !1327
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* null) #20, !dbg !1412
  tail call void @exit(i32 0) #24, !dbg !1412
  unreachable, !dbg !1412

21:                                               ; preds = %11
  tail call void @usage(i32 1) #25, !dbg !1413
  unreachable, !dbg !1413

22:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %9, metadata !1377, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %9, metadata !1377, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %9, metadata !1377, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i8 %9, metadata !1377, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i32 %12, metadata !1376, metadata !DIExpression()), !dbg !1397
  %23 = load i32, i32* @optind, align 4, !dbg !1414, !tbaa !1415
  %24 = sub nsw i32 %0, %23, !dbg !1417
  call void @llvm.dbg.value(metadata i32 %24, metadata !1372, metadata !DIExpression()), !dbg !1397
  %25 = sext i32 %23 to i64, !dbg !1418
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !1418
  call void @llvm.dbg.value(metadata i8** %26, metadata !1373, metadata !DIExpression()), !dbg !1397
  %27 = icmp ne i8 %9, 0, !dbg !1419
  %28 = icmp ne i32 %12, 2, !dbg !1421
  %29 = and i1 %27, %28, !dbg !1422
  br i1 %29, label %30, label %32, !dbg !1422

30:                                               ; preds = %22
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.13, i64 0, i64 0), i32 5) #20, !dbg !1423
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31) #20, !dbg !1425
  tail call void @usage(i32 1) #25, !dbg !1426
  unreachable, !dbg !1426

32:                                               ; preds = %22
  %33 = xor i1 %27, true, !dbg !1427
  %34 = zext i1 %33 to i32, !dbg !1427
  %35 = icmp sgt i32 %24, %34, !dbg !1429
  br i1 %35, label %36, label %47, !dbg !1430

36:                                               ; preds = %32
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #20, !dbg !1431
  %38 = zext i1 %33 to i64, !dbg !1433
  %39 = getelementptr inbounds i8*, i8** %26, i64 %38, !dbg !1433
  %40 = load i8*, i8** %39, align 8, !dbg !1433, !tbaa !1327
  %41 = tail call i8* @quote(i8* %40) #20, !dbg !1434
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %37, i8* %41) #20, !dbg !1435
  br i1 %27, label %42, label %46, !dbg !1436

42:                                               ; preds = %36
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1437, !tbaa !1327
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), i32 5) #20, !dbg !1437
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %43, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %44) #20, !dbg !1437
  br label %46, !dbg !1437

46:                                               ; preds = %42, %36
  tail call void @usage(i32 1) #25, !dbg !1439
  unreachable, !dbg !1439

47:                                               ; preds = %32
  br i1 %27, label %48, label %57, !dbg !1440

48:                                               ; preds = %47, %48
  %49 = phi i8* [ %53, %48 ], [ getelementptr inbounds ([4304 x i8], [4304 x i8]* @G_line, i64 0, i64 0), %47 ]
  call void @llvm.dbg.value(metadata i8* %49, metadata !1378, metadata !DIExpression()), !dbg !1441
  %50 = tail call i32 @puts(i8* nonnull dereferenceable(1) %49), !dbg !1442
  %51 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %49) #23, !dbg !1444
  %52 = add i64 %51, 1, !dbg !1445
  %53 = getelementptr inbounds i8, i8* %49, i64 %52, !dbg !1446
  call void @llvm.dbg.value(metadata i8* %53, metadata !1378, metadata !DIExpression()), !dbg !1441
  %54 = ptrtoint i8* %53 to i64, !dbg !1447
  %55 = sub i64 %54, ptrtoint ([4304 x i8]* @G_line to i64), !dbg !1447
  %56 = icmp ult i64 %55, 4304, !dbg !1448
  br i1 %56, label %48, label %138, !dbg !1449, !llvm.loop !1450

57:                                               ; preds = %47
  %58 = icmp eq i32 %12, 2, !dbg !1452
  br i1 %58, label %59, label %75, !dbg !1454

59:                                               ; preds = %57
  %60 = tail call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #20, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %60, metadata !1460, metadata !DIExpression()) #20, !dbg !1463
  %61 = icmp eq i8* %60, null, !dbg !1464
  br i1 %61, label %73, label %62, !dbg !1466

62:                                               ; preds = %59
  %63 = load i8, i8* %60, align 1, !dbg !1467, !tbaa !1468
  %64 = icmp eq i8 %63, 0, !dbg !1469
  br i1 %64, label %73, label %65, !dbg !1470

65:                                               ; preds = %62
  %66 = tail call i8* @last_component(i8* nonnull %60) #23, !dbg !1471
  call void @llvm.dbg.value(metadata i8* %66, metadata !1460, metadata !DIExpression()) #20, !dbg !1463
  %67 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %66, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #23, !dbg !1472
  %68 = icmp eq i32 %67, 0, !dbg !1472
  br i1 %68, label %75, label %69, !dbg !1474

69:                                               ; preds = %65
  %70 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %66, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #23, !dbg !1475
  %71 = icmp eq i32 %70, 0, !dbg !1475
  %72 = zext i1 %71 to i32, !dbg !1476
  br label %75, !dbg !1476

73:                                               ; preds = %62, %59
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i32 5) #20, !dbg !1477
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %74) #20, !dbg !1477
  unreachable, !dbg !1477

75:                                               ; preds = %69, %65, %57
  %76 = phi i32 [ %12, %57 ], [ %72, %69 ], [ 1, %65 ], !dbg !1397
  call void @llvm.dbg.value(metadata i32 %76, metadata !1376, metadata !DIExpression()), !dbg !1397
  %77 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @lsc_obstack, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #20, !dbg !1480
  %78 = icmp eq i32 %24, 0, !dbg !1481
  br i1 %78, label %79, label %81, !dbg !1483

79:                                               ; preds = %75
  %80 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* null, i8* null), !dbg !1484
  call void @llvm.dbg.value(metadata i1 %80, metadata !1374, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i1 %95, metadata !1374, metadata !DIExpression()), !dbg !1397
  br i1 %80, label %104, label %138, !dbg !1485

81:                                               ; preds = %75
  %82 = load i8*, i8** %26, align 8, !dbg !1486, !tbaa !1327
  call void @llvm.dbg.value(metadata i8* %82, metadata !1487, metadata !DIExpression()) #20, !dbg !1493
  %83 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %82, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i64 0, i64 0)) #23, !dbg !1495
  %84 = icmp eq i32 %83, 0, !dbg !1495
  br i1 %84, label %93, label %85, !dbg !1497

85:                                               ; preds = %81
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1498, !tbaa !1327
  %87 = tail call %struct._IO_FILE* @freopen_safer(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0), %struct._IO_FILE* %86) #20, !dbg !1499
  %88 = icmp eq %struct._IO_FILE* %87, null, !dbg !1500
  br i1 %88, label %89, label %93, !dbg !1501

89:                                               ; preds = %85
  %90 = tail call i32* @__errno_location() #26, !dbg !1502
  %91 = load i32, i32* %90, align 4, !dbg !1502, !tbaa !1415
  %92 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %82) #20, !dbg !1504
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %92) #20, !dbg !1505
  br label %138, !dbg !1506

93:                                               ; preds = %85, %81
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1507, !tbaa !1327
  %95 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* %94, i8* %82) #20, !dbg !1508
  call void @llvm.dbg.value(metadata i1 %95, metadata !1492, metadata !DIExpression()) #20, !dbg !1493
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1509, !tbaa !1327
  %97 = tail call i32 @rpl_fclose(%struct._IO_FILE* %96) #20, !dbg !1511
  %98 = icmp eq i32 %97, 0, !dbg !1512
  br i1 %98, label %103, label %99, !dbg !1513

99:                                               ; preds = %93
  %100 = tail call i32* @__errno_location() #26, !dbg !1514
  %101 = load i32, i32* %100, align 4, !dbg !1514, !tbaa !1415
  %102 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %82) #20, !dbg !1516
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %102) #20, !dbg !1517
  br label %138, !dbg !1518

103:                                              ; preds = %93
  call void @llvm.dbg.value(metadata i1 %95, metadata !1374, metadata !DIExpression()), !dbg !1397
  br i1 %95, label %104, label %138, !dbg !1485

104:                                              ; preds = %79, %103
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1385, metadata !DIExpression()), !dbg !1519
  %105 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1520, !tbaa !1521
  %106 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2), align 8, !dbg !1520, !tbaa !1524
  %107 = ptrtoint i8* %105 to i64, !dbg !1520
  %108 = ptrtoint i8* %106 to i64, !dbg !1520
  %109 = sub i64 %107, %108, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %109, metadata !1381, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1388, metadata !DIExpression()), !dbg !1526
  call void @llvm.dbg.value(metadata i8* %106, metadata !1390, metadata !DIExpression()), !dbg !1526
  %110 = icmp eq i8* %105, %106, !dbg !1527
  br i1 %110, label %111, label %114, !dbg !1529

111:                                              ; preds = %104
  %112 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !1527
  %113 = or i8 %112, 2, !dbg !1527
  store i8 %113, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !1527
  br label %114, !dbg !1527

114:                                              ; preds = %111, %104
  %115 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 6), align 8, !dbg !1529, !tbaa !1530
  %116 = add i64 %115, %107, !dbg !1529
  %117 = xor i64 %115, -1, !dbg !1529
  %118 = and i64 %116, %117, !dbg !1529
  %119 = getelementptr inbounds i8, i8* null, i64 %118, !dbg !1529
  %120 = load i64, i64* bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 1) to i64*), align 8, !dbg !1531, !tbaa !1533
  %121 = ptrtoint i8* %119 to i64, !dbg !1531
  %122 = sub i64 %121, %120, !dbg !1531
  %123 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1531, !tbaa !1534
  %124 = ptrtoint i8* %123 to i64, !dbg !1531
  %125 = sub i64 %124, %120, !dbg !1531
  %126 = icmp ugt i64 %122, %125, !dbg !1531
  %127 = select i1 %126, i8* %123, i8* %119, !dbg !1529
  store i8* %127, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1526
  %128 = ptrtoint i8* %127 to i64, !dbg !1529
  store i64 %128, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2) to i64*), align 8, !dbg !1529, !tbaa !1524
  call void @llvm.dbg.value(metadata i8* %106, metadata !1387, metadata !DIExpression()), !dbg !1525
  %129 = icmp eq i32 %76, 0, !dbg !1535
  %130 = select i1 %129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), !dbg !1537
  %131 = select i1 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), !dbg !1537
  call void @llvm.dbg.value(metadata i8* %131, metadata !1392, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i8* %130, metadata !1391, metadata !DIExpression()), !dbg !1525
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1538, !tbaa !1327
  %133 = tail call i32 @fputs_unlocked(i8* %130, %struct._IO_FILE* %132), !dbg !1538
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1539, !tbaa !1327
  %135 = tail call i64 @fwrite_unlocked(i8* %106, i64 1, i64 %109, %struct._IO_FILE* %134), !dbg !1539
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1540, !tbaa !1327
  %137 = tail call i32 @fputs_unlocked(i8* %131, %struct._IO_FILE* %136), !dbg !1540
  br label %138, !dbg !1541

138:                                              ; preds = %48, %89, %99, %79, %103, %114
  %139 = phi i32 [ 0, %114 ], [ 1, %103 ], [ 1, %79 ], [ 1, %99 ], [ 1, %89 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1374, metadata !DIExpression()), !dbg !1397
  ret i32 %139, !dbg !1542
}

; Function Attrs: nounwind
declare !dbg !259 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !262 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !265 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !272 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !291 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !299 i32 @puts(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !313 i8* @getenv(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare !dbg !316 void @free(i8* nocapture) #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* %0, i8* %1) unnamed_addr #8 !dbg !12 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !82, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %1, metadata !83, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4304 x i8], [4304 x i8]* @G_line, i64 0, i64 0), metadata !85, metadata !DIExpression()), !dbg !1543
  %5 = bitcast i8** %3 to i8*, !dbg !1544
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #20, !dbg !1544
  call void @llvm.dbg.value(metadata i8* null, metadata !86, metadata !DIExpression()), !dbg !1543
  store i8* null, i8** %3, align 8, !dbg !1545, !tbaa !1327
  %6 = bitcast i64* %4 to i8*, !dbg !1546
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #20, !dbg !1546
  call void @llvm.dbg.value(metadata i64 0, metadata !87, metadata !DIExpression()), !dbg !1543
  store i64 0, i64* %4, align 8, !dbg !1547, !tbaa !1548
  call void @llvm.dbg.value(metadata i8 1, metadata !90, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32 3, metadata !91, metadata !DIExpression()), !dbg !1543
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #20, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %7, metadata !89, metadata !DIExpression()), !dbg !1543
  %8 = icmp eq i8* %7, null, !dbg !1550
  br i1 %8, label %12, label %9, !dbg !1552

9:                                                ; preds = %2
  %10 = load i8, i8* %7, align 1, !dbg !1553, !tbaa !1468
  %11 = icmp eq i8 %10, 0, !dbg !1554
  br i1 %11, label %12, label %13, !dbg !1555

12:                                               ; preds = %9, %2
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), metadata !89, metadata !DIExpression()), !dbg !1543
  br label %13, !dbg !1556

13:                                               ; preds = %12, %9
  %14 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %12 ], [ %7, %9 ], !dbg !1543
  call void @llvm.dbg.value(metadata i8* %14, metadata !89, metadata !DIExpression()), !dbg !1543
  %15 = icmp eq %struct._IO_FILE* %0, null, !dbg !1557
  %16 = icmp eq i8* %1, null, !dbg !1559
  br label %17, !dbg !1562

17:                                               ; preds = %249, %13
  %18 = phi i32 [ %250, %249 ], [ 3, %13 ]
  %19 = phi i8 [ %251, %249 ], [ 1, %13 ]
  %20 = phi i8* [ %43, %249 ], [ getelementptr inbounds ([4304 x i8], [4304 x i8]* @G_line, i64 0, i64 0), %13 ]
  %21 = phi i64 [ %29, %249 ], [ 0, %13 ]
  br label %22, !dbg !1563

22:                                               ; preds = %17, %113
  %23 = phi i8 [ %19, %17 ], [ 0, %113 ]
  %24 = phi i8* [ %20, %17 ], [ %43, %113 ]
  %25 = phi i64 [ %21, %17 ], [ %29, %113 ]
  br label %26, !dbg !1563

26:                                               ; preds = %56, %22
  %27 = phi i8* [ %24, %22 ], [ %43, %56 ], !dbg !1564
  %28 = phi i64 [ %25, %22 ], [ %29, %56 ], !dbg !1543
  call void @llvm.dbg.value(metadata i64 %28, metadata !84, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %27, metadata !85, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32 %18, metadata !91, metadata !DIExpression()), !dbg !1543
  %29 = add i64 %28, 1, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %29, metadata !84, metadata !DIExpression()), !dbg !1543
  br i1 %15, label %35, label %30, !dbg !1563

30:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8** %3, metadata !86, metadata !DIExpression(DW_OP_deref)), !dbg !1543
  call void @llvm.dbg.value(metadata i64* %4, metadata !87, metadata !DIExpression(DW_OP_deref)), !dbg !1543
  call void @llvm.dbg.value(metadata i8** %3, metadata !1566, metadata !DIExpression()) #20, !dbg !1575
  call void @llvm.dbg.value(metadata i64* %4, metadata !1573, metadata !DIExpression()) #20, !dbg !1575
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1574, metadata !DIExpression()) #20, !dbg !1575
  %31 = call i64 @__getdelim(i8** nonnull %3, i64* nonnull %4, i32 10, %struct._IO_FILE* nonnull %0) #20, !dbg !1579
  %32 = icmp slt i64 %31, 1, !dbg !1580
  %33 = load i8*, i8** %3, align 8, !dbg !1581, !tbaa !1327
  call void @llvm.dbg.value(metadata i8* %33, metadata !86, metadata !DIExpression()), !dbg !1543
  br i1 %32, label %34, label %41, !dbg !1582

34:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1543
  call void @free(i8* %33) #20, !dbg !1583
  br label %252, !dbg !1585

35:                                               ; preds = %26
  %36 = icmp eq i8* %27, getelementptr inbounds ([4304 x i8], [4304 x i8]* @G_line, i64 1, i64 0), !dbg !1586
  br i1 %36, label %252, label %37, !dbg !1589

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %27, metadata !88, metadata !DIExpression()), !dbg !1543
  %38 = call i64 @strlen(i8* nonnull dereferenceable(1) %27) #23, !dbg !1590
  %39 = add i64 %38, 1, !dbg !1591
  %40 = getelementptr inbounds i8, i8* %27, i64 %39, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %40, metadata !85, metadata !DIExpression()), !dbg !1543
  br label %41

41:                                               ; preds = %30, %37
  %42 = phi i8* [ %27, %37 ], [ %33, %30 ], !dbg !1557
  %43 = phi i8* [ %40, %37 ], [ %27, %30 ], !dbg !1543
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %42, metadata !88, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %42, metadata !1593, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %42, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %44 = tail call i16** @__ctype_b_loc() #26, !dbg !1605
  %45 = load i16*, i16** %44, align 8, !dbg !1605, !tbaa !1327
  br label %46, !dbg !1608

46:                                               ; preds = %46, %41
  %47 = phi i8* [ %42, %41 ], [ %54, %46 ], !dbg !1609
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %48 = load i8, i8* %47, align 1, !dbg !1610, !tbaa !1468
  %49 = zext i8 %48 to i64, !dbg !1610
  %50 = getelementptr inbounds i16, i16* %45, i64 %49, !dbg !1610
  %51 = load i16, i16* %50, align 2, !dbg !1610, !tbaa !1611
  %52 = and i16 %51, 8192, !dbg !1610
  %53 = icmp eq i16 %52, 0, !dbg !1613
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1614
  call void @llvm.dbg.value(metadata i8* %54, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  br i1 %53, label %55, label %46, !dbg !1613, !llvm.loop !1615

55:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %47, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  switch i8 %48, label %57 [
    i8 0, label %56
    i8 35, label %56
  ], !dbg !1617

56:                                               ; preds = %55, %55, %108
  br label %26, !dbg !1543, !llvm.loop !1619

57:                                               ; preds = %55, %57
  %58 = phi i8* [ %59, %57 ], [ %47, %55 ]
  %59 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1621
  %60 = load i8, i8* %59, align 1, !dbg !1623, !tbaa !1468
  %61 = zext i8 %60 to i64, !dbg !1603
  %62 = getelementptr inbounds i16, i16* %45, i64 %61, !dbg !1603
  %63 = load i16, i16* %62, align 2, !dbg !1623, !tbaa !1611
  call void @llvm.dbg.value(metadata i8* %59, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %64 = and i16 %63, 8192, !dbg !1623
  %65 = icmp ne i16 %64, 0, !dbg !1623
  %66 = icmp eq i8 %60, 0, !dbg !1624
  %67 = or i1 %66, %65, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %59, metadata !1600, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #20, !dbg !1603
  br i1 %67, label %68, label %57, !dbg !1625, !llvm.loop !1626

68:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %59, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %59, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %59, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %59, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %69 = ptrtoint i8* %59 to i64, !dbg !1629
  %70 = ptrtoint i8* %47 to i64, !dbg !1629
  %71 = sub i64 %69, %70, !dbg !1629
  %72 = call noalias i8* @xstrndup(i8* nonnull %47, i64 %71) #20, !dbg !1630
  %73 = load i8, i8* %59, align 1, !dbg !1631, !tbaa !1468
  %74 = icmp eq i8 %73, 0, !dbg !1633
  br i1 %74, label %108, label %75, !dbg !1634

75:                                               ; preds = %68
  %76 = load i16*, i16** %44, align 8, !dbg !1603, !tbaa !1327
  br label %77, !dbg !1635

77:                                               ; preds = %77, %75
  %78 = phi i8* [ %79, %77 ], [ %59, %75 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8* %78, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %79, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %80 = load i8, i8* %79, align 1, !dbg !1638, !tbaa !1468
  %81 = zext i8 %80 to i64, !dbg !1638
  %82 = getelementptr inbounds i16, i16* %76, i64 %81, !dbg !1638
  %83 = load i16, i16* %82, align 2, !dbg !1638, !tbaa !1611
  %84 = and i16 %83, 8192, !dbg !1638
  %85 = icmp eq i16 %84, 0, !dbg !1639
  br i1 %85, label %86, label %77, !dbg !1639, !llvm.loop !1640

86:                                               ; preds = %77
  switch i8 %80, label %87 [
    i8 0, label %108
    i8 35, label %108
  ], !dbg !1642

87:                                               ; preds = %86, %91
  %88 = phi i8 [ %93, %91 ], [ %80, %86 ], !dbg !1644
  %89 = phi i8* [ %92, %91 ], [ %79, %86 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8* %89, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  switch i8 %88, label %91 [
    i8 35, label %90
    i8 0, label %90
  ], !dbg !1645

90:                                               ; preds = %87, %87
  call void @llvm.dbg.value(metadata i8* %89, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %89, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %89, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %89, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  br label %94, !dbg !1646

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1648
  call void @llvm.dbg.value(metadata i8* %92, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %93 = load i8, i8* %92, align 1, !dbg !1644, !tbaa !1468
  br label %87, !dbg !1645, !llvm.loop !1649

94:                                               ; preds = %90, %94
  %95 = phi i8* [ %96, %94 ], [ %89, %90 ]
  %96 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %96, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %97 = load i8, i8* %96, align 1, !dbg !1652, !tbaa !1468
  %98 = zext i8 %97 to i64, !dbg !1652
  %99 = getelementptr inbounds i16, i16* %76, i64 %98, !dbg !1652
  %100 = load i16, i16* %99, align 2, !dbg !1652, !tbaa !1611
  %101 = and i16 %100, 8192, !dbg !1652
  %102 = icmp eq i16 %101, 0, !dbg !1646
  br i1 %102, label %103, label %94, !dbg !1646, !llvm.loop !1654

103:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i8* %95, metadata !1600, metadata !DIExpression()) #20, !dbg !1603
  %104 = ptrtoint i8* %95 to i64, !dbg !1656
  %105 = ptrtoint i8* %79 to i64, !dbg !1656
  %106 = sub i64 %104, %105, !dbg !1656
  %107 = call noalias i8* @xstrndup(i8* nonnull %79, i64 %106) #20, !dbg !1657
  br label %108, !dbg !1658

108:                                              ; preds = %68, %86, %86, %103
  %109 = phi i8* [ null, %68 ], [ %107, %103 ], [ null, %86 ], [ null, %86 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1659
  %110 = icmp eq i8* %72, null, !dbg !1660
  br i1 %110, label %56, label %111, !dbg !1662

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1659
  %112 = icmp eq i8* %109, null, !dbg !1663
  br i1 %112, label %113, label %116, !dbg !1665

113:                                              ; preds = %111
  %114 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 5) #20, !dbg !1666
  %115 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #20, !dbg !1668
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %114, i8* %115, i64 %29) #20, !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !90, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1659
  call void @free(i8* nonnull %72) #20, !dbg !1670
  br label %22, !dbg !1671, !llvm.loop !1619

116:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8 0, metadata !95, metadata !DIExpression()), !dbg !1659
  %117 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #23, !dbg !1672
  %118 = icmp eq i32 %117, 0, !dbg !1673
  br i1 %118, label %119, label %125, !dbg !1674

119:                                              ; preds = %116
  %120 = call i32 @fnmatch(i8* nonnull %109, i8* %14, i32 0) #20, !dbg !1675
  %121 = icmp eq i32 %120, 0, !dbg !1678
  br i1 %121, label %249, label %122, !dbg !1679

122:                                              ; preds = %119
  %123 = icmp eq i32 %18, 2, !dbg !1680
  %124 = select i1 %123, i32 2, i32 0, !dbg !1682
  br label %249, !dbg !1682

125:                                              ; preds = %116
  %126 = icmp eq i32 %18, 2, !dbg !1683
  %127 = select i1 %126, i32 1, i32 %18, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %127, metadata !91, metadata !DIExpression()), !dbg !1543
  %128 = icmp eq i32 %127, 0, !dbg !1686
  br i1 %128, label %249, label %129, !dbg !1687

129:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1659
  %130 = load i8, i8* %72, align 1, !dbg !1688, !tbaa !1468
  switch i8 %130, label %178 [
    i8 46, label %131
    i8 42, label %159
  ], !dbg !1689

131:                                              ; preds = %129
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !96, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !154, metadata !DIExpression()), !dbg !1691
  %132 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1692, !tbaa !1534
  %133 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1692, !tbaa !1521
  %134 = icmp eq i64 %132, %133, !dbg !1693
  %135 = inttoptr i64 %133 to i8*, !dbg !1694
  br i1 %134, label %136, label %138, !dbg !1694

136:                                              ; preds = %131
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1693
  %137 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1694, !tbaa !1521
  br label %138, !dbg !1693

138:                                              ; preds = %136, %131
  %139 = phi i8* [ %137, %136 ], [ %135, %131 ], !dbg !1694
  %140 = getelementptr inbounds i8, i8* %139, i64 1, !dbg !1694
  store i8* %140, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1694, !tbaa !1521
  store i8 42, i8* %139, align 1, !dbg !1694, !tbaa !1468
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1659
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1695
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !159, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !161, metadata !DIExpression()), !dbg !1697
  %141 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1698, !tbaa !1534
  %142 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1698, !tbaa !1521
  %143 = icmp eq i64 %141, %142, !dbg !1699
  %144 = inttoptr i64 %142 to i8*, !dbg !1700
  br i1 %143, label %145, label %147, !dbg !1700

145:                                              ; preds = %138
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1699
  %146 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1700, !tbaa !1521
  br label %147, !dbg !1699

147:                                              ; preds = %145, %138
  %148 = phi i8* [ %146, %145 ], [ %144, %138 ], !dbg !1700
  %149 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !1700
  store i8* %149, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1700, !tbaa !1521
  store i8 61, i8* %148, align 1, !dbg !1700, !tbaa !1468
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1659
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1701
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !164, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !166, metadata !DIExpression()), !dbg !1703
  %150 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1704, !tbaa !1534
  %151 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1704, !tbaa !1521
  %152 = icmp eq i64 %150, %151, !dbg !1705
  %153 = inttoptr i64 %151 to i8*, !dbg !1706
  br i1 %152, label %154, label %156, !dbg !1706

154:                                              ; preds = %147
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1705
  %155 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1706, !tbaa !1521
  br label %156, !dbg !1705

156:                                              ; preds = %154, %147
  %157 = phi i8* [ %155, %154 ], [ %153, %147 ], !dbg !1706
  %158 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !1706
  store i8* %158, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1706, !tbaa !1521
  store i8 58, i8* %157, align 1, !dbg !1706, !tbaa !1468
  br label %249, !dbg !1707

159:                                              ; preds = %129
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1708
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !169, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !173, metadata !DIExpression()), !dbg !1710
  %160 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1711, !tbaa !1534
  %161 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1711, !tbaa !1521
  %162 = icmp eq i64 %160, %161, !dbg !1712
  %163 = inttoptr i64 %161 to i8*, !dbg !1713
  br i1 %162, label %164, label %166, !dbg !1713

164:                                              ; preds = %159
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1712
  %165 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1713, !tbaa !1521
  br label %166, !dbg !1712

166:                                              ; preds = %164, %159
  %167 = phi i8* [ %165, %164 ], [ %163, %159 ], !dbg !1713
  %168 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !1713
  store i8* %168, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1713, !tbaa !1521
  store i8 61, i8* %167, align 1, !dbg !1713, !tbaa !1468
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1659
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1714
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !176, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !178, metadata !DIExpression()), !dbg !1716
  %169 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1717, !tbaa !1534
  %170 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1717, !tbaa !1521
  %171 = icmp eq i64 %169, %170, !dbg !1718
  %172 = inttoptr i64 %170 to i8*, !dbg !1719
  br i1 %171, label %173, label %175, !dbg !1719

173:                                              ; preds = %166
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1718
  %174 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1719, !tbaa !1521
  br label %175, !dbg !1718

175:                                              ; preds = %173, %166
  %176 = phi i8* [ %174, %173 ], [ %172, %166 ], !dbg !1719
  %177 = getelementptr inbounds i8, i8* %176, i64 1, !dbg !1719
  store i8* %177, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1719, !tbaa !1521
  store i8 58, i8* %176, align 1, !dbg !1719, !tbaa !1468
  br label %249, !dbg !1720

178:                                              ; preds = %129
  %179 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0)) #23, !dbg !1721
  %180 = icmp eq i32 %179, 0, !dbg !1722
  br i1 %180, label %249, label %181, !dbg !1723

181:                                              ; preds = %178
  %182 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0)) #23, !dbg !1724
  %183 = icmp eq i32 %182, 0, !dbg !1725
  br i1 %183, label %249, label %184, !dbg !1726

184:                                              ; preds = %181
  %185 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0)) #23, !dbg !1727
  %186 = icmp eq i32 %185, 0, !dbg !1728
  br i1 %186, label %249, label %189, !dbg !1729

187:                                              ; preds = %189
  call void @llvm.dbg.value(metadata i64 %195, metadata !181, metadata !DIExpression()), !dbg !1730
  %188 = icmp eq i64 %195, 37, !dbg !1731
  br i1 %188, label %238, label %189, !dbg !1731, !llvm.loop !1733

189:                                              ; preds = %184, %187
  %190 = phi i64 [ %195, %187 ], [ 0, %184 ]
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1730
  %191 = getelementptr inbounds [38 x i8*], [38 x i8*]* @slack_codes, i64 0, i64 %190, !dbg !1735
  %192 = load i8*, i8** %191, align 8, !dbg !1735, !tbaa !1327
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1659
  %193 = call i32 @c_strcasecmp(i8* nonnull %72, i8* %192) #23, !dbg !1737
  %194 = icmp eq i32 %193, 0, !dbg !1739
  %195 = add nuw nsw i64 %190, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i64 %195, metadata !181, metadata !DIExpression()), !dbg !1730
  br i1 %194, label %196, label %187, !dbg !1741

196:                                              ; preds = %189
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !184, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !189, metadata !DIExpression()), !dbg !1743
  %197 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1744, !tbaa !1534
  %198 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1744, !tbaa !1521
  %199 = icmp eq i64 %197, %198, !dbg !1745
  %200 = inttoptr i64 %198 to i8*, !dbg !1746
  br i1 %199, label %201, label %203, !dbg !1746

201:                                              ; preds = %196
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1745
  %202 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1746, !tbaa !1521
  br label %203, !dbg !1745

203:                                              ; preds = %201, %196
  %204 = phi i8* [ %202, %201 ], [ %200, %196 ], !dbg !1746
  %205 = getelementptr inbounds [38 x i8*], [38 x i8*]* @ls_codes, i64 0, i64 %190, !dbg !1746
  %206 = load i8*, i8** %205, align 8, !dbg !1746, !tbaa !1327
  %207 = load i8, i8* %206, align 1, !dbg !1746, !tbaa !1468
  %208 = getelementptr inbounds i8, i8* %204, i64 1, !dbg !1746
  store i8* %208, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1746, !tbaa !1521
  store i8 %207, i8* %204, align 1, !dbg !1746, !tbaa !1468
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !192, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !194, metadata !DIExpression()), !dbg !1748
  %209 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1749, !tbaa !1534
  %210 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1749, !tbaa !1521
  %211 = icmp eq i64 %209, %210, !dbg !1750
  %212 = inttoptr i64 %210 to i8*, !dbg !1751
  br i1 %211, label %213, label %215, !dbg !1751

213:                                              ; preds = %203
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1750
  %214 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1751, !tbaa !1521
  br label %215, !dbg !1750

215:                                              ; preds = %213, %203
  %216 = phi i8* [ %214, %213 ], [ %212, %203 ], !dbg !1751
  %217 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !1751
  %218 = load i8, i8* %217, align 1, !dbg !1751, !tbaa !1468
  %219 = getelementptr inbounds i8, i8* %216, i64 1, !dbg !1751
  store i8* %219, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1751, !tbaa !1521
  store i8 %218, i8* %216, align 1, !dbg !1751, !tbaa !1468
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !197, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !199, metadata !DIExpression()), !dbg !1753
  %220 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1754, !tbaa !1534
  %221 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1754, !tbaa !1521
  %222 = icmp eq i64 %220, %221, !dbg !1755
  %223 = inttoptr i64 %221 to i8*, !dbg !1756
  br i1 %222, label %224, label %226, !dbg !1756

224:                                              ; preds = %215
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1755
  %225 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1756, !tbaa !1521
  br label %226, !dbg !1755

226:                                              ; preds = %224, %215
  %227 = phi i8* [ %225, %224 ], [ %223, %215 ], !dbg !1756
  %228 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !1756
  store i8* %228, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1756, !tbaa !1521
  store i8 61, i8* %227, align 1, !dbg !1756, !tbaa !1468
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1659
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1757
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !202, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !204, metadata !DIExpression()), !dbg !1759
  %229 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1760, !tbaa !1534
  %230 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1760, !tbaa !1521
  %231 = icmp eq i64 %229, %230, !dbg !1761
  %232 = inttoptr i64 %230 to i8*, !dbg !1762
  br i1 %231, label %233, label %235, !dbg !1762

233:                                              ; preds = %226
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1761
  %234 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1762, !tbaa !1521
  br label %235, !dbg !1761

235:                                              ; preds = %233, %226
  %236 = phi i8* [ %234, %233 ], [ %232, %226 ], !dbg !1762
  %237 = getelementptr inbounds i8, i8* %236, i64 1, !dbg !1762
  store i8* %237, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1762, !tbaa !1521
  store i8 58, i8* %236, align 1, !dbg !1762, !tbaa !1468
  br label %249, !dbg !1763

238:                                              ; preds = %187
  call void @llvm.dbg.value(metadata i32 %127, metadata !91, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8 undef, metadata !95, metadata !DIExpression()), !dbg !1659
  %239 = add i32 %127, -1, !dbg !1764
  %240 = icmp ult i32 %239, 2, !dbg !1764
  br i1 %240, label %241, label %249, !dbg !1765

241:                                              ; preds = %238
  %242 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 5) #20, !dbg !1766
  br i1 %16, label %245, label %243, !dbg !1767

243:                                              ; preds = %241
  %244 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %1) #20, !dbg !1768
  br label %247, !dbg !1767

245:                                              ; preds = %241
  %246 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32 5) #20, !dbg !1769
  br label %247, !dbg !1767

247:                                              ; preds = %245, %243
  %248 = phi i8* [ %244, %243 ], [ %246, %245 ], !dbg !1767
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1659
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %242, i8* %248, i64 %29, i8* nonnull %72) #20, !dbg !1770
  call void @llvm.dbg.value(metadata i8 0, metadata !90, metadata !DIExpression()), !dbg !1543
  br label %249, !dbg !1771

249:                                              ; preds = %125, %235, %122, %119, %184, %181, %178, %175, %156, %247, %238
  %250 = phi i32 [ %127, %247 ], [ %127, %238 ], [ 0, %125 ], [ %127, %235 ], [ %124, %122 ], [ 2, %119 ], [ %127, %184 ], [ %127, %181 ], [ %127, %178 ], [ %127, %175 ], [ %127, %156 ]
  %251 = phi i8 [ 0, %247 ], [ %23, %238 ], [ %23, %125 ], [ %23, %235 ], [ %23, %122 ], [ %23, %119 ], [ %23, %184 ], [ %23, %181 ], [ %23, %178 ], [ %23, %175 ], [ %23, %156 ], !dbg !1543
  call void @llvm.dbg.value(metadata i8 %251, metadata !90, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1659
  call void @free(i8* %72) #20, !dbg !1772
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1659
  call void @free(i8* %109) #20, !dbg !1773
  br label %17, !dbg !1620

252:                                              ; preds = %35, %34
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1543
  %253 = and i8 %23, 1, !dbg !1774
  %254 = icmp ne i8 %253, 0, !dbg !1774
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #20, !dbg !1775
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #20, !dbg !1775
  ret i1 %254, !dbg !1776
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !308 i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #4

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #10

declare !dbg !324 i32 @fnmatch(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @append_quoted(i8* nocapture readonly %0) unnamed_addr #8 !dbg !1777 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1779, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 1, metadata !1780, metadata !DIExpression()), !dbg !1809
  %2 = load i8, i8* %0, align 1, !dbg !1810, !tbaa !1468
  %3 = icmp eq i8 %2, 0, !dbg !1811
  br i1 %3, label %68, label %4, !dbg !1812

4:                                                ; preds = %1, %61
  %5 = phi i8 [ %66, %61 ], [ %2, %1 ]
  %6 = phi i8* [ %65, %61 ], [ %0, %1 ]
  %7 = phi i8 [ %54, %61 ], [ 1, %1 ]
  call void @llvm.dbg.value(metadata i8* %6, metadata !1779, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %7, metadata !1780, metadata !DIExpression()), !dbg !1809
  %8 = sext i8 %5 to i32, !dbg !1810
  switch i32 %8, label %53 [
    i32 39, label %9
    i32 92, label %37
    i32 94, label %37
    i32 58, label %40
    i32 61, label %40
  ], !dbg !1813

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1781, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1785, metadata !DIExpression()), !dbg !1815
  %10 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1816, !tbaa !1534
  %11 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1816, !tbaa !1521
  %12 = icmp eq i64 %10, %11, !dbg !1817
  %13 = inttoptr i64 %11 to i8*, !dbg !1818
  br i1 %12, label %14, label %16, !dbg !1818

14:                                               ; preds = %9
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1817
  %15 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1818, !tbaa !1521
  br label %16, !dbg !1817

16:                                               ; preds = %14, %9
  %17 = phi i8* [ %15, %14 ], [ %13, %9 ], !dbg !1818
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1818
  store i8* %18, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1818, !tbaa !1521
  store i8 39, i8* %17, align 1, !dbg !1818, !tbaa !1468
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1788, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1790, metadata !DIExpression()), !dbg !1820
  %19 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1821, !tbaa !1534
  %20 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1821, !tbaa !1521
  %21 = icmp eq i64 %19, %20, !dbg !1822
  %22 = inttoptr i64 %20 to i8*, !dbg !1823
  br i1 %21, label %23, label %25, !dbg !1823

23:                                               ; preds = %16
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1822
  %24 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1823, !tbaa !1521
  br label %25, !dbg !1822

25:                                               ; preds = %23, %16
  %26 = phi i8* [ %24, %23 ], [ %22, %16 ], !dbg !1823
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1823
  store i8* %27, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1823, !tbaa !1521
  store i8 92, i8* %26, align 1, !dbg !1823, !tbaa !1468
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1793, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1795, metadata !DIExpression()), !dbg !1825
  %28 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1826, !tbaa !1534
  %29 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1826, !tbaa !1521
  %30 = icmp eq i64 %28, %29, !dbg !1827
  %31 = inttoptr i64 %29 to i8*, !dbg !1828
  br i1 %30, label %32, label %34, !dbg !1828

32:                                               ; preds = %25
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1827
  %33 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1828, !tbaa !1521
  br label %34, !dbg !1827

34:                                               ; preds = %32, %25
  %35 = phi i8* [ %33, %32 ], [ %31, %25 ], !dbg !1828
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1828
  store i8* %36, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1828, !tbaa !1521
  store i8 39, i8* %35, align 1, !dbg !1828, !tbaa !1468
  call void @llvm.dbg.value(metadata i8 1, metadata !1780, metadata !DIExpression()), !dbg !1809
  br label %53, !dbg !1829

37:                                               ; preds = %4, %4
  %38 = and i8 %7, 1, !dbg !1830
  %39 = xor i8 %38, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i8 %39, metadata !1780, metadata !DIExpression()), !dbg !1809
  br label %53, !dbg !1832

40:                                               ; preds = %4, %4
  %41 = and i8 %7, 1, !dbg !1833
  %42 = icmp eq i8 %41, 0, !dbg !1833
  br i1 %42, label %53, label %43, !dbg !1834

43:                                               ; preds = %40
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1798, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1801, metadata !DIExpression()), !dbg !1836
  %44 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1837, !tbaa !1534
  %45 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1837, !tbaa !1521
  %46 = icmp eq i64 %44, %45, !dbg !1838
  %47 = inttoptr i64 %45 to i8*, !dbg !1839
  br i1 %46, label %48, label %50, !dbg !1839

48:                                               ; preds = %43
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1838
  %49 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1839, !tbaa !1521
  br label %50, !dbg !1838

50:                                               ; preds = %48, %43
  %51 = phi i8* [ %49, %48 ], [ %47, %43 ], !dbg !1839
  %52 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !1839
  store i8* %52, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1839, !tbaa !1521
  store i8 92, i8* %51, align 1, !dbg !1839, !tbaa !1468
  br label %53, !dbg !1840

53:                                               ; preds = %4, %50, %40, %37, %34
  %54 = phi i8 [ %39, %37 ], [ 1, %34 ], [ 1, %40 ], [ 1, %50 ], [ 1, %4 ], !dbg !1841
  call void @llvm.dbg.value(metadata i8 %54, metadata !1780, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1804, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1806, metadata !DIExpression()), !dbg !1843
  %55 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4) to i64*), align 8, !dbg !1844, !tbaa !1534
  %56 = load i64, i64* bitcast (i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3) to i64*), align 8, !dbg !1844, !tbaa !1521
  %57 = icmp eq i64 %55, %56, !dbg !1845
  %58 = inttoptr i64 %56 to i8*, !dbg !1846
  br i1 %57, label %59, label %61, !dbg !1846

59:                                               ; preds = %53
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #20, !dbg !1845
  %60 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1846, !tbaa !1521
  br label %61, !dbg !1845

61:                                               ; preds = %59, %53
  %62 = phi i8* [ %60, %59 ], [ %58, %53 ], !dbg !1846
  %63 = load i8, i8* %6, align 1, !dbg !1846, !tbaa !1468
  %64 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1846
  store i8* %64, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1846, !tbaa !1521
  store i8 %63, i8* %62, align 1, !dbg !1846, !tbaa !1468
  %65 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1847
  call void @llvm.dbg.value(metadata i8* %65, metadata !1779, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 %54, metadata !1780, metadata !DIExpression()), !dbg !1809
  %66 = load i8, i8* %65, align 1, !dbg !1810, !tbaa !1468
  %67 = icmp eq i8 %66, 0, !dbg !1811
  br i1 %67, label %68, label %4, !dbg !1812, !llvm.loop !1848

68:                                               ; preds = %61, %1
  ret void, !dbg !1850
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @c_strcasecmp(i8* readonly %0, i8* readonly %1) local_unnamed_addr #11 !dbg !1851 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1853, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %1, metadata !1854, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %0, metadata !1855, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %1, metadata !1856, metadata !DIExpression()), !dbg !1859
  %3 = icmp eq i8* %0, %1, !dbg !1860
  br i1 %3, label %31, label %4, !dbg !1862

4:                                                ; preds = %2, %23
  %5 = phi i8* [ %25, %23 ], [ %1, %2 ], !dbg !1859
  %6 = phi i8* [ %24, %23 ], [ %0, %2 ], !dbg !1859
  call void @llvm.dbg.value(metadata i8* %6, metadata !1855, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8* %5, metadata !1856, metadata !DIExpression()), !dbg !1859
  %7 = load i8, i8* %6, align 1, !dbg !1863, !tbaa !1468
  %8 = zext i8 %7 to i32, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %8, metadata !1865, metadata !DIExpression()), !dbg !1869
  %9 = add nsw i32 %8, -65, !dbg !1871
  %10 = icmp ult i32 %9, 26, !dbg !1871
  %11 = add nuw nsw i32 %8, 32, !dbg !1871
  %12 = select i1 %10, i32 %11, i32 %8, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %12, metadata !1857, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1859
  %13 = load i8, i8* %5, align 1, !dbg !1872, !tbaa !1468
  %14 = zext i8 %13 to i32, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %14, metadata !1865, metadata !DIExpression()), !dbg !1873
  %15 = add nsw i32 %14, -65, !dbg !1875
  %16 = icmp ult i32 %15, 26, !dbg !1875
  %17 = add nuw nsw i32 %14, 32, !dbg !1875
  %18 = select i1 %16, i32 %17, i32 %14, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %18, metadata !1858, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1859
  %19 = and i32 %12, 255, !dbg !1876
  %20 = icmp eq i32 %19, 0, !dbg !1878
  br i1 %20, label %21, label %23, !dbg !1879

21:                                               ; preds = %4
  %22 = and i32 %18, 255, !dbg !1880
  br label %28, !dbg !1879

23:                                               ; preds = %4
  %24 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %24, metadata !1855, metadata !DIExpression()), !dbg !1859
  %25 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1883
  call void @llvm.dbg.value(metadata i8* %25, metadata !1856, metadata !DIExpression()), !dbg !1859
  %26 = and i32 %18, 255, !dbg !1884
  %27 = icmp eq i32 %19, %26, !dbg !1885
  br i1 %27, label %4, label %28, !dbg !1886, !llvm.loop !1887

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %26, %23 ], !dbg !1880
  %30 = sub nsw i32 %19, %29, !dbg !1890
  br label %31, !dbg !1891

31:                                               ; preds = %2, %28
  %32 = phi i32 [ %30, %28 ], [ 0, %2 ], !dbg !1859
  ret i32 %32, !dbg !1892
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #12 !dbg !1893 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1895, metadata !DIExpression()), !dbg !1896
  store i8* %0, i8** @file_name, align 8, !dbg !1897, !tbaa !1327
  ret void, !dbg !1898
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #12 !dbg !1899 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1903, metadata !DIExpression()), !dbg !1904
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1905, !tbaa !1906
  ret void, !dbg !1908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1909 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1914, !tbaa !1327
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #20, !dbg !1915
  %3 = icmp eq i32 %2, 0, !dbg !1916
  br i1 %3, label %22, label %4, !dbg !1917

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1918, !tbaa !1906, !range !1919
  %6 = icmp eq i8 %5, 0, !dbg !1918
  br i1 %6, label %11, label %7, !dbg !1920

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #26, !dbg !1921
  %9 = load i32, i32* %8, align 4, !dbg !1921, !tbaa !1415
  %10 = icmp eq i32 %9, 32, !dbg !1922
  br i1 %10, label %22, label %11, !dbg !1923

11:                                               ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i64 0, i64 0), i32 5) #20, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %12, metadata !1911, metadata !DIExpression()), !dbg !1925
  %13 = load i8*, i8** @file_name, align 8, !dbg !1926, !tbaa !1327
  %14 = icmp eq i8* %13, null, !dbg !1926
  %15 = tail call i32* @__errno_location() #26, !dbg !1928
  %16 = load i32, i32* %15, align 4, !dbg !1928, !tbaa !1415
  br i1 %14, label %19, label %17, !dbg !1929

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #20, !dbg !1930
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.124, i64 0, i64 0), i8* %18, i8* %12) #20, !dbg !1931
  br label %20, !dbg !1931

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.125, i64 0, i64 0), i8* %12) #20, !dbg !1932
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1933, !tbaa !1415
  tail call void @_exit(i32 %21) #24, !dbg !1934
  unreachable, !dbg !1934

22:                                               ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1935, !tbaa !1327
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #20, !dbg !1937
  %25 = icmp eq i32 %24, 0, !dbg !1938
  br i1 %25, label %28, label %26, !dbg !1939

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1940, !tbaa !1415
  tail call void @_exit(i32 %27) #24, !dbg !1941
  unreachable, !dbg !1941

28:                                               ; preds = %22
  ret void, !dbg !1942
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #13

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #11 !dbg !1943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1945, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %0, metadata !1946, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8 0, metadata !1948, metadata !DIExpression()), !dbg !1949
  br label %2, !dbg !1950

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1949
  call void @llvm.dbg.value(metadata i8* %3, metadata !1946, metadata !DIExpression()), !dbg !1949
  %4 = load i8, i8* %3, align 1, !dbg !1951, !tbaa !1468
  %5 = icmp eq i8 %4, 47, !dbg !1951
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1952
  call void @llvm.dbg.value(metadata i8* %6, metadata !1946, metadata !DIExpression()), !dbg !1949
  br i1 %5, label %2, label %7, !dbg !1950, !llvm.loop !1953

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1954
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1957
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1958
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1949
  call void @llvm.dbg.value(metadata i8 %11, metadata !1948, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %10, metadata !1947, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %9, metadata !1946, metadata !DIExpression()), !dbg !1949
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1959

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !1960
  %14 = icmp eq i8 %13, 0, !dbg !1960
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1964
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1964
  br label %17, !dbg !1964

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1949
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1949
  call void @llvm.dbg.value(metadata i8 %19, metadata !1948, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %18, metadata !1946, metadata !DIExpression()), !dbg !1949
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1965
  call void @llvm.dbg.value(metadata i8* %20, metadata !1947, metadata !DIExpression()), !dbg !1949
  %21 = load i8, i8* %20, align 1, !dbg !1954, !tbaa !1468
  br label %7, !dbg !1966, !llvm.loop !1967

22:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %9, metadata !1946, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %9, metadata !1946, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %9, metadata !1946, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %9, metadata !1946, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %9, metadata !1946, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8* %9, metadata !1946, metadata !DIExpression()), !dbg !1949
  ret i8* %9, !dbg !1969
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #14 !dbg !1970 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1974, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 0, metadata !1976, metadata !DIExpression()), !dbg !1977
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !1978
  call void @llvm.dbg.value(metadata i64 %2, metadata !1975, metadata !DIExpression()), !dbg !1977
  br label %3, !dbg !1980

3:                                                ; preds = %6, %1
  %4 = phi i64 [ %2, %1 ], [ %7, %6 ], !dbg !1981
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  %5 = icmp ugt i64 %4, 1, !dbg !1982
  br i1 %5, label %6, label %11, !dbg !1984

6:                                                ; preds = %3
  %7 = add i64 %4, -1, !dbg !1985
  %8 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !1985
  %9 = load i8, i8* %8, align 1, !dbg !1985, !tbaa !1468
  %10 = icmp eq i8 %9, 47, !dbg !1985
  br i1 %10, label %3, label %11, !dbg !1986, !llvm.loop !1987

11:                                               ; preds = %3, %6
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %4, metadata !1975, metadata !DIExpression()), !dbg !1977
  ret i64 %4, !dbg !1989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* %0, i8* %1, %struct._IO_FILE* %2) local_unnamed_addr #8 !dbg !1990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1996, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8* %1, metadata !1997, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1998, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 0, metadata !2000, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 0, metadata !2001, metadata !DIExpression()), !dbg !2003
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #20, !dbg !2004
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !2005

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #20, !dbg !2006
  %7 = icmp ne i32 %6, 2, !dbg !2009
  %8 = zext i1 %7 to i8, !dbg !2010
  br label %9, !dbg !2010

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !2003
  call void @llvm.dbg.value(metadata i8 %10, metadata !2001, metadata !DIExpression()), !dbg !2003
  %11 = tail call i32 @dup2(i32 1, i32 1) #20, !dbg !2011
  %12 = icmp ne i32 %11, 1, !dbg !2013
  %13 = zext i1 %12 to i8, !dbg !2014
  br label %14, !dbg !2014

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !2003
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !2003
  call void @llvm.dbg.value(metadata i8 %16, metadata !2001, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 %15, metadata !2000, metadata !DIExpression()), !dbg !2003
  %17 = tail call i32 @dup2(i32 0, i32 0) #20, !dbg !2015
  %18 = icmp eq i32 %17, 0, !dbg !2017
  call void @llvm.dbg.value(metadata i8 %16, metadata !2001, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 %15, metadata !2000, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.value(metadata i8 undef, metadata !1999, metadata !DIExpression()), !dbg !2003
  br i1 %18, label %27, label %19, !dbg !2018

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !2020, metadata !DIExpression()) #20, !dbg !2024
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #20, !dbg !2026
  call void @llvm.dbg.value(metadata i32 %20, metadata !2023, metadata !DIExpression()) #20, !dbg !2024
  %21 = icmp eq i32 %20, 0, !dbg !2027
  br i1 %21, label %27, label %22, !dbg !2029

22:                                               ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !2030
  br i1 %23, label %24, label %57, !dbg !2033

24:                                               ; preds = %22
  %25 = tail call i32 @close(i32 %20) #20, !dbg !2034
  %26 = tail call i32* @__errno_location() #26, !dbg !2036
  store i32 9, i32* %26, align 4, !dbg !2037, !tbaa !1415
  br label %57, !dbg !2038

27:                                               ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !2039
  br i1 %29, label %38, label %30, !dbg !2041

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !2020, metadata !DIExpression()) #20, !dbg !2042
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #20, !dbg !2044
  call void @llvm.dbg.value(metadata i32 %31, metadata !2023, metadata !DIExpression()) #20, !dbg !2042
  %32 = icmp eq i32 %31, 1, !dbg !2045
  br i1 %32, label %38, label %33, !dbg !2046

33:                                               ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !2047
  br i1 %34, label %35, label %57, !dbg !2048

35:                                               ; preds = %33
  %36 = tail call i32 @close(i32 %31) #20, !dbg !2049
  %37 = tail call i32* @__errno_location() #26, !dbg !2050
  store i32 9, i32* %37, align 4, !dbg !2051, !tbaa !1415
  br label %57, !dbg !2052

38:                                               ; preds = %30, %27
  %39 = phi i8 [ 0, %27 ], [ 1, %30 ]
  %40 = icmp eq i8 %16, 0, !dbg !2053
  br i1 %40, label %49, label %41, !dbg !2055

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !2020, metadata !DIExpression()) #20, !dbg !2056
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #20, !dbg !2058
  call void @llvm.dbg.value(metadata i32 %42, metadata !2023, metadata !DIExpression()) #20, !dbg !2056
  %43 = icmp eq i32 %42, 2, !dbg !2059
  br i1 %43, label %49, label %44, !dbg !2060

44:                                               ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !2061
  br i1 %45, label %46, label %54, !dbg !2062

46:                                               ; preds = %44
  %47 = tail call i32 @close(i32 %42) #20, !dbg !2063
  %48 = tail call i32* @__errno_location() #26, !dbg !2064
  store i32 9, i32* %48, align 4, !dbg !2065, !tbaa !1415
  br label %54, !dbg !2066

49:                                               ; preds = %3, %41, %38
  %50 = phi i8 [ 0, %38 ], [ 1, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %39, %38 ], [ %39, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #20, !dbg !2067
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, metadata !1998, metadata !DIExpression()), !dbg !2003
  br label %57

54:                                               ; preds = %46, %44
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1998, metadata !DIExpression()), !dbg !2003
  %55 = tail call i32* @__errno_location() #26, !dbg !2068
  %56 = load i32, i32* %55, align 4, !dbg !2068, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %63, metadata !2002, metadata !DIExpression()), !dbg !2003
  br label %65, !dbg !2069

57:                                               ; preds = %33, %35, %22, %24, %49
  %58 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ]
  %59 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ]
  %60 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ]
  %61 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], !dbg !2070
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %61, metadata !1998, metadata !DIExpression()), !dbg !2003
  %62 = tail call i32* @__errno_location() #26, !dbg !2068
  %63 = load i32, i32* %62, align 4, !dbg !2068, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %63, metadata !2002, metadata !DIExpression()), !dbg !2003
  %64 = icmp eq i8 %58, 0, !dbg !2071
  br i1 %64, label %72, label %65, !dbg !2069

65:                                               ; preds = %54, %57
  %66 = phi i32 [ %56, %54 ], [ %63, %57 ]
  %67 = phi i32* [ %55, %54 ], [ %62, %57 ]
  %68 = phi %struct._IO_FILE* [ null, %54 ], [ %61, %57 ]
  %69 = phi i1 [ %28, %54 ], [ %60, %57 ]
  %70 = phi i8 [ %39, %54 ], [ %59, %57 ]
  %71 = tail call i32 @close(i32 2) #20, !dbg !2073
  br label %72, !dbg !2073

72:                                               ; preds = %57, %65
  %73 = phi i32 [ %63, %57 ], [ %66, %65 ]
  %74 = phi i32* [ %62, %57 ], [ %67, %65 ]
  %75 = phi %struct._IO_FILE* [ %61, %57 ], [ %68, %65 ]
  %76 = phi i1 [ %60, %57 ], [ %69, %65 ]
  %77 = phi i8 [ %59, %57 ], [ %70, %65 ]
  %78 = icmp eq i8 %77, 0, !dbg !2074
  br i1 %78, label %81, label %79, !dbg !2076

79:                                               ; preds = %72
  %80 = tail call i32 @close(i32 1) #20, !dbg !2077
  br label %81, !dbg !2077

81:                                               ; preds = %72, %79
  br i1 %76, label %82, label %84, !dbg !2078

82:                                               ; preds = %81
  %83 = tail call i32 @close(i32 0) #20, !dbg !2079
  br label %84, !dbg !2079

84:                                               ; preds = %82, %81
  %85 = icmp eq %struct._IO_FILE* %75, null, !dbg !2081
  br i1 %85, label %86, label %87, !dbg !2083

86:                                               ; preds = %84
  store i32 %73, i32* %74, align 4, !dbg !2084, !tbaa !1415
  br label %87, !dbg !2085

87:                                               ; preds = %84, %86
  ret %struct._IO_FILE* %75, !dbg !2086
}

; Function Attrs: nofree nounwind
declare !dbg !584 i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !619 i32 @dup2(i32, i32) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !629 i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #15

declare !dbg !626 i32 @close(i32) local_unnamed_addr #3

declare !dbg !623 %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !2087 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2089, metadata !DIExpression()), !dbg !2092
  %2 = icmp eq i8* %0, null, !dbg !2093
  br i1 %2, label %3, label %6, !dbg !2095

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2096, !tbaa !1327
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.137, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #27, !dbg !2098
  tail call void @abort() #24, !dbg !2099
  unreachable, !dbg !2099

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #23, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %7, metadata !2090, metadata !DIExpression()), !dbg !2092
  %8 = icmp eq i8* %7, null, !dbg !2101
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2102
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2102
  call void @llvm.dbg.value(metadata i8* %10, metadata !2091, metadata !DIExpression()), !dbg !2092
  %11 = ptrtoint i8* %10 to i64, !dbg !2103
  %12 = ptrtoint i8* %0 to i64, !dbg !2103
  %13 = sub i64 %11, %12, !dbg !2103
  %14 = icmp sgt i64 %13, 6, !dbg !2105
  br i1 %14, label %15, label %24, !dbg !2106

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2107
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.138, i64 0, i64 0), i64 7) #23, !dbg !2108
  %18 = icmp eq i32 %17, 0, !dbg !2109
  br i1 %18, label %19, label %24, !dbg !2110

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2089, metadata !DIExpression()), !dbg !2092
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.139, i64 0, i64 0), i64 3) #23, !dbg !2111
  %21 = icmp eq i32 %20, 0, !dbg !2114
  br i1 %21, label %22, label %24, !dbg !2115

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2116
  call void @llvm.dbg.value(metadata i8* %23, metadata !2089, metadata !DIExpression()), !dbg !2092
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2118, !tbaa !1327
  br label %24, !dbg !2119

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2089, metadata !DIExpression()), !dbg !2092
  store i8* %25, i8** @program_name, align 8, !dbg !2120, !tbaa !1327
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2121, !tbaa !1327
  ret void, !dbg !2122
}

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #16

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !2123 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2128, metadata !DIExpression()), !dbg !2131
  %2 = tail call i32* @__errno_location() #26, !dbg !2132
  %3 = load i32, i32* %2, align 4, !dbg !2132, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %3, metadata !2129, metadata !DIExpression()), !dbg !2131
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2133
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2133
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2133
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #20, !dbg !2134
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2134
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2130, metadata !DIExpression()), !dbg !2131
  store i32 %3, i32* %2, align 4, !dbg !2135, !tbaa !1415
  ret %struct.quoting_options* %8, !dbg !2136
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #11 !dbg !2137 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2141, metadata !DIExpression()), !dbg !2142
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2143
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2143
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2144
  %5 = load i32, i32* %4, align 8, !dbg !2144, !tbaa !2145
  ret i32 %5, !dbg !2147
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #12 !dbg !2148 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i32 %1, metadata !2153, metadata !DIExpression()), !dbg !2154
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2155
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2155
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2156
  store i32 %1, i32* %5, align 8, !dbg !2157, !tbaa !2145
  ret void, !dbg !2158
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #17 !dbg !2159 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2163, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 %1, metadata !2164, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i32 %2, metadata !2165, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i8 %1, metadata !2166, metadata !DIExpression()), !dbg !2171
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2172
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2172
  %6 = lshr i8 %1, 5, !dbg !2173
  %7 = zext i8 %6 to i64, !dbg !2173
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2174
  call void @llvm.dbg.value(metadata i32* %8, metadata !2167, metadata !DIExpression()), !dbg !2171
  %9 = and i8 %1, 31, !dbg !2175
  %10 = zext i8 %9 to i32, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %10, metadata !2169, metadata !DIExpression()), !dbg !2171
  %11 = load i32, i32* %8, align 4, !dbg !2176, !tbaa !1415
  %12 = lshr i32 %11, %10, !dbg !2177
  %13 = and i32 %12, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %13, metadata !2170, metadata !DIExpression()), !dbg !2171
  %14 = and i32 %2, 1, !dbg !2179
  %15 = xor i32 %13, %14, !dbg !2180
  %16 = shl i32 %15, %10, !dbg !2181
  %17 = xor i32 %16, %11, !dbg !2182
  store i32 %17, i32* %8, align 4, !dbg !2182, !tbaa !1415
  ret i32 %13, !dbg !2183
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #17 !dbg !2184 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2188, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1, metadata !2189, metadata !DIExpression()), !dbg !2191
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2192
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2194
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2188, metadata !DIExpression()), !dbg !2191
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2195
  %6 = load i32, i32* %5, align 4, !dbg !2195, !tbaa !2196
  call void @llvm.dbg.value(metadata i32 %6, metadata !2190, metadata !DIExpression()), !dbg !2191
  store i32 %1, i32* %5, align 4, !dbg !2197, !tbaa !2196
  ret i32 %6, !dbg !2198
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !2199 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2203, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8* %1, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8* %2, metadata !2205, metadata !DIExpression()), !dbg !2206
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2207
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2203, metadata !DIExpression()), !dbg !2206
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2210
  store i32 10, i32* %6, align 8, !dbg !2211, !tbaa !2145
  %7 = icmp ne i8* %1, null, !dbg !2212
  %8 = icmp ne i8* %2, null, !dbg !2214
  %9 = and i1 %7, %8, !dbg !2215
  br i1 %9, label %11, label %10, !dbg !2215

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !2216
  unreachable, !dbg !2216

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2217
  store i8* %1, i8** %12, align 8, !dbg !2218, !tbaa !2219
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2220
  store i8* %2, i8** %13, align 8, !dbg !2221, !tbaa !2222
  ret void, !dbg !2223
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !2224 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2228, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %1, metadata !2229, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8* %2, metadata !2230, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i64 %3, metadata !2231, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2232, metadata !DIExpression()), !dbg !2236
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2237
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2233, metadata !DIExpression()), !dbg !2236
  %8 = tail call i32* @__errno_location() #26, !dbg !2238
  %9 = load i32, i32* %8, align 4, !dbg !2238, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %9, metadata !2234, metadata !DIExpression()), !dbg !2236
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2239
  %11 = load i32, i32* %10, align 8, !dbg !2239, !tbaa !2145
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2240
  %13 = load i32, i32* %12, align 4, !dbg !2240, !tbaa !2196
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2241
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2242
  %16 = load i8*, i8** %15, align 8, !dbg !2242, !tbaa !2219
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2243
  %18 = load i8*, i8** %17, align 8, !dbg !2243, !tbaa !2222
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2244
  call void @llvm.dbg.value(metadata i64 %19, metadata !2235, metadata !DIExpression()), !dbg !2236
  store i32 %9, i32* %8, align 4, !dbg !2245, !tbaa !1415
  ret i64 %19, !dbg !2246
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !2247 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2253, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %1, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %2, metadata !2255, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %3, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %4, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %5, metadata !2258, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32* %6, metadata !2259, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %7, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %8, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 0, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 0, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* null, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 0, metadata !2266, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2267, metadata !DIExpression()), !dbg !2311
  %13 = tail call i64 @__ctype_get_mb_cur_max() #20, !dbg !2312
  %14 = icmp eq i64 %13, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i1 %14, metadata !2268, metadata !DIExpression()), !dbg !2311
  %15 = lshr i32 %5, 1, !dbg !2314
  %16 = trunc i32 %15 to i8, !dbg !2314
  %17 = and i8 %16, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i8 %17, metadata !2269, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, metadata !2272, metadata !DIExpression()), !dbg !2311
  %18 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2315
  %19 = and i32 %5, 4, !dbg !2317
  %20 = icmp eq i32 %19, 0, !dbg !2317
  %21 = and i32 %5, 1, !dbg !2320
  %22 = icmp eq i32 %21, 0, !dbg !2320
  %23 = bitcast i64* %10 to i8*, !dbg !2323
  %24 = bitcast i32* %12 to i8*, !dbg !2324
  %25 = icmp eq i32* %6, null, !dbg !2325
  br label %26, !dbg !2327

26:                                               ; preds = %598, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %598 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %598 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %598 ]
  %30 = phi i64 [ 0, %9 ], [ %125, %598 ], !dbg !2328
  %31 = phi i8* [ null, %9 ], [ %97, %598 ], !dbg !2329
  %32 = phi i64 [ 0, %9 ], [ %98, %598 ], !dbg !2330
  %33 = phi i8 [ 0, %9 ], [ %99, %598 ], !dbg !2331
  %34 = phi i64 [ %3, %9 ], [ %582, %598 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %598 ], !dbg !2311
  %36 = phi i8 [ 0, %9 ], [ %127, %598 ], !dbg !2332
  %37 = phi i8 [ 0, %9 ], [ %128, %598 ], !dbg !2333
  %38 = phi i8 [ 1, %9 ], [ %129, %598 ], !dbg !2334
  %39 = phi i64 [ %1, %9 ], [ %125, %598 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %38, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %37, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %36, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %35, metadata !2269, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %34, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %33, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %32, metadata !2266, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %31, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %30, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 0, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %29, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %28, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %27, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.label(metadata !2305), !dbg !2335
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
  ], !dbg !2336

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 5, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, metadata !2269, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %35, metadata !2269, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 5, metadata !2257, metadata !DIExpression()), !dbg !2311
  br label %92, !dbg !2337

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !2269, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 5, metadata !2257, metadata !DIExpression()), !dbg !2311
  %42 = and i8 %35, 1, !dbg !2339
  %43 = icmp eq i8 %42, 0, !dbg !2339
  br i1 %43, label %44, label %92, !dbg !2337

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !2341
  br i1 %45, label %92, label %46, !dbg !2344

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !2341, !tbaa !1468
  br label %92, !dbg !2341

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.150, i64 0, i64 0), i32 %27), !dbg !2345
  call void @llvm.dbg.value(metadata i8* %48, metadata !2260, metadata !DIExpression()), !dbg !2311
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), i32 %27), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %49, metadata !2261, metadata !DIExpression()), !dbg !2311
  br label %50, !dbg !2350

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %51, metadata !2260, metadata !DIExpression()), !dbg !2311
  %53 = and i8 %35, 1, !dbg !2351
  %54 = icmp eq i8 %53, 0, !dbg !2351
  br i1 %54, label %55, label %70, !dbg !2353

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 0, metadata !2263, metadata !DIExpression()), !dbg !2311
  %56 = load i8, i8* %51, align 1, !dbg !2354, !tbaa !1468
  %57 = icmp eq i8 %56, 0, !dbg !2357
  br i1 %57, label %70, label %58, !dbg !2357

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %61, metadata !2263, metadata !DIExpression()), !dbg !2311
  %62 = icmp ult i64 %61, %39, !dbg !2358
  br i1 %62, label %63, label %65, !dbg !2361

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !2358
  store i8 %59, i8* %64, align 1, !dbg !2358, !tbaa !1468
  br label %65, !dbg !2358

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %66, metadata !2263, metadata !DIExpression()), !dbg !2311
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %67, metadata !2265, metadata !DIExpression()), !dbg !2311
  %68 = load i8, i8* %67, align 1, !dbg !2354, !tbaa !1468
  %69 = icmp eq i8 %68, 0, !dbg !2357
  br i1 %69, label %70, label %58, !dbg !2357, !llvm.loop !2363

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !2365
  call void @llvm.dbg.value(metadata i64 %71, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %52, metadata !2265, metadata !DIExpression()), !dbg !2311
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #23, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %72, metadata !2266, metadata !DIExpression()), !dbg !2311
  br label %92, !dbg !2367

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !2267, metadata !DIExpression()), !dbg !2311
  br label %74, !dbg !2368

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %75, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, metadata !2269, metadata !DIExpression()), !dbg !2311
  br label %76, !dbg !2369

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !2331
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %78, metadata !2269, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %77, metadata !2267, metadata !DIExpression()), !dbg !2311
  %79 = and i8 %78, 1, !dbg !2370
  %80 = icmp eq i8 %79, 0, !dbg !2370
  %81 = select i1 %80, i8 1, i8 %77, !dbg !2372
  br label %82, !dbg !2372

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !2311
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !2314
  call void @llvm.dbg.value(metadata i8 %84, metadata !2269, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %83, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  %85 = and i8 %84, 1, !dbg !2373
  %86 = icmp eq i8 %85, 0, !dbg !2373
  br i1 %86, label %87, label %92, !dbg !2375

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !2376
  br i1 %88, label %92, label %89, !dbg !2379

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !2376, !tbaa !1468
  br label %92, !dbg !2376

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !2269, metadata !DIExpression()), !dbg !2311
  br label %92, !dbg !2380

91:                                               ; preds = %26
  call void @abort() #24, !dbg !2381
  unreachable, !dbg !2381

92:                                               ; preds = %40, %82, %87, %89, %26, %41, %44, %46, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %46 ], [ 5, %44 ], [ 5, %41 ], [ %27, %26 ], [ 2, %89 ], [ 2, %87 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %46 ], [ %28, %44 ], [ %28, %41 ], [ %28, %26 ], [ %28, %89 ], [ %28, %87 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %46 ], [ %29, %44 ], [ %29, %41 ], [ %29, %26 ], [ %29, %89 ], [ %29, %87 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %46 ], [ 1, %44 ], [ 0, %41 ], [ 0, %26 ], [ 1, %89 ], [ 1, %87 ], [ 0, %82 ], [ 0, %40 ], !dbg !2365
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %40 ], !dbg !2311
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ %32, %26 ], [ 1, %89 ], [ 1, %87 ], [ 1, %82 ], [ 1, %40 ], !dbg !2311
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %46 ], [ 1, %44 ], [ 1, %41 ], [ 1, %26 ], [ %83, %89 ], [ %83, %87 ], [ %83, %82 ], [ 1, %40 ], !dbg !2311
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %46 ], [ %35, %44 ], [ %35, %41 ], [ 0, %26 ], [ %84, %89 ], [ %84, %87 ], [ %84, %82 ], [ 1, %40 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %100, metadata !2269, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %98, metadata !2266, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %96, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %93, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 0, metadata !2262, metadata !DIExpression()), !dbg !2311
  %101 = and i8 %99, 1, !dbg !2382
  %102 = icmp ne i8 %101, 0, !dbg !2382
  %103 = icmp ne i32 %93, 2, !dbg !2382
  %104 = and i1 %103, %102, !dbg !2382
  %105 = icmp ne i64 %98, 0, !dbg !2382
  %106 = and i1 %105, %104, !dbg !2382
  %107 = icmp ugt i64 %98, 1, !dbg !2382
  %108 = and i8 %100, 1, !dbg !2384
  %109 = icmp eq i8 %108, 0, !dbg !2384
  %110 = icmp eq i32 %93, 2, !dbg !2387
  %111 = or i1 %103, %109, !dbg !2389
  %112 = icmp ne i8 %108, 0, !dbg !2391
  %113 = and i1 %110, %112, !dbg !2391
  %114 = xor i1 %102, true, !dbg !2392
  %115 = xor i1 %104, true, !dbg !2325
  %116 = and i1 %109, %115, !dbg !2325
  %117 = or i1 %25, %116, !dbg !2325
  %118 = and i8 %99, %100, !dbg !2393
  %119 = and i8 %118, 1, !dbg !2393
  %120 = icmp ne i8 %119, 0, !dbg !2393
  %121 = and i1 %120, %105, !dbg !2393
  br label %122, !dbg !2395

122:                                              ; preds = %571, %92
  %123 = phi i64 [ 0, %92 ], [ %580, %571 ], !dbg !2396
  %124 = phi i64 [ %96, %92 ], [ %573, %571 ], !dbg !2365
  %125 = phi i64 [ %30, %92 ], [ %574, %571 ], !dbg !2328
  %126 = phi i64 [ %34, %92 ], [ %575, %571 ]
  %127 = phi i8 [ %36, %92 ], [ %576, %571 ], !dbg !2332
  %128 = phi i8 [ %37, %92 ], [ %577, %571 ], !dbg !2333
  %129 = phi i8 [ %38, %92 ], [ %578, %571 ], !dbg !2334
  %130 = phi i64 [ %39, %92 ], [ %579, %571 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %126, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %123, metadata !2262, metadata !DIExpression()), !dbg !2311
  %131 = icmp eq i64 %126, -1, !dbg !2397
  br i1 %131, label %132, label %136, !dbg !2398

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2399
  %134 = load i8, i8* %133, align 1, !dbg !2399, !tbaa !1468
  %135 = icmp eq i8 %134, 0, !dbg !2400
  br i1 %135, label %581, label %138, !dbg !2401

136:                                              ; preds = %122
  %137 = icmp eq i64 %123, %126, !dbg !2402
  br i1 %137, label %581, label %138, !dbg !2401

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2278, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 0, metadata !2279, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 0, metadata !2280, metadata !DIExpression()), !dbg !2403
  br i1 %106, label %139, label %154, !dbg !2404

139:                                              ; preds = %138
  %140 = add i64 %123, %98, !dbg !2405
  %141 = and i1 %107, %131, !dbg !2406
  br i1 %141, label %142, label %144, !dbg !2406

142:                                              ; preds = %139
  %143 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %143, metadata !2256, metadata !DIExpression()), !dbg !2311
  br label %144, !dbg !2408

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %126, %139 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !2256, metadata !DIExpression()), !dbg !2311
  %146 = icmp ugt i64 %140, %145, !dbg !2409
  br i1 %146, label %154, label %147, !dbg !2410

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2411
  %149 = call i32 @bcmp(i8* %148, i8* %97, i64 %98), !dbg !2412
  %150 = icmp ne i32 %149, 0, !dbg !2413
  %151 = or i1 %150, %109, !dbg !2414
  %152 = xor i1 %150, true, !dbg !2414
  %153 = zext i1 %152 to i8, !dbg !2414
  br i1 %151, label %154, label %639, !dbg !2414

154:                                              ; preds = %147, %144, %138
  %155 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %126, %138 ]
  %156 = phi i8 [ %153, %147 ], [ 0, %144 ], [ 0, %138 ], !dbg !2403
  call void @llvm.dbg.value(metadata i8 %156, metadata !2278, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %155, metadata !2256, metadata !DIExpression()), !dbg !2311
  %157 = getelementptr inbounds i8, i8* %2, i64 %123, !dbg !2415
  %158 = load i8, i8* %157, align 1, !dbg !2415, !tbaa !1468
  call void @llvm.dbg.value(metadata i8 %158, metadata !2273, metadata !DIExpression()), !dbg !2403
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
  ], !dbg !2416

159:                                              ; preds = %154
  br i1 %102, label %160, label %208, !dbg !2417

160:                                              ; preds = %159
  br i1 %109, label %161, label %629, !dbg !2418

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !2279, metadata !DIExpression()), !dbg !2403
  %162 = and i8 %127, 1, !dbg !2421
  %163 = icmp eq i8 %162, 0, !dbg !2421
  %164 = and i1 %110, %163, !dbg !2421
  br i1 %164, label %165, label %181, !dbg !2421

165:                                              ; preds = %161
  %166 = icmp ult i64 %124, %130, !dbg !2423
  br i1 %166, label %167, label %169, !dbg !2427

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2423
  store i8 39, i8* %168, align 1, !dbg !2423, !tbaa !1468
  br label %169, !dbg !2423

169:                                              ; preds = %167, %165
  %170 = add i64 %124, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %170, metadata !2263, metadata !DIExpression()), !dbg !2311
  %171 = icmp ult i64 %170, %130, !dbg !2428
  br i1 %171, label %172, label %174, !dbg !2431

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2428
  store i8 36, i8* %173, align 1, !dbg !2428, !tbaa !1468
  br label %174, !dbg !2428

174:                                              ; preds = %172, %169
  %175 = add i64 %124, 2, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %175, metadata !2263, metadata !DIExpression()), !dbg !2311
  %176 = icmp ult i64 %175, %130, !dbg !2432
  br i1 %176, label %177, label %179, !dbg !2435

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2432
  store i8 39, i8* %178, align 1, !dbg !2432, !tbaa !1468
  br label %179, !dbg !2432

179:                                              ; preds = %177, %174
  %180 = add i64 %124, 3, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %180, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, metadata !2270, metadata !DIExpression()), !dbg !2311
  br label %181, !dbg !2436

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %124, %161 ], !dbg !2311
  %183 = phi i8 [ 1, %179 ], [ %127, %161 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %183, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %182, metadata !2263, metadata !DIExpression()), !dbg !2311
  %184 = icmp ult i64 %182, %130, !dbg !2437
  br i1 %184, label %185, label %187, !dbg !2440

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2437
  store i8 92, i8* %186, align 1, !dbg !2437, !tbaa !1468
  br label %187, !dbg !2437

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2440
  call void @llvm.dbg.value(metadata i64 %188, metadata !2263, metadata !DIExpression()), !dbg !2311
  br i1 %103, label %189, label %463, !dbg !2441

189:                                              ; preds = %187
  %190 = add i64 %123, 1, !dbg !2443
  %191 = icmp ult i64 %190, %155, !dbg !2444
  br i1 %191, label %192, label %463, !dbg !2445

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, i8* %2, i64 %190, !dbg !2446
  %194 = load i8, i8* %193, align 1, !dbg !2446, !tbaa !1468
  %195 = add i8 %194, -48, !dbg !2447
  %196 = icmp ult i8 %195, 10, !dbg !2447
  br i1 %196, label %197, label %463, !dbg !2447

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %130, !dbg !2448
  br i1 %198, label %199, label %201, !dbg !2452

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2448
  store i8 48, i8* %200, align 1, !dbg !2448, !tbaa !1468
  br label %201, !dbg !2448

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %202, metadata !2263, metadata !DIExpression()), !dbg !2311
  %203 = icmp ult i64 %202, %130, !dbg !2453
  br i1 %203, label %204, label %206, !dbg !2456

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2453
  store i8 48, i8* %205, align 1, !dbg !2453, !tbaa !1468
  br label %206, !dbg !2453

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2456
  call void @llvm.dbg.value(metadata i64 %207, metadata !2263, metadata !DIExpression()), !dbg !2311
  br label %463, !dbg !2457

208:                                              ; preds = %159
  br i1 %22, label %463, label %571, !dbg !2458

209:                                              ; preds = %154
  switch i32 %93, label %463 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2459

210:                                              ; preds = %209
  br i1 %109, label %463, label %625, !dbg !2460

211:                                              ; preds = %209
  br i1 %20, label %463, label %212, !dbg !2461

212:                                              ; preds = %211
  %213 = add i64 %123, 2, !dbg !2462
  %214 = icmp ult i64 %213, %155, !dbg !2463
  br i1 %214, label %215, label %463, !dbg !2464

215:                                              ; preds = %212
  %216 = add i64 %123, 1, !dbg !2465
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2466
  %218 = load i8, i8* %217, align 1, !dbg !2466, !tbaa !1468
  %219 = icmp eq i8 %218, 63, !dbg !2467
  br i1 %219, label %220, label %463, !dbg !2468

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %213, !dbg !2469
  %222 = load i8, i8* %221, align 1, !dbg !2469, !tbaa !1468
  %223 = sext i8 %222 to i32, !dbg !2469
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
  ], !dbg !2470

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %639, !dbg !2471

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !2273, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i64 %213, metadata !2262, metadata !DIExpression()), !dbg !2311
  %226 = icmp ult i64 %124, %130, !dbg !2473
  br i1 %226, label %227, label %229, !dbg !2476

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2473
  store i8 63, i8* %228, align 1, !dbg !2473, !tbaa !1468
  br label %229, !dbg !2473

229:                                              ; preds = %227, %225
  %230 = add i64 %124, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i64 %230, metadata !2263, metadata !DIExpression()), !dbg !2311
  %231 = icmp ult i64 %230, %130, !dbg !2477
  br i1 %231, label %232, label %234, !dbg !2480

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2477
  store i8 34, i8* %233, align 1, !dbg !2477, !tbaa !1468
  br label %234, !dbg !2477

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 2, !dbg !2480
  call void @llvm.dbg.value(metadata i64 %235, metadata !2263, metadata !DIExpression()), !dbg !2311
  %236 = icmp ult i64 %235, %130, !dbg !2481
  br i1 %236, label %237, label %239, !dbg !2484

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2481
  store i8 34, i8* %238, align 1, !dbg !2481, !tbaa !1468
  br label %239, !dbg !2481

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 3, !dbg !2484
  call void @llvm.dbg.value(metadata i64 %240, metadata !2263, metadata !DIExpression()), !dbg !2311
  %241 = icmp ult i64 %240, %130, !dbg !2485
  br i1 %241, label %242, label %244, !dbg !2488

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2485
  store i8 63, i8* %243, align 1, !dbg !2485, !tbaa !1468
  br label %244, !dbg !2485

244:                                              ; preds = %242, %239
  %245 = add i64 %124, 4, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %245, metadata !2263, metadata !DIExpression()), !dbg !2311
  br label %463, !dbg !2489

246:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 98, metadata !2277, metadata !DIExpression()), !dbg !2403
  br label %256, !dbg !2490

247:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 102, metadata !2277, metadata !DIExpression()), !dbg !2403
  br label %256, !dbg !2491

248:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 114, metadata !2277, metadata !DIExpression()), !dbg !2403
  br label %254, !dbg !2492

249:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 116, metadata !2277, metadata !DIExpression()), !dbg !2403
  br label %254, !dbg !2493

250:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 118, metadata !2277, metadata !DIExpression()), !dbg !2403
  br label %256, !dbg !2494

251:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 %158, metadata !2277, metadata !DIExpression()), !dbg !2403
  br i1 %110, label %252, label %253, !dbg !2495

252:                                              ; preds = %251
  br i1 %109, label %526, label %625, !dbg !2496

253:                                              ; preds = %251
  br i1 %121, label %526, label %254, !dbg !2499

254:                                              ; preds = %253, %154, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %154 ], !dbg !2500
  call void @llvm.dbg.value(metadata i8 %255, metadata !2277, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.label(metadata !2306), !dbg !2501
  br i1 %111, label %256, label %625, !dbg !2502

256:                                              ; preds = %254, %154, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %154 ], !dbg !2500
  call void @llvm.dbg.value(metadata i8 %257, metadata !2277, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.label(metadata !2307), !dbg !2504
  br i1 %102, label %488, label %463, !dbg !2505

258:                                              ; preds = %154, %154
  switch i64 %155, label %463 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2506

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2507, !tbaa !1468
  %261 = icmp eq i8 %260, 0, !dbg !2508
  br i1 %261, label %262, label %463, !dbg !2509

262:                                              ; preds = %258, %259, %154, %154
  %263 = icmp eq i64 %123, 0, !dbg !2510
  br i1 %263, label %264, label %463, !dbg !2512

264:                                              ; preds = %262, %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2280, metadata !DIExpression()), !dbg !2403
  br label %265, !dbg !2513

265:                                              ; preds = %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %264
  %266 = phi i8 [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 1, %264 ], !dbg !2403
  call void @llvm.dbg.value(metadata i8 %266, metadata !2280, metadata !DIExpression()), !dbg !2403
  br i1 %111, label %463, label %625, !dbg !2514

267:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i8 1, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, metadata !2280, metadata !DIExpression()), !dbg !2403
  br i1 %110, label %268, label %463, !dbg !2515

268:                                              ; preds = %267
  br i1 %109, label %269, label %625, !dbg !2516

269:                                              ; preds = %268
  %270 = icmp eq i64 %130, 0, !dbg !2518
  %271 = icmp ne i64 %125, 0, !dbg !2520
  %272 = or i1 %271, %270, !dbg !2521
  %273 = select i1 %272, i64 %125, i64 %130, !dbg !2521
  %274 = select i1 %272, i64 %130, i64 0, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %274, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %273, metadata !2264, metadata !DIExpression()), !dbg !2311
  %275 = icmp ult i64 %124, %274, !dbg !2522
  br i1 %275, label %276, label %278, !dbg !2525

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %124, !dbg !2522
  store i8 39, i8* %277, align 1, !dbg !2522, !tbaa !1468
  br label %278, !dbg !2522

278:                                              ; preds = %276, %269
  %279 = add i64 %124, 1, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %279, metadata !2263, metadata !DIExpression()), !dbg !2311
  %280 = icmp ult i64 %279, %274, !dbg !2526
  br i1 %280, label %281, label %283, !dbg !2529

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2526
  store i8 92, i8* %282, align 1, !dbg !2526, !tbaa !1468
  br label %283, !dbg !2526

283:                                              ; preds = %281, %278
  %284 = add i64 %124, 2, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %284, metadata !2263, metadata !DIExpression()), !dbg !2311
  %285 = icmp ult i64 %284, %274, !dbg !2530
  br i1 %285, label %286, label %288, !dbg !2533

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2530
  store i8 39, i8* %287, align 1, !dbg !2530, !tbaa !1468
  br label %288, !dbg !2530

288:                                              ; preds = %286, %283
  %289 = add i64 %124, 3, !dbg !2533
  call void @llvm.dbg.value(metadata i64 %289, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2311
  br label %463, !dbg !2534

290:                                              ; preds = %154
  br i1 %14, label %291, label %300, !dbg !2535

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !2281, metadata !DIExpression()), !dbg !2536
  %292 = tail call i16** @__ctype_b_loc() #26, !dbg !2537
  %293 = load i16*, i16** %292, align 8, !dbg !2537, !tbaa !1327
  %294 = zext i8 %158 to i64, !dbg !2537
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2537
  %296 = load i16, i16* %295, align 2, !dbg !2537, !tbaa !1611
  %297 = lshr i16 %296, 14, !dbg !2539
  %298 = trunc i16 %297 to i8, !dbg !2539
  %299 = and i8 %298, 1, !dbg !2539
  call void @llvm.dbg.value(metadata i8 %299, metadata !2284, metadata !DIExpression()), !dbg !2536
  br label %355, !dbg !2540

300:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2541
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !2285, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* %23, metadata !2543, metadata !DIExpression()) #20, !dbg !2551
  call void @llvm.dbg.value(metadata i32 0, metadata !2549, metadata !DIExpression()) #20, !dbg !2551
  call void @llvm.dbg.value(metadata i64 8, metadata !2550, metadata !DIExpression()) #20, !dbg !2551
  store i64 0, i64* %10, align 8, !dbg !2553
  call void @llvm.dbg.value(metadata i64 0, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 1, metadata !2284, metadata !DIExpression()), !dbg !2536
  %301 = icmp eq i64 %155, -1, !dbg !2554
  br i1 %301, label %302, label %304, !dbg !2556

302:                                              ; preds = %300
  %303 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #23, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %303, metadata !2256, metadata !DIExpression()), !dbg !2311
  br label %304, !dbg !2558

304:                                              ; preds = %302, %300
  %305 = phi i64 [ %303, %302 ], [ %155, %300 ], !dbg !2403
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  br label %306, !dbg !2559

306:                                              ; preds = %343, %304
  %307 = phi i64 [ 0, %304 ], [ %348, %343 ], !dbg !2560
  %308 = phi i8 [ 1, %304 ], [ %347, %343 ], !dbg !2561
  call void @llvm.dbg.value(metadata i8 %308, metadata !2284, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2562
  %309 = add i64 %307, %123, !dbg !2563
  %310 = getelementptr inbounds i8, i8* %2, i64 %309, !dbg !2564
  %311 = sub i64 %305, %309, !dbg !2565
  call void @llvm.dbg.value(metadata i32* %12, metadata !2291, metadata !DIExpression(DW_OP_deref)), !dbg !2324
  %312 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %310, i64 %311, %struct.__mbstate_t* nonnull %11) #20, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %312, metadata !2294, metadata !DIExpression()), !dbg !2324
  switch i64 %312, label %327 [
    i64 0, label %339
    i64 -1, label %340
    i64 -2, label %313
  ], !dbg !2567

313:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  %314 = icmp ugt i64 %305, %309, !dbg !2568
  br i1 %314, label %315, label %340, !dbg !2570

315:                                              ; preds = %313
  %316 = sub i64 %305, %123, !dbg !2571
  br label %317, !dbg !2571

317:                                              ; preds = %315, %323
  %318 = phi i64 [ %325, %323 ], [ %309, %315 ]
  %319 = phi i64 [ %324, %323 ], [ %307, %315 ]
  call void @llvm.dbg.value(metadata i64 %319, metadata !2281, metadata !DIExpression()), !dbg !2536
  %320 = getelementptr inbounds i8, i8* %2, i64 %318, !dbg !2572
  %321 = load i8, i8* %320, align 1, !dbg !2572, !tbaa !1468
  %322 = icmp eq i8 %321, 0, !dbg !2570
  br i1 %322, label %340, label %323, !dbg !2571

323:                                              ; preds = %317
  %324 = add i64 %319, 1, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %324, metadata !2281, metadata !DIExpression()), !dbg !2536
  %325 = add i64 %324, %123, !dbg !2574
  %326 = icmp ult i64 %325, %305, !dbg !2568
  br i1 %326, label %317, label %340, !dbg !2570, !llvm.loop !2575

327:                                              ; preds = %306
  %328 = icmp ugt i64 %312, 1, !dbg !2576
  %329 = and i1 %113, %328, !dbg !2579
  call void @llvm.dbg.value(metadata i64 1, metadata !2295, metadata !DIExpression()), !dbg !2580
  br i1 %329, label %330, label %343, !dbg !2579

330:                                              ; preds = %327, %336
  %331 = phi i64 [ %337, %336 ], [ 1, %327 ]
  call void @llvm.dbg.value(metadata i64 %331, metadata !2295, metadata !DIExpression()), !dbg !2580
  %332 = add i64 %331, %309, !dbg !2581
  %333 = getelementptr inbounds i8, i8* %2, i64 %332, !dbg !2582
  %334 = load i8, i8* %333, align 1, !dbg !2582, !tbaa !1468
  %335 = sext i8 %334 to i32, !dbg !2582
  switch i32 %335, label %336 [
    i32 91, label %354
    i32 92, label %354
    i32 94, label %354
    i32 96, label %354
    i32 124, label %354
  ], !dbg !2583

336:                                              ; preds = %330
  %337 = add nuw i64 %331, 1, !dbg !2584
  call void @llvm.dbg.value(metadata i64 %337, metadata !2295, metadata !DIExpression()), !dbg !2580
  %338 = icmp eq i64 %337, %312, !dbg !2576
  br i1 %338, label %343, label %330, !dbg !2585, !llvm.loop !2586

339:                                              ; preds = %306
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 %308, metadata !2284, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %307, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 %308, metadata !2284, metadata !DIExpression()), !dbg !2536
  br label %340, !dbg !2588

340:                                              ; preds = %323, %317, %306, %339, %313
  %341 = phi i64 [ %307, %313 ], [ %307, %339 ], [ %307, %306 ], [ %319, %317 ], [ %316, %323 ]
  %342 = phi i8 [ 0, %313 ], [ %308, %339 ], [ 0, %306 ], [ 0, %317 ], [ 0, %323 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2588
  br label %351

343:                                              ; preds = %336, %327
  %344 = load i32, i32* %12, align 4, !dbg !2589, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %344, metadata !2291, metadata !DIExpression()), !dbg !2324
  %345 = call i32 @iswprint(i32 %344) #20, !dbg !2591
  %346 = icmp eq i32 %345, 0, !dbg !2591
  %347 = select i1 %346, i8 0, i8 %308, !dbg !2592
  call void @llvm.dbg.value(metadata i8 %347, metadata !2284, metadata !DIExpression()), !dbg !2536
  %348 = add i64 %312, %307, !dbg !2593
  call void @llvm.dbg.value(metadata i64 %348, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 %347, metadata !2284, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %348, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2588
  %349 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #23, !dbg !2594
  %350 = icmp eq i32 %349, 0, !dbg !2595
  br i1 %350, label %306, label %351, !dbg !2596, !llvm.loop !2597

351:                                              ; preds = %343, %340
  %352 = phi i8 [ %342, %340 ], [ %347, %343 ]
  %353 = phi i64 [ %341, %340 ], [ %348, %343 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2599
  br label %355

354:                                              ; preds = %330, %330, %330, %330, %330
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 2, metadata !2257, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %99, metadata !2267, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %305, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #20, !dbg !2588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #20, !dbg !2599
  br label %625

355:                                              ; preds = %351, %291
  %356 = phi i64 [ %155, %291 ], [ %305, %351 ], !dbg !2403
  %357 = phi i64 [ 1, %291 ], [ %353, %351 ], !dbg !2600
  %358 = phi i8 [ %299, %291 ], [ %352, %351 ], !dbg !2600
  call void @llvm.dbg.value(metadata i8 %358, metadata !2284, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %357, metadata !2281, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %356, metadata !2256, metadata !DIExpression()), !dbg !2311
  %359 = and i8 %358, 1, !dbg !2601
  %360 = icmp ne i8 %359, 0, !dbg !2601
  call void @llvm.dbg.value(metadata i8 %359, metadata !2280, metadata !DIExpression()), !dbg !2403
  %361 = icmp ult i64 %357, 2, !dbg !2602
  %362 = or i1 %360, %114, !dbg !2603
  %363 = and i1 %361, %362, !dbg !2604
  br i1 %363, label %463, label %364, !dbg !2604

364:                                              ; preds = %355
  %365 = add i64 %357, %123, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %365, metadata !2302, metadata !DIExpression()), !dbg !2606
  br label %366, !dbg !2607

366:                                              ; preds = %459, %364
  %367 = phi i64 [ %123, %364 ], [ %434, %459 ], !dbg !2396
  %368 = phi i64 [ %124, %364 ], [ %460, %459 ], !dbg !2311
  %369 = phi i8 [ %127, %364 ], [ %455, %459 ], !dbg !2332
  %370 = phi i8 [ %158, %364 ], [ %462, %459 ], !dbg !2403
  %371 = phi i8 [ %156, %364 ], [ %432, %459 ], !dbg !2403
  %372 = phi i8 [ 0, %364 ], [ %433, %459 ], !dbg !2608
  call void @llvm.dbg.value(metadata i8 %372, metadata !2279, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %371, metadata !2278, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %370, metadata !2273, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %369, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %368, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %367, metadata !2262, metadata !DIExpression()), !dbg !2311
  br i1 %362, label %419, label %373, !dbg !2609

373:                                              ; preds = %366
  br i1 %109, label %374, label %629, !dbg !2614

374:                                              ; preds = %373
  call void @llvm.dbg.value(metadata i8 1, metadata !2279, metadata !DIExpression()), !dbg !2403
  %375 = and i8 %369, 1, !dbg !2617
  %376 = icmp eq i8 %375, 0, !dbg !2617
  %377 = and i1 %110, %376, !dbg !2617
  br i1 %377, label %378, label %394, !dbg !2617

378:                                              ; preds = %374
  %379 = icmp ult i64 %368, %130, !dbg !2619
  br i1 %379, label %380, label %382, !dbg !2623

380:                                              ; preds = %378
  %381 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2619
  store i8 39, i8* %381, align 1, !dbg !2619, !tbaa !1468
  br label %382, !dbg !2619

382:                                              ; preds = %380, %378
  %383 = add i64 %368, 1, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %383, metadata !2263, metadata !DIExpression()), !dbg !2311
  %384 = icmp ult i64 %383, %130, !dbg !2624
  br i1 %384, label %385, label %387, !dbg !2627

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2624
  store i8 36, i8* %386, align 1, !dbg !2624, !tbaa !1468
  br label %387, !dbg !2624

387:                                              ; preds = %385, %382
  %388 = add i64 %368, 2, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %388, metadata !2263, metadata !DIExpression()), !dbg !2311
  %389 = icmp ult i64 %388, %130, !dbg !2628
  br i1 %389, label %390, label %392, !dbg !2631

390:                                              ; preds = %387
  %391 = getelementptr inbounds i8, i8* %0, i64 %388, !dbg !2628
  store i8 39, i8* %391, align 1, !dbg !2628, !tbaa !1468
  br label %392, !dbg !2628

392:                                              ; preds = %390, %387
  %393 = add i64 %368, 3, !dbg !2631
  call void @llvm.dbg.value(metadata i64 %393, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, metadata !2270, metadata !DIExpression()), !dbg !2311
  br label %394, !dbg !2632

394:                                              ; preds = %374, %392
  %395 = phi i64 [ %393, %392 ], [ %368, %374 ], !dbg !2311
  %396 = phi i8 [ 1, %392 ], [ %369, %374 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %396, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %395, metadata !2263, metadata !DIExpression()), !dbg !2311
  %397 = icmp ult i64 %395, %130, !dbg !2633
  br i1 %397, label %398, label %400, !dbg !2636

398:                                              ; preds = %394
  %399 = getelementptr inbounds i8, i8* %0, i64 %395, !dbg !2633
  store i8 92, i8* %399, align 1, !dbg !2633, !tbaa !1468
  br label %400, !dbg !2633

400:                                              ; preds = %398, %394
  %401 = add i64 %395, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %401, metadata !2263, metadata !DIExpression()), !dbg !2311
  %402 = icmp ult i64 %401, %130, !dbg !2637
  br i1 %402, label %403, label %407, !dbg !2640

403:                                              ; preds = %400
  %404 = lshr i8 %370, 6, !dbg !2637
  %405 = or i8 %404, 48, !dbg !2637
  %406 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !2637
  store i8 %405, i8* %406, align 1, !dbg !2637, !tbaa !1468
  br label %407, !dbg !2637

407:                                              ; preds = %403, %400
  %408 = add i64 %395, 2, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %408, metadata !2263, metadata !DIExpression()), !dbg !2311
  %409 = icmp ult i64 %408, %130, !dbg !2641
  br i1 %409, label %410, label %415, !dbg !2644

410:                                              ; preds = %407
  %411 = lshr i8 %370, 3, !dbg !2641
  %412 = and i8 %411, 7, !dbg !2641
  %413 = or i8 %412, 48, !dbg !2641
  %414 = getelementptr inbounds i8, i8* %0, i64 %408, !dbg !2641
  store i8 %413, i8* %414, align 1, !dbg !2641, !tbaa !1468
  br label %415, !dbg !2641

415:                                              ; preds = %410, %407
  %416 = add i64 %395, 3, !dbg !2644
  call void @llvm.dbg.value(metadata i64 %416, metadata !2263, metadata !DIExpression()), !dbg !2311
  %417 = and i8 %370, 7, !dbg !2645
  %418 = or i8 %417, 48, !dbg !2646
  call void @llvm.dbg.value(metadata i8 %418, metadata !2273, metadata !DIExpression()), !dbg !2403
  br label %428, !dbg !2647

419:                                              ; preds = %366
  %420 = and i8 %371, 1, !dbg !2648
  %421 = icmp eq i8 %420, 0, !dbg !2648
  br i1 %421, label %428, label %422, !dbg !2650

422:                                              ; preds = %419
  %423 = icmp ult i64 %368, %130, !dbg !2651
  br i1 %423, label %424, label %426, !dbg !2655

424:                                              ; preds = %422
  %425 = getelementptr inbounds i8, i8* %0, i64 %368, !dbg !2651
  store i8 92, i8* %425, align 1, !dbg !2651, !tbaa !1468
  br label %426, !dbg !2651

426:                                              ; preds = %424, %422
  %427 = add i64 %368, 1, !dbg !2655
  call void @llvm.dbg.value(metadata i64 %427, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2278, metadata !DIExpression()), !dbg !2403
  br label %428, !dbg !2656

428:                                              ; preds = %419, %426, %415
  %429 = phi i64 [ %427, %426 ], [ %368, %419 ], [ %416, %415 ], !dbg !2311
  %430 = phi i8 [ %369, %426 ], [ %369, %419 ], [ %396, %415 ], !dbg !2332
  %431 = phi i8 [ %370, %426 ], [ %370, %419 ], [ %418, %415 ], !dbg !2403
  %432 = phi i8 [ 0, %426 ], [ %371, %419 ], [ %371, %415 ], !dbg !2403
  %433 = phi i8 [ %372, %426 ], [ %372, %419 ], [ 1, %415 ], !dbg !2403
  call void @llvm.dbg.value(metadata i8 %433, metadata !2279, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %432, metadata !2278, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %431, metadata !2273, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %430, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %429, metadata !2263, metadata !DIExpression()), !dbg !2311
  %434 = add i64 %367, 1, !dbg !2657
  %435 = icmp ugt i64 %365, %434, !dbg !2659
  br i1 %435, label %436, label %526, !dbg !2660

436:                                              ; preds = %428
  %437 = and i8 %430, 1, !dbg !2661
  %438 = icmp ne i8 %437, 0, !dbg !2661
  %439 = and i8 %433, 1, !dbg !2661
  %440 = icmp eq i8 %439, 0, !dbg !2661
  %441 = and i1 %438, %440, !dbg !2661
  br i1 %441, label %442, label %453, !dbg !2661

442:                                              ; preds = %436
  %443 = icmp ult i64 %429, %130, !dbg !2664
  br i1 %443, label %444, label %446, !dbg !2668

444:                                              ; preds = %442
  %445 = getelementptr inbounds i8, i8* %0, i64 %429, !dbg !2664
  store i8 39, i8* %445, align 1, !dbg !2664, !tbaa !1468
  br label %446, !dbg !2664

446:                                              ; preds = %444, %442
  %447 = add i64 %429, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %447, metadata !2263, metadata !DIExpression()), !dbg !2311
  %448 = icmp ult i64 %447, %130, !dbg !2669
  br i1 %448, label %449, label %451, !dbg !2672

449:                                              ; preds = %446
  %450 = getelementptr inbounds i8, i8* %0, i64 %447, !dbg !2669
  store i8 39, i8* %450, align 1, !dbg !2669, !tbaa !1468
  br label %451, !dbg !2669

451:                                              ; preds = %449, %446
  %452 = add i64 %429, 2, !dbg !2672
  call void @llvm.dbg.value(metadata i64 %452, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2311
  br label %453, !dbg !2673

453:                                              ; preds = %436, %451
  %454 = phi i64 [ %452, %451 ], [ %429, %436 ], !dbg !2674
  %455 = phi i8 [ 0, %451 ], [ %430, %436 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %455, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %454, metadata !2263, metadata !DIExpression()), !dbg !2311
  %456 = icmp ult i64 %454, %130, !dbg !2675
  br i1 %456, label %457, label %459, !dbg !2678

457:                                              ; preds = %453
  %458 = getelementptr inbounds i8, i8* %0, i64 %454, !dbg !2675
  store i8 %431, i8* %458, align 1, !dbg !2675, !tbaa !1468
  br label %459, !dbg !2675

459:                                              ; preds = %457, %453
  %460 = add i64 %454, 1, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %460, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %434, metadata !2262, metadata !DIExpression()), !dbg !2311
  %461 = getelementptr inbounds i8, i8* %2, i64 %434, !dbg !2679
  %462 = load i8, i8* %461, align 1, !dbg !2679, !tbaa !1468
  call void @llvm.dbg.value(metadata i8 %462, metadata !2273, metadata !DIExpression()), !dbg !2403
  br label %366, !dbg !2680, !llvm.loop !2681

463:                                              ; preds = %355, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %154, %265, %258, %187, %189, %192, %206, %208, %210, %211, %262, %267, %288, %259, %256, %244, %220, %215, %212, %209
  %464 = phi i64 [ %123, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %213, %244 ], [ %123, %215 ], [ %123, %212 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %123, %206 ], [ %123, %192 ], [ %123, %189 ], [ %123, %187 ], [ %123, %258 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %154 ], [ %123, %355 ], !dbg !2396
  %465 = phi i64 [ %289, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %245, %244 ], [ %124, %215 ], [ %124, %212 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %189 ], [ %188, %187 ], [ %124, %258 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %154 ], [ %124, %355 ], !dbg !2311
  %466 = phi i64 [ %273, %288 ], [ %125, %267 ], [ %125, %265 ], [ %125, %262 ], [ %125, %259 ], [ %125, %256 ], [ %125, %209 ], [ %125, %220 ], [ %125, %244 ], [ %125, %215 ], [ %125, %212 ], [ %125, %211 ], [ %125, %210 ], [ %125, %208 ], [ %125, %206 ], [ %125, %192 ], [ %125, %189 ], [ %125, %187 ], [ %125, %258 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %154 ], [ %125, %355 ], !dbg !2328
  %467 = phi i64 [ %155, %288 ], [ %155, %267 ], [ %155, %265 ], [ %155, %262 ], [ -1, %259 ], [ %155, %256 ], [ %155, %209 ], [ %155, %220 ], [ %155, %244 ], [ %155, %215 ], [ %155, %212 ], [ %155, %211 ], [ %155, %210 ], [ %155, %208 ], [ %155, %206 ], [ %155, %192 ], [ %155, %189 ], [ %155, %187 ], [ %155, %258 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %155, %154 ], [ %356, %355 ], !dbg !2684
  %468 = phi i8 [ 0, %288 ], [ %127, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %212 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %189 ], [ %183, %187 ], [ %127, %258 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %154 ], [ %127, %355 ], !dbg !2311
  %469 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %128, %265 ], [ %128, %262 ], [ %128, %259 ], [ %128, %256 ], [ %128, %209 ], [ %128, %220 ], [ %128, %244 ], [ %128, %215 ], [ %128, %212 ], [ %128, %211 ], [ %128, %210 ], [ %128, %208 ], [ %128, %206 ], [ %128, %192 ], [ %128, %189 ], [ %128, %187 ], [ %128, %258 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %154 ], [ %128, %355 ], !dbg !2311
  %470 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %212 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %189 ], [ 48, %187 ], [ %158, %258 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %154 ], [ %158, %355 ], !dbg !2403
  %471 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %189 ], [ 1, %187 ], [ 0, %258 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %355 ], !dbg !2403
  %472 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %212 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %189 ], [ 0, %187 ], [ 0, %258 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ 1, %154 ], [ %359, %355 ], !dbg !2403
  %473 = phi i64 [ %274, %288 ], [ %130, %267 ], [ %130, %265 ], [ %130, %262 ], [ %130, %259 ], [ %130, %256 ], [ %130, %209 ], [ %130, %220 ], [ %130, %244 ], [ %130, %215 ], [ %130, %212 ], [ %130, %211 ], [ %130, %210 ], [ %130, %208 ], [ %130, %206 ], [ %130, %192 ], [ %130, %189 ], [ %130, %187 ], [ %130, %258 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %154 ], [ %130, %355 ]
  call void @llvm.dbg.value(metadata i64 %473, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %472, metadata !2280, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %471, metadata !2279, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %156, metadata !2278, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %470, metadata !2273, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %469, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %468, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %467, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %466, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %465, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %464, metadata !2262, metadata !DIExpression()), !dbg !2311
  br i1 %117, label %486, label %474, !dbg !2685

474:                                              ; preds = %463
  %475 = lshr i8 %470, 5, !dbg !2686
  %476 = zext i8 %475 to i64, !dbg !2686
  %477 = getelementptr inbounds i32, i32* %6, i64 %476, !dbg !2687
  %478 = load i32, i32* %477, align 4, !dbg !2687, !tbaa !1415
  %479 = and i8 %470, 31, !dbg !2688
  %480 = zext i8 %479 to i32, !dbg !2688
  %481 = shl nuw i32 1, %480, !dbg !2689
  %482 = and i32 %478, %481, !dbg !2689
  %483 = icmp eq i32 %482, 0, !dbg !2689
  %484 = icmp eq i8 %156, 0, !dbg !2690
  %485 = and i1 %484, %483, !dbg !2691
  br i1 %485, label %526, label %488, !dbg !2691

486:                                              ; preds = %463
  %487 = icmp eq i8 %156, 0, !dbg !2690
  br i1 %487, label %526, label %488, !dbg !2692

488:                                              ; preds = %256, %474, %486
  %489 = phi i64 [ %464, %474 ], [ %464, %486 ], [ %123, %256 ], !dbg !2693
  %490 = phi i64 [ %465, %474 ], [ %465, %486 ], [ %124, %256 ], !dbg !2311
  %491 = phi i64 [ %466, %474 ], [ %466, %486 ], [ %125, %256 ], !dbg !2328
  %492 = phi i64 [ %467, %474 ], [ %467, %486 ], [ %155, %256 ], !dbg !2684
  %493 = phi i8 [ %468, %474 ], [ %468, %486 ], [ %127, %256 ], !dbg !2332
  %494 = phi i8 [ %469, %474 ], [ %469, %486 ], [ %128, %256 ], !dbg !2333
  %495 = phi i8 [ %470, %474 ], [ %470, %486 ], [ %257, %256 ], !dbg !2403
  %496 = phi i8 [ %472, %474 ], [ %472, %486 ], [ 0, %256 ], !dbg !2403
  %497 = phi i64 [ %473, %474 ], [ %473, %486 ], [ %130, %256 ]
  call void @llvm.dbg.value(metadata i64 %497, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %496, metadata !2280, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %495, metadata !2273, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %494, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %493, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %492, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %491, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %490, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %489, metadata !2262, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.label(metadata !2308), !dbg !2694
  br i1 %109, label %498, label %629, !dbg !2695

498:                                              ; preds = %488
  call void @llvm.dbg.value(metadata i8 1, metadata !2279, metadata !DIExpression()), !dbg !2403
  %499 = and i8 %493, 1, !dbg !2697
  %500 = icmp eq i8 %499, 0, !dbg !2697
  %501 = and i1 %110, %500, !dbg !2697
  br i1 %501, label %502, label %518, !dbg !2697

502:                                              ; preds = %498
  %503 = icmp ult i64 %490, %497, !dbg !2699
  br i1 %503, label %504, label %506, !dbg !2703

504:                                              ; preds = %502
  %505 = getelementptr inbounds i8, i8* %0, i64 %490, !dbg !2699
  store i8 39, i8* %505, align 1, !dbg !2699, !tbaa !1468
  br label %506, !dbg !2699

506:                                              ; preds = %504, %502
  %507 = add i64 %490, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i64 %507, metadata !2263, metadata !DIExpression()), !dbg !2311
  %508 = icmp ult i64 %507, %497, !dbg !2704
  br i1 %508, label %509, label %511, !dbg !2707

509:                                              ; preds = %506
  %510 = getelementptr inbounds i8, i8* %0, i64 %507, !dbg !2704
  store i8 36, i8* %510, align 1, !dbg !2704, !tbaa !1468
  br label %511, !dbg !2704

511:                                              ; preds = %509, %506
  %512 = add i64 %490, 2, !dbg !2707
  call void @llvm.dbg.value(metadata i64 %512, metadata !2263, metadata !DIExpression()), !dbg !2311
  %513 = icmp ult i64 %512, %497, !dbg !2708
  br i1 %513, label %514, label %516, !dbg !2711

514:                                              ; preds = %511
  %515 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2708
  store i8 39, i8* %515, align 1, !dbg !2708, !tbaa !1468
  br label %516, !dbg !2708

516:                                              ; preds = %514, %511
  %517 = add i64 %490, 3, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %517, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 1, metadata !2270, metadata !DIExpression()), !dbg !2311
  br label %518, !dbg !2712

518:                                              ; preds = %498, %516
  %519 = phi i64 [ %517, %516 ], [ %490, %498 ], !dbg !2403
  %520 = phi i8 [ 1, %516 ], [ %493, %498 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %520, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %519, metadata !2263, metadata !DIExpression()), !dbg !2311
  %521 = icmp ult i64 %519, %497, !dbg !2713
  br i1 %521, label %522, label %524, !dbg !2716

522:                                              ; preds = %518
  %523 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2713
  store i8 92, i8* %523, align 1, !dbg !2713, !tbaa !1468
  br label %524, !dbg !2713

524:                                              ; preds = %518, %522
  %525 = add i64 %519, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %525, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %536, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %535, metadata !2280, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %534, metadata !2279, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %533, metadata !2273, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %532, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %531, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %530, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %529, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %528, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %527, metadata !2262, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.label(metadata !2309), !dbg !2717
  br label %553, !dbg !2718

526:                                              ; preds = %428, %253, %474, %252, %486
  %527 = phi i64 [ %464, %486 ], [ %123, %252 ], [ %464, %474 ], [ %123, %253 ], [ %367, %428 ], !dbg !2693
  %528 = phi i64 [ %465, %486 ], [ %124, %252 ], [ %465, %474 ], [ %124, %253 ], [ %429, %428 ], !dbg !2311
  %529 = phi i64 [ %466, %486 ], [ %125, %252 ], [ %466, %474 ], [ %125, %253 ], [ %125, %428 ], !dbg !2328
  %530 = phi i64 [ %467, %486 ], [ %155, %252 ], [ %467, %474 ], [ %155, %253 ], [ %356, %428 ], !dbg !2684
  %531 = phi i8 [ %468, %486 ], [ %127, %252 ], [ %468, %474 ], [ %127, %253 ], [ %430, %428 ], !dbg !2332
  %532 = phi i8 [ %469, %486 ], [ %128, %252 ], [ %469, %474 ], [ %128, %253 ], [ %128, %428 ], !dbg !2333
  %533 = phi i8 [ %470, %486 ], [ 92, %252 ], [ %470, %474 ], [ 92, %253 ], [ %431, %428 ], !dbg !2721
  %534 = phi i8 [ %471, %486 ], [ 0, %252 ], [ %471, %474 ], [ 0, %253 ], [ %433, %428 ], !dbg !2403
  %535 = phi i8 [ %472, %486 ], [ 0, %252 ], [ %472, %474 ], [ 0, %253 ], [ %359, %428 ], !dbg !2403
  %536 = phi i64 [ %473, %486 ], [ %130, %252 ], [ %473, %474 ], [ %130, %253 ], [ %130, %428 ]
  call void @llvm.dbg.value(metadata i64 %536, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %535, metadata !2280, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %534, metadata !2279, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %533, metadata !2273, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8 %532, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %531, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %530, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %529, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %528, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %527, metadata !2262, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.label(metadata !2309), !dbg !2717
  %537 = and i8 %531, 1, !dbg !2718
  %538 = icmp ne i8 %537, 0, !dbg !2718
  %539 = and i8 %534, 1, !dbg !2718
  %540 = icmp eq i8 %539, 0, !dbg !2718
  %541 = and i1 %538, %540, !dbg !2718
  br i1 %541, label %542, label %553, !dbg !2718

542:                                              ; preds = %526
  %543 = icmp ult i64 %528, %536, !dbg !2722
  br i1 %543, label %544, label %546, !dbg !2726

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, i8* %0, i64 %528, !dbg !2722
  store i8 39, i8* %545, align 1, !dbg !2722, !tbaa !1468
  br label %546, !dbg !2722

546:                                              ; preds = %544, %542
  %547 = add i64 %528, 1, !dbg !2726
  call void @llvm.dbg.value(metadata i64 %547, metadata !2263, metadata !DIExpression()), !dbg !2311
  %548 = icmp ult i64 %547, %536, !dbg !2727
  br i1 %548, label %549, label %551, !dbg !2730

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, i8* %0, i64 %547, !dbg !2727
  store i8 39, i8* %550, align 1, !dbg !2727, !tbaa !1468
  br label %551, !dbg !2727

551:                                              ; preds = %549, %546
  %552 = add i64 %528, 2, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %552, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 0, metadata !2270, metadata !DIExpression()), !dbg !2311
  br label %553, !dbg !2731

553:                                              ; preds = %524, %526, %551
  %554 = phi i64 [ %536, %551 ], [ %536, %526 ], [ %497, %524 ]
  %555 = phi i8 [ %535, %551 ], [ %535, %526 ], [ %496, %524 ]
  %556 = phi i8 [ %533, %551 ], [ %533, %526 ], [ %495, %524 ]
  %557 = phi i8 [ %532, %551 ], [ %532, %526 ], [ %494, %524 ]
  %558 = phi i64 [ %530, %551 ], [ %530, %526 ], [ %492, %524 ]
  %559 = phi i64 [ %529, %551 ], [ %529, %526 ], [ %491, %524 ]
  %560 = phi i64 [ %527, %551 ], [ %527, %526 ], [ %489, %524 ]
  %561 = phi i64 [ %552, %551 ], [ %528, %526 ], [ %525, %524 ], !dbg !2403
  %562 = phi i8 [ 0, %551 ], [ %531, %526 ], [ %520, %524 ], !dbg !2311
  call void @llvm.dbg.value(metadata i8 %562, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %561, metadata !2263, metadata !DIExpression()), !dbg !2311
  %563 = icmp ult i64 %561, %554, !dbg !2732
  br i1 %563, label %564, label %566, !dbg !2735

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, i8* %0, i64 %561, !dbg !2732
  store i8 %556, i8* %565, align 1, !dbg !2732, !tbaa !1468
  br label %566, !dbg !2732

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %567, metadata !2263, metadata !DIExpression()), !dbg !2311
  %568 = and i8 %555, 1, !dbg !2736
  %569 = icmp eq i8 %568, 0, !dbg !2736
  %570 = select i1 %569, i8 0, i8 %129, !dbg !2738
  call void @llvm.dbg.value(metadata i8 %570, metadata !2272, metadata !DIExpression()), !dbg !2311
  br label %571, !dbg !2739

571:                                              ; preds = %566, %208
  %572 = phi i64 [ %560, %566 ], [ %123, %208 ], !dbg !2693
  %573 = phi i64 [ %567, %566 ], [ %124, %208 ], !dbg !2311
  %574 = phi i64 [ %559, %566 ], [ %125, %208 ], !dbg !2328
  %575 = phi i64 [ %558, %566 ], [ %155, %208 ], !dbg !2684
  %576 = phi i8 [ %562, %566 ], [ %127, %208 ], !dbg !2332
  %577 = phi i8 [ %557, %566 ], [ %128, %208 ], !dbg !2311
  %578 = phi i8 [ %570, %566 ], [ %129, %208 ], !dbg !2334
  %579 = phi i64 [ %554, %566 ], [ %130, %208 ]
  call void @llvm.dbg.value(metadata i64 %579, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %578, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %577, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %576, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %575, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %574, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %573, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %572, metadata !2262, metadata !DIExpression()), !dbg !2311
  %580 = add i64 %572, 1, !dbg !2740
  call void @llvm.dbg.value(metadata i64 %580, metadata !2262, metadata !DIExpression()), !dbg !2311
  br label %122, !dbg !2741, !llvm.loop !2742

581:                                              ; preds = %132, %136
  %582 = phi i64 [ -1, %132 ], [ %123, %136 ]
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %127, metadata !2270, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %128, metadata !2271, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 %129, metadata !2272, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  %583 = icmp eq i64 %124, 0, !dbg !2744
  %584 = and i1 %110, %583, !dbg !2746
  %585 = xor i1 %584, true, !dbg !2746
  %586 = or i1 %109, %585, !dbg !2746
  br i1 %586, label %587, label %629, !dbg !2746

587:                                              ; preds = %581
  %588 = and i1 %110, %109, !dbg !2747
  %589 = xor i1 %588, true, !dbg !2747
  %590 = and i8 %128, 1, !dbg !2749
  %591 = icmp eq i8 %590, 0, !dbg !2749
  %592 = or i1 %591, %589, !dbg !2747
  br i1 %592, label %602, label %593, !dbg !2747

593:                                              ; preds = %587
  %594 = and i8 %129, 1, !dbg !2750
  %595 = icmp eq i8 %594, 0, !dbg !2750
  br i1 %595, label %598, label %596, !dbg !2753

596:                                              ; preds = %593
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %94, metadata !2260, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %95, metadata !2261, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %125, metadata !2264, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %582, metadata !2256, metadata !DIExpression()), !dbg !2311
  %597 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %125, i8* %2, i64 %582, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2754
  br label %645, !dbg !2755

598:                                              ; preds = %593
  %599 = icmp eq i64 %130, 0, !dbg !2756
  %600 = icmp ne i64 %125, 0, !dbg !2758
  %601 = and i1 %600, %599, !dbg !2759
  br i1 %601, label %26, label %602, !dbg !2759

602:                                              ; preds = %587, %598
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %130, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  %603 = icmp ne i8* %97, null, !dbg !2760
  %604 = and i1 %603, %109, !dbg !2762
  br i1 %604, label %605, label %620, !dbg !2762

605:                                              ; preds = %602
  call void @llvm.dbg.value(metadata i8* %97, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %124, metadata !2263, metadata !DIExpression()), !dbg !2311
  %606 = load i8, i8* %97, align 1, !dbg !2763, !tbaa !1468
  %607 = icmp eq i8 %606, 0, !dbg !2766
  br i1 %607, label %620, label %608, !dbg !2766

608:                                              ; preds = %605, %615
  %609 = phi i8 [ %618, %615 ], [ %606, %605 ]
  %610 = phi i8* [ %617, %615 ], [ %97, %605 ]
  %611 = phi i64 [ %616, %615 ], [ %124, %605 ]
  call void @llvm.dbg.value(metadata i8* %610, metadata !2265, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %611, metadata !2263, metadata !DIExpression()), !dbg !2311
  %612 = icmp ult i64 %611, %130, !dbg !2767
  br i1 %612, label %613, label %615, !dbg !2770

613:                                              ; preds = %608
  %614 = getelementptr inbounds i8, i8* %0, i64 %611, !dbg !2767
  store i8 %609, i8* %614, align 1, !dbg !2767, !tbaa !1468
  br label %615, !dbg !2767

615:                                              ; preds = %613, %608
  %616 = add i64 %611, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %616, metadata !2263, metadata !DIExpression()), !dbg !2311
  %617 = getelementptr inbounds i8, i8* %610, i64 1, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %617, metadata !2265, metadata !DIExpression()), !dbg !2311
  %618 = load i8, i8* %617, align 1, !dbg !2763, !tbaa !1468
  %619 = icmp eq i8 %618, 0, !dbg !2766
  br i1 %619, label %620, label %608, !dbg !2766, !llvm.loop !2772

620:                                              ; preds = %615, %605, %602
  %621 = phi i64 [ %124, %602 ], [ %124, %605 ], [ %616, %615 ], !dbg !2365
  call void @llvm.dbg.value(metadata i64 %621, metadata !2263, metadata !DIExpression()), !dbg !2311
  %622 = icmp ult i64 %621, %130, !dbg !2774
  br i1 %622, label %623, label %645, !dbg !2776

623:                                              ; preds = %620
  %624 = getelementptr inbounds i8, i8* %0, i64 %621, !dbg !2777
  store i8 0, i8* %624, align 1, !dbg !2778, !tbaa !1468
  br label %645, !dbg !2777

625:                                              ; preds = %210, %252, %254, %265, %268, %354
  %626 = phi i64 [ %305, %354 ], [ %155, %268 ], [ %155, %265 ], [ %155, %254 ], [ %155, %252 ], [ %155, %210 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %630, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.label(metadata !2310), !dbg !2779
  %627 = icmp eq i8 %101, 0, !dbg !2780
  %628 = select i1 %627, i32 2, i32 4, !dbg !2780
  br label %635, !dbg !2780

629:                                              ; preds = %581, %488, %160, %373
  %630 = phi i64 [ %356, %373 ], [ %492, %488 ], [ %155, %160 ], [ %582, %581 ]
  %631 = phi i64 [ %130, %373 ], [ %497, %488 ], [ %130, %160 ], [ %130, %581 ]
  call void @llvm.dbg.value(metadata i64 %631, metadata !2254, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %630, metadata !2256, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.label(metadata !2310), !dbg !2779
  %632 = icmp eq i32 %93, 2, !dbg !2782
  %633 = icmp eq i8 %101, 0, !dbg !2780
  %634 = select i1 %633, i32 2, i32 4, !dbg !2780
  br i1 %632, label %635, label %639, !dbg !2780

635:                                              ; preds = %625, %629
  %636 = phi i32 [ %628, %625 ], [ %634, %629 ]
  %637 = phi i64 [ %130, %625 ], [ %631, %629 ]
  %638 = phi i64 [ %626, %625 ], [ %630, %629 ]
  br label %639, !dbg !2780

639:                                              ; preds = %224, %147, %629, %635
  %640 = phi i64 [ %637, %635 ], [ %631, %629 ], [ %130, %147 ], [ %130, %224 ]
  %641 = phi i64 [ %638, %635 ], [ %630, %629 ], [ %155, %224 ], [ %145, %147 ]
  %642 = phi i32 [ %636, %635 ], [ %93, %629 ], [ 5, %224 ], [ %93, %147 ]
  call void @llvm.dbg.value(metadata i32 %642, metadata !2257, metadata !DIExpression()), !dbg !2311
  %643 = and i32 %5, -3, !dbg !2783
  %644 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %640, i8* %2, i64 %641, i32 %642, i32 %643, i32* null, i8* %94, i8* %95), !dbg !2784
  br label %645, !dbg !2785

645:                                              ; preds = %620, %623, %639, %596
  %646 = phi i64 [ %644, %639 ], [ %597, %596 ], [ %621, %623 ], [ %621, %620 ]
  ret i64 %646, !dbg !2786
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2787 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2791, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 %1, metadata !2792, metadata !DIExpression()), !dbg !2795
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #20, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %3, metadata !2793, metadata !DIExpression()), !dbg !2795
  %4 = icmp eq i8* %3, %0, !dbg !2797
  br i1 %4, label %5, label %71, !dbg !2799

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #20, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %6, metadata !2794, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %6, metadata !2801, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8* undef, metadata !2807, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 85, metadata !2808, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 84, metadata !2809, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 70, metadata !2810, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 45, metadata !2811, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 56, metadata !2812, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 0, metadata !2813, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 0, metadata !2814, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 0, metadata !2815, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i8 0, metadata !2816, metadata !DIExpression()), !dbg !2817
  %7 = load i8, i8* %6, align 1, !dbg !2820, !tbaa !1468
  %8 = and i8 %7, -33, !dbg !2820
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2820

9:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2822, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8* undef, metadata !2827, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 84, metadata !2828, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 70, metadata !2829, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 45, metadata !2830, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 56, metadata !2831, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 0, metadata !2832, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 0, metadata !2833, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 0, metadata !2834, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i8 0, metadata !2835, metadata !DIExpression()), !dbg !2836
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2840
  %11 = load i8, i8* %10, align 1, !dbg !2840, !tbaa !1468
  %12 = and i8 %11, -33, !dbg !2840
  %13 = icmp eq i8 %12, 84, !dbg !2840
  br i1 %13, label %14, label %68, !dbg !2840

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2842, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8* undef, metadata !2847, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 70, metadata !2848, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 45, metadata !2849, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 56, metadata !2850, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2851, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2852, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2855
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2859
  %16 = load i8, i8* %15, align 1, !dbg !2859, !tbaa !1468
  %17 = and i8 %16, -33, !dbg !2859
  %18 = icmp eq i8 %17, 70, !dbg !2859
  br i1 %18, label %19, label %68, !dbg !2859

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2861, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8* undef, metadata !2866, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 45, metadata !2867, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 56, metadata !2868, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 0, metadata !2869, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 0, metadata !2870, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 0, metadata !2871, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.value(metadata i8 0, metadata !2872, metadata !DIExpression()), !dbg !2873
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2877
  %21 = load i8, i8* %20, align 1, !dbg !2877, !tbaa !1468
  %22 = icmp eq i8 %21, 45, !dbg !2877
  br i1 %22, label %23, label %68, !dbg !2879

23:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2880, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8* undef, metadata !2885, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 56, metadata !2886, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 0, metadata !2887, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 0, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 0, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i8 0, metadata !2890, metadata !DIExpression()), !dbg !2891
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2895
  %25 = load i8, i8* %24, align 1, !dbg !2895, !tbaa !1468
  %26 = icmp eq i8 %25, 56, !dbg !2895
  br i1 %26, label %27, label %68, !dbg !2897

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2898, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* undef, metadata !2903, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 0, metadata !2904, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 0, metadata !2905, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 0, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8 0, metadata !2907, metadata !DIExpression()), !dbg !2908
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2912
  %29 = load i8, i8* %28, align 1, !dbg !2912, !tbaa !1468
  %30 = icmp eq i8 %29, 0, !dbg !2912
  br i1 %30, label %31, label %68, !dbg !2914

31:                                               ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2915, !tbaa !1468
  %33 = icmp eq i8 %32, 96, !dbg !2916
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.153, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.154, i64 0, i64 0), !dbg !2915
  br label %71, !dbg !2917

35:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2822, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8* undef, metadata !2827, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 66, metadata !2828, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 49, metadata !2829, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 56, metadata !2830, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 48, metadata !2831, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 51, metadata !2832, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 48, metadata !2833, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 0, metadata !2834, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i8 0, metadata !2835, metadata !DIExpression()), !dbg !2918
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2922
  %37 = load i8, i8* %36, align 1, !dbg !2922, !tbaa !1468
  %38 = and i8 %37, -33, !dbg !2922
  %39 = icmp eq i8 %38, 66, !dbg !2922
  br i1 %39, label %40, label %68, !dbg !2922

40:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2842, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8* undef, metadata !2847, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 49, metadata !2848, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 56, metadata !2849, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 48, metadata !2850, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 51, metadata !2851, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 48, metadata !2852, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 0, metadata !2853, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i8 0, metadata !2854, metadata !DIExpression()), !dbg !2923
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2925
  %42 = load i8, i8* %41, align 1, !dbg !2925, !tbaa !1468
  %43 = icmp eq i8 %42, 49, !dbg !2925
  br i1 %43, label %44, label %68, !dbg !2926

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2861, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8* undef, metadata !2866, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 56, metadata !2867, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 48, metadata !2868, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 51, metadata !2869, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 48, metadata !2870, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 0, metadata !2871, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i8 0, metadata !2872, metadata !DIExpression()), !dbg !2927
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2929
  %46 = load i8, i8* %45, align 1, !dbg !2929, !tbaa !1468
  %47 = icmp eq i8 %46, 56, !dbg !2929
  br i1 %47, label %48, label %68, !dbg !2930

48:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2880, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8* undef, metadata !2885, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 48, metadata !2886, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 51, metadata !2887, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 48, metadata !2888, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2889, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i8 0, metadata !2890, metadata !DIExpression()), !dbg !2931
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2933
  %50 = load i8, i8* %49, align 1, !dbg !2933, !tbaa !1468
  %51 = icmp eq i8 %50, 48, !dbg !2933
  br i1 %51, label %52, label %68, !dbg !2934

52:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2898, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8* undef, metadata !2903, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 51, metadata !2904, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 48, metadata !2905, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 0, metadata !2906, metadata !DIExpression()), !dbg !2935
  call void @llvm.dbg.value(metadata i8 0, metadata !2907, metadata !DIExpression()), !dbg !2935
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2937
  %54 = load i8, i8* %53, align 1, !dbg !2937, !tbaa !1468
  %55 = icmp eq i8 %54, 51, !dbg !2937
  br i1 %55, label %56, label %68, !dbg !2938

56:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2939, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* undef, metadata !2944, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 48, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 0, metadata !2946, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8 0, metadata !2947, metadata !DIExpression()), !dbg !2948
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2952
  %58 = load i8, i8* %57, align 1, !dbg !2952, !tbaa !1468
  %59 = icmp eq i8 %58, 48, !dbg !2952
  br i1 %59, label %60, label %68, !dbg !2954

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2955, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8* undef, metadata !2960, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 0, metadata !2961, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i8 0, metadata !2962, metadata !DIExpression()), !dbg !2963
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2967
  %62 = load i8, i8* %61, align 1, !dbg !2967, !tbaa !1468
  %63 = icmp eq i8 %62, 0, !dbg !2967
  br i1 %63, label %64, label %68, !dbg !2969

64:                                               ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2970, !tbaa !1468
  %66 = icmp eq i8 %65, 96, !dbg !2971
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.155, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.156, i64 0, i64 0), !dbg !2970
  br label %71, !dbg !2972

68:                                               ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2973
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), !dbg !2974
  br label %71, !dbg !2975

71:                                               ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2795
  ret i8* %72, !dbg !2976
}

; Function Attrs: nofree nounwind readonly
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare !dbg !510 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare !dbg !514 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2977 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2981, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i64 %1, metadata !2982, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2983, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8* %0, metadata !2985, metadata !DIExpression()) #20, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %1, metadata !2990, metadata !DIExpression()) #20, !dbg !2998
  call void @llvm.dbg.value(metadata i64* null, metadata !2991, metadata !DIExpression()) #20, !dbg !2998
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2992, metadata !DIExpression()) #20, !dbg !2998
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3000
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2993, metadata !DIExpression()) #20, !dbg !2998
  %6 = tail call i32* @__errno_location() #26, !dbg !3001
  %7 = load i32, i32* %6, align 4, !dbg !3001, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %7, metadata !2994, metadata !DIExpression()) #20, !dbg !2998
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3002
  %9 = load i32, i32* %8, align 4, !dbg !3002, !tbaa !2196
  %10 = or i32 %9, 1, !dbg !3003
  call void @llvm.dbg.value(metadata i32 %10, metadata !2995, metadata !DIExpression()) #20, !dbg !2998
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3004
  %12 = load i32, i32* %11, align 8, !dbg !3004, !tbaa !2145
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3005
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3006
  %15 = load i8*, i8** %14, align 8, !dbg !3006, !tbaa !2219
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3007
  %17 = load i8*, i8** %16, align 8, !dbg !3007, !tbaa !2222
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #20, !dbg !3008
  %19 = add i64 %18, 1, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %19, metadata !2996, metadata !DIExpression()) #20, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %19, metadata !3010, metadata !DIExpression()) #20, !dbg !3015
  %20 = tail call noalias i8* @xmalloc(i64 %19) #20, !dbg !3017
  call void @llvm.dbg.value(metadata i8* %20, metadata !2997, metadata !DIExpression()) #20, !dbg !2998
  %21 = load i32, i32* %11, align 8, !dbg !3018, !tbaa !2145
  %22 = load i8*, i8** %14, align 8, !dbg !3019, !tbaa !2219
  %23 = load i8*, i8** %16, align 8, !dbg !3020, !tbaa !2222
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #20, !dbg !3021
  store i32 %7, i32* %6, align 4, !dbg !3022, !tbaa !1415
  ret i8* %20, !dbg !3023
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2986 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2985, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %1, metadata !2990, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64* %2, metadata !2991, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2992, metadata !DIExpression()), !dbg !3024
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3025
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3025
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2993, metadata !DIExpression()), !dbg !3024
  %7 = tail call i32* @__errno_location() #26, !dbg !3026
  %8 = load i32, i32* %7, align 4, !dbg !3026, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %8, metadata !2994, metadata !DIExpression()), !dbg !3024
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3027
  %10 = load i32, i32* %9, align 4, !dbg !3027, !tbaa !2196
  %11 = icmp ne i64* %2, null, !dbg !3028
  %12 = xor i1 %11, true, !dbg !3028
  %13 = zext i1 %12 to i32, !dbg !3028
  %14 = or i32 %10, %13, !dbg !3029
  call void @llvm.dbg.value(metadata i32 %14, metadata !2995, metadata !DIExpression()), !dbg !3024
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3030
  %16 = load i32, i32* %15, align 8, !dbg !3030, !tbaa !2145
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3031
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3032
  %19 = load i8*, i8** %18, align 8, !dbg !3032, !tbaa !2219
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3033
  %21 = load i8*, i8** %20, align 8, !dbg !3033, !tbaa !2222
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3034
  %23 = add i64 %22, 1, !dbg !3035
  call void @llvm.dbg.value(metadata i64 %23, metadata !2996, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %23, metadata !3010, metadata !DIExpression()) #20, !dbg !3036
  %24 = tail call noalias i8* @xmalloc(i64 %23) #20, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %24, metadata !2997, metadata !DIExpression()), !dbg !3024
  %25 = load i32, i32* %15, align 8, !dbg !3039, !tbaa !2145
  %26 = load i8*, i8** %18, align 8, !dbg !3040, !tbaa !2219
  %27 = load i8*, i8** %20, align 8, !dbg !3041, !tbaa !2222
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3042
  store i32 %8, i32* %7, align 4, !dbg !3043, !tbaa !1415
  br i1 %11, label %29, label %30, !dbg !3044

29:                                               ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3045, !tbaa !1548
  br label %30, !dbg !3047

30:                                               ; preds = %29, %4
  ret i8* %24, !dbg !3048
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !3049 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3053, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 1, metadata !3052, metadata !DIExpression()), !dbg !3054
  %2 = load i32, i32* @nslots, align 4, !dbg !3055, !tbaa !1415
  %3 = icmp sgt i32 %2, 1, !dbg !3058
  br i1 %3, label %4, label %12, !dbg !3059

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3052, metadata !DIExpression()), !dbg !3054
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3060
  %7 = load i8*, i8** %6, align 8, !dbg !3060, !tbaa !3061
  tail call void @free(i8* %7) #20, !dbg !3063
  %8 = add nuw nsw i64 %5, 1, !dbg !3064
  call void @llvm.dbg.value(metadata i64 %8, metadata !3052, metadata !DIExpression()), !dbg !3054
  %9 = load i32, i32* @nslots, align 4, !dbg !3055, !tbaa !1415
  %10 = sext i32 %9 to i64, !dbg !3058
  %11 = icmp slt i64 %8, %10, !dbg !3058
  br i1 %11, label %4, label %12, !dbg !3059, !llvm.loop !3065

12:                                               ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3067
  %14 = load i8*, i8** %13, align 8, !dbg !3067, !tbaa !3061
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3069
  br i1 %15, label %17, label %16, !dbg !3070

16:                                               ; preds = %12
  tail call void @free(i8* %14) #20, !dbg !3071
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3073, !tbaa !3074
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3075, !tbaa !3061
  br label %17, !dbg !3076

17:                                               ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3077
  br i1 %18, label %21, label %19, !dbg !3079

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3080
  tail call void @free(i8* %20) #20, !dbg !3082
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3083, !tbaa !1327
  br label %21, !dbg !3084

21:                                               ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3085, !tbaa !1415
  ret void, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* %1, metadata !3090, metadata !DIExpression()), !dbg !3091
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3092
  ret i8* %3, !dbg !3093
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !3094 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3098, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %1, metadata !3099, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %2, metadata !3100, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3101, metadata !DIExpression()), !dbg !3113
  %5 = tail call i32* @__errno_location() #26, !dbg !3114
  %6 = load i32, i32* %5, align 4, !dbg !3114, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %6, metadata !3102, metadata !DIExpression()), !dbg !3113
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3115, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3103, metadata !DIExpression()), !dbg !3113
  %8 = icmp slt i32 %0, 0, !dbg !3116
  br i1 %8, label %9, label %10, !dbg !3118

9:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3119
  unreachable, !dbg !3119

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3120, !tbaa !1415
  %12 = icmp sgt i32 %11, %0, !dbg !3121
  br i1 %12, label %34, label %13, !dbg !3122

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3123
  call void @llvm.dbg.value(metadata i1 %14, metadata !3104, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3107, metadata !DIExpression()), !dbg !3124
  %15 = icmp eq i32 %0, 2147483647, !dbg !3125
  br i1 %15, label %16, label %17, !dbg !3127

16:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3128
  unreachable, !dbg !3128

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3129
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3129
  %20 = add nuw nsw i32 %0, 1, !dbg !3130
  %21 = sext i32 %20 to i64, !dbg !3131
  %22 = shl nuw nsw i64 %21, 4, !dbg !3132
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #20, !dbg !3133
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3133
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3103, metadata !DIExpression()), !dbg !3113
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3134, !tbaa !1327
  br i1 %14, label %25, label %26, !dbg !3135

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3136, !tbaa.struct !3138
  br label %26, !dbg !3139

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3140, !tbaa !1415
  %28 = sext i32 %27 to i64, !dbg !3141
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3141
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3142
  %31 = sub nsw i32 %20, %27, !dbg !3143
  %32 = sext i32 %31 to i64, !dbg !3144
  %33 = shl nsw i64 %32, 4, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %30, metadata !2543, metadata !DIExpression()) #20, !dbg !3146
  call void @llvm.dbg.value(metadata i32 0, metadata !2549, metadata !DIExpression()) #20, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %33, metadata !2550, metadata !DIExpression()) #20, !dbg !3146
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #20, !dbg !3148
  store i32 %20, i32* @nslots, align 4, !dbg !3149, !tbaa !1415
  br label %34, !dbg !3150

34:                                               ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3113
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3103, metadata !DIExpression()), !dbg !3113
  %36 = zext i32 %0 to i64, !dbg !3151
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3152
  %38 = load i64, i64* %37, align 8, !dbg !3152, !tbaa !3074
  call void @llvm.dbg.value(metadata i64 %38, metadata !3108, metadata !DIExpression()), !dbg !3153
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3154
  %40 = load i8*, i8** %39, align 8, !dbg !3154, !tbaa !3061
  call void @llvm.dbg.value(metadata i8* %40, metadata !3110, metadata !DIExpression()), !dbg !3153
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3155
  %42 = load i32, i32* %41, align 4, !dbg !3155, !tbaa !2196
  %43 = or i32 %42, 1, !dbg !3156
  call void @llvm.dbg.value(metadata i32 %43, metadata !3111, metadata !DIExpression()), !dbg !3153
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3157
  %45 = load i32, i32* %44, align 8, !dbg !3157, !tbaa !2145
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3158
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3159
  %48 = load i8*, i8** %47, align 8, !dbg !3159, !tbaa !2219
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3160
  %50 = load i8*, i8** %49, align 8, !dbg !3160, !tbaa !2222
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %51, metadata !3112, metadata !DIExpression()), !dbg !3153
  %52 = icmp ugt i64 %38, %51, !dbg !3162
  br i1 %52, label %63, label %53, !dbg !3164

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %54, metadata !3108, metadata !DIExpression()), !dbg !3153
  store i64 %54, i64* %37, align 8, !dbg !3167, !tbaa !3074
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3168
  br i1 %55, label %57, label %56, !dbg !3170

56:                                               ; preds = %53
  tail call void @free(i8* %40) #20, !dbg !3171
  br label %57, !dbg !3171

57:                                               ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3010, metadata !DIExpression()) #20, !dbg !3172
  %58 = tail call noalias i8* @xmalloc(i64 %54) #20, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %58, metadata !3110, metadata !DIExpression()), !dbg !3153
  store i8* %58, i8** %39, align 8, !dbg !3175, !tbaa !3061
  %59 = load i32, i32* %44, align 8, !dbg !3176, !tbaa !2145
  %60 = load i8*, i8** %47, align 8, !dbg !3177, !tbaa !2219
  %61 = load i8*, i8** %49, align 8, !dbg !3178, !tbaa !2222
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3179
  br label %63, !dbg !3180

63:                                               ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3153
  call void @llvm.dbg.value(metadata i8* %64, metadata !3110, metadata !DIExpression()), !dbg !3153
  store i32 %6, i32* %5, align 4, !dbg !3181, !tbaa !1415
  ret i8* %64, !dbg !3182
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3183 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3187, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i8* %1, metadata !3188, metadata !DIExpression()), !dbg !3190
  call void @llvm.dbg.value(metadata i64 %2, metadata !3189, metadata !DIExpression()), !dbg !3190
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3191
  ret i8* %4, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !3193 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3089, metadata !DIExpression()) #20, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %0, metadata !3090, metadata !DIExpression()) #20, !dbg !3197
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3199
  ret i8* %2, !dbg !3200
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3201 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %1, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i32 0, metadata !3187, metadata !DIExpression()) #20, !dbg !3208
  call void @llvm.dbg.value(metadata i8* %0, metadata !3188, metadata !DIExpression()) #20, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %1, metadata !3189, metadata !DIExpression()) #20, !dbg !3208
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #20, !dbg !3210
  ret i8* %3, !dbg !3211
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3212 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3214, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %1, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %2, metadata !3216, metadata !DIExpression()), !dbg !3218
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3219
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3217, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i32 %1, metadata !3221, metadata !DIExpression()) #20, !dbg !3227
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3226, metadata !DIExpression()) #20, !dbg !3229
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3229, !alias.scope !3230
  %6 = icmp eq i32 %1, 10, !dbg !3233
  br i1 %6, label %7, label %8, !dbg !3235

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3236, !noalias !3230
  unreachable, !dbg !3236

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3237
  store i32 %1, i32* %9, align 8, !dbg !3238, !tbaa !2145, !alias.scope !3230
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3239
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3240
  ret i8* %10, !dbg !3241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3242 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3246, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 %1, metadata !3247, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8* %2, metadata !3248, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %3, metadata !3249, metadata !DIExpression()), !dbg !3251
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3252
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3252
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %1, metadata !3221, metadata !DIExpression()) #20, !dbg !3254
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3226, metadata !DIExpression()) #20, !dbg !3256
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #20, !dbg !3256, !alias.scope !3257
  %7 = icmp eq i32 %1, 10, !dbg !3260
  br i1 %7, label %8, label %9, !dbg !3261

8:                                                ; preds = %4
  tail call void @abort() #24, !dbg !3262, !noalias !3257
  unreachable, !dbg !3262

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3263
  store i32 %1, i32* %10, align 8, !dbg !3264, !tbaa !2145, !alias.scope !3257
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3265
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3266
  ret i8* %11, !dbg !3267
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3268 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3226, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3217, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i32 %0, metadata !3272, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8* %1, metadata !3273, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i32 0, metadata !3214, metadata !DIExpression()) #20, !dbg !3279
  call void @llvm.dbg.value(metadata i32 %0, metadata !3215, metadata !DIExpression()) #20, !dbg !3279
  call void @llvm.dbg.value(metadata i8* %1, metadata !3216, metadata !DIExpression()) #20, !dbg !3279
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3280
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3280
  call void @llvm.dbg.value(metadata i32 %0, metadata !3221, metadata !DIExpression()) #20, !dbg !3281
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #20, !dbg !3274, !alias.scope !3282
  %5 = icmp eq i32 %0, 10, !dbg !3285
  br i1 %5, label %6, label %7, !dbg !3286

6:                                                ; preds = %2
  tail call void @abort() #24, !dbg !3287, !noalias !3282
  unreachable, !dbg !3287

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3288
  store i32 %0, i32* %8, align 8, !dbg !3289, !tbaa !2145, !alias.scope !3282
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3290
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3291
  ret i8* %9, !dbg !3292
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3293 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3226, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3250, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 %0, metadata !3297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8* %1, metadata !3298, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %2, metadata !3299, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3246, metadata !DIExpression()) #20, !dbg !3305
  call void @llvm.dbg.value(metadata i32 %0, metadata !3247, metadata !DIExpression()) #20, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %1, metadata !3248, metadata !DIExpression()) #20, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %2, metadata !3249, metadata !DIExpression()) #20, !dbg !3305
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3306
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %0, metadata !3221, metadata !DIExpression()) #20, !dbg !3307
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #20, !dbg !3300, !alias.scope !3308
  %6 = icmp eq i32 %0, 10, !dbg !3311
  br i1 %6, label %7, label %8, !dbg !3312

7:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3313, !noalias !3308
  unreachable, !dbg !3313

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3314
  store i32 %0, i32* %9, align 8, !dbg !3315, !tbaa !2145, !alias.scope !3308
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #20, !dbg !3316
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3317
  ret i8* %10, !dbg !3318
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !3319 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3323, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3324, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i8 %2, metadata !3325, metadata !DIExpression()), !dbg !3327
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3328
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3328
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3326, metadata !DIExpression()), !dbg !3329
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3330, !tbaa.struct !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2163, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8 %2, metadata !2164, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 1, metadata !2165, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i8 %2, metadata !2166, metadata !DIExpression()), !dbg !3332
  %6 = lshr i8 %2, 5, !dbg !3334
  %7 = zext i8 %6 to i64, !dbg !3334
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3335
  call void @llvm.dbg.value(metadata i32* %8, metadata !2167, metadata !DIExpression()), !dbg !3332
  %9 = and i8 %2, 31, !dbg !3336
  %10 = zext i8 %9 to i32, !dbg !3336
  call void @llvm.dbg.value(metadata i32 %10, metadata !2169, metadata !DIExpression()), !dbg !3332
  %11 = load i32, i32* %8, align 4, !dbg !3337, !tbaa !1415
  %12 = lshr i32 %11, %10, !dbg !3338
  %13 = and i32 %12, 1, !dbg !3339
  call void @llvm.dbg.value(metadata i32 %13, metadata !2170, metadata !DIExpression()), !dbg !3332
  %14 = xor i32 %13, 1, !dbg !3340
  %15 = shl i32 %14, %10, !dbg !3341
  %16 = xor i32 %15, %11, !dbg !3342
  store i32 %16, i32* %8, align 4, !dbg !3342, !tbaa !1415
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3343
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3344
  ret i8* %17, !dbg !3345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !3346 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3326, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %0, metadata !3350, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8 %1, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i8* %0, metadata !3323, metadata !DIExpression()) #20, !dbg !3355
  call void @llvm.dbg.value(metadata i64 -1, metadata !3324, metadata !DIExpression()) #20, !dbg !3355
  call void @llvm.dbg.value(metadata i8 %1, metadata !3325, metadata !DIExpression()) #20, !dbg !3355
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3356
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3357, !tbaa.struct !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2163, metadata !DIExpression()) #20, !dbg !3358
  call void @llvm.dbg.value(metadata i8 %1, metadata !2164, metadata !DIExpression()) #20, !dbg !3358
  call void @llvm.dbg.value(metadata i32 1, metadata !2165, metadata !DIExpression()) #20, !dbg !3358
  call void @llvm.dbg.value(metadata i8 %1, metadata !2166, metadata !DIExpression()) #20, !dbg !3358
  %5 = lshr i8 %1, 5, !dbg !3360
  %6 = zext i8 %5 to i64, !dbg !3360
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3361
  call void @llvm.dbg.value(metadata i32* %7, metadata !2167, metadata !DIExpression()) #20, !dbg !3358
  %8 = and i8 %1, 31, !dbg !3362
  %9 = zext i8 %8 to i32, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %9, metadata !2169, metadata !DIExpression()) #20, !dbg !3358
  %10 = load i32, i32* %7, align 4, !dbg !3363, !tbaa !1415
  %11 = lshr i32 %10, %9, !dbg !3364
  %12 = and i32 %11, 1, !dbg !3365
  call void @llvm.dbg.value(metadata i32 %12, metadata !2170, metadata !DIExpression()) #20, !dbg !3358
  %13 = xor i32 %12, 1, !dbg !3366
  %14 = shl i32 %13, %9, !dbg !3367
  %15 = xor i32 %14, %10, !dbg !3368
  store i32 %15, i32* %7, align 4, !dbg !3368, !tbaa !1415
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #20, !dbg !3369
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3370
  ret i8* %16, !dbg !3371
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !3372 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3326, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i8* %0, metadata !3374, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i8* %0, metadata !3350, metadata !DIExpression()) #20, !dbg !3379
  call void @llvm.dbg.value(metadata i8 58, metadata !3351, metadata !DIExpression()) #20, !dbg !3379
  call void @llvm.dbg.value(metadata i8* %0, metadata !3323, metadata !DIExpression()) #20, !dbg !3380
  call void @llvm.dbg.value(metadata i64 -1, metadata !3324, metadata !DIExpression()) #20, !dbg !3380
  call void @llvm.dbg.value(metadata i8 58, metadata !3325, metadata !DIExpression()) #20, !dbg !3380
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3381
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3382, !tbaa.struct !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2163, metadata !DIExpression()) #20, !dbg !3383
  call void @llvm.dbg.value(metadata i8 58, metadata !2164, metadata !DIExpression()) #20, !dbg !3383
  call void @llvm.dbg.value(metadata i32 1, metadata !2165, metadata !DIExpression()) #20, !dbg !3383
  call void @llvm.dbg.value(metadata i8 58, metadata !2166, metadata !DIExpression()) #20, !dbg !3383
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3385
  call void @llvm.dbg.value(metadata i32* %4, metadata !2167, metadata !DIExpression()) #20, !dbg !3383
  call void @llvm.dbg.value(metadata i32 26, metadata !2169, metadata !DIExpression()) #20, !dbg !3383
  %5 = load i32, i32* %4, align 4, !dbg !3386, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %5, metadata !2170, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3383
  %6 = or i32 %5, 67108864, !dbg !3387
  store i32 %6, i32* %4, align 4, !dbg !3387, !tbaa !1415
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #20, !dbg !3388
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #20, !dbg !3389
  ret i8* %7, !dbg !3390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3391 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3326, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i8* %0, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64 %1, metadata !3394, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8* %0, metadata !3323, metadata !DIExpression()) #20, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %1, metadata !3324, metadata !DIExpression()) #20, !dbg !3398
  call void @llvm.dbg.value(metadata i8 58, metadata !3325, metadata !DIExpression()) #20, !dbg !3398
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3399
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3400, !tbaa.struct !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2163, metadata !DIExpression()) #20, !dbg !3401
  call void @llvm.dbg.value(metadata i8 58, metadata !2164, metadata !DIExpression()) #20, !dbg !3401
  call void @llvm.dbg.value(metadata i32 1, metadata !2165, metadata !DIExpression()) #20, !dbg !3401
  call void @llvm.dbg.value(metadata i8 58, metadata !2166, metadata !DIExpression()) #20, !dbg !3401
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3403
  call void @llvm.dbg.value(metadata i32* %5, metadata !2167, metadata !DIExpression()) #20, !dbg !3401
  call void @llvm.dbg.value(metadata i32 26, metadata !2169, metadata !DIExpression()) #20, !dbg !3401
  %6 = load i32, i32* %5, align 4, !dbg !3404, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %6, metadata !2170, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #20, !dbg !3401
  %7 = or i32 %6, 67108864, !dbg !3405
  store i32 %7, i32* %5, align 4, !dbg !3405, !tbaa !1415
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #20, !dbg !3406
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #20, !dbg !3407
  ret i8* %8, !dbg !3408
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3409 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3226, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3415
  call void @llvm.dbg.value(metadata i32 %0, metadata !3411, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i32 %1, metadata !3412, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8* %2, metadata !3413, metadata !DIExpression()), !dbg !3417
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3418
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3418
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3414, metadata !DIExpression()), !dbg !3419
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3420
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3420
  call void @llvm.dbg.value(metadata i32 %1, metadata !3221, metadata !DIExpression()) #20, !dbg !3421
  call void @llvm.dbg.value(metadata i32 0, metadata !3226, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3421
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3415, !alias.scope !3422
  %8 = icmp eq i32 %1, 10, !dbg !3425
  br i1 %8, label %9, label %10, !dbg !3426

9:                                                ; preds = %3
  tail call void @abort() #24, !dbg !3427, !noalias !3422
  unreachable, !dbg !3427

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3226, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3421
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3420
  store i32 %1, i32* %11, align 8, !dbg !3420, !tbaa.struct !3331
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3420
  %13 = bitcast i32* %12 to i8*, !dbg !3420
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3420, !tbaa.struct !3331
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3420
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2163, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8 58, metadata !2164, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 1, metadata !2165, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i8 58, metadata !2166, metadata !DIExpression()), !dbg !3428
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3430
  call void @llvm.dbg.value(metadata i32* %14, metadata !2167, metadata !DIExpression()), !dbg !3428
  call void @llvm.dbg.value(metadata i32 26, metadata !2169, metadata !DIExpression()), !dbg !3428
  %15 = load i32, i32* %14, align 4, !dbg !3431, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %15, metadata !2170, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3428
  %16 = or i32 %15, 67108864, !dbg !3432
  store i32 %16, i32* %14, align 4, !dbg !3432, !tbaa !1415
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3434
  ret i8* %17, !dbg !3435
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3436 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3444, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %1, metadata !3441, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %2, metadata !3442, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i8* %3, metadata !3443, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()) #20, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %1, metadata !3450, metadata !DIExpression()) #20, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %2, metadata !3451, metadata !DIExpression()) #20, !dbg !3457
  call void @llvm.dbg.value(metadata i8* %3, metadata !3452, metadata !DIExpression()) #20, !dbg !3457
  call void @llvm.dbg.value(metadata i64 -1, metadata !3453, metadata !DIExpression()) #20, !dbg !3457
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3458
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3459, !tbaa.struct !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2203, metadata !DIExpression()) #20, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %1, metadata !2204, metadata !DIExpression()) #20, !dbg !3460
  call void @llvm.dbg.value(metadata i8* %2, metadata !2205, metadata !DIExpression()) #20, !dbg !3460
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2203, metadata !DIExpression()) #20, !dbg !3460
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3462
  store i32 10, i32* %7, align 8, !dbg !3463, !tbaa !2145
  %8 = icmp ne i8* %1, null, !dbg !3464
  %9 = icmp ne i8* %2, null, !dbg !3465
  %10 = and i1 %8, %9, !dbg !3466
  br i1 %10, label %12, label %11, !dbg !3466

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3467
  unreachable, !dbg !3467

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3468
  store i8* %1, i8** %13, align 8, !dbg !3469, !tbaa !2219
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3470
  store i8* %2, i8** %14, align 8, !dbg !3471, !tbaa !2222
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #20, !dbg !3472
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3473
  ret i8* %15, !dbg !3474
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3445 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3449, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8* %1, metadata !3450, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8* %2, metadata !3451, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i8* %3, metadata !3452, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %4, metadata !3453, metadata !DIExpression()), !dbg !3475
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3476
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3476
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3444, metadata !DIExpression()), !dbg !3477
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3478, !tbaa.struct !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2203, metadata !DIExpression()) #20, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %1, metadata !2204, metadata !DIExpression()) #20, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %2, metadata !2205, metadata !DIExpression()) #20, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2203, metadata !DIExpression()) #20, !dbg !3479
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3481
  store i32 10, i32* %8, align 8, !dbg !3482, !tbaa !2145
  %9 = icmp ne i8* %1, null, !dbg !3483
  %10 = icmp ne i8* %2, null, !dbg !3484
  %11 = and i1 %9, %10, !dbg !3485
  br i1 %11, label %13, label %12, !dbg !3485

12:                                               ; preds = %5
  tail call void @abort() #24, !dbg !3486
  unreachable, !dbg !3486

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3487
  store i8* %1, i8** %14, align 8, !dbg !3488, !tbaa !2219
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3489
  store i8* %2, i8** %15, align 8, !dbg !3490, !tbaa !2222
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3491
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #20, !dbg !3492
  ret i8* %16, !dbg !3493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3494 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3444, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %0, metadata !3498, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %1, metadata !3499, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %2, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i32 0, metadata !3440, metadata !DIExpression()) #20, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %0, metadata !3441, metadata !DIExpression()) #20, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %1, metadata !3442, metadata !DIExpression()) #20, !dbg !3505
  call void @llvm.dbg.value(metadata i8* %2, metadata !3443, metadata !DIExpression()) #20, !dbg !3505
  call void @llvm.dbg.value(metadata i32 0, metadata !3449, metadata !DIExpression()) #20, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %0, metadata !3450, metadata !DIExpression()) #20, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %1, metadata !3451, metadata !DIExpression()) #20, !dbg !3506
  call void @llvm.dbg.value(metadata i8* %2, metadata !3452, metadata !DIExpression()) #20, !dbg !3506
  call void @llvm.dbg.value(metadata i64 -1, metadata !3453, metadata !DIExpression()) #20, !dbg !3506
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3507
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3508, !tbaa.struct !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2203, metadata !DIExpression()) #20, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %0, metadata !2204, metadata !DIExpression()) #20, !dbg !3509
  call void @llvm.dbg.value(metadata i8* %1, metadata !2205, metadata !DIExpression()) #20, !dbg !3509
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2203, metadata !DIExpression()) #20, !dbg !3509
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3511
  store i32 10, i32* %6, align 8, !dbg !3512, !tbaa !2145
  %7 = icmp ne i8* %0, null, !dbg !3513
  %8 = icmp ne i8* %1, null, !dbg !3514
  %9 = and i1 %7, %8, !dbg !3515
  br i1 %9, label %11, label %10, !dbg !3515

10:                                               ; preds = %3
  tail call void @abort() #24, !dbg !3516
  unreachable, !dbg !3516

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3517
  store i8* %0, i8** %12, align 8, !dbg !3518, !tbaa !2219
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3519
  store i8* %1, i8** %13, align 8, !dbg !3520, !tbaa !2222
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #20, !dbg !3521
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #20, !dbg !3522
  ret i8* %14, !dbg !3523
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3524 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3444, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i8* %0, metadata !3528, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %1, metadata !3529, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i8* %2, metadata !3530, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i64 %3, metadata !3531, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata i32 0, metadata !3449, metadata !DIExpression()) #20, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %0, metadata !3450, metadata !DIExpression()) #20, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %1, metadata !3451, metadata !DIExpression()) #20, !dbg !3535
  call void @llvm.dbg.value(metadata i8* %2, metadata !3452, metadata !DIExpression()) #20, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %3, metadata !3453, metadata !DIExpression()) #20, !dbg !3535
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3536
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #20, !dbg !3537, !tbaa.struct !3331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2203, metadata !DIExpression()) #20, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %0, metadata !2204, metadata !DIExpression()) #20, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %1, metadata !2205, metadata !DIExpression()) #20, !dbg !3538
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2203, metadata !DIExpression()) #20, !dbg !3538
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3540
  store i32 10, i32* %7, align 8, !dbg !3541, !tbaa !2145
  %8 = icmp ne i8* %0, null, !dbg !3542
  %9 = icmp ne i8* %1, null, !dbg !3543
  %10 = and i1 %8, %9, !dbg !3544
  br i1 %10, label %12, label %11, !dbg !3544

11:                                               ; preds = %4
  tail call void @abort() #24, !dbg !3545
  unreachable, !dbg !3545

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3546
  store i8* %0, i8** %13, align 8, !dbg !3547, !tbaa !2219
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3548
  store i8* %1, i8** %14, align 8, !dbg !3549, !tbaa !2222
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #20, !dbg !3550
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #20, !dbg !3551
  ret i8* %15, !dbg !3552
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3553 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3557, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i8* %1, metadata !3558, metadata !DIExpression()), !dbg !3560
  call void @llvm.dbg.value(metadata i64 %2, metadata !3559, metadata !DIExpression()), !dbg !3560
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3561
  ret i8* %4, !dbg !3562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3567, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i64 %1, metadata !3568, metadata !DIExpression()), !dbg !3569
  call void @llvm.dbg.value(metadata i32 0, metadata !3557, metadata !DIExpression()) #20, !dbg !3570
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #20, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %1, metadata !3559, metadata !DIExpression()) #20, !dbg !3570
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3572
  ret i8* %3, !dbg !3573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3578, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8* %1, metadata !3579, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 %0, metadata !3557, metadata !DIExpression()) #20, !dbg !3581
  call void @llvm.dbg.value(metadata i8* %1, metadata !3558, metadata !DIExpression()) #20, !dbg !3581
  call void @llvm.dbg.value(metadata i64 -1, metadata !3559, metadata !DIExpression()) #20, !dbg !3581
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3583
  ret i8* %3, !dbg !3584
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3585 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 0, metadata !3578, metadata !DIExpression()) #20, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %0, metadata !3579, metadata !DIExpression()) #20, !dbg !3589
  call void @llvm.dbg.value(metadata i32 0, metadata !3557, metadata !DIExpression()) #20, !dbg !3591
  call void @llvm.dbg.value(metadata i8* %0, metadata !3558, metadata !DIExpression()) #20, !dbg !3591
  call void @llvm.dbg.value(metadata i64 -1, metadata !3559, metadata !DIExpression()) #20, !dbg !3591
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #20, !dbg !3593
  ret i8* %2, !dbg !3594
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3595 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3602, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %1, metadata !3603, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %2, metadata !3604, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %3, metadata !3605, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8** %4, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %5, metadata !3607, metadata !DIExpression()), !dbg !3608
  %7 = icmp eq i8* %1, null, !dbg !3609
  br i1 %7, label %10, label %8, !dbg !3611

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #20, !dbg !3612
  br label %12, !dbg !3612

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.164, i64 0, i64 0), i8* %2, i8* %3) #20, !dbg !3613
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.165, i64 0, i64 0), i32 5) #20, !dbg !3614
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #20, !dbg !3614
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.166, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3615
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.167, i64 0, i64 0), i32 5) #20, !dbg !3616
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.168, i64 0, i64 0)) #20, !dbg !3616
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.166, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3617
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
  ], !dbg !3618

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.169, i64 0, i64 0), i32 5) #20, !dbg !3619
  %21 = load i8*, i8** %4, align 8, !dbg !3619, !tbaa !1327
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #20, !dbg !3619
  br label %147, !dbg !3621

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.170, i64 0, i64 0), i32 5) #20, !dbg !3622
  %25 = load i8*, i8** %4, align 8, !dbg !3622, !tbaa !1327
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3622
  %27 = load i8*, i8** %26, align 8, !dbg !3622, !tbaa !1327
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #20, !dbg !3622
  br label %147, !dbg !3623

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.171, i64 0, i64 0), i32 5) #20, !dbg !3624
  %31 = load i8*, i8** %4, align 8, !dbg !3624, !tbaa !1327
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3624
  %33 = load i8*, i8** %32, align 8, !dbg !3624, !tbaa !1327
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3624
  %35 = load i8*, i8** %34, align 8, !dbg !3624, !tbaa !1327
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #20, !dbg !3624
  br label %147, !dbg !3625

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.172, i64 0, i64 0), i32 5) #20, !dbg !3626
  %39 = load i8*, i8** %4, align 8, !dbg !3626, !tbaa !1327
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3626
  %41 = load i8*, i8** %40, align 8, !dbg !3626, !tbaa !1327
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3626
  %43 = load i8*, i8** %42, align 8, !dbg !3626, !tbaa !1327
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3626
  %45 = load i8*, i8** %44, align 8, !dbg !3626, !tbaa !1327
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #20, !dbg !3626
  br label %147, !dbg !3627

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.173, i64 0, i64 0), i32 5) #20, !dbg !3628
  %49 = load i8*, i8** %4, align 8, !dbg !3628, !tbaa !1327
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3628
  %51 = load i8*, i8** %50, align 8, !dbg !3628, !tbaa !1327
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3628
  %53 = load i8*, i8** %52, align 8, !dbg !3628, !tbaa !1327
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3628
  %55 = load i8*, i8** %54, align 8, !dbg !3628, !tbaa !1327
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3628
  %57 = load i8*, i8** %56, align 8, !dbg !3628, !tbaa !1327
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #20, !dbg !3628
  br label %147, !dbg !3629

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.174, i64 0, i64 0), i32 5) #20, !dbg !3630
  %61 = load i8*, i8** %4, align 8, !dbg !3630, !tbaa !1327
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3630
  %63 = load i8*, i8** %62, align 8, !dbg !3630, !tbaa !1327
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3630
  %65 = load i8*, i8** %64, align 8, !dbg !3630, !tbaa !1327
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3630
  %67 = load i8*, i8** %66, align 8, !dbg !3630, !tbaa !1327
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3630
  %69 = load i8*, i8** %68, align 8, !dbg !3630, !tbaa !1327
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3630
  %71 = load i8*, i8** %70, align 8, !dbg !3630, !tbaa !1327
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #20, !dbg !3630
  br label %147, !dbg !3631

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.175, i64 0, i64 0), i32 5) #20, !dbg !3632
  %75 = load i8*, i8** %4, align 8, !dbg !3632, !tbaa !1327
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3632
  %77 = load i8*, i8** %76, align 8, !dbg !3632, !tbaa !1327
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3632
  %79 = load i8*, i8** %78, align 8, !dbg !3632, !tbaa !1327
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3632
  %81 = load i8*, i8** %80, align 8, !dbg !3632, !tbaa !1327
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3632
  %83 = load i8*, i8** %82, align 8, !dbg !3632, !tbaa !1327
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3632
  %85 = load i8*, i8** %84, align 8, !dbg !3632, !tbaa !1327
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3632
  %87 = load i8*, i8** %86, align 8, !dbg !3632, !tbaa !1327
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #20, !dbg !3632
  br label %147, !dbg !3633

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.176, i64 0, i64 0), i32 5) #20, !dbg !3634
  %91 = load i8*, i8** %4, align 8, !dbg !3634, !tbaa !1327
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3634
  %93 = load i8*, i8** %92, align 8, !dbg !3634, !tbaa !1327
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3634
  %95 = load i8*, i8** %94, align 8, !dbg !3634, !tbaa !1327
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3634
  %97 = load i8*, i8** %96, align 8, !dbg !3634, !tbaa !1327
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3634
  %99 = load i8*, i8** %98, align 8, !dbg !3634, !tbaa !1327
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3634
  %101 = load i8*, i8** %100, align 8, !dbg !3634, !tbaa !1327
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3634
  %103 = load i8*, i8** %102, align 8, !dbg !3634, !tbaa !1327
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3634
  %105 = load i8*, i8** %104, align 8, !dbg !3634, !tbaa !1327
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #20, !dbg !3634
  br label %147, !dbg !3635

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.177, i64 0, i64 0), i32 5) #20, !dbg !3636
  %109 = load i8*, i8** %4, align 8, !dbg !3636, !tbaa !1327
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3636
  %111 = load i8*, i8** %110, align 8, !dbg !3636, !tbaa !1327
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3636
  %113 = load i8*, i8** %112, align 8, !dbg !3636, !tbaa !1327
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3636
  %115 = load i8*, i8** %114, align 8, !dbg !3636, !tbaa !1327
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3636
  %117 = load i8*, i8** %116, align 8, !dbg !3636, !tbaa !1327
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3636
  %119 = load i8*, i8** %118, align 8, !dbg !3636, !tbaa !1327
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3636
  %121 = load i8*, i8** %120, align 8, !dbg !3636, !tbaa !1327
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3636
  %123 = load i8*, i8** %122, align 8, !dbg !3636, !tbaa !1327
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3636
  %125 = load i8*, i8** %124, align 8, !dbg !3636, !tbaa !1327
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #20, !dbg !3636
  br label %147, !dbg !3637

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.178, i64 0, i64 0), i32 5) #20, !dbg !3638
  %129 = load i8*, i8** %4, align 8, !dbg !3638, !tbaa !1327
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3638
  %131 = load i8*, i8** %130, align 8, !dbg !3638, !tbaa !1327
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3638
  %133 = load i8*, i8** %132, align 8, !dbg !3638, !tbaa !1327
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3638
  %135 = load i8*, i8** %134, align 8, !dbg !3638, !tbaa !1327
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3638
  %137 = load i8*, i8** %136, align 8, !dbg !3638, !tbaa !1327
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3638
  %139 = load i8*, i8** %138, align 8, !dbg !3638, !tbaa !1327
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3638
  %141 = load i8*, i8** %140, align 8, !dbg !3638, !tbaa !1327
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3638
  %143 = load i8*, i8** %142, align 8, !dbg !3638, !tbaa !1327
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3638
  %145 = load i8*, i8** %144, align 8, !dbg !3638, !tbaa !1327
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #20, !dbg !3638
  br label %147, !dbg !3639

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3641 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3645, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i8* %1, metadata !3646, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i8* %2, metadata !3647, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i8* %3, metadata !3648, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i8** %4, metadata !3649, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 0, metadata !3650, metadata !DIExpression()), !dbg !3651
  br label %6, !dbg !3652

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3654
  call void @llvm.dbg.value(metadata i64 %7, metadata !3650, metadata !DIExpression()), !dbg !3651
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3655
  %9 = load i8*, i8** %8, align 8, !dbg !3655, !tbaa !1327
  %10 = icmp eq i8* %9, null, !dbg !3657
  %11 = add i64 %7, 1, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %11, metadata !3650, metadata !DIExpression()), !dbg !3651
  br i1 %10, label %12, label %6, !dbg !3657, !llvm.loop !3659

12:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %7, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %7, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %7, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %7, metadata !3650, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i64 %7, metadata !3650, metadata !DIExpression()), !dbg !3651
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3661
  ret void, !dbg !3662
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3663 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3674, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i8* %1, metadata !3675, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i8* %2, metadata !3676, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i8* %3, metadata !3677, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3678, metadata !DIExpression()), !dbg !3682
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3683
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3683
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3680, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.value(metadata i64 0, metadata !3679, metadata !DIExpression()), !dbg !3682
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0, !dbg !3685
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2, !dbg !3685
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3, !dbg !3685
  %11 = load i32, i32* %8, align 8, !dbg !3688
  %12 = icmp ult i32 %11, 41, !dbg !3688
  br i1 %12, label %13, label %18, !dbg !3688

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3688
  %15 = zext i32 %11 to i64, !dbg !3688
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3688
  %17 = add nuw nsw i32 %11, 8, !dbg !3688
  store i32 %17, i32* %8, align 8, !dbg !3688
  br label %21, !dbg !3688

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3688
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3688
  store i8* %20, i8** %9, align 8, !dbg !3688
  br label %21, !dbg !3688

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3688
  %25 = load i8*, i8** %24, align 8, !dbg !3688
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3689
  store i8* %25, i8** %26, align 16, !dbg !3690, !tbaa !1327
  %27 = icmp eq i8* %25, null, !dbg !3691
  br i1 %27, label %30, label %28, !dbg !3692

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3679, metadata !DIExpression()), !dbg !3682
  %29 = icmp ult i32 %22, 41, !dbg !3688
  br i1 %29, label %35, label %32, !dbg !3688

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3693
  call void @llvm.dbg.value(metadata i64 %31, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %31, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3694
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #20, !dbg !3695
  ret void, !dbg !3695

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3688
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3688
  store i8* %34, i8** %9, align 8, !dbg !3688
  br label %40, !dbg !3688

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3688
  %37 = zext i32 %22 to i64, !dbg !3688
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3688
  %39 = add nuw nsw i32 %22, 8, !dbg !3688
  store i32 %39, i32* %8, align 8, !dbg !3688
  br label %40, !dbg !3688

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3688
  %44 = load i8*, i8** %43, align 8, !dbg !3688
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3689
  store i8* %44, i8** %45, align 8, !dbg !3690, !tbaa !1327
  %46 = icmp eq i8* %44, null, !dbg !3691
  br i1 %46, label %30, label %47, !dbg !3692

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3679, metadata !DIExpression()), !dbg !3682
  %48 = icmp ult i32 %41, 41, !dbg !3688
  br i1 %48, label %52, label %49, !dbg !3688

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3688
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3688
  store i8* %51, i8** %9, align 8, !dbg !3688
  br label %57, !dbg !3688

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3688
  %54 = zext i32 %41 to i64, !dbg !3688
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3688
  %56 = add nuw nsw i32 %41, 8, !dbg !3688
  store i32 %56, i32* %8, align 8, !dbg !3688
  br label %57, !dbg !3688

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3688
  %61 = load i8*, i8** %60, align 8, !dbg !3688
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3689
  store i8* %61, i8** %62, align 16, !dbg !3690, !tbaa !1327
  %63 = icmp eq i8* %61, null, !dbg !3691
  br i1 %63, label %30, label %64, !dbg !3692

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3679, metadata !DIExpression()), !dbg !3682
  %65 = icmp ult i32 %58, 41, !dbg !3688
  br i1 %65, label %69, label %66, !dbg !3688

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3688
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3688
  store i8* %68, i8** %9, align 8, !dbg !3688
  br label %74, !dbg !3688

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3688
  %71 = zext i32 %58 to i64, !dbg !3688
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3688
  %73 = add nuw nsw i32 %58, 8, !dbg !3688
  store i32 %73, i32* %8, align 8, !dbg !3688
  br label %74, !dbg !3688

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3688
  %78 = load i8*, i8** %77, align 8, !dbg !3688
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3689
  store i8* %78, i8** %79, align 8, !dbg !3690, !tbaa !1327
  %80 = icmp eq i8* %78, null, !dbg !3691
  br i1 %80, label %30, label %81, !dbg !3692

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3679, metadata !DIExpression()), !dbg !3682
  %82 = icmp ult i32 %75, 41, !dbg !3688
  br i1 %82, label %86, label %83, !dbg !3688

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3688
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3688
  store i8* %85, i8** %9, align 8, !dbg !3688
  br label %91, !dbg !3688

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3688
  %88 = zext i32 %75 to i64, !dbg !3688
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3688
  %90 = add nuw nsw i32 %75, 8, !dbg !3688
  store i32 %90, i32* %8, align 8, !dbg !3688
  br label %91, !dbg !3688

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3688
  %95 = load i8*, i8** %94, align 8, !dbg !3688
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3689
  store i8* %95, i8** %96, align 16, !dbg !3690, !tbaa !1327
  %97 = icmp eq i8* %95, null, !dbg !3691
  br i1 %97, label %30, label %98, !dbg !3692

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3679, metadata !DIExpression()), !dbg !3682
  %99 = icmp ult i32 %92, 41, !dbg !3688
  br i1 %99, label %103, label %100, !dbg !3688

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3688
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3688
  store i8* %102, i8** %9, align 8, !dbg !3688
  br label %108, !dbg !3688

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3688
  %105 = zext i32 %92 to i64, !dbg !3688
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3688
  %107 = add nuw nsw i32 %92, 8, !dbg !3688
  store i32 %107, i32* %8, align 8, !dbg !3688
  br label %108, !dbg !3688

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3688
  %111 = load i8*, i8** %110, align 8, !dbg !3688
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3689
  store i8* %111, i8** %112, align 8, !dbg !3690, !tbaa !1327
  %113 = icmp eq i8* %111, null, !dbg !3691
  br i1 %113, label %30, label %114, !dbg !3692

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3679, metadata !DIExpression()), !dbg !3682
  %115 = load i8*, i8** %9, align 8, !dbg !3688
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3688
  store i8* %116, i8** %9, align 8, !dbg !3688
  %117 = bitcast i8* %115 to i8**, !dbg !3688
  %118 = load i8*, i8** %117, align 8, !dbg !3688
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3689
  store i8* %118, i8** %119, align 16, !dbg !3690, !tbaa !1327
  %120 = icmp eq i8* %118, null, !dbg !3691
  br i1 %120, label %30, label %121, !dbg !3692

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3679, metadata !DIExpression()), !dbg !3682
  %122 = load i8*, i8** %9, align 8, !dbg !3688
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3688
  store i8* %123, i8** %9, align 8, !dbg !3688
  %124 = bitcast i8* %122 to i8**, !dbg !3688
  %125 = load i8*, i8** %124, align 8, !dbg !3688
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3689
  store i8* %125, i8** %126, align 8, !dbg !3690, !tbaa !1327
  %127 = icmp eq i8* %125, null, !dbg !3691
  br i1 %127, label %30, label %128, !dbg !3692

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3679, metadata !DIExpression()), !dbg !3682
  %129 = load i8*, i8** %9, align 8, !dbg !3688
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3688
  store i8* %130, i8** %9, align 8, !dbg !3688
  %131 = bitcast i8* %129 to i8**, !dbg !3688
  %132 = load i8*, i8** %131, align 8, !dbg !3688
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3689
  store i8* %132, i8** %133, align 16, !dbg !3690, !tbaa !1327
  %134 = icmp eq i8* %132, null, !dbg !3691
  br i1 %134, label %30, label %135, !dbg !3692

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3679, metadata !DIExpression()), !dbg !3682
  %136 = load i8*, i8** %9, align 8, !dbg !3688
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3688
  store i8* %137, i8** %9, align 8, !dbg !3688
  %138 = bitcast i8* %136 to i8**, !dbg !3688
  %139 = load i8*, i8** %138, align 8, !dbg !3688
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3689
  store i8* %139, i8** %140, align 8, !dbg !3690, !tbaa !1327
  %141 = icmp eq i8* %139, null, !dbg !3691
  %142 = select i1 %141, i64 9, i64 10, !dbg !3692
  br label %30, !dbg !3692
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3696 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3700, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8* %1, metadata !3701, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8* %2, metadata !3702, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i8* %3, metadata !3703, metadata !DIExpression()), !dbg !3710
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3711
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3711
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3704, metadata !DIExpression()), !dbg !3712
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3713
  call void @llvm.va_start(i8* nonnull %6), !dbg !3713
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3714
  call void @llvm.va_end(i8* nonnull %6), !dbg !3715
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #20, !dbg !3716
  ret void, !dbg !3716
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #20

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #20

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3717 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3718, !tbaa !1327
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.166, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3718
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.181, i64 0, i64 0), i32 5) #20, !dbg !3719
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.182, i64 0, i64 0)) #20, !dbg !3719
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.183, i64 0, i64 0), i32 5) #20, !dbg !3720
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.184, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.185, i64 0, i64 0)) #20, !dbg !3720
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.186, i64 0, i64 0), i32 5) #20, !dbg !3721
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.187, i64 0, i64 0)) #20, !dbg !3721
  ret void, !dbg !3722
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #21 !dbg !3723 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3727, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %1, metadata !3728, metadata !DIExpression()), !dbg !3729
  %3 = udiv i64 9223372036854775807, %1, !dbg !3730
  %4 = icmp ult i64 %3, %0, !dbg !3730
  br i1 %4, label %5, label %6, !dbg !3732

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3733
  unreachable, !dbg !3733

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %7, metadata !3735, metadata !DIExpression()) #20, !dbg !3739
  %8 = tail call noalias i8* @malloc(i64 %7) #20, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %8, metadata !3738, metadata !DIExpression()) #20, !dbg !3739
  %9 = icmp eq i8* %8, null, !dbg !3742
  %10 = icmp ne i64 %7, 0, !dbg !3744
  %11 = and i1 %10, %9, !dbg !3745
  br i1 %11, label %12, label %13, !dbg !3745

12:                                               ; preds = %6
  tail call void @xalloc_die() #24, !dbg !3746
  unreachable, !dbg !3746

13:                                               ; preds = %6
  ret i8* %8, !dbg !3747
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3736 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3735, metadata !DIExpression()), !dbg !3748
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %2, metadata !3738, metadata !DIExpression()), !dbg !3748
  %3 = icmp eq i8* %2, null, !dbg !3750
  %4 = icmp ne i64 %0, 0, !dbg !3751
  %5 = and i1 %4, %3, !dbg !3752
  br i1 %5, label %6, label %7, !dbg !3752

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3753
  unreachable, !dbg !3753

7:                                                ; preds = %1
  ret i8* %2, !dbg !3754
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #21 !dbg !3755 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3759, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %1, metadata !3760, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %2, metadata !3761, metadata !DIExpression()), !dbg !3762
  %4 = udiv i64 9223372036854775807, %2, !dbg !3763
  %5 = icmp ult i64 %4, %1, !dbg !3763
  br i1 %5, label %6, label %7, !dbg !3765

6:                                                ; preds = %3
  tail call void @xalloc_die() #24, !dbg !3766
  unreachable, !dbg !3766

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3767
  call void @llvm.dbg.value(metadata i8* %0, metadata !3768, metadata !DIExpression()) #20, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %8, metadata !3771, metadata !DIExpression()) #20, !dbg !3772
  %9 = icmp eq i64 %8, 0, !dbg !3774
  %10 = icmp ne i8* %0, null, !dbg !3776
  %11 = and i1 %10, %9, !dbg !3777
  br i1 %11, label %12, label %13, !dbg !3777

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #20, !dbg !3778
  br label %19, !dbg !3780

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #20, !dbg !3781
  call void @llvm.dbg.value(metadata i8* %14, metadata !3768, metadata !DIExpression()) #20, !dbg !3772
  %15 = icmp eq i8* %14, null, !dbg !3782
  %16 = icmp ne i64 %8, 0, !dbg !3784
  %17 = and i1 %16, %15, !dbg !3785
  br i1 %17, label %18, label %19, !dbg !3785

18:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3786
  unreachable, !dbg !3786

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3772
  ret i8* %20, !dbg !3787
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3768, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i64 %1, metadata !3771, metadata !DIExpression()), !dbg !3788
  %3 = icmp eq i64 %1, 0, !dbg !3789
  %4 = icmp ne i8* %0, null, !dbg !3790
  %5 = and i1 %4, %3, !dbg !3791
  br i1 %5, label %6, label %7, !dbg !3791

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #20, !dbg !3792
  br label %13, !dbg !3793

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #20, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %8, metadata !3768, metadata !DIExpression()), !dbg !3788
  %9 = icmp eq i8* %8, null, !dbg !3795
  %10 = icmp ne i64 %1, 0, !dbg !3796
  %11 = and i1 %10, %9, !dbg !3797
  br i1 %11, label %12, label %13, !dbg !3797

12:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3798
  unreachable, !dbg !3798

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3788
  ret i8* %14, !dbg !3799
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #21 !dbg !679 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !684, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64* %1, metadata !685, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %2, metadata !686, metadata !DIExpression()), !dbg !3800
  %4 = load i64, i64* %1, align 8, !dbg !3801, !tbaa !1548
  call void @llvm.dbg.value(metadata i64 %4, metadata !687, metadata !DIExpression()), !dbg !3800
  %5 = icmp eq i8* %0, null, !dbg !3802
  br i1 %5, label %6, label %20, !dbg !3804

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3805
  br i1 %7, label %8, label %13, !dbg !3808

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3809
  call void @llvm.dbg.value(metadata i64 %9, metadata !687, metadata !DIExpression()), !dbg !3800
  %10 = icmp ugt i64 %2, 128, !dbg !3811
  %11 = zext i1 %10 to i64, !dbg !3811
  %12 = add nuw nsw i64 %9, %11, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %12, metadata !687, metadata !DIExpression()), !dbg !3800
  br label %13, !dbg !3813

13:                                               ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3800
  call void @llvm.dbg.value(metadata i64 %14, metadata !687, metadata !DIExpression()), !dbg !3800
  %15 = udiv i64 9223372036854775807, %2, !dbg !3814
  %16 = icmp ult i64 %15, %14, !dbg !3814
  br i1 %16, label %19, label %17, !dbg !3816

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !687, metadata !DIExpression()), !dbg !3800
  store i64 %14, i64* %1, align 8, !dbg !3817, !tbaa !1548
  %18 = mul i64 %14, %2, !dbg !3818
  call void @llvm.dbg.value(metadata i8* %0, metadata !3768, metadata !DIExpression()) #20, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %28, metadata !3771, metadata !DIExpression()) #20, !dbg !3819
  br label %31, !dbg !3821

19:                                               ; preds = %13
  tail call void @xalloc_die() #24, !dbg !3822
  unreachable, !dbg !3822

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3823
  %22 = icmp ugt i64 %21, %4, !dbg !3826
  br i1 %22, label %24, label %23, !dbg !3827

23:                                               ; preds = %20
  tail call void @xalloc_die() #24, !dbg !3828
  unreachable, !dbg !3828

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3829
  %26 = add nuw i64 %4, 1, !dbg !3830
  %27 = add i64 %26, %25, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %27, metadata !687, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i64 %27, metadata !687, metadata !DIExpression()), !dbg !3800
  store i64 %27, i64* %1, align 8, !dbg !3817, !tbaa !1548
  %28 = mul i64 %27, %2, !dbg !3818
  call void @llvm.dbg.value(metadata i8* %0, metadata !3768, metadata !DIExpression()) #20, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %28, metadata !3771, metadata !DIExpression()) #20, !dbg !3819
  %29 = icmp eq i64 %28, 0, !dbg !3832
  br i1 %29, label %30, label %31, !dbg !3821

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #20, !dbg !3833
  br label %38, !dbg !3834

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #20, !dbg !3835
  call void @llvm.dbg.value(metadata i8* %33, metadata !3768, metadata !DIExpression()) #20, !dbg !3819
  %34 = icmp eq i8* %33, null, !dbg !3836
  %35 = icmp ne i64 %32, 0, !dbg !3837
  %36 = and i1 %35, %34, !dbg !3838
  br i1 %36, label %37, label %38, !dbg !3838

37:                                               ; preds = %31
  tail call void @xalloc_die() #24, !dbg !3839
  unreachable, !dbg !3839

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3819
  ret i8* %39, !dbg !3840
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #21 !dbg !3841 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3843, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i64 %0, metadata !3735, metadata !DIExpression()) #20, !dbg !3845
  %2 = tail call noalias i8* @malloc(i64 %0) #20, !dbg !3847
  call void @llvm.dbg.value(metadata i8* %2, metadata !3738, metadata !DIExpression()) #20, !dbg !3845
  %3 = icmp eq i8* %2, null, !dbg !3848
  %4 = icmp ne i64 %0, 0, !dbg !3849
  %5 = and i1 %4, %3, !dbg !3850
  br i1 %5, label %6, label %7, !dbg !3850

6:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3851
  unreachable, !dbg !3851

7:                                                ; preds = %1
  ret i8* %2, !dbg !3852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3853 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3857, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64* %1, metadata !3858, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %0, metadata !684, metadata !DIExpression()) #20, !dbg !3860
  call void @llvm.dbg.value(metadata i64* %1, metadata !685, metadata !DIExpression()) #20, !dbg !3860
  call void @llvm.dbg.value(metadata i64 1, metadata !686, metadata !DIExpression()) #20, !dbg !3860
  %3 = load i64, i64* %1, align 8, !dbg !3862, !tbaa !1548
  call void @llvm.dbg.value(metadata i64 %3, metadata !687, metadata !DIExpression()) #20, !dbg !3860
  %4 = icmp eq i8* %0, null, !dbg !3863
  br i1 %4, label %5, label %12, !dbg !3864

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3865
  br i1 %6, label %9, label %7, !dbg !3866

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !687, metadata !DIExpression()) #20, !dbg !3860
  %8 = icmp slt i64 %3, 0, !dbg !3867
  br i1 %8, label %11, label %9, !dbg !3868

9:                                                ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !687, metadata !DIExpression()) #20, !dbg !3860
  store i64 %10, i64* %1, align 8, !dbg !3869, !tbaa !1548
  call void @llvm.dbg.value(metadata i8* %0, metadata !3768, metadata !DIExpression()) #20, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %18, metadata !3771, metadata !DIExpression()) #20, !dbg !3870
  br label %21, !dbg !3872

11:                                               ; preds = %7
  tail call void @xalloc_die() #24, !dbg !3873
  unreachable, !dbg !3873

12:                                               ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3874
  br i1 %13, label %15, label %14, !dbg !3875

14:                                               ; preds = %12
  tail call void @xalloc_die() #24, !dbg !3876
  unreachable, !dbg !3876

15:                                               ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3877
  %17 = add nuw nsw i64 %3, 1, !dbg !3878
  %18 = add nuw nsw i64 %17, %16, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %18, metadata !687, metadata !DIExpression()) #20, !dbg !3860
  call void @llvm.dbg.value(metadata i64 %18, metadata !687, metadata !DIExpression()) #20, !dbg !3860
  store i64 %18, i64* %1, align 8, !dbg !3869, !tbaa !1548
  call void @llvm.dbg.value(metadata i8* %0, metadata !3768, metadata !DIExpression()) #20, !dbg !3870
  call void @llvm.dbg.value(metadata i64 %18, metadata !3771, metadata !DIExpression()) #20, !dbg !3870
  %19 = icmp eq i64 %18, 0, !dbg !3880
  br i1 %19, label %20, label %21, !dbg !3872

20:                                               ; preds = %15
  tail call void @free(i8* nonnull %0) #20, !dbg !3881
  br label %28, !dbg !3882

21:                                               ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #20, !dbg !3883
  call void @llvm.dbg.value(metadata i8* %23, metadata !3768, metadata !DIExpression()) #20, !dbg !3870
  %24 = icmp eq i8* %23, null, !dbg !3884
  %25 = icmp ne i64 %22, 0, !dbg !3885
  %26 = and i1 %25, %24, !dbg !3886
  br i1 %26, label %27, label %28, !dbg !3886

27:                                               ; preds = %21
  tail call void @xalloc_die() #24, !dbg !3887
  unreachable, !dbg !3887

28:                                               ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3870
  ret i8* %29, !dbg !3888
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3889 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3891, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %0, metadata !3893, metadata !DIExpression()) #20, !dbg !3898
  call void @llvm.dbg.value(metadata i64 1, metadata !3896, metadata !DIExpression()) #20, !dbg !3898
  %2 = icmp slt i64 %0, 0, !dbg !3900
  br i1 %2, label %6, label %3, !dbg !3902

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #20, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %4, metadata !3897, metadata !DIExpression()) #20, !dbg !3898
  %5 = icmp eq i8* %4, null, !dbg !3904
  br i1 %5, label %6, label %7, !dbg !3905

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #24, !dbg !3906
  unreachable, !dbg !3906

7:                                                ; preds = %3
  ret i8* %4, !dbg !3907
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3894 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3893, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %1, metadata !3896, metadata !DIExpression()), !dbg !3908
  %3 = udiv i64 9223372036854775807, %1, !dbg !3909
  %4 = icmp ult i64 %3, %0, !dbg !3909
  br i1 %4, label %8, label %5, !dbg !3910

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #20, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %6, metadata !3897, metadata !DIExpression()), !dbg !3908
  %7 = icmp eq i8* %6, null, !dbg !3912
  br i1 %7, label %8, label %9, !dbg !3913

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #24, !dbg !3914
  unreachable, !dbg !3914

9:                                                ; preds = %5
  ret i8* %6, !dbg !3915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3916 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3920, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %1, metadata !3921, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %1, metadata !3735, metadata !DIExpression()) #20, !dbg !3923
  %3 = tail call noalias i8* @malloc(i64 %1) #20, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %3, metadata !3738, metadata !DIExpression()) #20, !dbg !3923
  %4 = icmp eq i8* %3, null, !dbg !3926
  %5 = icmp ne i64 %1, 0, !dbg !3927
  %6 = and i1 %5, %4, !dbg !3928
  br i1 %6, label %7, label %8, !dbg !3928

7:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3929
  unreachable, !dbg !3929

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3930, metadata !DIExpression()) #20, !dbg !3939
  call void @llvm.dbg.value(metadata i8* %0, metadata !3937, metadata !DIExpression()) #20, !dbg !3939
  call void @llvm.dbg.value(metadata i64 %1, metadata !3938, metadata !DIExpression()) #20, !dbg !3939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #20, !dbg !3941
  ret i8* %3, !dbg !3942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3943 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3945, metadata !DIExpression()), !dbg !3946
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #23, !dbg !3947
  %3 = add i64 %2, 1, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %0, metadata !3920, metadata !DIExpression()) #20, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %3, metadata !3921, metadata !DIExpression()) #20, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %3, metadata !3735, metadata !DIExpression()) #20, !dbg !3951
  %4 = tail call noalias i8* @malloc(i64 %3) #20, !dbg !3953
  call void @llvm.dbg.value(metadata i8* %4, metadata !3738, metadata !DIExpression()) #20, !dbg !3951
  %5 = icmp eq i8* %4, null, !dbg !3954
  %6 = icmp ne i64 %3, 0, !dbg !3955
  %7 = and i1 %6, %5, !dbg !3956
  br i1 %7, label %8, label %9, !dbg !3956

8:                                                ; preds = %1
  tail call void @xalloc_die() #24, !dbg !3957
  unreachable, !dbg !3957

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3930, metadata !DIExpression()) #20, !dbg !3958
  call void @llvm.dbg.value(metadata i8* %0, metadata !3937, metadata !DIExpression()) #20, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %3, metadata !3938, metadata !DIExpression()) #20, !dbg !3958
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #20, !dbg !3960
  ret i8* %4, !dbg !3961
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3962 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3963, !tbaa !1415
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.198, i64 0, i64 0), i32 5) #20, !dbg !3964
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.199, i64 0, i64 0), i8* %2) #20, !dbg !3965
  tail call void @abort() #24, !dbg !3966
  unreachable, !dbg !3966
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !3967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3969, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i64 %1, metadata !3970, metadata !DIExpression()), !dbg !3972
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #20, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %3, metadata !3971, metadata !DIExpression()), !dbg !3972
  %4 = icmp eq i8* %3, null, !dbg !3974
  br i1 %4, label %5, label %6, !dbg !3976

5:                                                ; preds = %2
  tail call void @xalloc_die() #24, !dbg !3977
  unreachable, !dbg !3977

6:                                                ; preds = %2
  ret i8* %3, !dbg !3978
}

; Function Attrs: nofree nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #22 !dbg !3979 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3981, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %1, metadata !3982, metadata !DIExpression()), !dbg !3987
  %3 = icmp eq i64 %0, 0, !dbg !3988
  %4 = icmp eq i64 %1, 0, !dbg !3989
  %5 = or i1 %3, %4, !dbg !3990
  br i1 %5, label %11, label %6, !dbg !3990

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3984, metadata !DIExpression()), !dbg !3991
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3992
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3992
  br i1 %8, label %9, label %11, !dbg !3994

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #26, !dbg !3995
  store i32 12, i32* %10, align 4, !dbg !3997, !tbaa !1415
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3981, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 %12, metadata !3982, metadata !DIExpression()), !dbg !3987
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #20, !dbg !3998
  call void @llvm.dbg.value(metadata i8* %14, metadata !3983, metadata !DIExpression()), !dbg !3987
  br label %15, !dbg !3999

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3987
  ret i8* %16, !dbg !4000
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !4001 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4007, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i32 0, metadata !4008, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i32 0, metadata !4010, metadata !DIExpression()), !dbg !4011
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4012
  call void @llvm.dbg.value(metadata i32 %2, metadata !4009, metadata !DIExpression()), !dbg !4011
  %3 = icmp slt i32 %2, 0, !dbg !4013
  br i1 %3, label %4, label %6, !dbg !4015

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4016
  br label %24, !dbg !4017

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4018
  %8 = icmp eq i32 %7, 0, !dbg !4018
  br i1 %8, label %13, label %9, !dbg !4020

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4021
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #20, !dbg !4022
  %12 = icmp eq i64 %11, -1, !dbg !4023
  br i1 %12, label %16, label %13, !dbg !4024

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #20, !dbg !4025
  %15 = icmp eq i32 %14, 0, !dbg !4025
  br i1 %15, label %16, label %18, !dbg !4026

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4008, metadata !DIExpression()), !dbg !4011
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4027
  call void @llvm.dbg.value(metadata i32 %21, metadata !4010, metadata !DIExpression()), !dbg !4011
  br label %24, !dbg !4028

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #26, !dbg !4029
  %20 = load i32, i32* %19, align 4, !dbg !4029, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 %20, metadata !4008, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i32 %20, metadata !4008, metadata !DIExpression()), !dbg !4011
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4027
  call void @llvm.dbg.value(metadata i32 %21, metadata !4010, metadata !DIExpression()), !dbg !4011
  %22 = icmp eq i32 %20, 0, !dbg !4030
  br i1 %22, label %24, label %23, !dbg !4028

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4032, !tbaa !1415
  call void @llvm.dbg.value(metadata i32 -1, metadata !4010, metadata !DIExpression()), !dbg !4011
  br label %24, !dbg !4034

24:                                               ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4011
  ret i32 %25, !dbg !4035
}

; Function Attrs: nofree nounwind
declare !dbg !743 i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !744 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4036 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4042, metadata !DIExpression()), !dbg !4043
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4044
  br i1 %2, label %6, label %3, !dbg !4046

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #20, !dbg !4047
  %5 = icmp eq i32 %4, 0, !dbg !4047
  br i1 %5, label %6, label %8, !dbg !4048

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4049
  br label %17, !dbg !4050

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4051, metadata !DIExpression()) #20, !dbg !4056
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4058
  %10 = load i32, i32* %9, align 8, !dbg !4058, !tbaa !4060
  %11 = and i32 %10, 256, !dbg !4062
  %12 = icmp eq i32 %11, 0, !dbg !4062
  br i1 %12, label %15, label %13, !dbg !4063

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #20, !dbg !4064
  br label %15, !dbg !4064

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4065
  br label %17, !dbg !4066

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4043
  ret i32 %18, !dbg !4067
}

; Function Attrs: nofree nounwind
declare !dbg !751 i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !4068 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4075, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %1, metadata !4076, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i32 %2, metadata !4077, metadata !DIExpression()), !dbg !4081
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4082
  %5 = load i8*, i8** %4, align 8, !dbg !4082, !tbaa !4083
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4084
  %7 = load i8*, i8** %6, align 8, !dbg !4084, !tbaa !4085
  %8 = icmp eq i8* %5, %7, !dbg !4086
  br i1 %8, label %9, label %28, !dbg !4087

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4088
  %11 = load i8*, i8** %10, align 8, !dbg !4088, !tbaa !4089
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4090
  %13 = load i8*, i8** %12, align 8, !dbg !4090, !tbaa !4091
  %14 = icmp eq i8* %11, %13, !dbg !4092
  br i1 %14, label %15, label %28, !dbg !4093

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4094
  %17 = load i8*, i8** %16, align 8, !dbg !4094, !tbaa !4095
  %18 = icmp eq i8* %17, null, !dbg !4096
  br i1 %18, label %19, label %28, !dbg !4097

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #20, !dbg !4098
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #20, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %21, metadata !4078, metadata !DIExpression()), !dbg !4100
  %22 = icmp eq i64 %21, -1, !dbg !4101
  br i1 %22, label %30, label %23, !dbg !4103

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4104
  %25 = load i32, i32* %24, align 8, !dbg !4105, !tbaa !4060
  %26 = and i32 %25, -17, !dbg !4105
  store i32 %26, i32* %24, align 8, !dbg !4105, !tbaa !4060
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4106
  store i64 %21, i64* %27, align 8, !dbg !4107, !tbaa !4108
  br label %30, !dbg !4109

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4110
  br label %30, !dbg !4111

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4081
  ret i32 %31, !dbg !4112
}

; Function Attrs: nofree nounwind
declare !dbg !827 i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !4113 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4121, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i8* %1, metadata !4122, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i64 %2, metadata !4123, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4124, metadata !DIExpression()), !dbg !4130
  %6 = bitcast i32* %5 to i8*, !dbg !4131
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4131
  %7 = icmp eq i32* %0, null, !dbg !4132
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4134
  call void @llvm.dbg.value(metadata i32* %8, metadata !4121, metadata !DIExpression()), !dbg !4130
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #20, !dbg !4135
  call void @llvm.dbg.value(metadata i64 %9, metadata !4125, metadata !DIExpression()), !dbg !4130
  %10 = icmp ugt i64 %9, -3, !dbg !4136
  %11 = icmp ne i64 %2, 0, !dbg !4137
  %12 = and i1 %11, %10, !dbg !4138
  br i1 %12, label %13, label %18, !dbg !4138

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #20, !dbg !4139
  br i1 %14, label %18, label %15, !dbg !4140

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4141, !tbaa !1468
  call void @llvm.dbg.value(metadata i8 %16, metadata !4127, metadata !DIExpression()), !dbg !4142
  %17 = zext i8 %16 to i32, !dbg !4143
  store i32 %17, i32* %8, align 4, !dbg !4144, !tbaa !1415
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #20, !dbg !4145
  ret i64 %19, !dbg !4145
}

; Function Attrs: nounwind
declare !dbg !833 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !4146 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4147, !tbaa !1327
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.212, i64 0, i64 0), i32 5) #20, !dbg !4147
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i64 0, i64 0), i8* %2) #20, !dbg !4147
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !4148, !tbaa !1415
  tail call void @exit(i32 %4) #24, !dbg !4149
  unreachable, !dbg !4149
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin(%struct.obstack* nocapture %0, i64 %1, i64 %2, i8* (i64)* %3, void (i8*)* %4) local_unnamed_addr #8 !dbg !4150 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4188, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i64 %1, metadata !4189, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i64 %2, metadata !4190, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i8* (i64)* %3, metadata !4191, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !4192, metadata !DIExpression()), !dbg !4193
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !4194
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !4195, !tbaa !1468
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !4196
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !4197, !tbaa !1468
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4198
  %9 = load i8, i8* %8, align 8, !dbg !4199
  %10 = and i8 %9, -2, !dbg !4199
  store i8 %10, i8* %8, align 8, !dbg !4199
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4200, metadata !DIExpression()) #20, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %1, metadata !4205, metadata !DIExpression()) #20, !dbg !4211
  call void @llvm.dbg.value(metadata i64 %2, metadata !4206, metadata !DIExpression()) #20, !dbg !4211
  %11 = icmp eq i64 %2, 0, !dbg !4213
  %12 = select i1 %11, i64 16, i64 %2, !dbg !4215
  call void @llvm.dbg.value(metadata i64 %12, metadata !4206, metadata !DIExpression()) #20, !dbg !4211
  %13 = icmp eq i64 %1, 0, !dbg !4216
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !4217
  call void @llvm.dbg.value(metadata i64 %14, metadata !4205, metadata !DIExpression()) #20, !dbg !4211
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4218
  store i64 %14, i64* %15, align 8, !dbg !4219, !tbaa !4220
  %16 = add i64 %12, -1, !dbg !4221
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4222
  store i64 %16, i64* %17, align 8, !dbg !4223, !tbaa !1530
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4224, metadata !DIExpression()) #20, !dbg !4230
  call void @llvm.dbg.value(metadata i64 %14, metadata !4229, metadata !DIExpression()) #20, !dbg !4230
  %18 = tail call i8* %3(i64 %14) #20, !dbg !4232
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4234
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !4235
  store i8* %18, i8** %20, align 8, !dbg !4235, !tbaa !1533
  call void @llvm.dbg.value(metadata i8* %18, metadata !4207, metadata !DIExpression()) #20, !dbg !4211
  %21 = icmp eq i8* %18, null, !dbg !4236
  br i1 %21, label %22, label %24, !dbg !4238

22:                                               ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4239, !tbaa !1327
  tail call void %23() #24, !dbg !4240
  unreachable, !dbg !4240

24:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %18, metadata !4207, metadata !DIExpression()) #20, !dbg !4211
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !4241
  %26 = ptrtoint i8* %25 to i64, !dbg !4241
  %27 = add i64 %16, %26, !dbg !4241
  %28 = sub i64 0, %12, !dbg !4241
  %29 = and i64 %27, %28, !dbg !4241
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !4241
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4242
  store i8* %30, i8** %31, align 8, !dbg !4243, !tbaa !1524
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4244
  store i8* %30, i8** %32, align 8, !dbg !4245, !tbaa !1521
  %33 = load i64, i64* %15, align 8, !dbg !4246, !tbaa !4220
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !4247
  %35 = bitcast i8* %18 to i8**, !dbg !4248
  store i8* %34, i8** %35, align 8, !dbg !4249, !tbaa !1327
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4250
  store i8* %34, i8** %36, align 8, !dbg !4251, !tbaa !1534
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !4252
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !4252
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !4253, !tbaa !1327
  %39 = load i8, i8* %8, align 8, !dbg !4254
  %40 = and i8 %39, -7, !dbg !4255
  store i8 %40, i8* %8, align 8, !dbg !4255
  ret i32 1, !dbg !4256
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin_1(%struct.obstack* nocapture %0, i64 %1, i64 %2, i8* (i8*, i64)* %3, void (i8*, i8*)* %4, i8* %5) local_unnamed_addr #8 !dbg !4257 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4261, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !4262, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i64 %2, metadata !4263, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, metadata !4264, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, metadata !4265, metadata !DIExpression()), !dbg !4267
  call void @llvm.dbg.value(metadata i8* %5, metadata !4266, metadata !DIExpression()), !dbg !4267
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !4268
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !4269
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !4270, !tbaa !1468
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4271
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !4272
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !4273, !tbaa !1468
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4274
  store i8* %5, i8** %11, align 8, !dbg !4275, !tbaa !4276
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4277
  %13 = load i8, i8* %12, align 8, !dbg !4278
  %14 = or i8 %13, 1, !dbg !4278
  store i8 %14, i8* %12, align 8, !dbg !4278
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4200, metadata !DIExpression()) #20, !dbg !4279
  call void @llvm.dbg.value(metadata i64 %1, metadata !4205, metadata !DIExpression()) #20, !dbg !4279
  call void @llvm.dbg.value(metadata i64 %2, metadata !4206, metadata !DIExpression()) #20, !dbg !4279
  %15 = icmp eq i64 %2, 0, !dbg !4281
  %16 = select i1 %15, i64 16, i64 %2, !dbg !4282
  call void @llvm.dbg.value(metadata i64 %16, metadata !4206, metadata !DIExpression()) #20, !dbg !4279
  %17 = icmp eq i64 %1, 0, !dbg !4283
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %18, metadata !4205, metadata !DIExpression()) #20, !dbg !4279
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4285
  store i64 %18, i64* %19, align 8, !dbg !4286, !tbaa !4220
  %20 = add i64 %16, -1, !dbg !4287
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4288
  store i64 %20, i64* %21, align 8, !dbg !4289, !tbaa !1530
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4224, metadata !DIExpression()) #20, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %18, metadata !4229, metadata !DIExpression()) #20, !dbg !4290
  %22 = tail call i8* %3(i8* %5, i64 %18) #20, !dbg !4292
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4293
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !4294
  store i8* %22, i8** %24, align 8, !dbg !4294, !tbaa !1533
  call void @llvm.dbg.value(metadata i8* %22, metadata !4207, metadata !DIExpression()) #20, !dbg !4279
  %25 = icmp eq i8* %22, null, !dbg !4295
  br i1 %25, label %26, label %28, !dbg !4296

26:                                               ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4297, !tbaa !1327
  tail call void %27() #24, !dbg !4298
  unreachable, !dbg !4298

28:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8* %22, metadata !4207, metadata !DIExpression()) #20, !dbg !4279
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !4299
  %30 = ptrtoint i8* %29 to i64, !dbg !4299
  %31 = add i64 %20, %30, !dbg !4299
  %32 = sub i64 0, %16, !dbg !4299
  %33 = and i64 %31, %32, !dbg !4299
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !4299
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4300
  store i8* %34, i8** %35, align 8, !dbg !4301, !tbaa !1524
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4302
  store i8* %34, i8** %36, align 8, !dbg !4303, !tbaa !1521
  %37 = load i64, i64* %19, align 8, !dbg !4304, !tbaa !4220
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !4305
  %39 = bitcast i8* %22 to i8**, !dbg !4306
  store i8* %38, i8** %39, align 8, !dbg !4307, !tbaa !1327
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4308
  store i8* %38, i8** %40, align 8, !dbg !4309, !tbaa !1534
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !4310
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !4310
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !4311, !tbaa !1327
  %43 = load i8, i8* %12, align 8, !dbg !4312
  %44 = and i8 %43, -7, !dbg !4313
  store i8 %44, i8* %12, align 8, !dbg !4313
  ret i32 1, !dbg !4314
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_newchunk(%struct.obstack* nocapture %0, i64 %1) local_unnamed_addr #8 !dbg !4315 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4319, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 %1, metadata !4320, metadata !DIExpression()), !dbg !4328
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4329
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4329, !tbaa !1533
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4321, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, metadata !4322, metadata !DIExpression()), !dbg !4328
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4330
  %6 = bitcast i8** %5 to i64*, !dbg !4330
  %7 = load i64, i64* %6, align 8, !dbg !4330, !tbaa !1521
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4331
  %9 = bitcast i8** %8 to i64*, !dbg !4331
  %10 = load i64, i64* %9, align 8, !dbg !4331, !tbaa !1524
  %11 = sub i64 %7, %10, !dbg !4332
  call void @llvm.dbg.value(metadata i64 %11, metadata !4323, metadata !DIExpression()), !dbg !4328
  %12 = add i64 %11, %1, !dbg !4333
  call void @llvm.dbg.value(metadata i64 %12, metadata !4325, metadata !DIExpression()), !dbg !4328
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4334
  %14 = load i64, i64* %13, align 8, !dbg !4334, !tbaa !1530
  %15 = add i64 %12, %14, !dbg !4335
  call void @llvm.dbg.value(metadata i64 %15, metadata !4326, metadata !DIExpression()), !dbg !4328
  %16 = lshr i64 %11, 3, !dbg !4336
  %17 = add nuw nsw i64 %16, 100, !dbg !4337
  %18 = add i64 %17, %15, !dbg !4338
  call void @llvm.dbg.value(metadata i64 %18, metadata !4327, metadata !DIExpression()), !dbg !4328
  %19 = icmp ult i64 %18, %15, !dbg !4339
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !4341
  call void @llvm.dbg.value(metadata i64 %20, metadata !4327, metadata !DIExpression()), !dbg !4328
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4342
  %22 = load i64, i64* %21, align 8, !dbg !4342, !tbaa !4220
  %23 = icmp ult i64 %20, %22, !dbg !4344
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !4345
  call void @llvm.dbg.value(metadata i64 %24, metadata !4327, metadata !DIExpression()), !dbg !4328
  %25 = icmp ugt i64 %11, %12, !dbg !4346
  %26 = icmp ugt i64 %12, %15, !dbg !4348
  %27 = or i1 %25, %26, !dbg !4349
  br i1 %27, label %47, label %28, !dbg !4349

28:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4224, metadata !DIExpression()) #20, !dbg !4350
  call void @llvm.dbg.value(metadata i64 %24, metadata !4229, metadata !DIExpression()) #20, !dbg !4350
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4352
  %30 = load i8, i8* %29, align 8, !dbg !4352
  %31 = and i8 %30, 1, !dbg !4352
  %32 = icmp eq i8 %31, 0, !dbg !4353
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !4354
  br i1 %32, label %40, label %34, !dbg !4355

34:                                               ; preds = %28
  %35 = bitcast %union.anon.0* %33 to i8* (i8*, i64)**, !dbg !4356
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !4356, !tbaa !1468
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4357
  %38 = load i8*, i8** %37, align 8, !dbg !4357, !tbaa !4276
  %39 = tail call i8* %36(i8* %38, i64 %24) #20, !dbg !4358
  br label %44, !dbg !4359

40:                                               ; preds = %28
  %41 = getelementptr %union.anon.0, %union.anon.0* %33, i64 0, i32 0, !dbg !4360
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !4360, !tbaa !1468
  %43 = tail call i8* %42(i64 %24) #20, !dbg !4361
  br label %44, !dbg !4362

44:                                               ; preds = %40, %34
  %45 = phi i8* [ %39, %34 ], [ %43, %40 ], !dbg !4354
  call void @llvm.dbg.value(metadata i8* %45, metadata !4322, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i8* %45, metadata !4322, metadata !DIExpression()), !dbg !4328
  %46 = icmp eq i8* %45, null, !dbg !4363
  br i1 %46, label %47, label %49, !dbg !4365

47:                                               ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4366, !tbaa !1327
  tail call void %48() #24, !dbg !4367
  unreachable, !dbg !4367

49:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %45, metadata !4322, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i8* %45, metadata !4322, metadata !DIExpression()), !dbg !4328
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !4368
  store i8* %45, i8** %50, align 8, !dbg !4368, !tbaa !1533
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !4369
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !4369
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !4370, !tbaa !1327
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !4371
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4372
  store i8* %53, i8** %54, align 8, !dbg !4373, !tbaa !1534
  %55 = bitcast i8* %45 to i8**, !dbg !4374
  store i8* %53, i8** %55, align 8, !dbg !4375, !tbaa !1327
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !4376
  %57 = ptrtoint i8* %56 to i64, !dbg !4376
  %58 = load i64, i64* %13, align 8, !dbg !4376, !tbaa !1530
  %59 = add i64 %58, %57, !dbg !4376
  %60 = xor i64 %58, -1, !dbg !4376
  %61 = and i64 %59, %60, !dbg !4376
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !4376
  call void @llvm.dbg.value(metadata i8* %62, metadata !4324, metadata !DIExpression()), !dbg !4328
  %63 = load i8*, i8** %8, align 8, !dbg !4377, !tbaa !1524
  call void @llvm.dbg.value(metadata i8* %62, metadata !4378, metadata !DIExpression()) #20, !dbg !4383
  call void @llvm.dbg.value(metadata i8* %63, metadata !4381, metadata !DIExpression()) #20, !dbg !4383
  call void @llvm.dbg.value(metadata i64 %11, metadata !4382, metadata !DIExpression()) #20, !dbg !4383
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %62, i8* nonnull align 1 %63, i64 %11, i1 false) #20, !dbg !4385
  %64 = load i8, i8* %29, align 8, !dbg !4386
  %65 = and i8 %64, 2, !dbg !4386
  %66 = icmp eq i8 %65, 0, !dbg !4388
  br i1 %66, label %67, label %95, !dbg !4389

67:                                               ; preds = %49
  %68 = load i8*, i8** %8, align 8, !dbg !4390, !tbaa !1524
  %69 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !4391
  %70 = ptrtoint i8* %69 to i64, !dbg !4391
  %71 = load i64, i64* %13, align 8, !dbg !4391, !tbaa !1530
  %72 = add i64 %71, %70, !dbg !4391
  %73 = xor i64 %71, -1, !dbg !4391
  %74 = and i64 %72, %73, !dbg !4391
  %75 = getelementptr inbounds i8, i8* null, i64 %74, !dbg !4391
  %76 = icmp eq i8* %68, %75, !dbg !4392
  br i1 %76, label %77, label %95, !dbg !4393

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !4394
  %79 = bitcast %struct._obstack_chunk** %78 to i64*, !dbg !4394
  %80 = load i64, i64* %79, align 8, !dbg !4394, !tbaa !1327
  %81 = bitcast i8* %51 to i64*, !dbg !4396
  store i64 %80, i64* %81, align 8, !dbg !4396, !tbaa !1327
  %82 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !4397
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4398, metadata !DIExpression()) #20, !dbg !4404
  call void @llvm.dbg.value(metadata i8* %82, metadata !4403, metadata !DIExpression()) #20, !dbg !4404
  %83 = load i8, i8* %29, align 8, !dbg !4406
  %84 = and i8 %83, 1, !dbg !4406
  %85 = icmp eq i8 %84, 0, !dbg !4408
  %86 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4409
  br i1 %85, label %92, label %87, !dbg !4410

87:                                               ; preds = %77
  %88 = bitcast %union.anon.1* %86 to void (i8*, i8*)**, !dbg !4411
  %89 = load void (i8*, i8*)*, void (i8*, i8*)** %88, align 8, !dbg !4411, !tbaa !1468
  %90 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4412
  %91 = load i8*, i8** %90, align 8, !dbg !4412, !tbaa !4276
  tail call void %89(i8* %91, i8* %82) #20, !dbg !4413
  br label %95, !dbg !4413

92:                                               ; preds = %77
  %93 = getelementptr %union.anon.1, %union.anon.1* %86, i64 0, i32 0, !dbg !4414
  %94 = load void (i8*)*, void (i8*)** %93, align 8, !dbg !4414, !tbaa !1468
  tail call void %94(i8* %82) #20, !dbg !4415
  br label %95

95:                                               ; preds = %92, %87, %49, %67
  store i8* %62, i8** %8, align 8, !dbg !4416, !tbaa !1524
  %96 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !4417
  store i8* %96, i8** %5, align 8, !dbg !4418, !tbaa !1521
  %97 = load i8, i8* %29, align 8, !dbg !4419
  %98 = and i8 %97, -3, !dbg !4419
  store i8 %98, i8* %29, align 8, !dbg !4419
  ret void, !dbg !4420
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly %0, i8* readnone %1) local_unnamed_addr #11 !dbg !4421 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4425, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i8* %1, metadata !4426, metadata !DIExpression()), !dbg !4429
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4430
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4427, metadata !DIExpression()), !dbg !4429
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4429, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4427, metadata !DIExpression()), !dbg !4429
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !4431
  br i1 %5, label %18, label %6, !dbg !4432

6:                                                ; preds = %2, %14
  %7 = phi %struct._obstack_chunk* [ %16, %14 ], [ %4, %2 ]
  %8 = bitcast %struct._obstack_chunk* %7 to i8*, !dbg !4433
  %9 = icmp ult i8* %8, %1, !dbg !4434
  br i1 %9, label %10, label %14, !dbg !4435

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 0, !dbg !4436
  %12 = load i8*, i8** %11, align 8, !dbg !4436, !tbaa !1327
  %13 = icmp ult i8* %12, %1, !dbg !4437
  br i1 %13, label %14, label %18, !dbg !4438

14:                                               ; preds = %6, %10
  %15 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !4439
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4428, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4427, metadata !DIExpression()), !dbg !4429
  %16 = load %struct._obstack_chunk*, %struct._obstack_chunk** %15, align 8, !dbg !4429, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %16, metadata !4427, metadata !DIExpression()), !dbg !4429
  %17 = icmp eq %struct._obstack_chunk* %16, null, !dbg !4431
  br i1 %17, label %18, label %6, !dbg !4432, !llvm.loop !4441

18:                                               ; preds = %10, %14, %2
  %19 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 1, %10 ], !dbg !4431
  ret i32 %19, !dbg !4443
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_free(%struct.obstack* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !4444 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4446, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i8* %1, metadata !4447, metadata !DIExpression()), !dbg !4450
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4451
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4451, !tbaa !1533
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4448, metadata !DIExpression()), !dbg !4450
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !4452
  br i1 %5, label %42, label %6, !dbg !4453

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4454
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4454
  %9 = bitcast %union.anon.1* %8 to void (i8*, i8*)**, !dbg !4454
  %10 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4454
  %11 = getelementptr %union.anon.1, %union.anon.1* %8, i64 0, i32 0, !dbg !4454
  br label %12, !dbg !4453

12:                                               ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4448, metadata !DIExpression()), !dbg !4450
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !4457
  %15 = icmp ult i8* %14, %1, !dbg !4458
  br i1 %15, label %16, label %20, !dbg !4459

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !4460
  %18 = load i8*, i8** %17, align 8, !dbg !4460, !tbaa !1327
  %19 = icmp ult i8* %18, %1, !dbg !4461
  br i1 %19, label %20, label %35, !dbg !4462

20:                                               ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !4463
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !4463, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !4449, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4398, metadata !DIExpression()) #20, !dbg !4464
  call void @llvm.dbg.value(metadata i8* %14, metadata !4403, metadata !DIExpression()) #20, !dbg !4464
  %23 = load i8, i8* %7, align 8, !dbg !4465
  %24 = and i8 %23, 1, !dbg !4465
  %25 = icmp eq i8 %24, 0, !dbg !4466
  br i1 %25, label %29, label %26, !dbg !4467

26:                                               ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %9, align 8, !dbg !4468, !tbaa !1468
  %28 = load i8*, i8** %10, align 8, !dbg !4469, !tbaa !4276
  tail call void %27(i8* %28, i8* nonnull %14) #20, !dbg !4470
  br label %31, !dbg !4470

29:                                               ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %11, align 8, !dbg !4471, !tbaa !1468
  tail call void %30(i8* nonnull %14) #20, !dbg !4472
  br label %31

31:                                               ; preds = %26, %29
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !4448, metadata !DIExpression()), !dbg !4450
  %32 = load i8, i8* %7, align 8, !dbg !4473
  %33 = or i8 %32, 2, !dbg !4473
  store i8 %33, i8* %7, align 8, !dbg !4473
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !4452
  br i1 %34, label %42, label %12, !dbg !4453, !llvm.loop !4474

35:                                               ; preds = %16
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4448, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4448, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4448, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4448, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4448, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4448, metadata !DIExpression()), !dbg !4450
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4476
  store i8* %1, i8** %36, align 8, !dbg !4479, !tbaa !1521
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4480
  store i8* %1, i8** %37, align 8, !dbg !4481, !tbaa !1524
  %38 = bitcast %struct._obstack_chunk* %13 to i64*, !dbg !4482
  %39 = load i64, i64* %38, align 8, !dbg !4482, !tbaa !1327
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4483
  %41 = bitcast i8** %40 to i64*, !dbg !4484
  store i64 %39, i64* %41, align 8, !dbg !4484, !tbaa !1534
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !4485, !tbaa !1533
  br label %45, !dbg !4486

42:                                               ; preds = %31, %2
  %43 = icmp eq i8* %1, null, !dbg !4487
  br i1 %43, label %45, label %44, !dbg !4489

44:                                               ; preds = %42
  tail call void @abort() #24, !dbg !4490
  unreachable, !dbg !4490

45:                                               ; preds = %42, %35
  ret void, !dbg !4491
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable
define dso_local i64 @_obstack_memory_used(%struct.obstack* nocapture readonly %0) local_unnamed_addr #11 !dbg !4492 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4496, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 0, metadata !4498, metadata !DIExpression()), !dbg !4499
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4500
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4497, metadata !DIExpression()), !dbg !4499
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !dbg !4502, !tbaa !1327
  call void @llvm.dbg.value(metadata i64 0, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, metadata !4497, metadata !DIExpression()), !dbg !4499
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !4503
  br i1 %4, label %16, label %5, !dbg !4505

5:                                                ; preds = %1, %5
  %6 = phi %struct._obstack_chunk* [ %14, %5 ], [ %3, %1 ]
  %7 = phi i64 [ %12, %5 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !4498, metadata !DIExpression()), !dbg !4499
  %8 = bitcast %struct._obstack_chunk* %6 to i64*, !dbg !4506
  %9 = load i64, i64* %8, align 8, !dbg !4506, !tbaa !1327
  %10 = ptrtoint %struct._obstack_chunk* %6 to i64, !dbg !4508
  %11 = sub i64 %7, %10, !dbg !4508
  %12 = add i64 %11, %9, !dbg !4509
  call void @llvm.dbg.value(metadata i64 %12, metadata !4498, metadata !DIExpression()), !dbg !4499
  %13 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %6, i64 0, i32 1, !dbg !4510
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4497, metadata !DIExpression()), !dbg !4499
  %14 = load %struct._obstack_chunk*, %struct._obstack_chunk** %13, align 8, !dbg !4502, !tbaa !1327
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %14, metadata !4497, metadata !DIExpression()), !dbg !4499
  %15 = icmp eq %struct._obstack_chunk* %14, null, !dbg !4503
  br i1 %15, label %16, label %5, !dbg !4505, !llvm.loop !4511

16:                                               ; preds = %5, %1
  %17 = phi i64 [ 0, %1 ], [ %12, %5 ], !dbg !4499
  call void @llvm.dbg.value(metadata i64 %17, metadata !4498, metadata !DIExpression()), !dbg !4499
  ret i64 %17, !dbg !4513
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4514 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4520, metadata !DIExpression()), !dbg !4525
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #20, !dbg !4526
  call void @llvm.dbg.value(metadata i1 undef, metadata !4521, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4527, metadata !DIExpression()), !dbg !4530
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4532
  %4 = load i32, i32* %3, align 8, !dbg !4532, !tbaa !4060
  %5 = and i32 %4, 32, !dbg !4532
  %6 = icmp eq i32 %5, 0, !dbg !4533
  call void @llvm.dbg.value(metadata i1 %6, metadata !4523, metadata !DIExpression()), !dbg !4525
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #20, !dbg !4534
  %8 = icmp ne i32 %7, 0, !dbg !4535
  call void @llvm.dbg.value(metadata i1 %8, metadata !4524, metadata !DIExpression()), !dbg !4525
  br i1 %6, label %9, label %19, !dbg !4536

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4538
  call void @llvm.dbg.value(metadata i1 %10, metadata !4521, metadata !DIExpression()), !dbg !4525
  %11 = xor i1 %8, true, !dbg !4539
  %12 = or i1 %10, %11, !dbg !4539
  %13 = sext i1 %8 to i32, !dbg !4539
  br i1 %12, label %22, label %14, !dbg !4539

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #26, !dbg !4540
  %16 = load i32, i32* %15, align 4, !dbg !4540, !tbaa !1415
  %17 = icmp ne i32 %16, 9, !dbg !4541
  %18 = sext i1 %17 to i32, !dbg !4542
  br label %22, !dbg !4542

19:                                               ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4543

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #26, !dbg !4545
  store i32 0, i32* %21, align 4, !dbg !4547, !tbaa !1415
  br label %22, !dbg !4545

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4525
  ret i32 %23, !dbg !4548
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4549 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4551, metadata !DIExpression()), !dbg !4556
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4557
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4557
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4552, metadata !DIExpression()), !dbg !4558
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #20, !dbg !4559
  %5 = icmp eq i32 %4, 0, !dbg !4559
  br i1 %5, label %6, label %13, !dbg !4561

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4562
  %8 = load i16, i16* %7, align 16, !dbg !4562
  %9 = icmp eq i16 %8, 67, !dbg !4562
  br i1 %9, label %13, label %10, !dbg !4563

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.222, i64 0, i64 0), i64 6), !dbg !4564
  %12 = icmp ne i32 %11, 0, !dbg !4565
  br label %13, !dbg !4563

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4556
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #20, !dbg !4566
  ret i1 %14, !dbg !4566
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4567 {
  %1 = tail call i8* @nl_langinfo(i32 14) #20, !dbg !4570
  call void @llvm.dbg.value(metadata i8* %1, metadata !4569, metadata !DIExpression()), !dbg !4571
  %2 = icmp eq i8* %1, null, !dbg !4572
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.225, i64 0, i64 0), i8* %1, !dbg !4574
  call void @llvm.dbg.value(metadata i8* %3, metadata !4569, metadata !DIExpression()), !dbg !4571
  %4 = load i8, i8* %3, align 1, !dbg !4575, !tbaa !1468
  %5 = icmp eq i8 %4, 0, !dbg !4579
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.226, i64 0, i64 0), i8* %3, !dbg !4580
  call void @llvm.dbg.value(metadata i8* %6, metadata !4569, metadata !DIExpression()), !dbg !4571
  ret i8* %6, !dbg !4581
}

; Function Attrs: nounwind
declare !dbg !1284 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4586, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8* %1, metadata !4587, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %2, metadata !4588, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i32 %0, metadata !4590, metadata !DIExpression()) #20, !dbg !4599
  call void @llvm.dbg.value(metadata i8* %1, metadata !4593, metadata !DIExpression()) #20, !dbg !4599
  call void @llvm.dbg.value(metadata i64 %2, metadata !4594, metadata !DIExpression()) #20, !dbg !4599
  call void @llvm.dbg.value(metadata i32 %0, metadata !4601, metadata !DIExpression()) #20, !dbg !4607
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4609
  call void @llvm.dbg.value(metadata i8* %4, metadata !4606, metadata !DIExpression()) #20, !dbg !4607
  call void @llvm.dbg.value(metadata i8* %4, metadata !4595, metadata !DIExpression()) #20, !dbg !4599
  %5 = icmp eq i8* %4, null, !dbg !4610
  br i1 %5, label %6, label %9, !dbg !4611

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4612
  br i1 %7, label %19, label %8, !dbg !4615

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4616, !tbaa !1468
  br label %19, !dbg !4617

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #23, !dbg !4618
  call void @llvm.dbg.value(metadata i64 %10, metadata !4596, metadata !DIExpression()) #20, !dbg !4619
  %11 = icmp ult i64 %10, %2, !dbg !4620
  br i1 %11, label %12, label %14, !dbg !4622

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4623
  call void @llvm.dbg.value(metadata i8* %1, metadata !4625, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i8* %4, metadata !4628, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.dbg.value(metadata i64 %13, metadata !4629, metadata !DIExpression()) #20, !dbg !4630
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #20, !dbg !4632
  br label %19, !dbg !4633

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4634
  br i1 %15, label %19, label %16, !dbg !4637

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4638
  call void @llvm.dbg.value(metadata i8* %1, metadata !4625, metadata !DIExpression()) #20, !dbg !4640
  call void @llvm.dbg.value(metadata i8* %4, metadata !4628, metadata !DIExpression()) #20, !dbg !4640
  call void @llvm.dbg.value(metadata i64 %17, metadata !4629, metadata !DIExpression()) #20, !dbg !4640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #20, !dbg !4642
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4643
  store i8 0, i8* %18, align 1, !dbg !4644, !tbaa !1468
  br label %19, !dbg !4645

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %6 ], [ 22, %8 ], [ 0, %12 ], [ 34, %14 ], [ 34, %16 ], !dbg !4646
  ret i32 %20, !dbg !4647
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4648 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4650, metadata !DIExpression()), !dbg !4651
  call void @llvm.dbg.value(metadata i32 %0, metadata !4601, metadata !DIExpression()) #20, !dbg !4652
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #20, !dbg !4654
  call void @llvm.dbg.value(metadata i8* %2, metadata !4606, metadata !DIExpression()) #20, !dbg !4652
  ret i8* %2, !dbg !4655
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
attributes #9 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { norecurse nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nofree "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree norecurse nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind readonly }
attributes #19 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { nounwind }
attributes #21 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { nofree nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #23 = { nounwind readonly }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind readnone }
attributes #27 = { cold }

!llvm.dbg.cu = !{!2, !366, !573, !371, !578, !416, !581, !422, !463, !633, !561, !675, !696, !699, !702, !705, !748, !789, !830, !569, !849, !887, !894, !1287}
!llvm.ident = !{!1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290, !1290}
!llvm.module.flags = !{!1291, !1292, !1293, !1294, !1295}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 80, type: !361, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !241, globals: !344, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/dircolors.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!4 = !{!5, !11, !212, !226}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Shell_syntax", file: !3, line: 42, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "SHELL_SYNTAX_BOURNE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "SHELL_SYNTAX_C", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SHELL_SYNTAX_UNKNOWN", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !12, file: !3, line: 250, baseType: !6, size: 32, elements: !207)
!12 = distinct !DISubprogram(name: "dc_parse_stream", scope: !3, file: !3, line: 239, type: !13, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !81)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !16, !79}
!15 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "")
!21 = !{!22, !24, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !40, !42, !43, !44, !48, !50, !52, !56, !59, !61, !64, !67, !68, !70, !74, !75}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !20, line: 51, baseType: !23, size: 32)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !19, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !19, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !19, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !19, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !19, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !19, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !19, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !19, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !19, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !19, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !19, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !19, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !20, line: 36, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !19, file: !20, line: 70, baseType: !41, size: 64, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !19, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !19, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !19, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !46, line: 152, baseType: !47)
!46 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !19, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !19, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!51 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !19, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 1)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !19, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !20, line: 43, baseType: null)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !46, line: 153, baseType: !47)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !19, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !20, line: 37, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !19, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !20, line: 38, flags: DIFlagFwdDecl)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !19, file: !20, line: 93, baseType: !41, size: 64, offset: 1344)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !19, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !19, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stddef.h", directory: "")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !19, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !19, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 160, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 20)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !154, !159, !161, !164, !166, !169, !173, !176, !178, !181, !184, !189, !192, !194, !197, !199, !202, !204}
!82 = !DILocalVariable(name: "fp", arg: 1, scope: !12, file: !3, line: 239, type: !16)
!83 = !DILocalVariable(name: "filename", arg: 2, scope: !12, file: !3, line: 239, type: !79)
!84 = !DILocalVariable(name: "line_number", scope: !12, file: !3, line: 241, type: !71)
!85 = !DILocalVariable(name: "next_G_line", scope: !12, file: !3, line: 242, type: !79)
!86 = !DILocalVariable(name: "input_line", scope: !12, file: !3, line: 243, type: !25)
!87 = !DILocalVariable(name: "input_line_size", scope: !12, file: !3, line: 244, type: !71)
!88 = !DILocalVariable(name: "line", scope: !12, file: !3, line: 245, type: !79)
!89 = !DILocalVariable(name: "term", scope: !12, file: !3, line: 246, type: !79)
!90 = !DILocalVariable(name: "ok", scope: !12, file: !3, line: 247, type: !15)
!91 = !DILocalVariable(name: "state", scope: !12, file: !3, line: 250, type: !11)
!92 = !DILocalVariable(name: "keywd", scope: !93, file: !3, line: 259, type: !25)
!93 = distinct !DILexicalBlock(scope: !12, file: !3, line: 258, column: 5)
!94 = !DILocalVariable(name: "arg", scope: !93, file: !3, line: 259, type: !25)
!95 = !DILocalVariable(name: "unrecognized", scope: !93, file: !3, line: 260, type: !15)
!96 = !DILocalVariable(name: "__o", scope: !97, file: !3, line: 312, type: !104)
!97 = distinct !DILexicalBlock(scope: !98, file: !3, line: 312, column: 19)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 311, column: 17)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 310, column: 19)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 309, column: 13)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 308, column: 15)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 304, column: 9)
!103 = distinct !DILexicalBlock(scope: !93, file: !3, line: 296, column: 11)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !106, line: 174, size: 704, elements: !107)
!106 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!107 = !{!108, !109, !119, !120, !121, !122, !127, !128, !139, !150, !151, !152, !153}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !105, file: !106, line: 176, baseType: !71, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !105, file: !106, line: 177, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !106, line: 167, size: 128, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !111, file: !106, line: 169, baseType: !25, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !111, file: !106, line: 170, baseType: !110, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !111, file: !106, line: 171, baseType: !116, offset: 128)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: -1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !105, file: !106, line: 178, baseType: !25, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !105, file: !106, line: 179, baseType: !25, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !105, file: !106, line: 180, baseType: !25, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !105, file: !106, line: 185, baseType: !123, size: 64, offset: 320)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !106, line: 181, size: 64, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !123, file: !106, line: 183, baseType: !71, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !123, file: !106, line: 184, baseType: !69, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !105, file: !106, line: 186, baseType: !71, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !105, file: !106, line: 193, baseType: !129, size: 64, offset: 448)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !106, line: 189, size: 64, elements: !130)
!130 = !{!131, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !129, file: !106, line: 191, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!69, !71}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !129, file: !106, line: 192, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!69, !69, !71}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !105, file: !106, line: 198, baseType: !140, size: 64, offset: 512)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !106, line: 194, size: 64, elements: !141)
!141 = !{!142, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !140, file: !106, line: 196, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !69}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !140, file: !106, line: 197, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !69, !69}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !105, file: !106, line: 200, baseType: !69, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !105, file: !106, line: 201, baseType: !6, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !105, file: !106, line: 202, baseType: !6, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !105, file: !106, line: 206, baseType: !6, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!154 = !DILocalVariable(name: "__o1", scope: !155, file: !3, line: 312, type: !157)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 312, column: 19)
!156 = distinct !DILexicalBlock(scope: !97, file: !3, line: 312, column: 19)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!159 = !DILocalVariable(name: "__o", scope: !160, file: !3, line: 314, type: !104)
!160 = distinct !DILexicalBlock(scope: !98, file: !3, line: 314, column: 19)
!161 = !DILocalVariable(name: "__o1", scope: !162, file: !3, line: 314, type: !157)
!162 = distinct !DILexicalBlock(scope: !163, file: !3, line: 314, column: 19)
!163 = distinct !DILexicalBlock(scope: !160, file: !3, line: 314, column: 19)
!164 = !DILocalVariable(name: "__o", scope: !165, file: !3, line: 316, type: !104)
!165 = distinct !DILexicalBlock(scope: !98, file: !3, line: 316, column: 19)
!166 = !DILocalVariable(name: "__o1", scope: !167, file: !3, line: 316, type: !157)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 316, column: 19)
!168 = distinct !DILexicalBlock(scope: !165, file: !3, line: 316, column: 19)
!169 = !DILocalVariable(name: "__o", scope: !170, file: !3, line: 321, type: !104)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 321, column: 19)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 319, column: 17)
!172 = distinct !DILexicalBlock(scope: !99, file: !3, line: 318, column: 24)
!173 = !DILocalVariable(name: "__o1", scope: !174, file: !3, line: 321, type: !157)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 321, column: 19)
!175 = distinct !DILexicalBlock(scope: !170, file: !3, line: 321, column: 19)
!176 = !DILocalVariable(name: "__o", scope: !177, file: !3, line: 323, type: !104)
!177 = distinct !DILexicalBlock(scope: !171, file: !3, line: 323, column: 19)
!178 = !DILocalVariable(name: "__o1", scope: !179, file: !3, line: 323, type: !157)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 323, column: 19)
!180 = distinct !DILexicalBlock(scope: !177, file: !3, line: 323, column: 19)
!181 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 333, type: !23)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 332, column: 17)
!183 = distinct !DILexicalBlock(scope: !172, file: !3, line: 325, column: 24)
!184 = !DILocalVariable(name: "__o", scope: !185, file: !3, line: 341, type: !104)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 341, column: 23)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 341, column: 23)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 340, column: 21)
!188 = distinct !DILexicalBlock(scope: !182, file: !3, line: 339, column: 23)
!189 = !DILocalVariable(name: "__o1", scope: !190, file: !3, line: 341, type: !157)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 341, column: 23)
!191 = distinct !DILexicalBlock(scope: !185, file: !3, line: 341, column: 23)
!192 = !DILocalVariable(name: "__o", scope: !193, file: !3, line: 341, type: !104)
!193 = distinct !DILexicalBlock(scope: !186, file: !3, line: 341, column: 23)
!194 = !DILocalVariable(name: "__o1", scope: !195, file: !3, line: 341, type: !157)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 341, column: 23)
!196 = distinct !DILexicalBlock(scope: !193, file: !3, line: 341, column: 23)
!197 = !DILocalVariable(name: "__o", scope: !198, file: !3, line: 342, type: !104)
!198 = distinct !DILexicalBlock(scope: !187, file: !3, line: 342, column: 23)
!199 = !DILocalVariable(name: "__o1", scope: !200, file: !3, line: 342, type: !157)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 342, column: 23)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 342, column: 23)
!202 = !DILocalVariable(name: "__o", scope: !203, file: !3, line: 344, type: !104)
!203 = distinct !DILexicalBlock(scope: !187, file: !3, line: 344, column: 23)
!204 = !DILocalVariable(name: "__o1", scope: !205, file: !3, line: 344, type: !157)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 344, column: 23)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 344, column: 23)
!207 = !{!208, !209, !210, !211}
!208 = !DIEnumerator(name: "ST_TERMNO", value: 0, isUnsigned: true)
!209 = !DIEnumerator(name: "ST_TERMYES", value: 1, isUnsigned: true)
!210 = !DIEnumerator(name: "ST_TERMSURE", value: 2, isUnsigned: true)
!211 = !DIEnumerator(name: "ST_GLOBAL", value: 3, isUnsigned: true)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !213, line: 32, baseType: !6, size: 32, elements: !214)
!213 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!215 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!216 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!217 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!218 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!219 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!220 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!221 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!222 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!223 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!224 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!225 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 46, baseType: !6, size: 32, elements: !228)
!227 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!229 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!230 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!231 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!232 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!233 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!234 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!235 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!236 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!237 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!238 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!239 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!240 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!241 = !{!242, !247, !251, !255, !259, !262, !265, !272, !25, !69, !287, !291, !295, !299, !302, !71, !79, !308, !313, !314, !316, !317, !73, !320, !324, !328, !23, !49, !331, !335, !339, !343}
!242 = !DISubprogram(name: "dcgettext", scope: !243, file: !243, line: 51, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!243 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!244 = !DISubroutineType(types: !245)
!245 = !{!25, !79, !79, !23}
!246 = !{}
!247 = !DISubprogram(name: "fputs_unlocked", scope: !248, file: !248, line: 662, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!248 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!249 = !DISubroutineType(types: !250)
!250 = !{!23, !79, !41}
!251 = !DISubprogram(name: "set_program_name", scope: !252, file: !252, line: 37, type: !253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!252 = !DIFile(filename: "./lib/progname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!253 = !DISubroutineType(types: !254)
!254 = !{null, !79}
!255 = !DISubprogram(name: "setlocale", scope: !256, file: !256, line: 122, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!256 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!257 = !DISubroutineType(types: !258)
!258 = !{!25, !23, !79}
!259 = !DISubprogram(name: "bindtextdomain", scope: !243, file: !243, line: 86, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!260 = !DISubroutineType(types: !261)
!261 = !{!25, !79, !79}
!262 = !DISubprogram(name: "textdomain", scope: !243, file: !243, line: 82, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!263 = !DISubroutineType(types: !264)
!264 = !{!25, !79}
!265 = !DISubprogram(name: "atexit", scope: !266, file: !266, line: 595, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!266 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!267 = !DISubroutineType(types: !268)
!268 = !{!23, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null}
!272 = !DISubprogram(name: "getopt_long", scope: !273, file: !273, line: 66, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!273 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!274 = !DISubroutineType(types: !275)
!275 = !{!23, !23, !276, !79, !278, !285}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !273, line: 50, size: 256, elements: !281)
!281 = !{!282, !283, !284, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !280, file: !273, line: 52, baseType: !79, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !280, file: !273, line: 55, baseType: !23, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !280, file: !273, line: 56, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !280, file: !273, line: 57, baseType: !23, size: 32, offset: 192)
!287 = !DISubprogram(name: "version_etc", scope: !288, file: !288, line: 69, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!288 = !DIFile(filename: "./lib/version-etc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!289 = !DISubroutineType(types: !290)
!290 = !{null, !41, !79, !79, !79, null}
!291 = !DISubprogram(name: "error", scope: !292, file: !292, line: 52, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!292 = !DIFile(filename: "./lib/error.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!293 = !DISubroutineType(types: !294)
!294 = !{null, !23, !23, !79, null}
!295 = !DISubprogram(name: "quote", scope: !296, file: !296, line: 44, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!296 = !DIFile(filename: "./lib/quote.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!297 = !DISubroutineType(types: !298)
!298 = !{!79, !79}
!299 = !DISubprogram(name: "puts", scope: !248, file: !248, line: 632, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!300 = !DISubroutineType(types: !301)
!301 = !{!23, !79}
!302 = !DISubprogram(name: "_obstack_begin", scope: !106, file: !106, line: 215, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!303 = !DISubroutineType(types: !304)
!304 = !{!23, !104, !73, !73, !305, !143}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!69, !73}
!308 = !DISubprogram(name: "fwrite_unlocked", scope: !248, file: !248, line: 675, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!309 = !DISubroutineType(types: !310)
!310 = !{!73, !311, !73, !73, !41}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!313 = !DISubprogram(name: "getenv", scope: !266, file: !266, line: 634, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!314 = !DISubprogram(name: "last_component", scope: !315, file: !315, line: 46, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!315 = !DIFile(filename: "./lib/dirname.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!316 = !DISubprogram(name: "free", scope: !266, file: !266, line: 565, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!317 = !DISubprogram(name: "quotearg_n_style_colon", scope: !213, file: !213, line: 397, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!318 = !DISubroutineType(types: !319)
!319 = !{!25, !23, !212, !79}
!320 = !DISubprogram(name: "c_strcasecmp", scope: !321, file: !321, line: 42, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!321 = !DIFile(filename: "./lib/c-strcase.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!322 = !DISubroutineType(types: !323)
!323 = !{!23, !79, !79}
!324 = !DISubprogram(name: "fnmatch", scope: !325, file: !325, line: 56, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!325 = !DIFile(filename: "/usr/include/fnmatch.h", directory: "")
!326 = !DISubroutineType(types: !327)
!327 = !{!23, !79, !79, !23}
!328 = !DISubprogram(name: "_obstack_newchunk", scope: !106, file: !106, line: 213, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !104, !73}
!331 = !DISubprogram(name: "xstrndup", scope: !332, file: !332, line: 23, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!332 = !DIFile(filename: "./lib/xstrndup.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!333 = !DISubroutineType(types: !334)
!334 = !{!25, !79, !73}
!335 = !DISubprogram(name: "freopen_safer", scope: !336, file: !336, line: 27, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!336 = !DIFile(filename: "./lib/stdio-safer.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!337 = !DISubroutineType(types: !338)
!338 = !{!41, !79, !79, !41}
!339 = !DISubprogram(name: "rpl_fclose", scope: !340, file: !340, line: 672, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!340 = !DIFile(filename: "./lib/stdio.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!341 = !DISubroutineType(types: !342)
!342 = !{!23, !41}
!343 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!344 = !{!345, !0, !347, !353, !359}
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "lsc_obstack", scope: !2, file: !3, line: 60, type: !105, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "G_line", scope: !2, file: !349, line: 1, type: !350, isLocal: true, isDefinition: true)
!349 = !DIFile(filename: "src/dircolors.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 34432, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 4304)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "slack_codes", scope: !2, file: !3, line: 62, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 2432, elements: !357)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!357 = !{!358}
!358 = !DISubrange(count: 38)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "ls_codes", scope: !2, file: !3, line: 72, type: !355, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 2048, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 8)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "Version", scope: !366, file: !367, line: 2, type: !79, isLocal: false, isDefinition: true)
!366 = distinct !DICompileUnit(language: DW_LANG_C99, file: !367, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, globals: !368, splitDebugInlining: false, nameTableKind: None)
!367 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!368 = !{!364}
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "file_name", scope: !371, file: !372, line: 46, type: !79, isLocal: true, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !373, globals: !411, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!373 = !{!374, !242, !410, !291}
!374 = !DISubprogram(name: "close_stream", scope: !375, file: !375, line: 2, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!375 = !DIFile(filename: "./lib/close-stream.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!376 = !DISubroutineType(types: !377)
!377 = !{!23, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !379, file: !20, line: 51, baseType: !23, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !379, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !379, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !379, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !379, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !379, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !379, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !379, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !379, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !379, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !379, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !379, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !379, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !379, file: !20, line: 70, baseType: !378, size: 64, offset: 832)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !379, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !379, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !379, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !379, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !379, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !379, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !379, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !379, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !379, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !379, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !379, file: !20, line: 93, baseType: !378, size: 64, offset: 1344)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !379, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !379, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !379, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !379, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!410 = !DISubprogram(name: "quotearg_colon", scope: !213, file: !213, line: 391, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!411 = !{!369, !412}
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !371, file: !372, line: 56, type: !15, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "exit_failure", scope: !416, file: !417, line: 24, type: !419, isLocal: false, isDefinition: true)
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, globals: !418, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!418 = !{!414}
!419 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "program_name", scope: !422, file: !423, line: 33, type: !79, isLocal: false, isDefinition: true)
!422 = distinct !DICompileUnit(language: DW_LANG_C99, file: !423, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !424, globals: !460, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!424 = !{!69, !425, !25}
!425 = !DISubprogram(name: "fputs", scope: !248, file: !248, line: 626, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!426 = !DISubroutineType(types: !427)
!427 = !{!23, !79, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !429, file: !20, line: 51, baseType: !23, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !429, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !429, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !429, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !429, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !429, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !429, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !429, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !429, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !429, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !429, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !429, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !429, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !429, file: !20, line: 70, baseType: !428, size: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !429, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !429, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !429, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !429, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !429, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !429, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !429, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !429, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !429, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !429, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !429, file: !20, line: 93, baseType: !428, size: 64, offset: 1344)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !429, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !429, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !429, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !429, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!460 = !{!420}
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !463, file: !464, line: 85, type: !556, isLocal: false, isDefinition: true)
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !465, retainedTypes: !471, globals: !529, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!465 = !{!212, !466, !226}
!466 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !213, line: 242, baseType: !6, size: 32, elements: !467)
!467 = !{!468, !469, !470}
!468 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!469 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!470 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!471 = !{!472, !476, !316, !490, !23, !49, !493, !71, !510, !514, !242, !520, !320, !25, !524, !525, !526}
!472 = !DISubprogram(name: "xmemdup", scope: !473, file: !473, line: 62, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!473 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!474 = !DISubroutineType(types: !475)
!475 = !{!69, !311, !73}
!476 = !DISubprogram(name: "quotearg_alloc_mem", scope: !213, file: !213, line: 342, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!477 = !DISubroutineType(types: !478)
!478 = !{!25, !79, !73, !479, !480}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !464, line: 65, size: 448, elements: !483)
!483 = !{!484, !485, !486, !488, !489}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !482, file: !464, line: 68, baseType: !212, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !482, file: !464, line: 71, baseType: !23, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !482, file: !464, line: 75, baseType: !487, size: 256, offset: 64)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !362)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !482, file: !464, line: 78, baseType: !79, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !482, file: !464, line: 81, baseType: !79, size: 64, offset: 384)
!490 = !DISubprogram(name: "quotearg_n_custom_mem", scope: !213, file: !213, line: 408, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!491 = !DISubroutineType(types: !492)
!492 = !{!25, !23, !79, !79, !79, !73}
!493 = !DISubprogram(name: "rpl_mbrtowc", scope: !494, file: !494, line: 717, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!494 = !DIFile(filename: "./lib/wchar.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!495 = !DISubroutineType(types: !496)
!496 = !{!73, !285, !79, !73, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 13, size: 64, elements: !500)
!499 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !498, file: !499, line: 15, baseType: !23, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !498, file: !499, line: 20, baseType: !503, size: 32, offset: 32)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !499, line: 16, size: 32, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !503, file: !499, line: 18, baseType: !6, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !503, file: !499, line: 19, baseType: !507, size: 32)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 4)
!510 = !DISubprogram(name: "iswprint", scope: !511, file: !511, line: 120, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!511 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!512 = !DISubroutineType(types: !513)
!513 = !{!23, !6}
!514 = !DISubprogram(name: "mbsinit", scope: !515, file: !515, line: 292, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!515 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!516 = !DISubroutineType(types: !517)
!517 = !{!23, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!520 = !DISubprogram(name: "locale_charset", scope: !521, file: !521, line: 35, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!521 = !DIFile(filename: "./lib/localcharset.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!522 = !DISubroutineType(types: !523)
!523 = !{!79}
!524 = !DISubprogram(name: "xmalloc", scope: !473, file: !473, line: 53, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!525 = !DISubprogram(name: "xalloc_die", scope: !473, file: !473, line: 51, type: !270, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !246)
!526 = !DISubprogram(name: "xrealloc", scope: !473, file: !473, line: 59, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!527 = !DISubroutineType(types: !528)
!528 = !{!69, !69, !73}
!529 = !{!461, !530, !536, !538, !540, !545, !552, !554}
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !463, file: !464, line: 101, type: !532, isLocal: false, isDefinition: true)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 320, elements: !534)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!534 = !{!535}
!535 = !DISubrange(count: 10)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !463, file: !464, line: 1052, type: !482, isLocal: false, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !463, file: !464, line: 116, type: !482, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "slot0", scope: !463, file: !464, line: 842, type: !542, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 256)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "slotvec", scope: !463, file: !464, line: 845, type: !547, isLocal: true, isDefinition: true)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !464, line: 834, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !548, file: !464, line: 836, baseType: !71, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !548, file: !464, line: 837, baseType: !25, size: 64, offset: 64)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "nslots", scope: !463, file: !464, line: 843, type: !23, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "slotvec0", scope: !463, file: !464, line: 844, type: !548, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 704, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 11)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !561, file: !562, line: 26, type: !564, isLocal: false, isDefinition: true)
!561 = distinct !DICompileUnit(language: DW_LANG_C99, file: !562, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, globals: !563, splitDebugInlining: false, nameTableKind: None)
!562 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!563 = !{!559}
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 376, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 47)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !569, file: !570, line: 351, type: !269, isLocal: false, isDefinition: true)
!569 = distinct !DICompileUnit(language: DW_LANG_C99, file: !570, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !571, globals: !572, splitDebugInlining: false, nameTableKind: None)
!570 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!571 = !{!25, !69, !242}
!572 = !{!567}
!573 = distinct !DICompileUnit(language: DW_LANG_C99, file: !574, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !575, splitDebugInlining: false, nameTableKind: None)
!574 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!578 = distinct !DICompileUnit(language: DW_LANG_C99, file: !579, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !580, splitDebugInlining: false, nameTableKind: None)
!579 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!580 = !{!25}
!581 = distinct !DICompileUnit(language: DW_LANG_C99, file: !582, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !583, splitDebugInlining: false, nameTableKind: None)
!582 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!583 = !{!584, !619, !623, !626, !629}
!584 = !DISubprogram(name: "fileno", scope: !248, file: !248, line: 786, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!585 = !DISubroutineType(types: !586)
!586 = !{!23, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !588, file: !20, line: 51, baseType: !23, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !588, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !588, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !588, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !588, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !588, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !588, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !588, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !588, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !588, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !588, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !588, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !588, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !588, file: !20, line: 70, baseType: !587, size: 64, offset: 832)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !588, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !588, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !588, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !588, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !588, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !588, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !588, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !588, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !588, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !588, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !588, file: !20, line: 93, baseType: !587, size: 64, offset: 1344)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !588, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !588, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !588, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !588, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!619 = !DISubprogram(name: "dup2", scope: !620, file: !620, line: 534, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!620 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!621 = !DISubroutineType(types: !622)
!622 = !{!23, !23, !23}
!623 = !DISubprogram(name: "freopen", scope: !248, file: !248, line: 252, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!624 = !DISubroutineType(types: !625)
!625 = !{!587, !79, !79, !587}
!626 = !DISubprogram(name: "close", scope: !620, file: !620, line: 353, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!627 = !DISubroutineType(types: !628)
!628 = !{!23, !23}
!629 = !DISubprogram(name: "open", scope: !630, file: !630, line: 196, type: !631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!630 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!631 = !DISubroutineType(types: !632)
!632 = !{!23, !79, !23, null}
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !635, retainedTypes: !639, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!635 = !{!636}
!636 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !634, line: 40, baseType: !6, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!639 = !{!242, !640, !69}
!640 = !DISubprogram(name: "fputs_unlocked", scope: !248, file: !248, line: 662, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!641 = !DISubroutineType(types: !642)
!642 = !{!23, !79, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !644, file: !20, line: 51, baseType: !23, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !644, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !644, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !644, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !644, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !644, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !644, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !644, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !644, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !644, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !644, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !644, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !644, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !644, file: !20, line: 70, baseType: !643, size: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !644, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !644, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !644, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !644, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !644, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !644, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !644, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !644, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !644, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !644, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !644, file: !20, line: 93, baseType: !643, size: 64, offset: 1344)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !644, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !644, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !644, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !644, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!675 = distinct !DICompileUnit(language: DW_LANG_C99, file: !676, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !677, retainedTypes: !690, splitDebugInlining: false, nameTableKind: None)
!676 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!677 = !{!678}
!678 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !679, file: !473, line: 186, baseType: !6, size: 32, elements: !688)
!679 = distinct !DISubprogram(name: "x2nrealloc", scope: !473, file: !473, line: 174, type: !680, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !683)
!680 = !DISubroutineType(types: !681)
!681 = !{!69, !69, !682, !71}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!683 = !{!684, !685, !686, !687}
!684 = !DILocalVariable(name: "p", arg: 1, scope: !679, file: !473, line: 174, type: !69)
!685 = !DILocalVariable(name: "pn", arg: 2, scope: !679, file: !473, line: 174, type: !682)
!686 = !DILocalVariable(name: "s", arg: 3, scope: !679, file: !473, line: 174, type: !71)
!687 = !DILocalVariable(name: "n", scope: !679, file: !473, line: 176, type: !71)
!688 = !{!689}
!689 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!690 = !{!71, !525, !524, !526, !25, !316, !69, !691, !694}
!691 = !DISubprogram(name: "xcalloc", scope: !473, file: !473, line: 57, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!692 = !DISubroutineType(types: !693)
!693 = !{!69, !73, !73}
!694 = !DISubprogram(name: "rpl_calloc", scope: !695, file: !695, line: 688, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!695 = !DIFile(filename: "./lib/stdlib.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!696 = distinct !DICompileUnit(language: DW_LANG_C99, file: !697, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !698, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!698 = !{!242, !291}
!699 = distinct !DICompileUnit(language: DW_LANG_C99, file: !700, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !701, splitDebugInlining: false, nameTableKind: None)
!700 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!701 = !{!525}
!702 = distinct !DICompileUnit(language: DW_LANG_C99, file: !703, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !704, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!704 = !{!69}
!705 = distinct !DICompileUnit(language: DW_LANG_C99, file: !706, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!706 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!707 = !{!708, !743, !744, !747}
!708 = !DISubprogram(name: "fileno", scope: !248, file: !248, line: 786, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!709 = !DISubroutineType(types: !710)
!710 = !{!23, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !712, file: !20, line: 51, baseType: !23, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !712, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !712, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !712, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !712, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !712, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !712, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !712, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !712, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !712, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !712, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !712, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !712, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !712, file: !20, line: 70, baseType: !711, size: 64, offset: 832)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !712, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !712, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !712, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !712, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !712, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !712, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !712, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !712, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !712, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !712, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !712, file: !20, line: 93, baseType: !711, size: 64, offset: 1344)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !712, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !712, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !712, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !712, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!743 = !DISubprogram(name: "fclose", scope: !248, file: !248, line: 213, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!744 = !DISubprogram(name: "lseek", scope: !620, file: !620, line: 334, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!745 = !DISubroutineType(types: !746)
!746 = !{!47, !23, !47, !23}
!747 = !DISubprogram(name: "rpl_fflush", scope: !340, file: !340, line: 718, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!748 = distinct !DICompileUnit(language: DW_LANG_C99, file: !749, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !750, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!750 = !{!69, !751, !786}
!751 = !DISubprogram(name: "fflush", scope: !248, file: !248, line: 218, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!752 = !DISubroutineType(types: !753)
!753 = !{!23, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !755, file: !20, line: 51, baseType: !23, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !755, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !755, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !755, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !755, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !755, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !755, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !755, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !755, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !755, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !755, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !755, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !755, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !755, file: !20, line: 70, baseType: !754, size: 64, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !755, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !755, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !755, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !755, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !755, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !755, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !755, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !755, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !755, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !755, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !755, file: !20, line: 93, baseType: !754, size: 64, offset: 1344)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !755, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !755, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !755, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !755, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!786 = !DISubprogram(name: "rpl_fseeko", scope: !340, file: !340, line: 1034, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!787 = !DISubroutineType(types: !788)
!788 = !{!23, !754, !47, !23}
!789 = distinct !DICompileUnit(language: DW_LANG_C99, file: !790, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !791, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!791 = !{!69, !792, !744, !827}
!792 = !DISubprogram(name: "fileno", scope: !248, file: !248, line: 786, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!793 = !DISubroutineType(types: !794)
!794 = !{!23, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !796, file: !20, line: 51, baseType: !23, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !796, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !796, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !796, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !796, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !796, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !796, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !796, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !796, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !796, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !796, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !796, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !796, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !796, file: !20, line: 70, baseType: !795, size: 64, offset: 832)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !796, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !796, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !796, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !796, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !796, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !796, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !796, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !796, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !796, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !796, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !796, file: !20, line: 93, baseType: !795, size: 64, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !796, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !796, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !796, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !796, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!827 = !DISubprogram(name: "fseeko", scope: !248, file: !248, line: 707, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!828 = !DISubroutineType(types: !829)
!829 = !{!23, !795, !47, !23}
!830 = distinct !DICompileUnit(language: DW_LANG_C99, file: !831, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !832, splitDebugInlining: false, nameTableKind: None)
!831 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!832 = !{!833, !71, !845}
!833 = !DISubprogram(name: "mbrtowc", scope: !515, file: !515, line: 296, type: !834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!834 = !DISubroutineType(types: !835)
!835 = !{!73, !285, !79, !73, !836}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 13, size: 64, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !837, file: !499, line: 15, baseType: !23, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !837, file: !499, line: 20, baseType: !841, size: 32, offset: 32)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !499, line: 16, size: 32, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !841, file: !499, line: 18, baseType: !6, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !841, file: !499, line: 19, baseType: !507, size: 32)
!845 = !DISubprogram(name: "hard_locale", scope: !846, file: !846, line: 26, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!846 = !DIFile(filename: "./lib/hard-locale.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!847 = !DISubroutineType(types: !848)
!848 = !{!15, !23}
!849 = distinct !DICompileUnit(language: DW_LANG_C99, file: !850, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !851, splitDebugInlining: false, nameTableKind: None)
!850 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!851 = !{!852}
!852 = !DISubprogram(name: "rpl_fclose", scope: !340, file: !340, line: 672, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!853 = !DISubroutineType(types: !854)
!854 = !{!23, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !856, file: !20, line: 51, baseType: !23, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !856, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !856, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !856, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !856, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !856, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !856, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !856, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !856, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !856, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !856, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !856, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !856, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !856, file: !20, line: 70, baseType: !855, size: 64, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !856, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !856, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !856, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !856, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !856, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !856, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !856, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !856, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !856, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !856, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !856, file: !20, line: 93, baseType: !855, size: 64, offset: 1344)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !856, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !856, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !856, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !856, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!887 = distinct !DICompileUnit(language: DW_LANG_C99, file: !888, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !889, splitDebugInlining: false, nameTableKind: None)
!888 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!889 = !{!890}
!890 = !DISubprogram(name: "setlocale_null_r", scope: !891, file: !891, line: 64, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!891 = !DIFile(filename: "./lib/setlocale_null.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!892 = !DISubroutineType(types: !893)
!893 = !{!23, !23, !25, !73}
!894 = distinct !DICompileUnit(language: DW_LANG_C99, file: !895, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !896, retainedTypes: !1283, splitDebugInlining: false, nameTableKind: None)
!895 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!896 = !{!897}
!897 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !898, line: 41, baseType: !6, size: 32, elements: !899)
!898 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!899 = !{!900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282}
!900 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!901 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!902 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!903 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!904 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!905 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!906 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!907 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!908 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!909 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!910 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!911 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!912 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!913 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!914 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!915 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!916 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!917 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!918 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!919 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!920 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!921 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!922 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!923 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!924 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!925 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!926 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!927 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!928 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!929 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!930 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!931 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!932 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!933 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!934 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!935 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!936 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!937 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!938 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!939 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!940 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!941 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!942 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!943 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!944 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!945 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!946 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!947 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!948 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!949 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!950 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!951 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!952 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!953 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!954 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!955 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!956 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!957 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!958 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!959 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!960 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!961 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!962 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!963 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!964 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!965 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!966 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!967 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!968 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!969 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!970 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!971 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!972 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!973 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!974 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!975 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!976 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!977 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!978 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!979 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!980 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!981 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!982 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!983 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!984 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!985 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!986 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!987 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!988 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!989 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!990 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!991 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!992 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!993 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!994 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!995 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!996 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!997 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!998 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!999 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!1000 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!1001 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!1002 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!1003 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!1004 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!1005 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!1006 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!1007 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!1008 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!1009 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!1010 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!1011 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!1012 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!1013 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!1014 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!1015 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!1016 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!1017 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!1018 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!1019 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!1020 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!1021 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!1022 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!1023 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!1024 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!1025 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!1026 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!1027 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!1028 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!1029 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!1030 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!1031 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!1032 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!1033 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!1034 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!1035 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!1036 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!1037 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!1038 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!1039 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!1040 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!1041 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!1042 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!1043 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!1044 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!1045 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!1046 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!1047 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!1048 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!1049 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!1050 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!1051 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!1052 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!1053 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!1054 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!1055 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!1056 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!1057 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!1058 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!1059 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!1060 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!1061 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!1062 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!1063 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!1064 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!1065 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!1066 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!1067 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!1068 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!1069 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!1070 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!1071 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!1072 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!1073 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!1074 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!1075 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!1076 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!1077 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!1078 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!1079 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!1080 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!1081 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!1082 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!1083 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!1084 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!1085 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!1086 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!1087 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!1088 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!1089 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!1090 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!1091 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!1092 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!1093 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!1094 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!1095 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!1096 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!1097 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!1098 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!1099 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!1100 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!1101 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!1102 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!1103 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!1104 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!1105 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!1106 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!1107 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!1108 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!1109 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!1110 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!1111 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!1112 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!1113 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!1114 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!1115 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!1116 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!1117 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!1118 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!1119 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!1120 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!1121 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!1122 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!1123 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!1124 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!1125 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!1126 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!1127 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!1128 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!1129 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!1130 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!1131 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!1132 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!1133 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!1134 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!1135 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!1136 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!1137 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!1138 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!1139 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!1140 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!1141 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!1142 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!1143 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!1144 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!1145 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!1146 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!1147 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!1148 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!1149 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!1150 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!1151 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!1152 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!1153 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!1154 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!1155 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!1156 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!1157 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!1158 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!1159 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!1160 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!1161 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!1162 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!1163 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!1164 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!1165 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!1166 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!1167 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!1168 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!1169 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!1170 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!1171 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!1172 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!1173 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!1174 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!1175 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!1176 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!1177 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!1178 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!1179 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!1180 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!1181 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!1182 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!1183 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!1184 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!1185 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!1186 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!1187 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!1188 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!1189 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!1190 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!1191 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!1192 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!1193 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!1194 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!1195 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!1196 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!1197 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!1198 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!1199 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!1200 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!1201 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!1202 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!1203 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!1204 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!1205 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!1206 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!1207 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!1208 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!1209 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!1210 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!1211 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!1212 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!1213 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!1214 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!1215 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!1216 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!1217 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!1218 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!1219 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!1220 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!1221 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!1222 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!1223 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!1224 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!1225 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!1226 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!1227 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!1228 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!1229 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!1230 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!1231 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!1232 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!1233 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!1234 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!1235 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!1236 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!1237 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!1238 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!1239 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!1240 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!1241 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!1242 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!1243 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!1244 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!1245 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!1246 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!1247 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!1248 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!1249 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!1250 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!1251 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!1252 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!1253 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!1254 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!1255 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!1256 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!1257 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!1258 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!1259 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!1260 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!1261 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!1262 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!1263 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!1264 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!1265 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!1266 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!1267 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!1268 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!1269 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!1270 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!1271 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!1272 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!1273 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!1274 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!1275 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!1276 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!1277 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!1278 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!1279 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!1280 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!1281 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!1282 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!1283 = !{!1284, !69}
!1284 = !DISubprogram(name: "nl_langinfo", scope: !898, file: !898, line: 661, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !246)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!25, !23}
!1287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1288, producer: "clang version 10.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !1289, splitDebugInlining: false, nameTableKind: None)
!1288 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1289 = !{!69, !255}
!1290 = !{!"clang version 10.0.0 "}
!1291 = !{i32 7, !"Dwarf Version", i32 4}
!1292 = !{i32 2, !"Debug Info Version", i32 3}
!1293 = !{i32 1, !"wchar_size", i32 4}
!1294 = !{i32 7, !"PIC Level", i32 2}
!1295 = !{i32 7, !"PIE Level", i32 2}
!1296 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 93, type: !1297, scopeLine: 94, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !23}
!1299 = !{!1300}
!1300 = !DILocalVariable(name: "status", arg: 1, scope: !1296, file: !3, line: 93, type: !23)
!1301 = !DILocalVariable(name: "infomap", scope: !1302, file: !1303, line: 636, type: !1315)
!1302 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !1303, file: !1303, line: 634, type: !253, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1304)
!1303 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1304 = !{!1305, !1301, !1306, !1307, !1314}
!1305 = !DILocalVariable(name: "program", arg: 1, scope: !1302, file: !1303, line: 634, type: !79)
!1306 = !DILocalVariable(name: "node", scope: !1302, file: !1303, line: 646, type: !79)
!1307 = !DILocalVariable(name: "map_prog", scope: !1302, file: !1303, line: 647, type: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1302, file: !1303, line: 636, size: 128, elements: !1311)
!1311 = !{!1312, !1313}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1310, file: !1303, line: 636, baseType: !79, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1310, file: !1303, line: 636, baseType: !79, size: 64, offset: 64)
!1314 = !DILocalVariable(name: "lc_messages", scope: !1302, file: !1303, line: 659, type: !79)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1309, size: 896, elements: !1316)
!1316 = !{!1317}
!1317 = !DISubrange(count: 7)
!1318 = !DILocation(line: 636, column: 67, scope: !1302, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 116, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 98, column: 5)
!1321 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 95, column: 7)
!1322 = !DILocation(line: 0, scope: !1296)
!1323 = !DILocation(line: 95, column: 14, scope: !1321)
!1324 = !DILocation(line: 95, column: 7, scope: !1296)
!1325 = !DILocation(line: 96, column: 5, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 96, column: 5)
!1327 = !{!1328, !1328, i64 0}
!1328 = !{!"any pointer", !1329, i64 0}
!1329 = !{!"omnipotent char", !1330, i64 0}
!1330 = !{!"Simple C/C++ TBAA"}
!1331 = !DILocation(line: 99, column: 7, scope: !1320)
!1332 = !DILocation(line: 100, column: 7, scope: !1320)
!1333 = !DILocation(line: 108, column: 7, scope: !1320)
!1334 = !DILocation(line: 109, column: 7, scope: !1320)
!1335 = !DILocation(line: 110, column: 7, scope: !1320)
!1336 = !DILocation(line: 0, scope: !1302, inlinedAt: !1319)
!1337 = !DILocation(line: 636, column: 3, scope: !1302, inlinedAt: !1319)
!1338 = !DILocation(line: 647, column: 36, scope: !1302, inlinedAt: !1319)
!1339 = !DILocation(line: 649, column: 3, scope: !1302, inlinedAt: !1319)
!1340 = !DILocation(line: 649, column: 33, scope: !1302, inlinedAt: !1319)
!1341 = !DILocation(line: 650, column: 13, scope: !1302, inlinedAt: !1319)
!1342 = !DILocation(line: 649, column: 20, scope: !1302, inlinedAt: !1319)
!1343 = !{!1344, !1328, i64 0}
!1344 = !{!"infomap", !1328, i64 0, !1328, i64 8}
!1345 = !DILocation(line: 649, column: 10, scope: !1302, inlinedAt: !1319)
!1346 = !DILocation(line: 649, column: 28, scope: !1302, inlinedAt: !1319)
!1347 = distinct !{!1347, !1339, !1341}
!1348 = !DILocation(line: 652, column: 17, scope: !1349, inlinedAt: !1319)
!1349 = distinct !DILexicalBlock(scope: !1302, file: !1303, line: 652, column: 7)
!1350 = !{!1344, !1328, i64 8}
!1351 = !DILocation(line: 652, column: 7, scope: !1349, inlinedAt: !1319)
!1352 = !DILocation(line: 652, column: 7, scope: !1302, inlinedAt: !1319)
!1353 = !DILocation(line: 655, column: 3, scope: !1302, inlinedAt: !1319)
!1354 = !DILocation(line: 659, column: 29, scope: !1302, inlinedAt: !1319)
!1355 = !DILocation(line: 660, column: 7, scope: !1356, inlinedAt: !1319)
!1356 = distinct !DILexicalBlock(scope: !1302, file: !1303, line: 660, column: 7)
!1357 = !DILocation(line: 660, column: 19, scope: !1356, inlinedAt: !1319)
!1358 = !DILocation(line: 660, column: 22, scope: !1356, inlinedAt: !1319)
!1359 = !DILocation(line: 660, column: 7, scope: !1302, inlinedAt: !1319)
!1360 = !DILocation(line: 666, column: 7, scope: !1361, inlinedAt: !1319)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !1303, line: 661, column: 5)
!1362 = !DILocation(line: 668, column: 5, scope: !1361, inlinedAt: !1319)
!1363 = !DILocation(line: 669, column: 3, scope: !1302, inlinedAt: !1319)
!1364 = !DILocation(line: 671, column: 3, scope: !1302, inlinedAt: !1319)
!1365 = !DILocation(line: 673, column: 1, scope: !1302, inlinedAt: !1319)
!1366 = !DILocation(line: 119, column: 3, scope: !1296)
!1367 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 396, type: !1368, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!23, !23, !1370}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1381, !1385, !1387, !1388, !1390, !1391, !1392, !1393, !1395, !1396}
!1372 = !DILocalVariable(name: "argc", arg: 1, scope: !1367, file: !3, line: 396, type: !23)
!1373 = !DILocalVariable(name: "argv", arg: 2, scope: !1367, file: !3, line: 396, type: !1370)
!1374 = !DILocalVariable(name: "ok", scope: !1367, file: !3, line: 398, type: !15)
!1375 = !DILocalVariable(name: "optc", scope: !1367, file: !3, line: 399, type: !23)
!1376 = !DILocalVariable(name: "syntax", scope: !1367, file: !3, line: 400, type: !5)
!1377 = !DILocalVariable(name: "print_database", scope: !1367, file: !3, line: 401, type: !15)
!1378 = !DILocalVariable(name: "p", scope: !1379, file: !3, line: 459, type: !79)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 458, column: 5)
!1380 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 457, column: 7)
!1381 = !DILocalVariable(name: "len", scope: !1382, file: !3, line: 487, type: !71)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 486, column: 9)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 485, column: 11)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 467, column: 5)
!1385 = !DILocalVariable(name: "__o", scope: !1386, file: !3, line: 487, type: !157)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 487, column: 24)
!1387 = !DILocalVariable(name: "s", scope: !1382, file: !3, line: 488, type: !25)
!1388 = !DILocalVariable(name: "__o1", scope: !1389, file: !3, line: 488, type: !104)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 488, column: 21)
!1390 = !DILocalVariable(name: "__value", scope: !1389, file: !3, line: 488, type: !69)
!1391 = !DILocalVariable(name: "prefix", scope: !1382, file: !3, line: 489, type: !79)
!1392 = !DILocalVariable(name: "suffix", scope: !1382, file: !3, line: 490, type: !79)
!1393 = !DILocalVariable(name: "__ptr", scope: !1394, file: !3, line: 503, type: !79)
!1394 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 503, column: 11)
!1395 = !DILocalVariable(name: "__stream", scope: !1394, file: !3, line: 503, type: !16)
!1396 = !DILocalVariable(name: "__cnt", scope: !1394, file: !3, line: 503, type: !71)
!1397 = !DILocation(line: 0, scope: !1367)
!1398 = !DILocation(line: 404, column: 21, scope: !1367)
!1399 = !DILocation(line: 404, column: 3, scope: !1367)
!1400 = !DILocation(line: 405, column: 3, scope: !1367)
!1401 = !DILocation(line: 406, column: 3, scope: !1367)
!1402 = !DILocation(line: 407, column: 3, scope: !1367)
!1403 = !DILocation(line: 409, column: 3, scope: !1367)
!1404 = !DILocation(line: 411, column: 3, scope: !1367)
!1405 = !DILocation(line: 400, column: 21, scope: !1367)
!1406 = !DILocation(line: 411, column: 18, scope: !1367)
!1407 = distinct !{!1407, !1404, !1408}
!1408 = !DILocation(line: 432, column: 7, scope: !1367)
!1409 = !DILocation(line: 420, column: 9, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 413, column: 7)
!1411 = !DILocation(line: 426, column: 7, scope: !1410)
!1412 = !DILocation(line: 428, column: 7, scope: !1410)
!1413 = !DILocation(line: 431, column: 9, scope: !1410)
!1414 = !DILocation(line: 434, column: 11, scope: !1367)
!1415 = !{!1416, !1416, i64 0}
!1416 = !{!"int", !1329, i64 0}
!1417 = !DILocation(line: 434, column: 8, scope: !1367)
!1418 = !DILocation(line: 435, column: 8, scope: !1367)
!1419 = !DILocation(line: 439, column: 7, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 439, column: 7)
!1421 = !DILocation(line: 439, column: 32, scope: !1420)
!1422 = !DILocation(line: 439, column: 22, scope: !1420)
!1423 = !DILocation(line: 442, column: 14, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 440, column: 5)
!1425 = !DILocation(line: 441, column: 7, scope: !1424)
!1426 = !DILocation(line: 444, column: 7, scope: !1424)
!1427 = !DILocation(line: 447, column: 8, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 447, column: 7)
!1429 = !DILocation(line: 447, column: 25, scope: !1428)
!1430 = !DILocation(line: 447, column: 7, scope: !1367)
!1431 = !DILocation(line: 449, column: 20, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 448, column: 5)
!1433 = !DILocation(line: 449, column: 50, scope: !1432)
!1434 = !DILocation(line: 449, column: 43, scope: !1432)
!1435 = !DILocation(line: 449, column: 7, scope: !1432)
!1436 = !DILocation(line: 450, column: 11, scope: !1432)
!1437 = !DILocation(line: 451, column: 9, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 450, column: 11)
!1439 = !DILocation(line: 454, column: 7, scope: !1432)
!1440 = !DILocation(line: 457, column: 7, scope: !1367)
!1441 = !DILocation(line: 0, scope: !1379)
!1442 = !DILocation(line: 462, column: 11, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 461, column: 9)
!1444 = !DILocation(line: 463, column: 16, scope: !1443)
!1445 = !DILocation(line: 463, column: 27, scope: !1443)
!1446 = !DILocation(line: 463, column: 13, scope: !1443)
!1447 = !DILocation(line: 460, column: 16, scope: !1379)
!1448 = !DILocation(line: 460, column: 25, scope: !1379)
!1449 = !DILocation(line: 460, column: 7, scope: !1379)
!1450 = distinct !{!1450, !1449, !1451}
!1451 = !DILocation(line: 464, column: 9, scope: !1379)
!1452 = !DILocation(line: 469, column: 18, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 469, column: 11)
!1454 = !DILocation(line: 469, column: 11, scope: !1384)
!1455 = !DILocation(line: 130, column: 11, scope: !1456, inlinedAt: !1461)
!1456 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !3, file: !3, line: 126, type: !1457, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!5}
!1459 = !{!1460}
!1460 = !DILocalVariable(name: "shell", scope: !1456, file: !3, line: 128, type: !25)
!1461 = distinct !DILocation(line: 471, column: 20, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 470, column: 9)
!1463 = !DILocation(line: 0, scope: !1456, inlinedAt: !1461)
!1464 = !DILocation(line: 131, column: 13, scope: !1465, inlinedAt: !1461)
!1465 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 131, column: 7)
!1466 = !DILocation(line: 131, column: 21, scope: !1465, inlinedAt: !1461)
!1467 = !DILocation(line: 131, column: 24, scope: !1465, inlinedAt: !1461)
!1468 = !{!1329, !1329, i64 0}
!1469 = !DILocation(line: 131, column: 31, scope: !1465, inlinedAt: !1461)
!1470 = !DILocation(line: 131, column: 7, scope: !1456, inlinedAt: !1461)
!1471 = !DILocation(line: 134, column: 11, scope: !1456, inlinedAt: !1461)
!1472 = !DILocation(line: 136, column: 7, scope: !1473, inlinedAt: !1461)
!1473 = distinct !DILexicalBlock(scope: !1456, file: !3, line: 136, column: 7)
!1474 = !DILocation(line: 136, column: 28, scope: !1473, inlinedAt: !1461)
!1475 = !DILocation(line: 136, column: 31, scope: !1473, inlinedAt: !1461)
!1476 = !DILocation(line: 136, column: 7, scope: !1456, inlinedAt: !1461)
!1477 = !DILocation(line: 474, column: 15, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 473, column: 13)
!1479 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 472, column: 15)
!1480 = !DILocation(line: 479, column: 7, scope: !1384)
!1481 = !DILocation(line: 480, column: 16, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 480, column: 11)
!1483 = !DILocation(line: 480, column: 11, scope: !1384)
!1484 = !DILocation(line: 481, column: 14, scope: !1482)
!1485 = !DILocation(line: 485, column: 11, scope: !1384)
!1486 = !DILocation(line: 483, column: 29, scope: !1482)
!1487 = !DILocalVariable(name: "filename", arg: 1, scope: !1488, file: !3, line: 374, type: !79)
!1488 = distinct !DISubprogram(name: "dc_parse_file", scope: !3, file: !3, line: 374, type: !1489, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1491)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!15, !79}
!1491 = !{!1487, !1492}
!1492 = !DILocalVariable(name: "ok", scope: !1488, file: !3, line: 376, type: !15)
!1493 = !DILocation(line: 0, scope: !1488, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 483, column: 14, scope: !1482)
!1495 = !DILocation(line: 378, column: 9, scope: !1496, inlinedAt: !1494)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 378, column: 7)
!1497 = !DILocation(line: 378, column: 31, scope: !1496, inlinedAt: !1494)
!1498 = !DILocation(line: 378, column: 58, scope: !1496, inlinedAt: !1494)
!1499 = !DILocation(line: 378, column: 34, scope: !1496, inlinedAt: !1494)
!1500 = !DILocation(line: 378, column: 65, scope: !1496, inlinedAt: !1494)
!1501 = !DILocation(line: 378, column: 7, scope: !1488, inlinedAt: !1494)
!1502 = !DILocation(line: 380, column: 17, scope: !1503, inlinedAt: !1494)
!1503 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 379, column: 5)
!1504 = !DILocation(line: 380, column: 30, scope: !1503, inlinedAt: !1494)
!1505 = !DILocation(line: 380, column: 7, scope: !1503, inlinedAt: !1494)
!1506 = !DILocation(line: 381, column: 7, scope: !1503, inlinedAt: !1494)
!1507 = !DILocation(line: 384, column: 25, scope: !1488, inlinedAt: !1494)
!1508 = !DILocation(line: 384, column: 8, scope: !1488, inlinedAt: !1494)
!1509 = !DILocation(line: 386, column: 15, scope: !1510, inlinedAt: !1494)
!1510 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 386, column: 7)
!1511 = !DILocation(line: 386, column: 7, scope: !1510, inlinedAt: !1494)
!1512 = !DILocation(line: 386, column: 22, scope: !1510, inlinedAt: !1494)
!1513 = !DILocation(line: 386, column: 7, scope: !1488, inlinedAt: !1494)
!1514 = !DILocation(line: 388, column: 17, scope: !1515, inlinedAt: !1494)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 387, column: 5)
!1516 = !DILocation(line: 388, column: 30, scope: !1515, inlinedAt: !1494)
!1517 = !DILocation(line: 388, column: 7, scope: !1515, inlinedAt: !1494)
!1518 = !DILocation(line: 389, column: 7, scope: !1515, inlinedAt: !1494)
!1519 = !DILocation(line: 0, scope: !1386)
!1520 = !DILocation(line: 487, column: 24, scope: !1386)
!1521 = !{!1522, !1328, i64 24}
!1522 = !{!"obstack", !1523, i64 0, !1328, i64 8, !1328, i64 16, !1328, i64 24, !1328, i64 32, !1329, i64 40, !1523, i64 48, !1329, i64 56, !1329, i64 64, !1328, i64 72, !1416, i64 80, !1416, i64 80, !1416, i64 80}
!1523 = !{!"long", !1329, i64 0}
!1524 = !{!1522, !1328, i64 16}
!1525 = !DILocation(line: 0, scope: !1382)
!1526 = !DILocation(line: 0, scope: !1389)
!1527 = !DILocation(line: 488, column: 21, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 488, column: 21)
!1529 = !DILocation(line: 488, column: 21, scope: !1389)
!1530 = !{!1522, !1523, i64 48}
!1531 = !DILocation(line: 488, column: 21, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 488, column: 21)
!1533 = !{!1522, !1328, i64 8}
!1534 = !{!1522, !1328, i64 32}
!1535 = !DILocation(line: 492, column: 22, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 492, column: 15)
!1537 = !DILocation(line: 492, column: 15, scope: !1382)
!1538 = !DILocation(line: 502, column: 11, scope: !1382)
!1539 = !DILocation(line: 503, column: 11, scope: !1382)
!1540 = !DILocation(line: 504, column: 11, scope: !1382)
!1541 = !DILocation(line: 505, column: 9, scope: !1382)
!1542 = !DILocation(line: 509, column: 1, scope: !1367)
!1543 = !DILocation(line: 0, scope: !12)
!1544 = !DILocation(line: 243, column: 3, scope: !12)
!1545 = !DILocation(line: 243, column: 9, scope: !12)
!1546 = !DILocation(line: 244, column: 3, scope: !12)
!1547 = !DILocation(line: 244, column: 10, scope: !12)
!1548 = !{!1523, !1523, i64 0}
!1549 = !DILocation(line: 253, column: 10, scope: !12)
!1550 = !DILocation(line: 254, column: 12, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !12, file: !3, line: 254, column: 7)
!1552 = !DILocation(line: 254, column: 20, scope: !1551)
!1553 = !DILocation(line: 254, column: 23, scope: !1551)
!1554 = !DILocation(line: 254, column: 29, scope: !1551)
!1555 = !DILocation(line: 254, column: 7, scope: !12)
!1556 = !DILocation(line: 255, column: 5, scope: !1551)
!1557 = !DILocation(line: 0, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !93, file: !3, line: 264, column: 11)
!1559 = !DILocation(line: 0, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 359, column: 9)
!1561 = distinct !DILexicalBlock(scope: !93, file: !3, line: 358, column: 11)
!1562 = !DILocation(line: 257, column: 3, scope: !12)
!1563 = !DILocation(line: 264, column: 11, scope: !93)
!1564 = !DILocation(line: 242, column: 15, scope: !12)
!1565 = !DILocation(line: 262, column: 7, scope: !93)
!1566 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1567, file: !1568, line: 118, type: !1370)
!1567 = distinct !DISubprogram(name: "getline", scope: !1568, file: !1568, line: 118, type: !1569, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1572)
!1568 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1571, !1370, !682, !16}
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !46, line: 193, baseType: !47)
!1572 = !{!1566, !1573, !1574}
!1573 = !DILocalVariable(name: "__n", arg: 2, scope: !1567, file: !1568, line: 118, type: !682)
!1574 = !DILocalVariable(name: "__stream", arg: 3, scope: !1567, file: !1568, line: 118, type: !16)
!1575 = !DILocation(line: 0, scope: !1567, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 266, column: 15, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 266, column: 15)
!1578 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 265, column: 9)
!1579 = !DILocation(line: 120, column: 10, scope: !1567, inlinedAt: !1576)
!1580 = !DILocation(line: 266, column: 59, scope: !1577)
!1581 = !DILocation(line: 0, scope: !1578)
!1582 = !DILocation(line: 266, column: 15, scope: !1578)
!1583 = !DILocation(line: 268, column: 15, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 267, column: 13)
!1585 = !DILocation(line: 269, column: 15, scope: !1584)
!1586 = !DILocation(line: 275, column: 27, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 275, column: 15)
!1588 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 274, column: 9)
!1589 = !DILocation(line: 275, column: 15, scope: !1588)
!1590 = !DILocation(line: 278, column: 26, scope: !1588)
!1591 = !DILocation(line: 278, column: 47, scope: !1588)
!1592 = !DILocation(line: 278, column: 23, scope: !1588)
!1593 = !DILocalVariable(name: "line", arg: 1, scope: !1594, file: !3, line: 143, type: !79)
!1594 = distinct !DISubprogram(name: "parse_line", scope: !3, file: !3, line: 143, type: !1595, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !79, !1370, !1370}
!1597 = !{!1593, !1598, !1599, !1600, !1601, !1602}
!1598 = !DILocalVariable(name: "keyword", arg: 2, scope: !1594, file: !3, line: 143, type: !1370)
!1599 = !DILocalVariable(name: "arg", arg: 3, scope: !1594, file: !3, line: 143, type: !1370)
!1600 = !DILocalVariable(name: "p", scope: !1594, file: !3, line: 145, type: !79)
!1601 = !DILocalVariable(name: "keyword_start", scope: !1594, file: !3, line: 146, type: !79)
!1602 = !DILocalVariable(name: "arg_start", scope: !1594, file: !3, line: 147, type: !79)
!1603 = !DILocation(line: 0, scope: !1594, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 281, column: 7, scope: !93)
!1605 = !DILocation(line: 0, scope: !1606, inlinedAt: !1604)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 152, column: 3)
!1607 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 152, column: 3)
!1608 = !DILocation(line: 152, column: 8, scope: !1607, inlinedAt: !1604)
!1609 = !DILocation(line: 0, scope: !1607, inlinedAt: !1604)
!1610 = !DILocation(line: 152, column: 18, scope: !1606, inlinedAt: !1604)
!1611 = !{!1612, !1612, i64 0}
!1612 = !{!"short", !1329, i64 0}
!1613 = !DILocation(line: 152, column: 3, scope: !1607, inlinedAt: !1604)
!1614 = !DILocation(line: 152, column: 43, scope: !1606, inlinedAt: !1604)
!1615 = distinct !{!1615, !1613, !1616}
!1616 = !DILocation(line: 153, column: 5, scope: !1607, inlinedAt: !1604)
!1617 = !DILocation(line: 156, column: 18, scope: !1618, inlinedAt: !1604)
!1618 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 156, column: 7)
!1619 = distinct !{!1619, !1562, !1620}
!1620 = !DILocation(line: 368, column: 5, scope: !12)
!1621 = !DILocation(line: 163, column: 7, scope: !1622, inlinedAt: !1604)
!1622 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 162, column: 5)
!1623 = !DILocation(line: 161, column: 11, scope: !1594, inlinedAt: !1604)
!1624 = !DILocation(line: 161, column: 41, scope: !1594, inlinedAt: !1604)
!1625 = !DILocation(line: 161, column: 35, scope: !1594, inlinedAt: !1604)
!1626 = distinct !{!1626, !1627, !1628}
!1627 = !DILocation(line: 161, column: 3, scope: !1594, inlinedAt: !1604)
!1628 = !DILocation(line: 164, column: 5, scope: !1594, inlinedAt: !1604)
!1629 = !DILocation(line: 166, column: 41, scope: !1594, inlinedAt: !1604)
!1630 = !DILocation(line: 166, column: 14, scope: !1594, inlinedAt: !1604)
!1631 = !DILocation(line: 167, column: 7, scope: !1632, inlinedAt: !1604)
!1632 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 167, column: 7)
!1633 = !DILocation(line: 167, column: 11, scope: !1632, inlinedAt: !1604)
!1634 = !DILocation(line: 167, column: 7, scope: !1594, inlinedAt: !1604)
!1635 = !DILocation(line: 170, column: 3, scope: !1594, inlinedAt: !1604)
!1636 = !DILocation(line: 172, column: 7, scope: !1637, inlinedAt: !1604)
!1637 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 171, column: 5)
!1638 = !DILocation(line: 174, column: 10, scope: !1594, inlinedAt: !1604)
!1639 = !DILocation(line: 173, column: 5, scope: !1637, inlinedAt: !1604)
!1640 = distinct !{!1640, !1635, !1641}
!1641 = !DILocation(line: 174, column: 33, scope: !1594, inlinedAt: !1604)
!1642 = !DILocation(line: 176, column: 18, scope: !1643, inlinedAt: !1604)
!1643 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 176, column: 7)
!1644 = !DILocation(line: 181, column: 10, scope: !1594, inlinedAt: !1604)
!1645 = !DILocation(line: 181, column: 3, scope: !1594, inlinedAt: !1604)
!1646 = !DILocation(line: 184, column: 3, scope: !1647, inlinedAt: !1604)
!1647 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 184, column: 3)
!1648 = !DILocation(line: 182, column: 5, scope: !1594, inlinedAt: !1604)
!1649 = distinct !{!1649, !1645, !1650}
!1650 = !DILocation(line: 182, column: 7, scope: !1594, inlinedAt: !1604)
!1651 = !DILocation(line: 0, scope: !1647, inlinedAt: !1604)
!1652 = !DILocation(line: 184, column: 13, scope: !1653, inlinedAt: !1604)
!1653 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 184, column: 3)
!1654 = distinct !{!1654, !1646, !1655}
!1655 = !DILocation(line: 185, column: 5, scope: !1647, inlinedAt: !1604)
!1656 = !DILocation(line: 188, column: 33, scope: !1594, inlinedAt: !1604)
!1657 = !DILocation(line: 188, column: 10, scope: !1594, inlinedAt: !1604)
!1658 = !DILocation(line: 189, column: 1, scope: !1594, inlinedAt: !1604)
!1659 = !DILocation(line: 0, scope: !93)
!1660 = !DILocation(line: 283, column: 17, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !93, file: !3, line: 283, column: 11)
!1662 = !DILocation(line: 283, column: 11, scope: !93)
!1663 = !DILocation(line: 286, column: 15, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !93, file: !3, line: 286, column: 11)
!1665 = !DILocation(line: 286, column: 11, scope: !93)
!1666 = !DILocation(line: 288, column: 24, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 287, column: 9)
!1668 = !DILocation(line: 289, column: 18, scope: !1667)
!1669 = !DILocation(line: 288, column: 11, scope: !1667)
!1670 = !DILocation(line: 291, column: 11, scope: !1667)
!1671 = !DILocation(line: 292, column: 11, scope: !1667)
!1672 = !DILocation(line: 296, column: 11, scope: !103)
!1673 = !DILocation(line: 296, column: 40, scope: !103)
!1674 = !DILocation(line: 296, column: 11, scope: !93)
!1675 = !DILocation(line: 298, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 298, column: 15)
!1677 = distinct !DILexicalBlock(scope: !103, file: !3, line: 297, column: 9)
!1678 = !DILocation(line: 298, column: 38, scope: !1676)
!1679 = !DILocation(line: 298, column: 15, scope: !1677)
!1680 = !DILocation(line: 300, column: 26, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 300, column: 20)
!1682 = !DILocation(line: 300, column: 20, scope: !1676)
!1683 = !DILocation(line: 305, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !102, file: !3, line: 305, column: 15)
!1685 = !DILocation(line: 305, column: 15, scope: !102)
!1686 = !DILocation(line: 308, column: 21, scope: !101)
!1687 = !DILocation(line: 308, column: 15, scope: !102)
!1688 = !DILocation(line: 310, column: 19, scope: !99)
!1689 = !DILocation(line: 310, column: 19, scope: !100)
!1690 = !DILocation(line: 0, scope: !97)
!1691 = !DILocation(line: 0, scope: !155)
!1692 = !DILocation(line: 312, column: 19, scope: !155)
!1693 = !DILocation(line: 312, column: 19, scope: !156)
!1694 = !DILocation(line: 312, column: 19, scope: !97)
!1695 = !DILocation(line: 313, column: 19, scope: !98)
!1696 = !DILocation(line: 0, scope: !160)
!1697 = !DILocation(line: 0, scope: !162)
!1698 = !DILocation(line: 314, column: 19, scope: !162)
!1699 = !DILocation(line: 314, column: 19, scope: !163)
!1700 = !DILocation(line: 314, column: 19, scope: !160)
!1701 = !DILocation(line: 315, column: 19, scope: !98)
!1702 = !DILocation(line: 0, scope: !165)
!1703 = !DILocation(line: 0, scope: !167)
!1704 = !DILocation(line: 316, column: 19, scope: !167)
!1705 = !DILocation(line: 316, column: 19, scope: !168)
!1706 = !DILocation(line: 316, column: 19, scope: !165)
!1707 = !DILocation(line: 317, column: 17, scope: !98)
!1708 = !DILocation(line: 320, column: 19, scope: !171)
!1709 = !DILocation(line: 0, scope: !170)
!1710 = !DILocation(line: 0, scope: !174)
!1711 = !DILocation(line: 321, column: 19, scope: !174)
!1712 = !DILocation(line: 321, column: 19, scope: !175)
!1713 = !DILocation(line: 321, column: 19, scope: !170)
!1714 = !DILocation(line: 322, column: 19, scope: !171)
!1715 = !DILocation(line: 0, scope: !177)
!1716 = !DILocation(line: 0, scope: !179)
!1717 = !DILocation(line: 323, column: 19, scope: !179)
!1718 = !DILocation(line: 323, column: 19, scope: !180)
!1719 = !DILocation(line: 323, column: 19, scope: !177)
!1720 = !DILocation(line: 324, column: 17, scope: !171)
!1721 = !DILocation(line: 325, column: 24, scope: !183)
!1722 = !DILocation(line: 325, column: 56, scope: !183)
!1723 = !DILocation(line: 326, column: 24, scope: !183)
!1724 = !DILocation(line: 326, column: 27, scope: !183)
!1725 = !DILocation(line: 326, column: 57, scope: !183)
!1726 = !DILocation(line: 327, column: 24, scope: !183)
!1727 = !DILocation(line: 327, column: 27, scope: !183)
!1728 = !DILocation(line: 327, column: 60, scope: !183)
!1729 = !DILocation(line: 325, column: 24, scope: !172)
!1730 = !DILocation(line: 0, scope: !182)
!1731 = !DILocation(line: 335, column: 19, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !182, file: !3, line: 335, column: 19)
!1733 = distinct !{!1733, !1731, !1734}
!1734 = !DILocation(line: 337, column: 23, scope: !1732)
!1735 = !DILocation(line: 335, column: 31, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 335, column: 19)
!1737 = !DILocation(line: 336, column: 25, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 336, column: 25)
!1739 = !DILocation(line: 336, column: 62, scope: !1738)
!1740 = !DILocation(line: 335, column: 55, scope: !1736)
!1741 = !DILocation(line: 336, column: 25, scope: !1736)
!1742 = !DILocation(line: 0, scope: !185)
!1743 = !DILocation(line: 0, scope: !190)
!1744 = !DILocation(line: 341, column: 23, scope: !190)
!1745 = !DILocation(line: 341, column: 23, scope: !191)
!1746 = !DILocation(line: 341, column: 23, scope: !185)
!1747 = !DILocation(line: 0, scope: !193)
!1748 = !DILocation(line: 0, scope: !195)
!1749 = !DILocation(line: 341, column: 23, scope: !195)
!1750 = !DILocation(line: 341, column: 23, scope: !196)
!1751 = !DILocation(line: 341, column: 23, scope: !193)
!1752 = !DILocation(line: 0, scope: !198)
!1753 = !DILocation(line: 0, scope: !200)
!1754 = !DILocation(line: 342, column: 23, scope: !200)
!1755 = !DILocation(line: 342, column: 23, scope: !201)
!1756 = !DILocation(line: 342, column: 23, scope: !198)
!1757 = !DILocation(line: 343, column: 23, scope: !187)
!1758 = !DILocation(line: 0, scope: !203)
!1759 = !DILocation(line: 0, scope: !205)
!1760 = !DILocation(line: 344, column: 23, scope: !205)
!1761 = !DILocation(line: 344, column: 23, scope: !206)
!1762 = !DILocation(line: 344, column: 23, scope: !203)
!1763 = !DILocation(line: 345, column: 21, scope: !187)
!1764 = !DILocation(line: 358, column: 49, scope: !1561)
!1765 = !DILocation(line: 358, column: 24, scope: !1561)
!1766 = !DILocation(line: 360, column: 24, scope: !1560)
!1767 = !DILocation(line: 361, column: 19, scope: !1560)
!1768 = !DILocation(line: 361, column: 30, scope: !1560)
!1769 = !DILocation(line: 361, column: 50, scope: !1560)
!1770 = !DILocation(line: 360, column: 11, scope: !1560)
!1771 = !DILocation(line: 364, column: 9, scope: !1560)
!1772 = !DILocation(line: 366, column: 7, scope: !93)
!1773 = !DILocation(line: 367, column: 7, scope: !93)
!1774 = !DILocation(line: 370, column: 10, scope: !12)
!1775 = !DILocation(line: 371, column: 1, scope: !12)
!1776 = !DILocation(line: 370, column: 3, scope: !12)
!1777 = distinct !DISubprogram(name: "append_quoted", scope: !3, file: !3, line: 195, type: !253, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1778)
!1778 = !{!1779, !1780, !1781, !1785, !1788, !1790, !1793, !1795, !1798, !1801, !1804, !1806}
!1779 = !DILocalVariable(name: "str", arg: 1, scope: !1777, file: !3, line: 195, type: !79)
!1780 = !DILocalVariable(name: "need_backslash", scope: !1777, file: !3, line: 197, type: !15)
!1781 = !DILocalVariable(name: "__o", scope: !1782, file: !3, line: 204, type: !104)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 204, column: 11)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 202, column: 9)
!1784 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 200, column: 5)
!1785 = !DILocalVariable(name: "__o1", scope: !1786, file: !3, line: 204, type: !157)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 204, column: 11)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 204, column: 11)
!1788 = !DILocalVariable(name: "__o", scope: !1789, file: !3, line: 205, type: !104)
!1789 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 205, column: 11)
!1790 = !DILocalVariable(name: "__o1", scope: !1791, file: !3, line: 205, type: !157)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 205, column: 11)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 205, column: 11)
!1793 = !DILocalVariable(name: "__o", scope: !1794, file: !3, line: 206, type: !104)
!1794 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 206, column: 11)
!1795 = !DILocalVariable(name: "__o1", scope: !1796, file: !3, line: 206, type: !157)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 206, column: 11)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 206, column: 11)
!1798 = !DILocalVariable(name: "__o", scope: !1799, file: !3, line: 218, type: !104)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 218, column: 13)
!1800 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 217, column: 15)
!1801 = !DILocalVariable(name: "__o1", scope: !1802, file: !3, line: 218, type: !157)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 218, column: 13)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 218, column: 13)
!1804 = !DILocalVariable(name: "__o", scope: !1805, file: !3, line: 226, type: !104)
!1805 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 226, column: 7)
!1806 = !DILocalVariable(name: "__o1", scope: !1807, file: !3, line: 226, type: !157)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 226, column: 7)
!1808 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 226, column: 7)
!1809 = !DILocation(line: 0, scope: !1777)
!1810 = !DILocation(line: 199, column: 10, scope: !1777)
!1811 = !DILocation(line: 199, column: 15, scope: !1777)
!1812 = !DILocation(line: 199, column: 3, scope: !1777)
!1813 = !DILocation(line: 201, column: 7, scope: !1784)
!1814 = !DILocation(line: 0, scope: !1782)
!1815 = !DILocation(line: 0, scope: !1786)
!1816 = !DILocation(line: 204, column: 11, scope: !1786)
!1817 = !DILocation(line: 204, column: 11, scope: !1787)
!1818 = !DILocation(line: 204, column: 11, scope: !1782)
!1819 = !DILocation(line: 0, scope: !1789)
!1820 = !DILocation(line: 0, scope: !1791)
!1821 = !DILocation(line: 205, column: 11, scope: !1791)
!1822 = !DILocation(line: 205, column: 11, scope: !1792)
!1823 = !DILocation(line: 205, column: 11, scope: !1789)
!1824 = !DILocation(line: 0, scope: !1794)
!1825 = !DILocation(line: 0, scope: !1796)
!1826 = !DILocation(line: 206, column: 11, scope: !1796)
!1827 = !DILocation(line: 206, column: 11, scope: !1797)
!1828 = !DILocation(line: 206, column: 11, scope: !1794)
!1829 = !DILocation(line: 208, column: 11, scope: !1783)
!1830 = !DILocation(line: 212, column: 29, scope: !1783)
!1831 = !DILocation(line: 212, column: 26, scope: !1783)
!1832 = !DILocation(line: 213, column: 11, scope: !1783)
!1833 = !DILocation(line: 217, column: 15, scope: !1800)
!1834 = !DILocation(line: 217, column: 15, scope: !1783)
!1835 = !DILocation(line: 0, scope: !1799)
!1836 = !DILocation(line: 0, scope: !1802)
!1837 = !DILocation(line: 218, column: 13, scope: !1802)
!1838 = !DILocation(line: 218, column: 13, scope: !1803)
!1839 = !DILocation(line: 218, column: 13, scope: !1799)
!1840 = !DILocation(line: 218, column: 13, scope: !1800)
!1841 = !DILocation(line: 0, scope: !1783)
!1842 = !DILocation(line: 0, scope: !1805)
!1843 = !DILocation(line: 0, scope: !1807)
!1844 = !DILocation(line: 226, column: 7, scope: !1807)
!1845 = !DILocation(line: 226, column: 7, scope: !1808)
!1846 = !DILocation(line: 226, column: 7, scope: !1805)
!1847 = !DILocation(line: 227, column: 7, scope: !1784)
!1848 = distinct !{!1848, !1812, !1849}
!1849 = !DILocation(line: 228, column: 5, scope: !1777)
!1850 = !DILocation(line: 229, column: 1, scope: !1777)
!1851 = distinct !DISubprogram(name: "c_strcasecmp", scope: !574, file: !574, line: 27, type: !322, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1852)
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1858}
!1853 = !DILocalVariable(name: "s1", arg: 1, scope: !1851, file: !574, line: 27, type: !79)
!1854 = !DILocalVariable(name: "s2", arg: 2, scope: !1851, file: !574, line: 27, type: !79)
!1855 = !DILocalVariable(name: "p1", scope: !1851, file: !574, line: 29, type: !576)
!1856 = !DILocalVariable(name: "p2", scope: !1851, file: !574, line: 30, type: !576)
!1857 = !DILocalVariable(name: "c1", scope: !1851, file: !574, line: 31, type: !343)
!1858 = !DILocalVariable(name: "c2", scope: !1851, file: !574, line: 31, type: !343)
!1859 = !DILocation(line: 0, scope: !1851)
!1860 = !DILocation(line: 33, column: 10, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1851, file: !574, line: 33, column: 7)
!1862 = !DILocation(line: 33, column: 7, scope: !1851)
!1863 = !DILocation(line: 38, column: 23, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1851, file: !574, line: 37, column: 5)
!1865 = !DILocalVariable(name: "c", arg: 1, scope: !1866, file: !1867, line: 337, type: !23)
!1866 = distinct !DISubprogram(name: "c_tolower", scope: !1867, file: !1867, line: 337, type: !627, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !573, retainedNodes: !1868)
!1867 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1868 = !{!1865}
!1869 = !DILocation(line: 0, scope: !1866, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 38, column: 12, scope: !1864)
!1871 = !DILocation(line: 339, column: 3, scope: !1866, inlinedAt: !1870)
!1872 = !DILocation(line: 39, column: 23, scope: !1864)
!1873 = !DILocation(line: 0, scope: !1866, inlinedAt: !1874)
!1874 = distinct !DILocation(line: 39, column: 12, scope: !1864)
!1875 = !DILocation(line: 339, column: 3, scope: !1866, inlinedAt: !1874)
!1876 = !DILocation(line: 41, column: 11, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1864, file: !574, line: 41, column: 11)
!1878 = !DILocation(line: 41, column: 14, scope: !1877)
!1879 = !DILocation(line: 41, column: 11, scope: !1864)
!1880 = !DILocation(line: 50, column: 17, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1851, file: !574, line: 49, column: 7)
!1882 = !DILocation(line: 44, column: 7, scope: !1864)
!1883 = !DILocation(line: 45, column: 7, scope: !1864)
!1884 = !DILocation(line: 47, column: 16, scope: !1851)
!1885 = !DILocation(line: 47, column: 13, scope: !1851)
!1886 = !DILocation(line: 46, column: 5, scope: !1864)
!1887 = distinct !{!1887, !1888, !1889}
!1888 = !DILocation(line: 36, column: 3, scope: !1851)
!1889 = !DILocation(line: 47, column: 18, scope: !1851)
!1890 = !DILocation(line: 50, column: 15, scope: !1881)
!1891 = !DILocation(line: 50, column: 5, scope: !1881)
!1892 = !DILocation(line: 56, column: 1, scope: !1851)
!1893 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !372, file: !372, line: 51, type: !253, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1894)
!1894 = !{!1895}
!1895 = !DILocalVariable(name: "file", arg: 1, scope: !1893, file: !372, line: 51, type: !79)
!1896 = !DILocation(line: 0, scope: !1893)
!1897 = !DILocation(line: 53, column: 13, scope: !1893)
!1898 = !DILocation(line: 54, column: 1, scope: !1893)
!1899 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !372, file: !372, line: 88, type: !1900, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1902)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !15}
!1902 = !{!1903}
!1903 = !DILocalVariable(name: "ignore", arg: 1, scope: !1899, file: !372, line: 88, type: !15)
!1904 = !DILocation(line: 0, scope: !1899)
!1905 = !DILocation(line: 90, column: 16, scope: !1899)
!1906 = !{!1907, !1907, i64 0}
!1907 = !{!"_Bool", !1329, i64 0}
!1908 = !DILocation(line: 91, column: 1, scope: !1899)
!1909 = distinct !DISubprogram(name: "close_stdout", scope: !372, file: !372, line: 117, type: !270, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1910)
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "write_error", scope: !1912, file: !372, line: 122, type: !79)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !372, line: 121, column: 5)
!1913 = distinct !DILexicalBlock(scope: !1909, file: !372, line: 119, column: 7)
!1914 = !DILocation(line: 119, column: 21, scope: !1913)
!1915 = !DILocation(line: 119, column: 7, scope: !1913)
!1916 = !DILocation(line: 119, column: 29, scope: !1913)
!1917 = !DILocation(line: 120, column: 7, scope: !1913)
!1918 = !DILocation(line: 120, column: 12, scope: !1913)
!1919 = !{i8 0, i8 2}
!1920 = !DILocation(line: 120, column: 25, scope: !1913)
!1921 = !DILocation(line: 120, column: 28, scope: !1913)
!1922 = !DILocation(line: 120, column: 34, scope: !1913)
!1923 = !DILocation(line: 119, column: 7, scope: !1909)
!1924 = !DILocation(line: 122, column: 33, scope: !1912)
!1925 = !DILocation(line: 0, scope: !1912)
!1926 = !DILocation(line: 123, column: 11, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1912, file: !372, line: 123, column: 11)
!1928 = !DILocation(line: 0, scope: !1927)
!1929 = !DILocation(line: 123, column: 11, scope: !1912)
!1930 = !DILocation(line: 124, column: 36, scope: !1927)
!1931 = !DILocation(line: 124, column: 9, scope: !1927)
!1932 = !DILocation(line: 127, column: 9, scope: !1927)
!1933 = !DILocation(line: 129, column: 14, scope: !1912)
!1934 = !DILocation(line: 129, column: 7, scope: !1912)
!1935 = !DILocation(line: 134, column: 42, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1909, file: !372, line: 134, column: 7)
!1937 = !DILocation(line: 134, column: 28, scope: !1936)
!1938 = !DILocation(line: 134, column: 50, scope: !1936)
!1939 = !DILocation(line: 134, column: 7, scope: !1909)
!1940 = !DILocation(line: 135, column: 12, scope: !1936)
!1941 = !DILocation(line: 135, column: 5, scope: !1936)
!1942 = !DILocation(line: 136, column: 1, scope: !1909)
!1943 = distinct !DISubprogram(name: "last_component", scope: !579, file: !579, line: 30, type: !263, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !1944)
!1944 = !{!1945, !1946, !1947, !1948}
!1945 = !DILocalVariable(name: "name", arg: 1, scope: !1943, file: !579, line: 30, type: !79)
!1946 = !DILocalVariable(name: "base", scope: !1943, file: !579, line: 32, type: !79)
!1947 = !DILocalVariable(name: "p", scope: !1943, file: !579, line: 33, type: !79)
!1948 = !DILocalVariable(name: "saw_slash", scope: !1943, file: !579, line: 34, type: !15)
!1949 = !DILocation(line: 0, scope: !1943)
!1950 = !DILocation(line: 36, column: 3, scope: !1943)
!1951 = !DILocation(line: 36, column: 10, scope: !1943)
!1952 = !DILocation(line: 37, column: 9, scope: !1943)
!1953 = distinct !{!1953, !1950, !1952}
!1954 = !DILocation(line: 39, column: 18, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !579, line: 39, column: 3)
!1956 = distinct !DILexicalBlock(scope: !1943, file: !579, line: 39, column: 3)
!1957 = !DILocation(line: 32, column: 15, scope: !1943)
!1958 = !DILocation(line: 0, scope: !1956)
!1959 = !DILocation(line: 39, column: 3, scope: !1956)
!1960 = !DILocation(line: 43, column: 16, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !579, line: 43, column: 16)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !579, line: 41, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1955, file: !579, line: 40, column: 5)
!1964 = !DILocation(line: 43, column: 16, scope: !1962)
!1965 = !DILocation(line: 39, column: 23, scope: !1955)
!1966 = !DILocation(line: 39, column: 3, scope: !1955)
!1967 = distinct !{!1967, !1959, !1968}
!1968 = !DILocation(line: 48, column: 5, scope: !1956)
!1969 = !DILocation(line: 50, column: 3, scope: !1943)
!1970 = distinct !DISubprogram(name: "base_len", scope: !579, file: !579, line: 58, type: !1971, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !578, retainedNodes: !1973)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!71, !79}
!1973 = !{!1974, !1975, !1976}
!1974 = !DILocalVariable(name: "name", arg: 1, scope: !1970, file: !579, line: 58, type: !79)
!1975 = !DILocalVariable(name: "len", scope: !1970, file: !579, line: 60, type: !71)
!1976 = !DILocalVariable(name: "prefix_len", scope: !1970, file: !579, line: 61, type: !71)
!1977 = !DILocation(line: 0, scope: !1970)
!1978 = !DILocation(line: 63, column: 14, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1970, file: !579, line: 63, column: 3)
!1980 = !DILocation(line: 63, column: 8, scope: !1979)
!1981 = !DILocation(line: 0, scope: !1979)
!1982 = !DILocation(line: 63, column: 32, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !579, line: 63, column: 3)
!1984 = !DILocation(line: 63, column: 38, scope: !1983)
!1985 = !DILocation(line: 63, column: 41, scope: !1983)
!1986 = !DILocation(line: 63, column: 3, scope: !1979)
!1987 = distinct !{!1987, !1986, !1988}
!1988 = !DILocation(line: 64, column: 5, scope: !1979)
!1989 = !DILocation(line: 74, column: 3, scope: !1970)
!1990 = distinct !DISubprogram(name: "freopen_safer", scope: !582, file: !582, line: 62, type: !1991, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !1995)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!1993, !79, !79, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !588)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002}
!1996 = !DILocalVariable(name: "name", arg: 1, scope: !1990, file: !582, line: 62, type: !79)
!1997 = !DILocalVariable(name: "mode", arg: 2, scope: !1990, file: !582, line: 62, type: !79)
!1998 = !DILocalVariable(name: "f", arg: 3, scope: !1990, file: !582, line: 62, type: !1993)
!1999 = !DILocalVariable(name: "protect_in", scope: !1990, file: !582, line: 70, type: !15)
!2000 = !DILocalVariable(name: "protect_out", scope: !1990, file: !582, line: 71, type: !15)
!2001 = !DILocalVariable(name: "protect_err", scope: !1990, file: !582, line: 72, type: !15)
!2002 = !DILocalVariable(name: "saved_errno", scope: !1990, file: !582, line: 73, type: !23)
!2003 = !DILocation(line: 0, scope: !1990)
!2004 = !DILocation(line: 75, column: 11, scope: !1990)
!2005 = !DILocation(line: 75, column: 3, scope: !1990)
!2006 = !DILocation(line: 78, column: 11, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !582, line: 78, column: 11)
!2008 = distinct !DILexicalBlock(scope: !1990, file: !582, line: 76, column: 5)
!2009 = !DILocation(line: 78, column: 47, scope: !2007)
!2010 = !DILocation(line: 78, column: 11, scope: !2008)
!2011 = !DILocation(line: 82, column: 11, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !582, line: 82, column: 11)
!2013 = !DILocation(line: 82, column: 47, scope: !2012)
!2014 = !DILocation(line: 82, column: 11, scope: !2008)
!2015 = !DILocation(line: 86, column: 11, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2008, file: !582, line: 86, column: 11)
!2017 = !DILocation(line: 86, column: 45, scope: !2016)
!2018 = !DILocation(line: 93, column: 18, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1990, file: !582, line: 93, column: 7)
!2020 = !DILocalVariable(name: "fd", arg: 1, scope: !2021, file: !582, line: 40, type: !23)
!2021 = distinct !DISubprogram(name: "protect_fd", scope: !582, file: !582, line: 40, type: !847, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !581, retainedNodes: !2022)
!2022 = !{!2020, !2023}
!2023 = !DILocalVariable(name: "value", scope: !2021, file: !582, line: 42, type: !23)
!2024 = !DILocation(line: 0, scope: !2021, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 93, column: 22, scope: !2019)
!2026 = !DILocation(line: 42, column: 15, scope: !2021, inlinedAt: !2025)
!2027 = !DILocation(line: 43, column: 13, scope: !2028, inlinedAt: !2025)
!2028 = distinct !DILexicalBlock(scope: !2021, file: !582, line: 43, column: 7)
!2029 = !DILocation(line: 43, column: 7, scope: !2021, inlinedAt: !2025)
!2030 = !DILocation(line: 45, column: 13, scope: !2031, inlinedAt: !2025)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !582, line: 45, column: 11)
!2032 = distinct !DILexicalBlock(scope: !2028, file: !582, line: 44, column: 5)
!2033 = !DILocation(line: 45, column: 11, scope: !2032, inlinedAt: !2025)
!2034 = !DILocation(line: 47, column: 11, scope: !2035, inlinedAt: !2025)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !582, line: 46, column: 9)
!2036 = !DILocation(line: 48, column: 11, scope: !2035, inlinedAt: !2025)
!2037 = !DILocation(line: 48, column: 17, scope: !2035, inlinedAt: !2025)
!2038 = !DILocation(line: 49, column: 9, scope: !2035, inlinedAt: !2025)
!2039 = !DILocation(line: 95, column: 12, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2019, file: !582, line: 95, column: 12)
!2041 = !DILocation(line: 95, column: 24, scope: !2040)
!2042 = !DILocation(line: 0, scope: !2021, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 95, column: 28, scope: !2040)
!2044 = !DILocation(line: 42, column: 15, scope: !2021, inlinedAt: !2043)
!2045 = !DILocation(line: 43, column: 13, scope: !2028, inlinedAt: !2043)
!2046 = !DILocation(line: 43, column: 7, scope: !2021, inlinedAt: !2043)
!2047 = !DILocation(line: 45, column: 13, scope: !2031, inlinedAt: !2043)
!2048 = !DILocation(line: 45, column: 11, scope: !2032, inlinedAt: !2043)
!2049 = !DILocation(line: 47, column: 11, scope: !2035, inlinedAt: !2043)
!2050 = !DILocation(line: 48, column: 11, scope: !2035, inlinedAt: !2043)
!2051 = !DILocation(line: 48, column: 17, scope: !2035, inlinedAt: !2043)
!2052 = !DILocation(line: 49, column: 9, scope: !2035, inlinedAt: !2043)
!2053 = !DILocation(line: 97, column: 12, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2040, file: !582, line: 97, column: 12)
!2055 = !DILocation(line: 97, column: 24, scope: !2054)
!2056 = !DILocation(line: 0, scope: !2021, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 97, column: 28, scope: !2054)
!2058 = !DILocation(line: 42, column: 15, scope: !2021, inlinedAt: !2057)
!2059 = !DILocation(line: 43, column: 13, scope: !2028, inlinedAt: !2057)
!2060 = !DILocation(line: 43, column: 7, scope: !2021, inlinedAt: !2057)
!2061 = !DILocation(line: 45, column: 13, scope: !2031, inlinedAt: !2057)
!2062 = !DILocation(line: 45, column: 11, scope: !2032, inlinedAt: !2057)
!2063 = !DILocation(line: 47, column: 11, scope: !2035, inlinedAt: !2057)
!2064 = !DILocation(line: 48, column: 11, scope: !2035, inlinedAt: !2057)
!2065 = !DILocation(line: 48, column: 17, scope: !2035, inlinedAt: !2057)
!2066 = !DILocation(line: 49, column: 9, scope: !2035, inlinedAt: !2057)
!2067 = !DILocation(line: 100, column: 9, scope: !2054)
!2068 = !DILocation(line: 101, column: 17, scope: !1990)
!2069 = !DILocation(line: 102, column: 7, scope: !1990)
!2070 = !DILocation(line: 0, scope: !2019)
!2071 = !DILocation(line: 102, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1990, file: !582, line: 102, column: 7)
!2073 = !DILocation(line: 103, column: 5, scope: !2072)
!2074 = !DILocation(line: 104, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1990, file: !582, line: 104, column: 7)
!2076 = !DILocation(line: 104, column: 7, scope: !1990)
!2077 = !DILocation(line: 105, column: 5, scope: !2075)
!2078 = !DILocation(line: 106, column: 7, scope: !1990)
!2079 = !DILocation(line: 107, column: 5, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1990, file: !582, line: 106, column: 7)
!2081 = !DILocation(line: 108, column: 8, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1990, file: !582, line: 108, column: 7)
!2083 = !DILocation(line: 108, column: 7, scope: !1990)
!2084 = !DILocation(line: 109, column: 11, scope: !2082)
!2085 = !DILocation(line: 109, column: 5, scope: !2082)
!2086 = !DILocation(line: 110, column: 3, scope: !1990)
!2087 = distinct !DISubprogram(name: "set_program_name", scope: !423, file: !423, line: 39, type: !253, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !2088)
!2088 = !{!2089, !2090, !2091}
!2089 = !DILocalVariable(name: "argv0", arg: 1, scope: !2087, file: !423, line: 39, type: !79)
!2090 = !DILocalVariable(name: "slash", scope: !2087, file: !423, line: 46, type: !79)
!2091 = !DILocalVariable(name: "base", scope: !2087, file: !423, line: 47, type: !79)
!2092 = !DILocation(line: 0, scope: !2087)
!2093 = !DILocation(line: 51, column: 13, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2087, file: !423, line: 51, column: 7)
!2095 = !DILocation(line: 51, column: 7, scope: !2087)
!2096 = !DILocation(line: 55, column: 14, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !423, line: 52, column: 5)
!2098 = !DILocation(line: 54, column: 7, scope: !2097)
!2099 = !DILocation(line: 56, column: 7, scope: !2097)
!2100 = !DILocation(line: 59, column: 11, scope: !2087)
!2101 = !DILocation(line: 60, column: 17, scope: !2087)
!2102 = !DILocation(line: 60, column: 11, scope: !2087)
!2103 = !DILocation(line: 61, column: 12, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2087, file: !423, line: 61, column: 7)
!2105 = !DILocation(line: 61, column: 20, scope: !2104)
!2106 = !DILocation(line: 61, column: 25, scope: !2104)
!2107 = !DILocation(line: 61, column: 42, scope: !2104)
!2108 = !DILocation(line: 61, column: 28, scope: !2104)
!2109 = !DILocation(line: 61, column: 61, scope: !2104)
!2110 = !DILocation(line: 61, column: 7, scope: !2087)
!2111 = !DILocation(line: 64, column: 11, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !423, line: 64, column: 11)
!2113 = distinct !DILexicalBlock(scope: !2104, file: !423, line: 62, column: 5)
!2114 = !DILocation(line: 64, column: 36, scope: !2112)
!2115 = !DILocation(line: 64, column: 11, scope: !2113)
!2116 = !DILocation(line: 66, column: 24, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2112, file: !423, line: 65, column: 9)
!2118 = !DILocation(line: 70, column: 41, scope: !2117)
!2119 = !DILocation(line: 72, column: 9, scope: !2117)
!2120 = !DILocation(line: 84, column: 16, scope: !2087)
!2121 = !DILocation(line: 90, column: 27, scope: !2087)
!2122 = !DILocation(line: 92, column: 1, scope: !2087)
!2123 = distinct !DISubprogram(name: "clone_quoting_options", scope: !464, file: !464, line: 122, type: !2124, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2127)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2126, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!2127 = !{!2128, !2129, !2130}
!2128 = !DILocalVariable(name: "o", arg: 1, scope: !2123, file: !464, line: 122, type: !2126)
!2129 = !DILocalVariable(name: "e", scope: !2123, file: !464, line: 124, type: !23)
!2130 = !DILocalVariable(name: "p", scope: !2123, file: !464, line: 125, type: !2126)
!2131 = !DILocation(line: 0, scope: !2123)
!2132 = !DILocation(line: 124, column: 11, scope: !2123)
!2133 = !DILocation(line: 125, column: 40, scope: !2123)
!2134 = !DILocation(line: 125, column: 31, scope: !2123)
!2135 = !DILocation(line: 127, column: 9, scope: !2123)
!2136 = !DILocation(line: 128, column: 3, scope: !2123)
!2137 = distinct !DISubprogram(name: "get_quoting_style", scope: !464, file: !464, line: 133, type: !2138, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!212, !480}
!2140 = !{!2141}
!2141 = !DILocalVariable(name: "o", arg: 1, scope: !2137, file: !464, line: 133, type: !480)
!2142 = !DILocation(line: 0, scope: !2137)
!2143 = !DILocation(line: 135, column: 11, scope: !2137)
!2144 = !DILocation(line: 135, column: 46, scope: !2137)
!2145 = !{!2146, !1329, i64 0}
!2146 = !{!"quoting_options", !1329, i64 0, !1416, i64 4, !1329, i64 8, !1328, i64 40, !1328, i64 48}
!2147 = !DILocation(line: 135, column: 3, scope: !2137)
!2148 = distinct !DISubprogram(name: "set_quoting_style", scope: !464, file: !464, line: 141, type: !2149, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !2126, !212}
!2151 = !{!2152, !2153}
!2152 = !DILocalVariable(name: "o", arg: 1, scope: !2148, file: !464, line: 141, type: !2126)
!2153 = !DILocalVariable(name: "s", arg: 2, scope: !2148, file: !464, line: 141, type: !212)
!2154 = !DILocation(line: 0, scope: !2148)
!2155 = !DILocation(line: 143, column: 4, scope: !2148)
!2156 = !DILocation(line: 143, column: 39, scope: !2148)
!2157 = !DILocation(line: 143, column: 45, scope: !2148)
!2158 = !DILocation(line: 144, column: 1, scope: !2148)
!2159 = distinct !DISubprogram(name: "set_char_quoting", scope: !464, file: !464, line: 152, type: !2160, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!23, !2126, !26, !23}
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2169, !2170}
!2163 = !DILocalVariable(name: "o", arg: 1, scope: !2159, file: !464, line: 152, type: !2126)
!2164 = !DILocalVariable(name: "c", arg: 2, scope: !2159, file: !464, line: 152, type: !26)
!2165 = !DILocalVariable(name: "i", arg: 3, scope: !2159, file: !464, line: 152, type: !23)
!2166 = !DILocalVariable(name: "uc", scope: !2159, file: !464, line: 154, type: !343)
!2167 = !DILocalVariable(name: "p", scope: !2159, file: !464, line: 155, type: !2168)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2169 = !DILocalVariable(name: "shift", scope: !2159, file: !464, line: 157, type: !23)
!2170 = !DILocalVariable(name: "r", scope: !2159, file: !464, line: 158, type: !23)
!2171 = !DILocation(line: 0, scope: !2159)
!2172 = !DILocation(line: 156, column: 6, scope: !2159)
!2173 = !DILocation(line: 156, column: 62, scope: !2159)
!2174 = !DILocation(line: 156, column: 57, scope: !2159)
!2175 = !DILocation(line: 157, column: 15, scope: !2159)
!2176 = !DILocation(line: 158, column: 12, scope: !2159)
!2177 = !DILocation(line: 158, column: 15, scope: !2159)
!2178 = !DILocation(line: 158, column: 25, scope: !2159)
!2179 = !DILocation(line: 159, column: 13, scope: !2159)
!2180 = !DILocation(line: 159, column: 18, scope: !2159)
!2181 = !DILocation(line: 159, column: 23, scope: !2159)
!2182 = !DILocation(line: 159, column: 6, scope: !2159)
!2183 = !DILocation(line: 160, column: 3, scope: !2159)
!2184 = distinct !DISubprogram(name: "set_quoting_flags", scope: !464, file: !464, line: 168, type: !2185, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!23, !2126, !23}
!2187 = !{!2188, !2189, !2190}
!2188 = !DILocalVariable(name: "o", arg: 1, scope: !2184, file: !464, line: 168, type: !2126)
!2189 = !DILocalVariable(name: "i", arg: 2, scope: !2184, file: !464, line: 168, type: !23)
!2190 = !DILocalVariable(name: "r", scope: !2184, file: !464, line: 170, type: !23)
!2191 = !DILocation(line: 0, scope: !2184)
!2192 = !DILocation(line: 171, column: 8, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2184, file: !464, line: 171, column: 7)
!2194 = !DILocation(line: 171, column: 7, scope: !2184)
!2195 = !DILocation(line: 173, column: 10, scope: !2184)
!2196 = !{!2146, !1416, i64 4}
!2197 = !DILocation(line: 174, column: 12, scope: !2184)
!2198 = !DILocation(line: 175, column: 3, scope: !2184)
!2199 = distinct !DISubprogram(name: "set_custom_quoting", scope: !464, file: !464, line: 179, type: !2200, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2126, !79, !79}
!2202 = !{!2203, !2204, !2205}
!2203 = !DILocalVariable(name: "o", arg: 1, scope: !2199, file: !464, line: 179, type: !2126)
!2204 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2199, file: !464, line: 180, type: !79)
!2205 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2199, file: !464, line: 180, type: !79)
!2206 = !DILocation(line: 0, scope: !2199)
!2207 = !DILocation(line: 182, column: 8, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2199, file: !464, line: 182, column: 7)
!2209 = !DILocation(line: 182, column: 7, scope: !2199)
!2210 = !DILocation(line: 184, column: 6, scope: !2199)
!2211 = !DILocation(line: 184, column: 12, scope: !2199)
!2212 = !DILocation(line: 185, column: 8, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2199, file: !464, line: 185, column: 7)
!2214 = !DILocation(line: 185, column: 23, scope: !2213)
!2215 = !DILocation(line: 185, column: 19, scope: !2213)
!2216 = !DILocation(line: 186, column: 5, scope: !2213)
!2217 = !DILocation(line: 187, column: 6, scope: !2199)
!2218 = !DILocation(line: 187, column: 17, scope: !2199)
!2219 = !{!2146, !1328, i64 40}
!2220 = !DILocation(line: 188, column: 6, scope: !2199)
!2221 = !DILocation(line: 188, column: 18, scope: !2199)
!2222 = !{!2146, !1328, i64 48}
!2223 = !DILocation(line: 189, column: 1, scope: !2199)
!2224 = distinct !DISubprogram(name: "quotearg_buffer", scope: !464, file: !464, line: 784, type: !2225, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!71, !25, !71, !79, !71, !480}
!2227 = !{!2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235}
!2228 = !DILocalVariable(name: "buffer", arg: 1, scope: !2224, file: !464, line: 784, type: !25)
!2229 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2224, file: !464, line: 784, type: !71)
!2230 = !DILocalVariable(name: "arg", arg: 3, scope: !2224, file: !464, line: 785, type: !79)
!2231 = !DILocalVariable(name: "argsize", arg: 4, scope: !2224, file: !464, line: 785, type: !71)
!2232 = !DILocalVariable(name: "o", arg: 5, scope: !2224, file: !464, line: 786, type: !480)
!2233 = !DILocalVariable(name: "p", scope: !2224, file: !464, line: 788, type: !480)
!2234 = !DILocalVariable(name: "e", scope: !2224, file: !464, line: 789, type: !23)
!2235 = !DILocalVariable(name: "r", scope: !2224, file: !464, line: 790, type: !71)
!2236 = !DILocation(line: 0, scope: !2224)
!2237 = !DILocation(line: 788, column: 37, scope: !2224)
!2238 = !DILocation(line: 789, column: 11, scope: !2224)
!2239 = !DILocation(line: 791, column: 43, scope: !2224)
!2240 = !DILocation(line: 791, column: 53, scope: !2224)
!2241 = !DILocation(line: 791, column: 60, scope: !2224)
!2242 = !DILocation(line: 792, column: 43, scope: !2224)
!2243 = !DILocation(line: 792, column: 58, scope: !2224)
!2244 = !DILocation(line: 790, column: 14, scope: !2224)
!2245 = !DILocation(line: 793, column: 9, scope: !2224)
!2246 = !DILocation(line: 794, column: 3, scope: !2224)
!2247 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !464, file: !464, line: 256, type: !2248, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2252)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!71, !25, !71, !79, !71, !212, !23, !2250, !79, !79}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2277, !2278, !2279, !2280, !2281, !2284, !2285, !2291, !2294, !2295, !2302, !2305, !2306, !2307, !2308, !2309, !2310}
!2253 = !DILocalVariable(name: "buffer", arg: 1, scope: !2247, file: !464, line: 256, type: !25)
!2254 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2247, file: !464, line: 256, type: !71)
!2255 = !DILocalVariable(name: "arg", arg: 3, scope: !2247, file: !464, line: 257, type: !79)
!2256 = !DILocalVariable(name: "argsize", arg: 4, scope: !2247, file: !464, line: 257, type: !71)
!2257 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2247, file: !464, line: 258, type: !212)
!2258 = !DILocalVariable(name: "flags", arg: 6, scope: !2247, file: !464, line: 258, type: !23)
!2259 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2247, file: !464, line: 259, type: !2250)
!2260 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2247, file: !464, line: 260, type: !79)
!2261 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2247, file: !464, line: 261, type: !79)
!2262 = !DILocalVariable(name: "i", scope: !2247, file: !464, line: 263, type: !71)
!2263 = !DILocalVariable(name: "len", scope: !2247, file: !464, line: 264, type: !71)
!2264 = !DILocalVariable(name: "orig_buffersize", scope: !2247, file: !464, line: 265, type: !71)
!2265 = !DILocalVariable(name: "quote_string", scope: !2247, file: !464, line: 266, type: !79)
!2266 = !DILocalVariable(name: "quote_string_len", scope: !2247, file: !464, line: 267, type: !71)
!2267 = !DILocalVariable(name: "backslash_escapes", scope: !2247, file: !464, line: 268, type: !15)
!2268 = !DILocalVariable(name: "unibyte_locale", scope: !2247, file: !464, line: 269, type: !15)
!2269 = !DILocalVariable(name: "elide_outer_quotes", scope: !2247, file: !464, line: 270, type: !15)
!2270 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2247, file: !464, line: 271, type: !15)
!2271 = !DILocalVariable(name: "encountered_single_quote", scope: !2247, file: !464, line: 272, type: !15)
!2272 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2247, file: !464, line: 273, type: !15)
!2273 = !DILocalVariable(name: "c", scope: !2274, file: !464, line: 402, type: !343)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !464, line: 401, column: 5)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !464, line: 400, column: 3)
!2276 = distinct !DILexicalBlock(scope: !2247, file: !464, line: 400, column: 3)
!2277 = !DILocalVariable(name: "esc", scope: !2274, file: !464, line: 403, type: !343)
!2278 = !DILocalVariable(name: "is_right_quote", scope: !2274, file: !464, line: 404, type: !15)
!2279 = !DILocalVariable(name: "escaping", scope: !2274, file: !464, line: 405, type: !15)
!2280 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2274, file: !464, line: 406, type: !15)
!2281 = !DILocalVariable(name: "m", scope: !2282, file: !464, line: 610, type: !71)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 608, column: 11)
!2283 = distinct !DILexicalBlock(scope: !2274, file: !464, line: 426, column: 9)
!2284 = !DILocalVariable(name: "printable", scope: !2282, file: !464, line: 612, type: !15)
!2285 = !DILocalVariable(name: "mbstate", scope: !2286, file: !464, line: 621, type: !2288)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !464, line: 620, column: 15)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !464, line: 614, column: 17)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2289, line: 6, baseType: !2290)
!2289 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !499, line: 21, baseType: !498)
!2291 = !DILocalVariable(name: "w", scope: !2292, file: !464, line: 631, type: !2293)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !464, line: 630, column: 19)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 74, baseType: !23)
!2294 = !DILocalVariable(name: "bytes", scope: !2292, file: !464, line: 632, type: !71)
!2295 = !DILocalVariable(name: "j", scope: !2296, file: !464, line: 657, type: !71)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !464, line: 656, column: 27)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !464, line: 654, column: 29)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !464, line: 649, column: 23)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !464, line: 641, column: 30)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !464, line: 636, column: 30)
!2301 = distinct !DILexicalBlock(scope: !2292, file: !464, line: 634, column: 25)
!2302 = !DILocalVariable(name: "ilim", scope: !2303, file: !464, line: 684, type: !71)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !464, line: 681, column: 15)
!2304 = distinct !DILexicalBlock(scope: !2282, file: !464, line: 680, column: 17)
!2305 = !DILabel(scope: !2247, name: "process_input", file: !464, line: 314)
!2306 = !DILabel(scope: !2283, name: "c_and_shell_escape", file: !464, line: 512)
!2307 = !DILabel(scope: !2283, name: "c_escape", file: !464, line: 517)
!2308 = !DILabel(scope: !2274, name: "store_escape", file: !464, line: 719)
!2309 = !DILabel(scope: !2274, name: "store_c", file: !464, line: 722)
!2310 = !DILabel(scope: !2247, name: "force_outer_quoting_style", file: !464, line: 763)
!2311 = !DILocation(line: 0, scope: !2247)
!2312 = !DILocation(line: 269, column: 25, scope: !2247)
!2313 = !DILocation(line: 269, column: 36, scope: !2247)
!2314 = !DILocation(line: 270, column: 8, scope: !2247)
!2315 = !DILocation(line: 0, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 526, column: 15)
!2317 = !DILocation(line: 0, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !464, line: 462, column: 19)
!2319 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 455, column: 13)
!2320 = !DILocation(line: 0, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !464, line: 449, column: 20)
!2322 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 428, column: 15)
!2323 = !DILocation(line: 0, scope: !2286)
!2324 = !DILocation(line: 0, scope: !2292)
!2325 = !DILocation(line: 0, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2274, file: !464, line: 712, column: 11)
!2327 = !DILocation(line: 273, column: 3, scope: !2247)
!2328 = !DILocation(line: 265, column: 10, scope: !2247)
!2329 = !DILocation(line: 266, column: 15, scope: !2247)
!2330 = !DILocation(line: 267, column: 10, scope: !2247)
!2331 = !DILocation(line: 268, column: 8, scope: !2247)
!2332 = !DILocation(line: 271, column: 8, scope: !2247)
!2333 = !DILocation(line: 272, column: 8, scope: !2247)
!2334 = !DILocation(line: 273, column: 8, scope: !2247)
!2335 = !DILocation(line: 314, column: 2, scope: !2247)
!2336 = !DILocation(line: 316, column: 3, scope: !2247)
!2337 = !DILocation(line: 323, column: 11, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2247, file: !464, line: 317, column: 5)
!2339 = !DILocation(line: 323, column: 12, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2338, file: !464, line: 323, column: 11)
!2341 = !DILocation(line: 324, column: 9, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !464, line: 324, column: 9)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !464, line: 324, column: 9)
!2344 = !DILocation(line: 324, column: 9, scope: !2343)
!2345 = !DILocation(line: 362, column: 26, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !464, line: 340, column: 11)
!2347 = distinct !DILexicalBlock(scope: !2348, file: !464, line: 339, column: 13)
!2348 = distinct !DILexicalBlock(scope: !2338, file: !464, line: 338, column: 7)
!2349 = !DILocation(line: 363, column: 27, scope: !2346)
!2350 = !DILocation(line: 364, column: 11, scope: !2346)
!2351 = !DILocation(line: 365, column: 14, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !464, line: 365, column: 13)
!2353 = !DILocation(line: 365, column: 13, scope: !2348)
!2354 = !DILocation(line: 366, column: 43, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !464, line: 366, column: 11)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !464, line: 366, column: 11)
!2357 = !DILocation(line: 366, column: 11, scope: !2356)
!2358 = !DILocation(line: 367, column: 13, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !464, line: 367, column: 13)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !464, line: 367, column: 13)
!2361 = !DILocation(line: 367, column: 13, scope: !2360)
!2362 = !DILocation(line: 366, column: 70, scope: !2355)
!2363 = distinct !{!2363, !2357, !2364}
!2364 = !DILocation(line: 367, column: 13, scope: !2356)
!2365 = !DILocation(line: 264, column: 10, scope: !2247)
!2366 = !DILocation(line: 370, column: 28, scope: !2348)
!2367 = !DILocation(line: 372, column: 7, scope: !2338)
!2368 = !DILocation(line: 376, column: 7, scope: !2338)
!2369 = !DILocation(line: 379, column: 7, scope: !2338)
!2370 = !DILocation(line: 381, column: 12, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2338, file: !464, line: 381, column: 11)
!2372 = !DILocation(line: 381, column: 11, scope: !2338)
!2373 = !DILocation(line: 386, column: 12, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2338, file: !464, line: 386, column: 11)
!2375 = !DILocation(line: 386, column: 11, scope: !2338)
!2376 = !DILocation(line: 387, column: 9, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !464, line: 387, column: 9)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !464, line: 387, column: 9)
!2379 = !DILocation(line: 387, column: 9, scope: !2378)
!2380 = !DILocation(line: 394, column: 7, scope: !2338)
!2381 = !DILocation(line: 397, column: 7, scope: !2338)
!2382 = !DILocation(line: 0, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2274, file: !464, line: 408, column: 11)
!2384 = !DILocation(line: 0, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !464, line: 419, column: 15)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !464, line: 418, column: 9)
!2387 = !DILocation(line: 0, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 556, column: 15)
!2389 = !DILocation(line: 0, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 548, column: 15)
!2391 = !DILocation(line: 0, scope: !2297)
!2392 = !DILocation(line: 0, scope: !2304)
!2393 = !DILocation(line: 0, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 509, column: 15)
!2395 = !DILocation(line: 400, column: 8, scope: !2276)
!2396 = !DILocation(line: 0, scope: !2276)
!2397 = !DILocation(line: 400, column: 27, scope: !2275)
!2398 = !DILocation(line: 400, column: 19, scope: !2275)
!2399 = !DILocation(line: 400, column: 41, scope: !2275)
!2400 = !DILocation(line: 400, column: 48, scope: !2275)
!2401 = !DILocation(line: 400, column: 3, scope: !2276)
!2402 = !DILocation(line: 400, column: 60, scope: !2275)
!2403 = !DILocation(line: 0, scope: !2274)
!2404 = !DILocation(line: 409, column: 11, scope: !2383)
!2405 = !DILocation(line: 411, column: 17, scope: !2383)
!2406 = !DILocation(line: 412, column: 39, scope: !2383)
!2407 = !DILocation(line: 416, column: 32, scope: !2383)
!2408 = !DILocation(line: 412, column: 19, scope: !2383)
!2409 = !DILocation(line: 412, column: 15, scope: !2383)
!2410 = !DILocation(line: 417, column: 11, scope: !2383)
!2411 = !DILocation(line: 417, column: 26, scope: !2383)
!2412 = !DILocation(line: 417, column: 14, scope: !2383)
!2413 = !DILocation(line: 417, column: 63, scope: !2383)
!2414 = !DILocation(line: 408, column: 11, scope: !2274)
!2415 = !DILocation(line: 424, column: 11, scope: !2274)
!2416 = !DILocation(line: 425, column: 7, scope: !2274)
!2417 = !DILocation(line: 428, column: 15, scope: !2283)
!2418 = !DILocation(line: 430, column: 15, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !464, line: 430, column: 15)
!2420 = distinct !DILexicalBlock(scope: !2322, file: !464, line: 429, column: 13)
!2421 = !DILocation(line: 430, column: 15, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !464, line: 430, column: 15)
!2423 = !DILocation(line: 430, column: 15, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !464, line: 430, column: 15)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !464, line: 430, column: 15)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !464, line: 430, column: 15)
!2427 = !DILocation(line: 430, column: 15, scope: !2425)
!2428 = !DILocation(line: 430, column: 15, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !464, line: 430, column: 15)
!2430 = distinct !DILexicalBlock(scope: !2426, file: !464, line: 430, column: 15)
!2431 = !DILocation(line: 430, column: 15, scope: !2430)
!2432 = !DILocation(line: 430, column: 15, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !464, line: 430, column: 15)
!2434 = distinct !DILexicalBlock(scope: !2426, file: !464, line: 430, column: 15)
!2435 = !DILocation(line: 430, column: 15, scope: !2434)
!2436 = !DILocation(line: 430, column: 15, scope: !2426)
!2437 = !DILocation(line: 430, column: 15, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !464, line: 430, column: 15)
!2439 = distinct !DILexicalBlock(scope: !2419, file: !464, line: 430, column: 15)
!2440 = !DILocation(line: 430, column: 15, scope: !2439)
!2441 = !DILocation(line: 438, column: 19, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2420, file: !464, line: 437, column: 19)
!2443 = !DILocation(line: 438, column: 24, scope: !2442)
!2444 = !DILocation(line: 438, column: 28, scope: !2442)
!2445 = !DILocation(line: 438, column: 38, scope: !2442)
!2446 = !DILocation(line: 438, column: 48, scope: !2442)
!2447 = !DILocation(line: 438, column: 59, scope: !2442)
!2448 = !DILocation(line: 440, column: 19, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !464, line: 440, column: 19)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !464, line: 440, column: 19)
!2451 = distinct !DILexicalBlock(scope: !2442, file: !464, line: 439, column: 17)
!2452 = !DILocation(line: 440, column: 19, scope: !2450)
!2453 = !DILocation(line: 441, column: 19, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !464, line: 441, column: 19)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !464, line: 441, column: 19)
!2456 = !DILocation(line: 441, column: 19, scope: !2455)
!2457 = !DILocation(line: 442, column: 17, scope: !2451)
!2458 = !DILocation(line: 449, column: 20, scope: !2322)
!2459 = !DILocation(line: 454, column: 11, scope: !2283)
!2460 = !DILocation(line: 457, column: 19, scope: !2319)
!2461 = !DILocation(line: 463, column: 19, scope: !2318)
!2462 = !DILocation(line: 463, column: 24, scope: !2318)
!2463 = !DILocation(line: 463, column: 28, scope: !2318)
!2464 = !DILocation(line: 463, column: 38, scope: !2318)
!2465 = !DILocation(line: 463, column: 47, scope: !2318)
!2466 = !DILocation(line: 463, column: 41, scope: !2318)
!2467 = !DILocation(line: 463, column: 52, scope: !2318)
!2468 = !DILocation(line: 462, column: 19, scope: !2319)
!2469 = !DILocation(line: 464, column: 25, scope: !2318)
!2470 = !DILocation(line: 464, column: 17, scope: !2318)
!2471 = !DILocation(line: 471, column: 25, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2318, file: !464, line: 465, column: 19)
!2473 = !DILocation(line: 475, column: 21, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !464, line: 475, column: 21)
!2475 = distinct !DILexicalBlock(scope: !2472, file: !464, line: 475, column: 21)
!2476 = !DILocation(line: 475, column: 21, scope: !2475)
!2477 = !DILocation(line: 476, column: 21, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !464, line: 476, column: 21)
!2479 = distinct !DILexicalBlock(scope: !2472, file: !464, line: 476, column: 21)
!2480 = !DILocation(line: 476, column: 21, scope: !2479)
!2481 = !DILocation(line: 477, column: 21, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !464, line: 477, column: 21)
!2483 = distinct !DILexicalBlock(scope: !2472, file: !464, line: 477, column: 21)
!2484 = !DILocation(line: 477, column: 21, scope: !2483)
!2485 = !DILocation(line: 478, column: 21, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !464, line: 478, column: 21)
!2487 = distinct !DILexicalBlock(scope: !2472, file: !464, line: 478, column: 21)
!2488 = !DILocation(line: 478, column: 21, scope: !2487)
!2489 = !DILocation(line: 479, column: 21, scope: !2472)
!2490 = !DILocation(line: 492, column: 31, scope: !2283)
!2491 = !DILocation(line: 493, column: 31, scope: !2283)
!2492 = !DILocation(line: 495, column: 31, scope: !2283)
!2493 = !DILocation(line: 496, column: 31, scope: !2283)
!2494 = !DILocation(line: 497, column: 31, scope: !2283)
!2495 = !DILocation(line: 500, column: 15, scope: !2283)
!2496 = !DILocation(line: 502, column: 19, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !464, line: 501, column: 13)
!2498 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 500, column: 15)
!2499 = !DILocation(line: 509, column: 33, scope: !2394)
!2500 = !DILocation(line: 0, scope: !2283)
!2501 = !DILocation(line: 512, column: 9, scope: !2283)
!2502 = !DILocation(line: 514, column: 15, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 513, column: 15)
!2504 = !DILocation(line: 517, column: 9, scope: !2283)
!2505 = !DILocation(line: 518, column: 15, scope: !2283)
!2506 = !DILocation(line: 526, column: 15, scope: !2283)
!2507 = !DILocation(line: 526, column: 40, scope: !2316)
!2508 = !DILocation(line: 526, column: 47, scope: !2316)
!2509 = !DILocation(line: 526, column: 18, scope: !2316)
!2510 = !DILocation(line: 530, column: 17, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2283, file: !464, line: 530, column: 15)
!2512 = !DILocation(line: 530, column: 15, scope: !2283)
!2513 = !DILocation(line: 535, column: 11, scope: !2283)
!2514 = !DILocation(line: 549, column: 15, scope: !2390)
!2515 = !DILocation(line: 556, column: 15, scope: !2283)
!2516 = !DILocation(line: 558, column: 19, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2388, file: !464, line: 557, column: 13)
!2518 = !DILocation(line: 561, column: 19, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2517, file: !464, line: 561, column: 19)
!2520 = !DILocation(line: 561, column: 35, scope: !2519)
!2521 = !DILocation(line: 561, column: 30, scope: !2519)
!2522 = !DILocation(line: 570, column: 15, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !464, line: 570, column: 15)
!2524 = distinct !DILexicalBlock(scope: !2517, file: !464, line: 570, column: 15)
!2525 = !DILocation(line: 570, column: 15, scope: !2524)
!2526 = !DILocation(line: 571, column: 15, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !464, line: 571, column: 15)
!2528 = distinct !DILexicalBlock(scope: !2517, file: !464, line: 571, column: 15)
!2529 = !DILocation(line: 571, column: 15, scope: !2528)
!2530 = !DILocation(line: 572, column: 15, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !464, line: 572, column: 15)
!2532 = distinct !DILexicalBlock(scope: !2517, file: !464, line: 572, column: 15)
!2533 = !DILocation(line: 572, column: 15, scope: !2532)
!2534 = !DILocation(line: 574, column: 13, scope: !2517)
!2535 = !DILocation(line: 614, column: 17, scope: !2282)
!2536 = !DILocation(line: 0, scope: !2282)
!2537 = !DILocation(line: 617, column: 29, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2287, file: !464, line: 615, column: 15)
!2539 = !DILocation(line: 617, column: 27, scope: !2538)
!2540 = !DILocation(line: 618, column: 15, scope: !2538)
!2541 = !DILocation(line: 621, column: 17, scope: !2286)
!2542 = !DILocation(line: 621, column: 27, scope: !2286)
!2543 = !DILocalVariable(name: "__dest", arg: 1, scope: !2544, file: !2545, line: 59, type: !69)
!2544 = distinct !DISubprogram(name: "memset", scope: !2545, file: !2545, line: 59, type: !2546, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2548)
!2545 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!69, !69, !23, !71}
!2548 = !{!2543, !2549, !2550}
!2549 = !DILocalVariable(name: "__ch", arg: 2, scope: !2544, file: !2545, line: 59, type: !23)
!2550 = !DILocalVariable(name: "__len", arg: 3, scope: !2544, file: !2545, line: 59, type: !71)
!2551 = !DILocation(line: 0, scope: !2544, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 622, column: 17, scope: !2286)
!2553 = !DILocation(line: 71, column: 10, scope: !2544, inlinedAt: !2552)
!2554 = !DILocation(line: 626, column: 29, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2286, file: !464, line: 626, column: 21)
!2556 = !DILocation(line: 626, column: 21, scope: !2286)
!2557 = !DILocation(line: 627, column: 29, scope: !2555)
!2558 = !DILocation(line: 627, column: 19, scope: !2555)
!2559 = !DILocation(line: 629, column: 17, scope: !2286)
!2560 = !DILocation(line: 624, column: 19, scope: !2286)
!2561 = !DILocation(line: 625, column: 27, scope: !2286)
!2562 = !DILocation(line: 631, column: 21, scope: !2292)
!2563 = !DILocation(line: 632, column: 56, scope: !2292)
!2564 = !DILocation(line: 632, column: 50, scope: !2292)
!2565 = !DILocation(line: 633, column: 53, scope: !2292)
!2566 = !DILocation(line: 632, column: 36, scope: !2292)
!2567 = !DILocation(line: 634, column: 25, scope: !2292)
!2568 = !DILocation(line: 644, column: 38, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2299, file: !464, line: 642, column: 23)
!2570 = !DILocation(line: 644, column: 48, scope: !2569)
!2571 = !DILocation(line: 644, column: 25, scope: !2569)
!2572 = !DILocation(line: 644, column: 51, scope: !2569)
!2573 = !DILocation(line: 645, column: 28, scope: !2569)
!2574 = !DILocation(line: 644, column: 34, scope: !2569)
!2575 = distinct !{!2575, !2571, !2573}
!2576 = !DILocation(line: 658, column: 43, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !464, line: 658, column: 29)
!2578 = distinct !DILexicalBlock(scope: !2296, file: !464, line: 658, column: 29)
!2579 = !DILocation(line: 655, column: 29, scope: !2297)
!2580 = !DILocation(line: 0, scope: !2296)
!2581 = !DILocation(line: 659, column: 49, scope: !2577)
!2582 = !DILocation(line: 659, column: 39, scope: !2577)
!2583 = !DILocation(line: 659, column: 31, scope: !2577)
!2584 = !DILocation(line: 658, column: 53, scope: !2577)
!2585 = !DILocation(line: 658, column: 29, scope: !2578)
!2586 = distinct !{!2586, !2585, !2587}
!2587 = !DILocation(line: 667, column: 33, scope: !2578)
!2588 = !DILocation(line: 674, column: 19, scope: !2286)
!2589 = !DILocation(line: 670, column: 41, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2298, file: !464, line: 670, column: 29)
!2591 = !DILocation(line: 670, column: 31, scope: !2590)
!2592 = !DILocation(line: 670, column: 29, scope: !2298)
!2593 = !DILocation(line: 672, column: 27, scope: !2298)
!2594 = !DILocation(line: 675, column: 26, scope: !2286)
!2595 = !DILocation(line: 675, column: 24, scope: !2286)
!2596 = !DILocation(line: 674, column: 19, scope: !2292)
!2597 = distinct !{!2597, !2559, !2598}
!2598 = !DILocation(line: 675, column: 44, scope: !2286)
!2599 = !DILocation(line: 676, column: 15, scope: !2287)
!2600 = !DILocation(line: 0, scope: !2287)
!2601 = !DILocation(line: 678, column: 40, scope: !2282)
!2602 = !DILocation(line: 680, column: 19, scope: !2304)
!2603 = !DILocation(line: 680, column: 45, scope: !2304)
!2604 = !DILocation(line: 680, column: 23, scope: !2304)
!2605 = !DILocation(line: 684, column: 33, scope: !2303)
!2606 = !DILocation(line: 0, scope: !2303)
!2607 = !DILocation(line: 686, column: 17, scope: !2303)
!2608 = !DILocation(line: 405, column: 12, scope: !2274)
!2609 = !DILocation(line: 688, column: 43, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !464, line: 688, column: 25)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !464, line: 687, column: 19)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !464, line: 686, column: 17)
!2613 = distinct !DILexicalBlock(scope: !2303, file: !464, line: 686, column: 17)
!2614 = !DILocation(line: 690, column: 25, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !464, line: 690, column: 25)
!2616 = distinct !DILexicalBlock(scope: !2610, file: !464, line: 689, column: 23)
!2617 = !DILocation(line: 690, column: 25, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !464, line: 690, column: 25)
!2619 = !DILocation(line: 690, column: 25, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !464, line: 690, column: 25)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !464, line: 690, column: 25)
!2622 = distinct !DILexicalBlock(scope: !2618, file: !464, line: 690, column: 25)
!2623 = !DILocation(line: 690, column: 25, scope: !2621)
!2624 = !DILocation(line: 690, column: 25, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !464, line: 690, column: 25)
!2626 = distinct !DILexicalBlock(scope: !2622, file: !464, line: 690, column: 25)
!2627 = !DILocation(line: 690, column: 25, scope: !2626)
!2628 = !DILocation(line: 690, column: 25, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !464, line: 690, column: 25)
!2630 = distinct !DILexicalBlock(scope: !2622, file: !464, line: 690, column: 25)
!2631 = !DILocation(line: 690, column: 25, scope: !2630)
!2632 = !DILocation(line: 690, column: 25, scope: !2622)
!2633 = !DILocation(line: 690, column: 25, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !464, line: 690, column: 25)
!2635 = distinct !DILexicalBlock(scope: !2615, file: !464, line: 690, column: 25)
!2636 = !DILocation(line: 690, column: 25, scope: !2635)
!2637 = !DILocation(line: 691, column: 25, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !464, line: 691, column: 25)
!2639 = distinct !DILexicalBlock(scope: !2616, file: !464, line: 691, column: 25)
!2640 = !DILocation(line: 691, column: 25, scope: !2639)
!2641 = !DILocation(line: 692, column: 25, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !464, line: 692, column: 25)
!2643 = distinct !DILexicalBlock(scope: !2616, file: !464, line: 692, column: 25)
!2644 = !DILocation(line: 692, column: 25, scope: !2643)
!2645 = !DILocation(line: 693, column: 38, scope: !2616)
!2646 = !DILocation(line: 693, column: 33, scope: !2616)
!2647 = !DILocation(line: 694, column: 23, scope: !2616)
!2648 = !DILocation(line: 695, column: 30, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2610, file: !464, line: 695, column: 30)
!2650 = !DILocation(line: 695, column: 30, scope: !2610)
!2651 = !DILocation(line: 697, column: 25, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !464, line: 697, column: 25)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !464, line: 697, column: 25)
!2654 = distinct !DILexicalBlock(scope: !2649, file: !464, line: 696, column: 23)
!2655 = !DILocation(line: 697, column: 25, scope: !2653)
!2656 = !DILocation(line: 699, column: 23, scope: !2654)
!2657 = !DILocation(line: 700, column: 35, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2611, file: !464, line: 700, column: 25)
!2659 = !DILocation(line: 700, column: 30, scope: !2658)
!2660 = !DILocation(line: 700, column: 25, scope: !2611)
!2661 = !DILocation(line: 702, column: 21, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !464, line: 702, column: 21)
!2663 = distinct !DILexicalBlock(scope: !2611, file: !464, line: 702, column: 21)
!2664 = !DILocation(line: 702, column: 21, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !464, line: 702, column: 21)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !464, line: 702, column: 21)
!2667 = distinct !DILexicalBlock(scope: !2662, file: !464, line: 702, column: 21)
!2668 = !DILocation(line: 702, column: 21, scope: !2666)
!2669 = !DILocation(line: 702, column: 21, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !464, line: 702, column: 21)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !464, line: 702, column: 21)
!2672 = !DILocation(line: 702, column: 21, scope: !2671)
!2673 = !DILocation(line: 702, column: 21, scope: !2667)
!2674 = !DILocation(line: 0, scope: !2611)
!2675 = !DILocation(line: 703, column: 21, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !464, line: 703, column: 21)
!2677 = distinct !DILexicalBlock(scope: !2611, file: !464, line: 703, column: 21)
!2678 = !DILocation(line: 703, column: 21, scope: !2677)
!2679 = !DILocation(line: 704, column: 25, scope: !2611)
!2680 = !DILocation(line: 686, column: 17, scope: !2612)
!2681 = distinct !{!2681, !2682, !2683}
!2682 = !DILocation(line: 686, column: 17, scope: !2613)
!2683 = !DILocation(line: 705, column: 19, scope: !2613)
!2684 = !DILocation(line: 416, column: 30, scope: !2383)
!2685 = !DILocation(line: 712, column: 34, scope: !2326)
!2686 = !DILocation(line: 715, column: 35, scope: !2326)
!2687 = !DILocation(line: 715, column: 17, scope: !2326)
!2688 = !DILocation(line: 715, column: 47, scope: !2326)
!2689 = !DILocation(line: 715, column: 65, scope: !2326)
!2690 = !DILocation(line: 716, column: 15, scope: !2326)
!2691 = !DILocation(line: 716, column: 11, scope: !2326)
!2692 = !DILocation(line: 712, column: 11, scope: !2274)
!2693 = !DILocation(line: 400, column: 10, scope: !2276)
!2694 = !DILocation(line: 719, column: 5, scope: !2274)
!2695 = !DILocation(line: 720, column: 7, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2274, file: !464, line: 720, column: 7)
!2697 = !DILocation(line: 720, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2696, file: !464, line: 720, column: 7)
!2699 = !DILocation(line: 720, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !464, line: 720, column: 7)
!2701 = distinct !DILexicalBlock(scope: !2702, file: !464, line: 720, column: 7)
!2702 = distinct !DILexicalBlock(scope: !2698, file: !464, line: 720, column: 7)
!2703 = !DILocation(line: 720, column: 7, scope: !2701)
!2704 = !DILocation(line: 720, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !464, line: 720, column: 7)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !464, line: 720, column: 7)
!2707 = !DILocation(line: 720, column: 7, scope: !2706)
!2708 = !DILocation(line: 720, column: 7, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !464, line: 720, column: 7)
!2710 = distinct !DILexicalBlock(scope: !2702, file: !464, line: 720, column: 7)
!2711 = !DILocation(line: 720, column: 7, scope: !2710)
!2712 = !DILocation(line: 720, column: 7, scope: !2702)
!2713 = !DILocation(line: 720, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !464, line: 720, column: 7)
!2715 = distinct !DILexicalBlock(scope: !2696, file: !464, line: 720, column: 7)
!2716 = !DILocation(line: 720, column: 7, scope: !2715)
!2717 = !DILocation(line: 722, column: 5, scope: !2274)
!2718 = !DILocation(line: 723, column: 7, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !464, line: 723, column: 7)
!2720 = distinct !DILexicalBlock(scope: !2274, file: !464, line: 723, column: 7)
!2721 = !DILocation(line: 424, column: 9, scope: !2274)
!2722 = !DILocation(line: 723, column: 7, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !464, line: 723, column: 7)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !464, line: 723, column: 7)
!2725 = distinct !DILexicalBlock(scope: !2719, file: !464, line: 723, column: 7)
!2726 = !DILocation(line: 723, column: 7, scope: !2724)
!2727 = !DILocation(line: 723, column: 7, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !464, line: 723, column: 7)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !464, line: 723, column: 7)
!2730 = !DILocation(line: 723, column: 7, scope: !2729)
!2731 = !DILocation(line: 723, column: 7, scope: !2725)
!2732 = !DILocation(line: 724, column: 7, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !464, line: 724, column: 7)
!2734 = distinct !DILexicalBlock(scope: !2274, file: !464, line: 724, column: 7)
!2735 = !DILocation(line: 724, column: 7, scope: !2734)
!2736 = !DILocation(line: 726, column: 13, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2274, file: !464, line: 726, column: 11)
!2738 = !DILocation(line: 726, column: 11, scope: !2274)
!2739 = !DILocation(line: 728, column: 5, scope: !2275)
!2740 = !DILocation(line: 400, column: 75, scope: !2275)
!2741 = !DILocation(line: 400, column: 3, scope: !2275)
!2742 = distinct !{!2742, !2401, !2743}
!2743 = !DILocation(line: 728, column: 5, scope: !2276)
!2744 = !DILocation(line: 730, column: 11, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2247, file: !464, line: 730, column: 7)
!2746 = !DILocation(line: 730, column: 16, scope: !2745)
!2747 = !DILocation(line: 738, column: 51, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2247, file: !464, line: 738, column: 7)
!2749 = !DILocation(line: 739, column: 10, scope: !2748)
!2750 = !DILocation(line: 741, column: 11, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !464, line: 741, column: 11)
!2752 = distinct !DILexicalBlock(scope: !2748, file: !464, line: 740, column: 5)
!2753 = !DILocation(line: 741, column: 11, scope: !2752)
!2754 = !DILocation(line: 742, column: 16, scope: !2751)
!2755 = !DILocation(line: 742, column: 9, scope: !2751)
!2756 = !DILocation(line: 746, column: 18, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2751, file: !464, line: 746, column: 16)
!2758 = !DILocation(line: 746, column: 32, scope: !2757)
!2759 = !DILocation(line: 746, column: 29, scope: !2757)
!2760 = !DILocation(line: 755, column: 7, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2247, file: !464, line: 755, column: 7)
!2762 = !DILocation(line: 755, column: 20, scope: !2761)
!2763 = !DILocation(line: 756, column: 12, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !464, line: 756, column: 5)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !464, line: 756, column: 5)
!2766 = !DILocation(line: 756, column: 5, scope: !2765)
!2767 = !DILocation(line: 757, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !464, line: 757, column: 7)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !464, line: 757, column: 7)
!2770 = !DILocation(line: 757, column: 7, scope: !2769)
!2771 = !DILocation(line: 756, column: 39, scope: !2764)
!2772 = distinct !{!2772, !2766, !2773}
!2773 = !DILocation(line: 757, column: 7, scope: !2765)
!2774 = !DILocation(line: 759, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2247, file: !464, line: 759, column: 7)
!2776 = !DILocation(line: 759, column: 7, scope: !2247)
!2777 = !DILocation(line: 760, column: 5, scope: !2775)
!2778 = !DILocation(line: 760, column: 17, scope: !2775)
!2779 = !DILocation(line: 763, column: 2, scope: !2247)
!2780 = !DILocation(line: 766, column: 51, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2247, file: !464, line: 766, column: 7)
!2782 = !DILocation(line: 766, column: 21, scope: !2781)
!2783 = !DILocation(line: 770, column: 42, scope: !2247)
!2784 = !DILocation(line: 768, column: 10, scope: !2247)
!2785 = !DILocation(line: 768, column: 3, scope: !2247)
!2786 = !DILocation(line: 772, column: 1, scope: !2247)
!2787 = distinct !DISubprogram(name: "gettext_quote", scope: !464, file: !464, line: 207, type: !2788, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!79, !79, !212}
!2790 = !{!2791, !2792, !2793, !2794}
!2791 = !DILocalVariable(name: "msgid", arg: 1, scope: !2787, file: !464, line: 207, type: !79)
!2792 = !DILocalVariable(name: "s", arg: 2, scope: !2787, file: !464, line: 207, type: !212)
!2793 = !DILocalVariable(name: "translation", scope: !2787, file: !464, line: 209, type: !79)
!2794 = !DILocalVariable(name: "locale_code", scope: !2787, file: !464, line: 210, type: !79)
!2795 = !DILocation(line: 0, scope: !2787)
!2796 = !DILocation(line: 209, column: 29, scope: !2787)
!2797 = !DILocation(line: 212, column: 19, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2787, file: !464, line: 212, column: 7)
!2799 = !DILocation(line: 212, column: 7, scope: !2787)
!2800 = !DILocation(line: 233, column: 17, scope: !2787)
!2801 = !DILocalVariable(name: "s1", arg: 1, scope: !2802, file: !2803, line: 160, type: !79)
!2802 = distinct !DISubprogram(name: "strcaseeq0", scope: !2803, file: !2803, line: 160, type: !2804, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2806)
!2803 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!2806 = !{!2801, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816}
!2807 = !DILocalVariable(name: "s2", arg: 2, scope: !2802, file: !2803, line: 160, type: !79)
!2808 = !DILocalVariable(name: "s20", arg: 3, scope: !2802, file: !2803, line: 160, type: !26)
!2809 = !DILocalVariable(name: "s21", arg: 4, scope: !2802, file: !2803, line: 160, type: !26)
!2810 = !DILocalVariable(name: "s22", arg: 5, scope: !2802, file: !2803, line: 160, type: !26)
!2811 = !DILocalVariable(name: "s23", arg: 6, scope: !2802, file: !2803, line: 160, type: !26)
!2812 = !DILocalVariable(name: "s24", arg: 7, scope: !2802, file: !2803, line: 160, type: !26)
!2813 = !DILocalVariable(name: "s25", arg: 8, scope: !2802, file: !2803, line: 160, type: !26)
!2814 = !DILocalVariable(name: "s26", arg: 9, scope: !2802, file: !2803, line: 160, type: !26)
!2815 = !DILocalVariable(name: "s27", arg: 10, scope: !2802, file: !2803, line: 160, type: !26)
!2816 = !DILocalVariable(name: "s28", arg: 11, scope: !2802, file: !2803, line: 160, type: !26)
!2817 = !DILocation(line: 0, scope: !2802, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 234, column: 7, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2787, file: !464, line: 234, column: 7)
!2820 = !DILocation(line: 162, column: 7, scope: !2821, inlinedAt: !2818)
!2821 = distinct !DILexicalBlock(scope: !2802, file: !2803, line: 162, column: 7)
!2822 = !DILocalVariable(name: "s1", arg: 1, scope: !2823, file: !2803, line: 146, type: !79)
!2823 = distinct !DISubprogram(name: "strcaseeq1", scope: !2803, file: !2803, line: 146, type: !2824, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2826)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26, !26}
!2826 = !{!2822, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835}
!2827 = !DILocalVariable(name: "s2", arg: 2, scope: !2823, file: !2803, line: 146, type: !79)
!2828 = !DILocalVariable(name: "s21", arg: 3, scope: !2823, file: !2803, line: 146, type: !26)
!2829 = !DILocalVariable(name: "s22", arg: 4, scope: !2823, file: !2803, line: 146, type: !26)
!2830 = !DILocalVariable(name: "s23", arg: 5, scope: !2823, file: !2803, line: 146, type: !26)
!2831 = !DILocalVariable(name: "s24", arg: 6, scope: !2823, file: !2803, line: 146, type: !26)
!2832 = !DILocalVariable(name: "s25", arg: 7, scope: !2823, file: !2803, line: 146, type: !26)
!2833 = !DILocalVariable(name: "s26", arg: 8, scope: !2823, file: !2803, line: 146, type: !26)
!2834 = !DILocalVariable(name: "s27", arg: 9, scope: !2823, file: !2803, line: 146, type: !26)
!2835 = !DILocalVariable(name: "s28", arg: 10, scope: !2823, file: !2803, line: 146, type: !26)
!2836 = !DILocation(line: 0, scope: !2823, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 167, column: 16, scope: !2838, inlinedAt: !2818)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !2803, line: 164, column: 11)
!2839 = distinct !DILexicalBlock(scope: !2821, file: !2803, line: 163, column: 5)
!2840 = !DILocation(line: 148, column: 7, scope: !2841, inlinedAt: !2837)
!2841 = distinct !DILexicalBlock(scope: !2823, file: !2803, line: 148, column: 7)
!2842 = !DILocalVariable(name: "s1", arg: 1, scope: !2843, file: !2803, line: 132, type: !79)
!2843 = distinct !DISubprogram(name: "strcaseeq2", scope: !2803, file: !2803, line: 132, type: !2844, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26}
!2846 = !{!2842, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854}
!2847 = !DILocalVariable(name: "s2", arg: 2, scope: !2843, file: !2803, line: 132, type: !79)
!2848 = !DILocalVariable(name: "s22", arg: 3, scope: !2843, file: !2803, line: 132, type: !26)
!2849 = !DILocalVariable(name: "s23", arg: 4, scope: !2843, file: !2803, line: 132, type: !26)
!2850 = !DILocalVariable(name: "s24", arg: 5, scope: !2843, file: !2803, line: 132, type: !26)
!2851 = !DILocalVariable(name: "s25", arg: 6, scope: !2843, file: !2803, line: 132, type: !26)
!2852 = !DILocalVariable(name: "s26", arg: 7, scope: !2843, file: !2803, line: 132, type: !26)
!2853 = !DILocalVariable(name: "s27", arg: 8, scope: !2843, file: !2803, line: 132, type: !26)
!2854 = !DILocalVariable(name: "s28", arg: 9, scope: !2843, file: !2803, line: 132, type: !26)
!2855 = !DILocation(line: 0, scope: !2843, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 153, column: 16, scope: !2857, inlinedAt: !2837)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !2803, line: 150, column: 11)
!2858 = distinct !DILexicalBlock(scope: !2841, file: !2803, line: 149, column: 5)
!2859 = !DILocation(line: 134, column: 7, scope: !2860, inlinedAt: !2856)
!2860 = distinct !DILexicalBlock(scope: !2843, file: !2803, line: 134, column: 7)
!2861 = !DILocalVariable(name: "s1", arg: 1, scope: !2862, file: !2803, line: 118, type: !79)
!2862 = distinct !DISubprogram(name: "strcaseeq3", scope: !2803, file: !2803, line: 118, type: !2863, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26}
!2865 = !{!2861, !2866, !2867, !2868, !2869, !2870, !2871, !2872}
!2866 = !DILocalVariable(name: "s2", arg: 2, scope: !2862, file: !2803, line: 118, type: !79)
!2867 = !DILocalVariable(name: "s23", arg: 3, scope: !2862, file: !2803, line: 118, type: !26)
!2868 = !DILocalVariable(name: "s24", arg: 4, scope: !2862, file: !2803, line: 118, type: !26)
!2869 = !DILocalVariable(name: "s25", arg: 5, scope: !2862, file: !2803, line: 118, type: !26)
!2870 = !DILocalVariable(name: "s26", arg: 6, scope: !2862, file: !2803, line: 118, type: !26)
!2871 = !DILocalVariable(name: "s27", arg: 7, scope: !2862, file: !2803, line: 118, type: !26)
!2872 = !DILocalVariable(name: "s28", arg: 8, scope: !2862, file: !2803, line: 118, type: !26)
!2873 = !DILocation(line: 0, scope: !2862, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 139, column: 16, scope: !2875, inlinedAt: !2856)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !2803, line: 136, column: 11)
!2876 = distinct !DILexicalBlock(scope: !2860, file: !2803, line: 135, column: 5)
!2877 = !DILocation(line: 120, column: 7, scope: !2878, inlinedAt: !2874)
!2878 = distinct !DILexicalBlock(scope: !2862, file: !2803, line: 120, column: 7)
!2879 = !DILocation(line: 120, column: 7, scope: !2862, inlinedAt: !2874)
!2880 = !DILocalVariable(name: "s1", arg: 1, scope: !2881, file: !2803, line: 104, type: !79)
!2881 = distinct !DISubprogram(name: "strcaseeq4", scope: !2803, file: !2803, line: 104, type: !2882, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!23, !79, !79, !26, !26, !26, !26, !26}
!2884 = !{!2880, !2885, !2886, !2887, !2888, !2889, !2890}
!2885 = !DILocalVariable(name: "s2", arg: 2, scope: !2881, file: !2803, line: 104, type: !79)
!2886 = !DILocalVariable(name: "s24", arg: 3, scope: !2881, file: !2803, line: 104, type: !26)
!2887 = !DILocalVariable(name: "s25", arg: 4, scope: !2881, file: !2803, line: 104, type: !26)
!2888 = !DILocalVariable(name: "s26", arg: 5, scope: !2881, file: !2803, line: 104, type: !26)
!2889 = !DILocalVariable(name: "s27", arg: 6, scope: !2881, file: !2803, line: 104, type: !26)
!2890 = !DILocalVariable(name: "s28", arg: 7, scope: !2881, file: !2803, line: 104, type: !26)
!2891 = !DILocation(line: 0, scope: !2881, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 125, column: 16, scope: !2893, inlinedAt: !2874)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !2803, line: 122, column: 11)
!2894 = distinct !DILexicalBlock(scope: !2878, file: !2803, line: 121, column: 5)
!2895 = !DILocation(line: 106, column: 7, scope: !2896, inlinedAt: !2892)
!2896 = distinct !DILexicalBlock(scope: !2881, file: !2803, line: 106, column: 7)
!2897 = !DILocation(line: 106, column: 7, scope: !2881, inlinedAt: !2892)
!2898 = !DILocalVariable(name: "s1", arg: 1, scope: !2899, file: !2803, line: 90, type: !79)
!2899 = distinct !DISubprogram(name: "strcaseeq5", scope: !2803, file: !2803, line: 90, type: !2900, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!23, !79, !79, !26, !26, !26, !26}
!2902 = !{!2898, !2903, !2904, !2905, !2906, !2907}
!2903 = !DILocalVariable(name: "s2", arg: 2, scope: !2899, file: !2803, line: 90, type: !79)
!2904 = !DILocalVariable(name: "s25", arg: 3, scope: !2899, file: !2803, line: 90, type: !26)
!2905 = !DILocalVariable(name: "s26", arg: 4, scope: !2899, file: !2803, line: 90, type: !26)
!2906 = !DILocalVariable(name: "s27", arg: 5, scope: !2899, file: !2803, line: 90, type: !26)
!2907 = !DILocalVariable(name: "s28", arg: 6, scope: !2899, file: !2803, line: 90, type: !26)
!2908 = !DILocation(line: 0, scope: !2899, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 111, column: 16, scope: !2910, inlinedAt: !2892)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !2803, line: 108, column: 11)
!2911 = distinct !DILexicalBlock(scope: !2896, file: !2803, line: 107, column: 5)
!2912 = !DILocation(line: 92, column: 7, scope: !2913, inlinedAt: !2909)
!2913 = distinct !DILexicalBlock(scope: !2899, file: !2803, line: 92, column: 7)
!2914 = !DILocation(line: 92, column: 7, scope: !2899, inlinedAt: !2909)
!2915 = !DILocation(line: 235, column: 12, scope: !2819)
!2916 = !DILocation(line: 235, column: 21, scope: !2819)
!2917 = !DILocation(line: 235, column: 5, scope: !2819)
!2918 = !DILocation(line: 0, scope: !2823, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 167, column: 16, scope: !2838, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 236, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2787, file: !464, line: 236, column: 7)
!2922 = !DILocation(line: 148, column: 7, scope: !2841, inlinedAt: !2919)
!2923 = !DILocation(line: 0, scope: !2843, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 153, column: 16, scope: !2857, inlinedAt: !2919)
!2925 = !DILocation(line: 134, column: 7, scope: !2860, inlinedAt: !2924)
!2926 = !DILocation(line: 134, column: 7, scope: !2843, inlinedAt: !2924)
!2927 = !DILocation(line: 0, scope: !2862, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 139, column: 16, scope: !2875, inlinedAt: !2924)
!2929 = !DILocation(line: 120, column: 7, scope: !2878, inlinedAt: !2928)
!2930 = !DILocation(line: 120, column: 7, scope: !2862, inlinedAt: !2928)
!2931 = !DILocation(line: 0, scope: !2881, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 125, column: 16, scope: !2893, inlinedAt: !2928)
!2933 = !DILocation(line: 106, column: 7, scope: !2896, inlinedAt: !2932)
!2934 = !DILocation(line: 106, column: 7, scope: !2881, inlinedAt: !2932)
!2935 = !DILocation(line: 0, scope: !2899, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 111, column: 16, scope: !2910, inlinedAt: !2932)
!2937 = !DILocation(line: 92, column: 7, scope: !2913, inlinedAt: !2936)
!2938 = !DILocation(line: 92, column: 7, scope: !2899, inlinedAt: !2936)
!2939 = !DILocalVariable(name: "s1", arg: 1, scope: !2940, file: !2803, line: 76, type: !79)
!2940 = distinct !DISubprogram(name: "strcaseeq6", scope: !2803, file: !2803, line: 76, type: !2941, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!23, !79, !79, !26, !26, !26}
!2943 = !{!2939, !2944, !2945, !2946, !2947}
!2944 = !DILocalVariable(name: "s2", arg: 2, scope: !2940, file: !2803, line: 76, type: !79)
!2945 = !DILocalVariable(name: "s26", arg: 3, scope: !2940, file: !2803, line: 76, type: !26)
!2946 = !DILocalVariable(name: "s27", arg: 4, scope: !2940, file: !2803, line: 76, type: !26)
!2947 = !DILocalVariable(name: "s28", arg: 5, scope: !2940, file: !2803, line: 76, type: !26)
!2948 = !DILocation(line: 0, scope: !2940, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 97, column: 16, scope: !2950, inlinedAt: !2936)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !2803, line: 94, column: 11)
!2951 = distinct !DILexicalBlock(scope: !2913, file: !2803, line: 93, column: 5)
!2952 = !DILocation(line: 78, column: 7, scope: !2953, inlinedAt: !2949)
!2953 = distinct !DILexicalBlock(scope: !2940, file: !2803, line: 78, column: 7)
!2954 = !DILocation(line: 78, column: 7, scope: !2940, inlinedAt: !2949)
!2955 = !DILocalVariable(name: "s1", arg: 1, scope: !2956, file: !2803, line: 62, type: !79)
!2956 = distinct !DISubprogram(name: "strcaseeq7", scope: !2803, file: !2803, line: 62, type: !2957, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!23, !79, !79, !26, !26}
!2959 = !{!2955, !2960, !2961, !2962}
!2960 = !DILocalVariable(name: "s2", arg: 2, scope: !2956, file: !2803, line: 62, type: !79)
!2961 = !DILocalVariable(name: "s27", arg: 3, scope: !2956, file: !2803, line: 62, type: !26)
!2962 = !DILocalVariable(name: "s28", arg: 4, scope: !2956, file: !2803, line: 62, type: !26)
!2963 = !DILocation(line: 0, scope: !2956, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 83, column: 16, scope: !2965, inlinedAt: !2949)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !2803, line: 80, column: 11)
!2966 = distinct !DILexicalBlock(scope: !2953, file: !2803, line: 79, column: 5)
!2967 = !DILocation(line: 64, column: 7, scope: !2968, inlinedAt: !2964)
!2968 = distinct !DILexicalBlock(scope: !2956, file: !2803, line: 64, column: 7)
!2969 = !DILocation(line: 236, column: 7, scope: !2787)
!2970 = !DILocation(line: 237, column: 12, scope: !2921)
!2971 = !DILocation(line: 237, column: 21, scope: !2921)
!2972 = !DILocation(line: 237, column: 5, scope: !2921)
!2973 = !DILocation(line: 239, column: 13, scope: !2787)
!2974 = !DILocation(line: 239, column: 11, scope: !2787)
!2975 = !DILocation(line: 239, column: 3, scope: !2787)
!2976 = !DILocation(line: 240, column: 1, scope: !2787)
!2977 = distinct !DISubprogram(name: "quotearg_alloc", scope: !464, file: !464, line: 799, type: !2978, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!25, !79, !71, !480}
!2980 = !{!2981, !2982, !2983}
!2981 = !DILocalVariable(name: "arg", arg: 1, scope: !2977, file: !464, line: 799, type: !79)
!2982 = !DILocalVariable(name: "argsize", arg: 2, scope: !2977, file: !464, line: 799, type: !71)
!2983 = !DILocalVariable(name: "o", arg: 3, scope: !2977, file: !464, line: 800, type: !480)
!2984 = !DILocation(line: 0, scope: !2977)
!2985 = !DILocalVariable(name: "arg", arg: 1, scope: !2986, file: !464, line: 812, type: !79)
!2986 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !464, file: !464, line: 812, type: !2987, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!25, !79, !71, !682, !480}
!2989 = !{!2985, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997}
!2990 = !DILocalVariable(name: "argsize", arg: 2, scope: !2986, file: !464, line: 812, type: !71)
!2991 = !DILocalVariable(name: "size", arg: 3, scope: !2986, file: !464, line: 812, type: !682)
!2992 = !DILocalVariable(name: "o", arg: 4, scope: !2986, file: !464, line: 813, type: !480)
!2993 = !DILocalVariable(name: "p", scope: !2986, file: !464, line: 815, type: !480)
!2994 = !DILocalVariable(name: "e", scope: !2986, file: !464, line: 816, type: !23)
!2995 = !DILocalVariable(name: "flags", scope: !2986, file: !464, line: 818, type: !23)
!2996 = !DILocalVariable(name: "bufsize", scope: !2986, file: !464, line: 819, type: !71)
!2997 = !DILocalVariable(name: "buf", scope: !2986, file: !464, line: 823, type: !25)
!2998 = !DILocation(line: 0, scope: !2986, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 802, column: 10, scope: !2977)
!3000 = !DILocation(line: 815, column: 37, scope: !2986, inlinedAt: !2999)
!3001 = !DILocation(line: 816, column: 11, scope: !2986, inlinedAt: !2999)
!3002 = !DILocation(line: 818, column: 18, scope: !2986, inlinedAt: !2999)
!3003 = !DILocation(line: 818, column: 24, scope: !2986, inlinedAt: !2999)
!3004 = !DILocation(line: 819, column: 69, scope: !2986, inlinedAt: !2999)
!3005 = !DILocation(line: 820, column: 53, scope: !2986, inlinedAt: !2999)
!3006 = !DILocation(line: 821, column: 49, scope: !2986, inlinedAt: !2999)
!3007 = !DILocation(line: 822, column: 49, scope: !2986, inlinedAt: !2999)
!3008 = !DILocation(line: 819, column: 20, scope: !2986, inlinedAt: !2999)
!3009 = !DILocation(line: 822, column: 62, scope: !2986, inlinedAt: !2999)
!3010 = !DILocalVariable(name: "n", arg: 1, scope: !3011, file: !473, line: 216, type: !71)
!3011 = distinct !DISubprogram(name: "xcharalloc", scope: !473, file: !473, line: 216, type: !3012, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3014)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!25, !71}
!3014 = !{!3010}
!3015 = !DILocation(line: 0, scope: !3011, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 823, column: 15, scope: !2986, inlinedAt: !2999)
!3017 = !DILocation(line: 218, column: 10, scope: !3011, inlinedAt: !3016)
!3018 = !DILocation(line: 824, column: 60, scope: !2986, inlinedAt: !2999)
!3019 = !DILocation(line: 826, column: 32, scope: !2986, inlinedAt: !2999)
!3020 = !DILocation(line: 826, column: 47, scope: !2986, inlinedAt: !2999)
!3021 = !DILocation(line: 824, column: 3, scope: !2986, inlinedAt: !2999)
!3022 = !DILocation(line: 827, column: 9, scope: !2986, inlinedAt: !2999)
!3023 = !DILocation(line: 802, column: 3, scope: !2977)
!3024 = !DILocation(line: 0, scope: !2986)
!3025 = !DILocation(line: 815, column: 37, scope: !2986)
!3026 = !DILocation(line: 816, column: 11, scope: !2986)
!3027 = !DILocation(line: 818, column: 18, scope: !2986)
!3028 = !DILocation(line: 818, column: 27, scope: !2986)
!3029 = !DILocation(line: 818, column: 24, scope: !2986)
!3030 = !DILocation(line: 819, column: 69, scope: !2986)
!3031 = !DILocation(line: 820, column: 53, scope: !2986)
!3032 = !DILocation(line: 821, column: 49, scope: !2986)
!3033 = !DILocation(line: 822, column: 49, scope: !2986)
!3034 = !DILocation(line: 819, column: 20, scope: !2986)
!3035 = !DILocation(line: 822, column: 62, scope: !2986)
!3036 = !DILocation(line: 0, scope: !3011, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 823, column: 15, scope: !2986)
!3038 = !DILocation(line: 218, column: 10, scope: !3011, inlinedAt: !3037)
!3039 = !DILocation(line: 824, column: 60, scope: !2986)
!3040 = !DILocation(line: 826, column: 32, scope: !2986)
!3041 = !DILocation(line: 826, column: 47, scope: !2986)
!3042 = !DILocation(line: 824, column: 3, scope: !2986)
!3043 = !DILocation(line: 827, column: 9, scope: !2986)
!3044 = !DILocation(line: 828, column: 7, scope: !2986)
!3045 = !DILocation(line: 829, column: 11, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2986, file: !464, line: 828, column: 7)
!3047 = !DILocation(line: 829, column: 5, scope: !3046)
!3048 = !DILocation(line: 830, column: 3, scope: !2986)
!3049 = distinct !DISubprogram(name: "quotearg_free", scope: !464, file: !464, line: 848, type: !270, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3050)
!3050 = !{!3051, !3052}
!3051 = !DILocalVariable(name: "sv", scope: !3049, file: !464, line: 850, type: !547)
!3052 = !DILocalVariable(name: "i", scope: !3049, file: !464, line: 851, type: !23)
!3053 = !DILocation(line: 850, column: 24, scope: !3049)
!3054 = !DILocation(line: 0, scope: !3049)
!3055 = !DILocation(line: 852, column: 19, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !464, line: 852, column: 3)
!3057 = distinct !DILexicalBlock(scope: !3049, file: !464, line: 852, column: 3)
!3058 = !DILocation(line: 852, column: 17, scope: !3056)
!3059 = !DILocation(line: 852, column: 3, scope: !3057)
!3060 = !DILocation(line: 853, column: 17, scope: !3056)
!3061 = !{!3062, !1328, i64 8}
!3062 = !{!"slotvec", !1523, i64 0, !1328, i64 8}
!3063 = !DILocation(line: 853, column: 5, scope: !3056)
!3064 = !DILocation(line: 852, column: 28, scope: !3056)
!3065 = distinct !{!3065, !3059, !3066}
!3066 = !DILocation(line: 853, column: 20, scope: !3057)
!3067 = !DILocation(line: 854, column: 13, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3049, file: !464, line: 854, column: 7)
!3069 = !DILocation(line: 854, column: 17, scope: !3068)
!3070 = !DILocation(line: 854, column: 7, scope: !3049)
!3071 = !DILocation(line: 856, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3068, file: !464, line: 855, column: 5)
!3073 = !DILocation(line: 857, column: 21, scope: !3072)
!3074 = !{!3062, !1523, i64 0}
!3075 = !DILocation(line: 858, column: 20, scope: !3072)
!3076 = !DILocation(line: 859, column: 5, scope: !3072)
!3077 = !DILocation(line: 860, column: 10, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3049, file: !464, line: 860, column: 7)
!3079 = !DILocation(line: 860, column: 7, scope: !3049)
!3080 = !DILocation(line: 862, column: 13, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3078, file: !464, line: 861, column: 5)
!3082 = !DILocation(line: 862, column: 7, scope: !3081)
!3083 = !DILocation(line: 863, column: 15, scope: !3081)
!3084 = !DILocation(line: 864, column: 5, scope: !3081)
!3085 = !DILocation(line: 865, column: 10, scope: !3049)
!3086 = !DILocation(line: 866, column: 1, scope: !3049)
!3087 = distinct !DISubprogram(name: "quotearg_n", scope: !464, file: !464, line: 931, type: !257, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3088)
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3087, file: !464, line: 931, type: !23)
!3090 = !DILocalVariable(name: "arg", arg: 2, scope: !3087, file: !464, line: 931, type: !79)
!3091 = !DILocation(line: 0, scope: !3087)
!3092 = !DILocation(line: 933, column: 10, scope: !3087)
!3093 = !DILocation(line: 933, column: 3, scope: !3087)
!3094 = distinct !DISubprogram(name: "quotearg_n_options", scope: !464, file: !464, line: 877, type: !3095, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3097)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!25, !23, !79, !71, !480}
!3097 = !{!3098, !3099, !3100, !3101, !3102, !3103, !3104, !3107, !3108, !3110, !3111, !3112}
!3098 = !DILocalVariable(name: "n", arg: 1, scope: !3094, file: !464, line: 877, type: !23)
!3099 = !DILocalVariable(name: "arg", arg: 2, scope: !3094, file: !464, line: 877, type: !79)
!3100 = !DILocalVariable(name: "argsize", arg: 3, scope: !3094, file: !464, line: 877, type: !71)
!3101 = !DILocalVariable(name: "options", arg: 4, scope: !3094, file: !464, line: 878, type: !480)
!3102 = !DILocalVariable(name: "e", scope: !3094, file: !464, line: 880, type: !23)
!3103 = !DILocalVariable(name: "sv", scope: !3094, file: !464, line: 882, type: !547)
!3104 = !DILocalVariable(name: "preallocated", scope: !3105, file: !464, line: 889, type: !15)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !464, line: 888, column: 5)
!3106 = distinct !DILexicalBlock(scope: !3094, file: !464, line: 887, column: 7)
!3107 = !DILocalVariable(name: "nmax", scope: !3105, file: !464, line: 890, type: !23)
!3108 = !DILocalVariable(name: "size", scope: !3109, file: !464, line: 903, type: !71)
!3109 = distinct !DILexicalBlock(scope: !3094, file: !464, line: 902, column: 3)
!3110 = !DILocalVariable(name: "val", scope: !3109, file: !464, line: 904, type: !25)
!3111 = !DILocalVariable(name: "flags", scope: !3109, file: !464, line: 906, type: !23)
!3112 = !DILocalVariable(name: "qsize", scope: !3109, file: !464, line: 907, type: !71)
!3113 = !DILocation(line: 0, scope: !3094)
!3114 = !DILocation(line: 880, column: 11, scope: !3094)
!3115 = !DILocation(line: 882, column: 24, scope: !3094)
!3116 = !DILocation(line: 884, column: 9, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3094, file: !464, line: 884, column: 7)
!3118 = !DILocation(line: 884, column: 7, scope: !3094)
!3119 = !DILocation(line: 885, column: 5, scope: !3117)
!3120 = !DILocation(line: 887, column: 7, scope: !3106)
!3121 = !DILocation(line: 887, column: 14, scope: !3106)
!3122 = !DILocation(line: 887, column: 7, scope: !3094)
!3123 = !DILocation(line: 889, column: 31, scope: !3105)
!3124 = !DILocation(line: 0, scope: !3105)
!3125 = !DILocation(line: 892, column: 16, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3105, file: !464, line: 892, column: 11)
!3127 = !DILocation(line: 892, column: 11, scope: !3105)
!3128 = !DILocation(line: 893, column: 9, scope: !3126)
!3129 = !DILocation(line: 895, column: 32, scope: !3105)
!3130 = !DILocation(line: 895, column: 61, scope: !3105)
!3131 = !DILocation(line: 895, column: 58, scope: !3105)
!3132 = !DILocation(line: 895, column: 66, scope: !3105)
!3133 = !DILocation(line: 895, column: 22, scope: !3105)
!3134 = !DILocation(line: 895, column: 15, scope: !3105)
!3135 = !DILocation(line: 896, column: 11, scope: !3105)
!3136 = !DILocation(line: 897, column: 15, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3105, file: !464, line: 896, column: 11)
!3138 = !{i64 0, i64 8, !1548, i64 8, i64 8, !1327}
!3139 = !DILocation(line: 897, column: 9, scope: !3137)
!3140 = !DILocation(line: 898, column: 20, scope: !3105)
!3141 = !DILocation(line: 898, column: 18, scope: !3105)
!3142 = !DILocation(line: 898, column: 15, scope: !3105)
!3143 = !DILocation(line: 898, column: 38, scope: !3105)
!3144 = !DILocation(line: 898, column: 31, scope: !3105)
!3145 = !DILocation(line: 898, column: 48, scope: !3105)
!3146 = !DILocation(line: 0, scope: !2544, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 898, column: 7, scope: !3105)
!3148 = !DILocation(line: 71, column: 10, scope: !2544, inlinedAt: !3147)
!3149 = !DILocation(line: 899, column: 14, scope: !3105)
!3150 = !DILocation(line: 900, column: 5, scope: !3105)
!3151 = !DILocation(line: 903, column: 19, scope: !3109)
!3152 = !DILocation(line: 903, column: 25, scope: !3109)
!3153 = !DILocation(line: 0, scope: !3109)
!3154 = !DILocation(line: 904, column: 23, scope: !3109)
!3155 = !DILocation(line: 906, column: 26, scope: !3109)
!3156 = !DILocation(line: 906, column: 32, scope: !3109)
!3157 = !DILocation(line: 908, column: 55, scope: !3109)
!3158 = !DILocation(line: 909, column: 46, scope: !3109)
!3159 = !DILocation(line: 910, column: 55, scope: !3109)
!3160 = !DILocation(line: 911, column: 55, scope: !3109)
!3161 = !DILocation(line: 907, column: 20, scope: !3109)
!3162 = !DILocation(line: 913, column: 14, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3109, file: !464, line: 913, column: 9)
!3164 = !DILocation(line: 913, column: 9, scope: !3109)
!3165 = !DILocation(line: 915, column: 35, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3163, file: !464, line: 914, column: 7)
!3167 = !DILocation(line: 915, column: 20, scope: !3166)
!3168 = !DILocation(line: 916, column: 17, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3166, file: !464, line: 916, column: 13)
!3170 = !DILocation(line: 916, column: 13, scope: !3166)
!3171 = !DILocation(line: 917, column: 11, scope: !3169)
!3172 = !DILocation(line: 0, scope: !3011, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 918, column: 27, scope: !3166)
!3174 = !DILocation(line: 218, column: 10, scope: !3011, inlinedAt: !3173)
!3175 = !DILocation(line: 918, column: 19, scope: !3166)
!3176 = !DILocation(line: 919, column: 69, scope: !3166)
!3177 = !DILocation(line: 921, column: 44, scope: !3166)
!3178 = !DILocation(line: 922, column: 44, scope: !3166)
!3179 = !DILocation(line: 919, column: 9, scope: !3166)
!3180 = !DILocation(line: 923, column: 7, scope: !3166)
!3181 = !DILocation(line: 925, column: 11, scope: !3109)
!3182 = !DILocation(line: 926, column: 5, scope: !3109)
!3183 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !464, file: !464, line: 937, type: !3184, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!25, !23, !79, !71}
!3186 = !{!3187, !3188, !3189}
!3187 = !DILocalVariable(name: "n", arg: 1, scope: !3183, file: !464, line: 937, type: !23)
!3188 = !DILocalVariable(name: "arg", arg: 2, scope: !3183, file: !464, line: 937, type: !79)
!3189 = !DILocalVariable(name: "argsize", arg: 3, scope: !3183, file: !464, line: 937, type: !71)
!3190 = !DILocation(line: 0, scope: !3183)
!3191 = !DILocation(line: 939, column: 10, scope: !3183)
!3192 = !DILocation(line: 939, column: 3, scope: !3183)
!3193 = distinct !DISubprogram(name: "quotearg", scope: !464, file: !464, line: 943, type: !263, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3194)
!3194 = !{!3195}
!3195 = !DILocalVariable(name: "arg", arg: 1, scope: !3193, file: !464, line: 943, type: !79)
!3196 = !DILocation(line: 0, scope: !3193)
!3197 = !DILocation(line: 0, scope: !3087, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 945, column: 10, scope: !3193)
!3199 = !DILocation(line: 933, column: 10, scope: !3087, inlinedAt: !3198)
!3200 = !DILocation(line: 945, column: 3, scope: !3193)
!3201 = distinct !DISubprogram(name: "quotearg_mem", scope: !464, file: !464, line: 949, type: !3202, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3204)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!25, !79, !71}
!3204 = !{!3205, !3206}
!3205 = !DILocalVariable(name: "arg", arg: 1, scope: !3201, file: !464, line: 949, type: !79)
!3206 = !DILocalVariable(name: "argsize", arg: 2, scope: !3201, file: !464, line: 949, type: !71)
!3207 = !DILocation(line: 0, scope: !3201)
!3208 = !DILocation(line: 0, scope: !3183, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 951, column: 10, scope: !3201)
!3210 = !DILocation(line: 939, column: 10, scope: !3183, inlinedAt: !3209)
!3211 = !DILocation(line: 951, column: 3, scope: !3201)
!3212 = distinct !DISubprogram(name: "quotearg_n_style", scope: !464, file: !464, line: 955, type: !318, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3213)
!3213 = !{!3214, !3215, !3216, !3217}
!3214 = !DILocalVariable(name: "n", arg: 1, scope: !3212, file: !464, line: 955, type: !23)
!3215 = !DILocalVariable(name: "s", arg: 2, scope: !3212, file: !464, line: 955, type: !212)
!3216 = !DILocalVariable(name: "arg", arg: 3, scope: !3212, file: !464, line: 955, type: !79)
!3217 = !DILocalVariable(name: "o", scope: !3212, file: !464, line: 957, type: !481)
!3218 = !DILocation(line: 0, scope: !3212)
!3219 = !DILocation(line: 957, column: 3, scope: !3212)
!3220 = !DILocation(line: 957, column: 32, scope: !3212)
!3221 = !DILocalVariable(name: "style", arg: 1, scope: !3222, file: !464, line: 193, type: !212)
!3222 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !464, file: !464, line: 193, type: !3223, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3225)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!482, !212}
!3225 = !{!3221, !3226}
!3226 = !DILocalVariable(name: "o", scope: !3222, file: !464, line: 195, type: !482)
!3227 = !DILocation(line: 0, scope: !3222, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 957, column: 36, scope: !3212)
!3229 = !DILocation(line: 195, column: 26, scope: !3222, inlinedAt: !3228)
!3230 = !{!3231}
!3231 = distinct !{!3231, !3232, !"quoting_options_from_style: argument 0"}
!3232 = distinct !{!3232, !"quoting_options_from_style"}
!3233 = !DILocation(line: 196, column: 13, scope: !3234, inlinedAt: !3228)
!3234 = distinct !DILexicalBlock(scope: !3222, file: !464, line: 196, column: 7)
!3235 = !DILocation(line: 196, column: 7, scope: !3222, inlinedAt: !3228)
!3236 = !DILocation(line: 197, column: 5, scope: !3234, inlinedAt: !3228)
!3237 = !DILocation(line: 198, column: 5, scope: !3222, inlinedAt: !3228)
!3238 = !DILocation(line: 198, column: 11, scope: !3222, inlinedAt: !3228)
!3239 = !DILocation(line: 958, column: 10, scope: !3212)
!3240 = !DILocation(line: 959, column: 1, scope: !3212)
!3241 = !DILocation(line: 958, column: 3, scope: !3212)
!3242 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !464, file: !464, line: 962, type: !3243, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!25, !23, !212, !79, !71}
!3245 = !{!3246, !3247, !3248, !3249, !3250}
!3246 = !DILocalVariable(name: "n", arg: 1, scope: !3242, file: !464, line: 962, type: !23)
!3247 = !DILocalVariable(name: "s", arg: 2, scope: !3242, file: !464, line: 962, type: !212)
!3248 = !DILocalVariable(name: "arg", arg: 3, scope: !3242, file: !464, line: 963, type: !79)
!3249 = !DILocalVariable(name: "argsize", arg: 4, scope: !3242, file: !464, line: 963, type: !71)
!3250 = !DILocalVariable(name: "o", scope: !3242, file: !464, line: 965, type: !481)
!3251 = !DILocation(line: 0, scope: !3242)
!3252 = !DILocation(line: 965, column: 3, scope: !3242)
!3253 = !DILocation(line: 965, column: 32, scope: !3242)
!3254 = !DILocation(line: 0, scope: !3222, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 965, column: 36, scope: !3242)
!3256 = !DILocation(line: 195, column: 26, scope: !3222, inlinedAt: !3255)
!3257 = !{!3258}
!3258 = distinct !{!3258, !3259, !"quoting_options_from_style: argument 0"}
!3259 = distinct !{!3259, !"quoting_options_from_style"}
!3260 = !DILocation(line: 196, column: 13, scope: !3234, inlinedAt: !3255)
!3261 = !DILocation(line: 196, column: 7, scope: !3222, inlinedAt: !3255)
!3262 = !DILocation(line: 197, column: 5, scope: !3234, inlinedAt: !3255)
!3263 = !DILocation(line: 198, column: 5, scope: !3222, inlinedAt: !3255)
!3264 = !DILocation(line: 198, column: 11, scope: !3222, inlinedAt: !3255)
!3265 = !DILocation(line: 966, column: 10, scope: !3242)
!3266 = !DILocation(line: 967, column: 1, scope: !3242)
!3267 = !DILocation(line: 966, column: 3, scope: !3242)
!3268 = distinct !DISubprogram(name: "quotearg_style", scope: !464, file: !464, line: 970, type: !3269, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!25, !212, !79}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "s", arg: 1, scope: !3268, file: !464, line: 970, type: !212)
!3273 = !DILocalVariable(name: "arg", arg: 2, scope: !3268, file: !464, line: 970, type: !79)
!3274 = !DILocation(line: 195, column: 26, scope: !3222, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 957, column: 36, scope: !3212, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 972, column: 10, scope: !3268)
!3277 = !DILocation(line: 957, column: 32, scope: !3212, inlinedAt: !3276)
!3278 = !DILocation(line: 0, scope: !3268)
!3279 = !DILocation(line: 0, scope: !3212, inlinedAt: !3276)
!3280 = !DILocation(line: 957, column: 3, scope: !3212, inlinedAt: !3276)
!3281 = !DILocation(line: 0, scope: !3222, inlinedAt: !3275)
!3282 = !{!3283}
!3283 = distinct !{!3283, !3284, !"quoting_options_from_style: argument 0"}
!3284 = distinct !{!3284, !"quoting_options_from_style"}
!3285 = !DILocation(line: 196, column: 13, scope: !3234, inlinedAt: !3275)
!3286 = !DILocation(line: 196, column: 7, scope: !3222, inlinedAt: !3275)
!3287 = !DILocation(line: 197, column: 5, scope: !3234, inlinedAt: !3275)
!3288 = !DILocation(line: 198, column: 5, scope: !3222, inlinedAt: !3275)
!3289 = !DILocation(line: 198, column: 11, scope: !3222, inlinedAt: !3275)
!3290 = !DILocation(line: 958, column: 10, scope: !3212, inlinedAt: !3276)
!3291 = !DILocation(line: 959, column: 1, scope: !3212, inlinedAt: !3276)
!3292 = !DILocation(line: 972, column: 3, scope: !3268)
!3293 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !464, file: !464, line: 976, type: !3294, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!25, !212, !79, !71}
!3296 = !{!3297, !3298, !3299}
!3297 = !DILocalVariable(name: "s", arg: 1, scope: !3293, file: !464, line: 976, type: !212)
!3298 = !DILocalVariable(name: "arg", arg: 2, scope: !3293, file: !464, line: 976, type: !79)
!3299 = !DILocalVariable(name: "argsize", arg: 3, scope: !3293, file: !464, line: 976, type: !71)
!3300 = !DILocation(line: 195, column: 26, scope: !3222, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 965, column: 36, scope: !3242, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 978, column: 10, scope: !3293)
!3303 = !DILocation(line: 965, column: 32, scope: !3242, inlinedAt: !3302)
!3304 = !DILocation(line: 0, scope: !3293)
!3305 = !DILocation(line: 0, scope: !3242, inlinedAt: !3302)
!3306 = !DILocation(line: 965, column: 3, scope: !3242, inlinedAt: !3302)
!3307 = !DILocation(line: 0, scope: !3222, inlinedAt: !3301)
!3308 = !{!3309}
!3309 = distinct !{!3309, !3310, !"quoting_options_from_style: argument 0"}
!3310 = distinct !{!3310, !"quoting_options_from_style"}
!3311 = !DILocation(line: 196, column: 13, scope: !3234, inlinedAt: !3301)
!3312 = !DILocation(line: 196, column: 7, scope: !3222, inlinedAt: !3301)
!3313 = !DILocation(line: 197, column: 5, scope: !3234, inlinedAt: !3301)
!3314 = !DILocation(line: 198, column: 5, scope: !3222, inlinedAt: !3301)
!3315 = !DILocation(line: 198, column: 11, scope: !3222, inlinedAt: !3301)
!3316 = !DILocation(line: 966, column: 10, scope: !3242, inlinedAt: !3302)
!3317 = !DILocation(line: 967, column: 1, scope: !3242, inlinedAt: !3302)
!3318 = !DILocation(line: 978, column: 3, scope: !3293)
!3319 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !464, file: !464, line: 982, type: !3320, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3322)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!25, !79, !71, !26}
!3322 = !{!3323, !3324, !3325, !3326}
!3323 = !DILocalVariable(name: "arg", arg: 1, scope: !3319, file: !464, line: 982, type: !79)
!3324 = !DILocalVariable(name: "argsize", arg: 2, scope: !3319, file: !464, line: 982, type: !71)
!3325 = !DILocalVariable(name: "ch", arg: 3, scope: !3319, file: !464, line: 982, type: !26)
!3326 = !DILocalVariable(name: "options", scope: !3319, file: !464, line: 984, type: !482)
!3327 = !DILocation(line: 0, scope: !3319)
!3328 = !DILocation(line: 984, column: 3, scope: !3319)
!3329 = !DILocation(line: 984, column: 26, scope: !3319)
!3330 = !DILocation(line: 985, column: 13, scope: !3319)
!3331 = !{i64 0, i64 4, !1468, i64 4, i64 4, !1415, i64 8, i64 32, !1468, i64 40, i64 8, !1327, i64 48, i64 8, !1327}
!3332 = !DILocation(line: 0, scope: !2159, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 986, column: 3, scope: !3319)
!3334 = !DILocation(line: 156, column: 62, scope: !2159, inlinedAt: !3333)
!3335 = !DILocation(line: 156, column: 57, scope: !2159, inlinedAt: !3333)
!3336 = !DILocation(line: 157, column: 15, scope: !2159, inlinedAt: !3333)
!3337 = !DILocation(line: 158, column: 12, scope: !2159, inlinedAt: !3333)
!3338 = !DILocation(line: 158, column: 15, scope: !2159, inlinedAt: !3333)
!3339 = !DILocation(line: 158, column: 25, scope: !2159, inlinedAt: !3333)
!3340 = !DILocation(line: 159, column: 18, scope: !2159, inlinedAt: !3333)
!3341 = !DILocation(line: 159, column: 23, scope: !2159, inlinedAt: !3333)
!3342 = !DILocation(line: 159, column: 6, scope: !2159, inlinedAt: !3333)
!3343 = !DILocation(line: 987, column: 10, scope: !3319)
!3344 = !DILocation(line: 988, column: 1, scope: !3319)
!3345 = !DILocation(line: 987, column: 3, scope: !3319)
!3346 = distinct !DISubprogram(name: "quotearg_char", scope: !464, file: !464, line: 991, type: !3347, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!25, !79, !26}
!3349 = !{!3350, !3351}
!3350 = !DILocalVariable(name: "arg", arg: 1, scope: !3346, file: !464, line: 991, type: !79)
!3351 = !DILocalVariable(name: "ch", arg: 2, scope: !3346, file: !464, line: 991, type: !26)
!3352 = !DILocation(line: 984, column: 26, scope: !3319, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 993, column: 10, scope: !3346)
!3354 = !DILocation(line: 0, scope: !3346)
!3355 = !DILocation(line: 0, scope: !3319, inlinedAt: !3353)
!3356 = !DILocation(line: 984, column: 3, scope: !3319, inlinedAt: !3353)
!3357 = !DILocation(line: 985, column: 13, scope: !3319, inlinedAt: !3353)
!3358 = !DILocation(line: 0, scope: !2159, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 986, column: 3, scope: !3319, inlinedAt: !3353)
!3360 = !DILocation(line: 156, column: 62, scope: !2159, inlinedAt: !3359)
!3361 = !DILocation(line: 156, column: 57, scope: !2159, inlinedAt: !3359)
!3362 = !DILocation(line: 157, column: 15, scope: !2159, inlinedAt: !3359)
!3363 = !DILocation(line: 158, column: 12, scope: !2159, inlinedAt: !3359)
!3364 = !DILocation(line: 158, column: 15, scope: !2159, inlinedAt: !3359)
!3365 = !DILocation(line: 158, column: 25, scope: !2159, inlinedAt: !3359)
!3366 = !DILocation(line: 159, column: 18, scope: !2159, inlinedAt: !3359)
!3367 = !DILocation(line: 159, column: 23, scope: !2159, inlinedAt: !3359)
!3368 = !DILocation(line: 159, column: 6, scope: !2159, inlinedAt: !3359)
!3369 = !DILocation(line: 987, column: 10, scope: !3319, inlinedAt: !3353)
!3370 = !DILocation(line: 988, column: 1, scope: !3319, inlinedAt: !3353)
!3371 = !DILocation(line: 993, column: 3, scope: !3346)
!3372 = distinct !DISubprogram(name: "quotearg_colon", scope: !464, file: !464, line: 997, type: !263, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3373)
!3373 = !{!3374}
!3374 = !DILocalVariable(name: "arg", arg: 1, scope: !3372, file: !464, line: 997, type: !79)
!3375 = !DILocation(line: 984, column: 26, scope: !3319, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 993, column: 10, scope: !3346, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 999, column: 10, scope: !3372)
!3378 = !DILocation(line: 0, scope: !3372)
!3379 = !DILocation(line: 0, scope: !3346, inlinedAt: !3377)
!3380 = !DILocation(line: 0, scope: !3319, inlinedAt: !3376)
!3381 = !DILocation(line: 984, column: 3, scope: !3319, inlinedAt: !3376)
!3382 = !DILocation(line: 985, column: 13, scope: !3319, inlinedAt: !3376)
!3383 = !DILocation(line: 0, scope: !2159, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 986, column: 3, scope: !3319, inlinedAt: !3376)
!3385 = !DILocation(line: 156, column: 57, scope: !2159, inlinedAt: !3384)
!3386 = !DILocation(line: 158, column: 12, scope: !2159, inlinedAt: !3384)
!3387 = !DILocation(line: 159, column: 6, scope: !2159, inlinedAt: !3384)
!3388 = !DILocation(line: 987, column: 10, scope: !3319, inlinedAt: !3376)
!3389 = !DILocation(line: 988, column: 1, scope: !3319, inlinedAt: !3376)
!3390 = !DILocation(line: 999, column: 3, scope: !3372)
!3391 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !464, file: !464, line: 1003, type: !3202, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3392)
!3392 = !{!3393, !3394}
!3393 = !DILocalVariable(name: "arg", arg: 1, scope: !3391, file: !464, line: 1003, type: !79)
!3394 = !DILocalVariable(name: "argsize", arg: 2, scope: !3391, file: !464, line: 1003, type: !71)
!3395 = !DILocation(line: 984, column: 26, scope: !3319, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 1005, column: 10, scope: !3391)
!3397 = !DILocation(line: 0, scope: !3391)
!3398 = !DILocation(line: 0, scope: !3319, inlinedAt: !3396)
!3399 = !DILocation(line: 984, column: 3, scope: !3319, inlinedAt: !3396)
!3400 = !DILocation(line: 985, column: 13, scope: !3319, inlinedAt: !3396)
!3401 = !DILocation(line: 0, scope: !2159, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 986, column: 3, scope: !3319, inlinedAt: !3396)
!3403 = !DILocation(line: 156, column: 57, scope: !2159, inlinedAt: !3402)
!3404 = !DILocation(line: 158, column: 12, scope: !2159, inlinedAt: !3402)
!3405 = !DILocation(line: 159, column: 6, scope: !2159, inlinedAt: !3402)
!3406 = !DILocation(line: 987, column: 10, scope: !3319, inlinedAt: !3396)
!3407 = !DILocation(line: 988, column: 1, scope: !3319, inlinedAt: !3396)
!3408 = !DILocation(line: 1005, column: 3, scope: !3391)
!3409 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !464, file: !464, line: 1009, type: !318, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3410)
!3410 = !{!3411, !3412, !3413, !3414}
!3411 = !DILocalVariable(name: "n", arg: 1, scope: !3409, file: !464, line: 1009, type: !23)
!3412 = !DILocalVariable(name: "s", arg: 2, scope: !3409, file: !464, line: 1009, type: !212)
!3413 = !DILocalVariable(name: "arg", arg: 3, scope: !3409, file: !464, line: 1009, type: !79)
!3414 = !DILocalVariable(name: "options", scope: !3409, file: !464, line: 1011, type: !482)
!3415 = !DILocation(line: 195, column: 26, scope: !3222, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 1012, column: 13, scope: !3409)
!3417 = !DILocation(line: 0, scope: !3409)
!3418 = !DILocation(line: 1011, column: 3, scope: !3409)
!3419 = !DILocation(line: 1011, column: 26, scope: !3409)
!3420 = !DILocation(line: 1012, column: 13, scope: !3409)
!3421 = !DILocation(line: 0, scope: !3222, inlinedAt: !3416)
!3422 = !{!3423}
!3423 = distinct !{!3423, !3424, !"quoting_options_from_style: argument 0"}
!3424 = distinct !{!3424, !"quoting_options_from_style"}
!3425 = !DILocation(line: 196, column: 13, scope: !3234, inlinedAt: !3416)
!3426 = !DILocation(line: 196, column: 7, scope: !3222, inlinedAt: !3416)
!3427 = !DILocation(line: 197, column: 5, scope: !3234, inlinedAt: !3416)
!3428 = !DILocation(line: 0, scope: !2159, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 1013, column: 3, scope: !3409)
!3430 = !DILocation(line: 156, column: 57, scope: !2159, inlinedAt: !3429)
!3431 = !DILocation(line: 158, column: 12, scope: !2159, inlinedAt: !3429)
!3432 = !DILocation(line: 159, column: 6, scope: !2159, inlinedAt: !3429)
!3433 = !DILocation(line: 1014, column: 10, scope: !3409)
!3434 = !DILocation(line: 1015, column: 1, scope: !3409)
!3435 = !DILocation(line: 1014, column: 3, scope: !3409)
!3436 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !464, file: !464, line: 1018, type: !3437, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!25, !23, !79, !79, !79}
!3439 = !{!3440, !3441, !3442, !3443}
!3440 = !DILocalVariable(name: "n", arg: 1, scope: !3436, file: !464, line: 1018, type: !23)
!3441 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3436, file: !464, line: 1018, type: !79)
!3442 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3436, file: !464, line: 1019, type: !79)
!3443 = !DILocalVariable(name: "arg", arg: 4, scope: !3436, file: !464, line: 1019, type: !79)
!3444 = !DILocalVariable(name: "o", scope: !3445, file: !464, line: 1030, type: !482)
!3445 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !464, file: !464, line: 1026, type: !3446, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!25, !23, !79, !79, !79, !71}
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3444}
!3449 = !DILocalVariable(name: "n", arg: 1, scope: !3445, file: !464, line: 1026, type: !23)
!3450 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3445, file: !464, line: 1026, type: !79)
!3451 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3445, file: !464, line: 1027, type: !79)
!3452 = !DILocalVariable(name: "arg", arg: 4, scope: !3445, file: !464, line: 1028, type: !79)
!3453 = !DILocalVariable(name: "argsize", arg: 5, scope: !3445, file: !464, line: 1028, type: !71)
!3454 = !DILocation(line: 1030, column: 26, scope: !3445, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 1021, column: 10, scope: !3436)
!3456 = !DILocation(line: 0, scope: !3436)
!3457 = !DILocation(line: 0, scope: !3445, inlinedAt: !3455)
!3458 = !DILocation(line: 1030, column: 3, scope: !3445, inlinedAt: !3455)
!3459 = !DILocation(line: 1030, column: 30, scope: !3445, inlinedAt: !3455)
!3460 = !DILocation(line: 0, scope: !2199, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 1031, column: 3, scope: !3445, inlinedAt: !3455)
!3462 = !DILocation(line: 184, column: 6, scope: !2199, inlinedAt: !3461)
!3463 = !DILocation(line: 184, column: 12, scope: !2199, inlinedAt: !3461)
!3464 = !DILocation(line: 185, column: 8, scope: !2213, inlinedAt: !3461)
!3465 = !DILocation(line: 185, column: 23, scope: !2213, inlinedAt: !3461)
!3466 = !DILocation(line: 185, column: 19, scope: !2213, inlinedAt: !3461)
!3467 = !DILocation(line: 186, column: 5, scope: !2213, inlinedAt: !3461)
!3468 = !DILocation(line: 187, column: 6, scope: !2199, inlinedAt: !3461)
!3469 = !DILocation(line: 187, column: 17, scope: !2199, inlinedAt: !3461)
!3470 = !DILocation(line: 188, column: 6, scope: !2199, inlinedAt: !3461)
!3471 = !DILocation(line: 188, column: 18, scope: !2199, inlinedAt: !3461)
!3472 = !DILocation(line: 1032, column: 10, scope: !3445, inlinedAt: !3455)
!3473 = !DILocation(line: 1033, column: 1, scope: !3445, inlinedAt: !3455)
!3474 = !DILocation(line: 1021, column: 3, scope: !3436)
!3475 = !DILocation(line: 0, scope: !3445)
!3476 = !DILocation(line: 1030, column: 3, scope: !3445)
!3477 = !DILocation(line: 1030, column: 26, scope: !3445)
!3478 = !DILocation(line: 1030, column: 30, scope: !3445)
!3479 = !DILocation(line: 0, scope: !2199, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 1031, column: 3, scope: !3445)
!3481 = !DILocation(line: 184, column: 6, scope: !2199, inlinedAt: !3480)
!3482 = !DILocation(line: 184, column: 12, scope: !2199, inlinedAt: !3480)
!3483 = !DILocation(line: 185, column: 8, scope: !2213, inlinedAt: !3480)
!3484 = !DILocation(line: 185, column: 23, scope: !2213, inlinedAt: !3480)
!3485 = !DILocation(line: 185, column: 19, scope: !2213, inlinedAt: !3480)
!3486 = !DILocation(line: 186, column: 5, scope: !2213, inlinedAt: !3480)
!3487 = !DILocation(line: 187, column: 6, scope: !2199, inlinedAt: !3480)
!3488 = !DILocation(line: 187, column: 17, scope: !2199, inlinedAt: !3480)
!3489 = !DILocation(line: 188, column: 6, scope: !2199, inlinedAt: !3480)
!3490 = !DILocation(line: 188, column: 18, scope: !2199, inlinedAt: !3480)
!3491 = !DILocation(line: 1032, column: 10, scope: !3445)
!3492 = !DILocation(line: 1033, column: 1, scope: !3445)
!3493 = !DILocation(line: 1032, column: 3, scope: !3445)
!3494 = distinct !DISubprogram(name: "quotearg_custom", scope: !464, file: !464, line: 1036, type: !3495, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3497)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!25, !79, !79, !79}
!3497 = !{!3498, !3499, !3500}
!3498 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3494, file: !464, line: 1036, type: !79)
!3499 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3494, file: !464, line: 1036, type: !79)
!3500 = !DILocalVariable(name: "arg", arg: 3, scope: !3494, file: !464, line: 1037, type: !79)
!3501 = !DILocation(line: 1030, column: 26, scope: !3445, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 1021, column: 10, scope: !3436, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 1039, column: 10, scope: !3494)
!3504 = !DILocation(line: 0, scope: !3494)
!3505 = !DILocation(line: 0, scope: !3436, inlinedAt: !3503)
!3506 = !DILocation(line: 0, scope: !3445, inlinedAt: !3502)
!3507 = !DILocation(line: 1030, column: 3, scope: !3445, inlinedAt: !3502)
!3508 = !DILocation(line: 1030, column: 30, scope: !3445, inlinedAt: !3502)
!3509 = !DILocation(line: 0, scope: !2199, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 1031, column: 3, scope: !3445, inlinedAt: !3502)
!3511 = !DILocation(line: 184, column: 6, scope: !2199, inlinedAt: !3510)
!3512 = !DILocation(line: 184, column: 12, scope: !2199, inlinedAt: !3510)
!3513 = !DILocation(line: 185, column: 8, scope: !2213, inlinedAt: !3510)
!3514 = !DILocation(line: 185, column: 23, scope: !2213, inlinedAt: !3510)
!3515 = !DILocation(line: 185, column: 19, scope: !2213, inlinedAt: !3510)
!3516 = !DILocation(line: 186, column: 5, scope: !2213, inlinedAt: !3510)
!3517 = !DILocation(line: 187, column: 6, scope: !2199, inlinedAt: !3510)
!3518 = !DILocation(line: 187, column: 17, scope: !2199, inlinedAt: !3510)
!3519 = !DILocation(line: 188, column: 6, scope: !2199, inlinedAt: !3510)
!3520 = !DILocation(line: 188, column: 18, scope: !2199, inlinedAt: !3510)
!3521 = !DILocation(line: 1032, column: 10, scope: !3445, inlinedAt: !3502)
!3522 = !DILocation(line: 1033, column: 1, scope: !3445, inlinedAt: !3502)
!3523 = !DILocation(line: 1039, column: 3, scope: !3494)
!3524 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !464, file: !464, line: 1043, type: !3525, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!25, !79, !79, !79, !71}
!3527 = !{!3528, !3529, !3530, !3531}
!3528 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3524, file: !464, line: 1043, type: !79)
!3529 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3524, file: !464, line: 1043, type: !79)
!3530 = !DILocalVariable(name: "arg", arg: 3, scope: !3524, file: !464, line: 1044, type: !79)
!3531 = !DILocalVariable(name: "argsize", arg: 4, scope: !3524, file: !464, line: 1044, type: !71)
!3532 = !DILocation(line: 1030, column: 26, scope: !3445, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 1046, column: 10, scope: !3524)
!3534 = !DILocation(line: 0, scope: !3524)
!3535 = !DILocation(line: 0, scope: !3445, inlinedAt: !3533)
!3536 = !DILocation(line: 1030, column: 3, scope: !3445, inlinedAt: !3533)
!3537 = !DILocation(line: 1030, column: 30, scope: !3445, inlinedAt: !3533)
!3538 = !DILocation(line: 0, scope: !2199, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 1031, column: 3, scope: !3445, inlinedAt: !3533)
!3540 = !DILocation(line: 184, column: 6, scope: !2199, inlinedAt: !3539)
!3541 = !DILocation(line: 184, column: 12, scope: !2199, inlinedAt: !3539)
!3542 = !DILocation(line: 185, column: 8, scope: !2213, inlinedAt: !3539)
!3543 = !DILocation(line: 185, column: 23, scope: !2213, inlinedAt: !3539)
!3544 = !DILocation(line: 185, column: 19, scope: !2213, inlinedAt: !3539)
!3545 = !DILocation(line: 186, column: 5, scope: !2213, inlinedAt: !3539)
!3546 = !DILocation(line: 187, column: 6, scope: !2199, inlinedAt: !3539)
!3547 = !DILocation(line: 187, column: 17, scope: !2199, inlinedAt: !3539)
!3548 = !DILocation(line: 188, column: 6, scope: !2199, inlinedAt: !3539)
!3549 = !DILocation(line: 188, column: 18, scope: !2199, inlinedAt: !3539)
!3550 = !DILocation(line: 1032, column: 10, scope: !3445, inlinedAt: !3533)
!3551 = !DILocation(line: 1033, column: 1, scope: !3445, inlinedAt: !3533)
!3552 = !DILocation(line: 1046, column: 3, scope: !3524)
!3553 = distinct !DISubprogram(name: "quote_n_mem", scope: !464, file: !464, line: 1061, type: !3554, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3556)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!79, !23, !79, !71}
!3556 = !{!3557, !3558, !3559}
!3557 = !DILocalVariable(name: "n", arg: 1, scope: !3553, file: !464, line: 1061, type: !23)
!3558 = !DILocalVariable(name: "arg", arg: 2, scope: !3553, file: !464, line: 1061, type: !79)
!3559 = !DILocalVariable(name: "argsize", arg: 3, scope: !3553, file: !464, line: 1061, type: !71)
!3560 = !DILocation(line: 0, scope: !3553)
!3561 = !DILocation(line: 1063, column: 10, scope: !3553)
!3562 = !DILocation(line: 1063, column: 3, scope: !3553)
!3563 = distinct !DISubprogram(name: "quote_mem", scope: !464, file: !464, line: 1067, type: !3564, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3566)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!79, !79, !71}
!3566 = !{!3567, !3568}
!3567 = !DILocalVariable(name: "arg", arg: 1, scope: !3563, file: !464, line: 1067, type: !79)
!3568 = !DILocalVariable(name: "argsize", arg: 2, scope: !3563, file: !464, line: 1067, type: !71)
!3569 = !DILocation(line: 0, scope: !3563)
!3570 = !DILocation(line: 0, scope: !3553, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 1069, column: 10, scope: !3563)
!3572 = !DILocation(line: 1063, column: 10, scope: !3553, inlinedAt: !3571)
!3573 = !DILocation(line: 1069, column: 3, scope: !3563)
!3574 = distinct !DISubprogram(name: "quote_n", scope: !464, file: !464, line: 1073, type: !3575, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!79, !23, !79}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "n", arg: 1, scope: !3574, file: !464, line: 1073, type: !23)
!3579 = !DILocalVariable(name: "arg", arg: 2, scope: !3574, file: !464, line: 1073, type: !79)
!3580 = !DILocation(line: 0, scope: !3574)
!3581 = !DILocation(line: 0, scope: !3553, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1075, column: 10, scope: !3574)
!3583 = !DILocation(line: 1063, column: 10, scope: !3553, inlinedAt: !3582)
!3584 = !DILocation(line: 1075, column: 3, scope: !3574)
!3585 = distinct !DISubprogram(name: "quote", scope: !464, file: !464, line: 1079, type: !297, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3586)
!3586 = !{!3587}
!3587 = !DILocalVariable(name: "arg", arg: 1, scope: !3585, file: !464, line: 1079, type: !79)
!3588 = !DILocation(line: 0, scope: !3585)
!3589 = !DILocation(line: 0, scope: !3574, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 1081, column: 10, scope: !3585)
!3591 = !DILocation(line: 0, scope: !3553, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1075, column: 10, scope: !3574, inlinedAt: !3590)
!3593 = !DILocation(line: 1063, column: 10, scope: !3553, inlinedAt: !3592)
!3594 = !DILocation(line: 1081, column: 3, scope: !3585)
!3595 = distinct !DISubprogram(name: "version_etc_arn", scope: !634, file: !634, line: 61, type: !3596, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3601)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !3598, !79, !79, !79, !3600, !71}
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !644)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607}
!3602 = !DILocalVariable(name: "stream", arg: 1, scope: !3595, file: !634, line: 61, type: !3598)
!3603 = !DILocalVariable(name: "command_name", arg: 2, scope: !3595, file: !634, line: 62, type: !79)
!3604 = !DILocalVariable(name: "package", arg: 3, scope: !3595, file: !634, line: 62, type: !79)
!3605 = !DILocalVariable(name: "version", arg: 4, scope: !3595, file: !634, line: 63, type: !79)
!3606 = !DILocalVariable(name: "authors", arg: 5, scope: !3595, file: !634, line: 64, type: !3600)
!3607 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3595, file: !634, line: 64, type: !71)
!3608 = !DILocation(line: 0, scope: !3595)
!3609 = !DILocation(line: 66, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3595, file: !634, line: 66, column: 7)
!3611 = !DILocation(line: 66, column: 7, scope: !3595)
!3612 = !DILocation(line: 67, column: 5, scope: !3610)
!3613 = !DILocation(line: 69, column: 5, scope: !3610)
!3614 = !DILocation(line: 83, column: 3, scope: !3595)
!3615 = !DILocation(line: 85, column: 3, scope: !3595)
!3616 = !DILocation(line: 88, column: 3, scope: !3595)
!3617 = !DILocation(line: 95, column: 3, scope: !3595)
!3618 = !DILocation(line: 97, column: 3, scope: !3595)
!3619 = !DILocation(line: 105, column: 7, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3595, file: !634, line: 98, column: 5)
!3621 = !DILocation(line: 106, column: 7, scope: !3620)
!3622 = !DILocation(line: 109, column: 7, scope: !3620)
!3623 = !DILocation(line: 110, column: 7, scope: !3620)
!3624 = !DILocation(line: 113, column: 7, scope: !3620)
!3625 = !DILocation(line: 115, column: 7, scope: !3620)
!3626 = !DILocation(line: 120, column: 7, scope: !3620)
!3627 = !DILocation(line: 122, column: 7, scope: !3620)
!3628 = !DILocation(line: 127, column: 7, scope: !3620)
!3629 = !DILocation(line: 129, column: 7, scope: !3620)
!3630 = !DILocation(line: 134, column: 7, scope: !3620)
!3631 = !DILocation(line: 137, column: 7, scope: !3620)
!3632 = !DILocation(line: 142, column: 7, scope: !3620)
!3633 = !DILocation(line: 145, column: 7, scope: !3620)
!3634 = !DILocation(line: 150, column: 7, scope: !3620)
!3635 = !DILocation(line: 154, column: 7, scope: !3620)
!3636 = !DILocation(line: 159, column: 7, scope: !3620)
!3637 = !DILocation(line: 163, column: 7, scope: !3620)
!3638 = !DILocation(line: 170, column: 7, scope: !3620)
!3639 = !DILocation(line: 174, column: 7, scope: !3620)
!3640 = !DILocation(line: 176, column: 1, scope: !3595)
!3641 = distinct !DISubprogram(name: "version_etc_ar", scope: !634, file: !634, line: 183, type: !3642, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{null, !3598, !79, !79, !79, !3600}
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3650}
!3645 = !DILocalVariable(name: "stream", arg: 1, scope: !3641, file: !634, line: 183, type: !3598)
!3646 = !DILocalVariable(name: "command_name", arg: 2, scope: !3641, file: !634, line: 184, type: !79)
!3647 = !DILocalVariable(name: "package", arg: 3, scope: !3641, file: !634, line: 184, type: !79)
!3648 = !DILocalVariable(name: "version", arg: 4, scope: !3641, file: !634, line: 185, type: !79)
!3649 = !DILocalVariable(name: "authors", arg: 5, scope: !3641, file: !634, line: 185, type: !3600)
!3650 = !DILocalVariable(name: "n_authors", scope: !3641, file: !634, line: 187, type: !71)
!3651 = !DILocation(line: 0, scope: !3641)
!3652 = !DILocation(line: 189, column: 8, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3641, file: !634, line: 189, column: 3)
!3654 = !DILocation(line: 0, scope: !3653)
!3655 = !DILocation(line: 189, column: 23, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3653, file: !634, line: 189, column: 3)
!3657 = !DILocation(line: 189, column: 3, scope: !3653)
!3658 = !DILocation(line: 189, column: 52, scope: !3656)
!3659 = distinct !{!3659, !3657, !3660}
!3660 = !DILocation(line: 190, column: 5, scope: !3653)
!3661 = !DILocation(line: 191, column: 3, scope: !3641)
!3662 = !DILocation(line: 192, column: 1, scope: !3641)
!3663 = distinct !DISubprogram(name: "version_etc_va", scope: !634, file: !634, line: 199, type: !3664, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3673)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !3598, !79, !79, !79, !3666}
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !634, line: 192, size: 192, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3667, file: !634, line: 192, baseType: !6, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3667, file: !634, line: 192, baseType: !6, size: 32, offset: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3667, file: !634, line: 192, baseType: !69, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3667, file: !634, line: 192, baseType: !69, size: 64, offset: 128)
!3673 = !{!3674, !3675, !3676, !3677, !3678, !3679, !3680}
!3674 = !DILocalVariable(name: "stream", arg: 1, scope: !3663, file: !634, line: 199, type: !3598)
!3675 = !DILocalVariable(name: "command_name", arg: 2, scope: !3663, file: !634, line: 200, type: !79)
!3676 = !DILocalVariable(name: "package", arg: 3, scope: !3663, file: !634, line: 200, type: !79)
!3677 = !DILocalVariable(name: "version", arg: 4, scope: !3663, file: !634, line: 201, type: !79)
!3678 = !DILocalVariable(name: "authors", arg: 5, scope: !3663, file: !634, line: 201, type: !3666)
!3679 = !DILocalVariable(name: "n_authors", scope: !3663, file: !634, line: 203, type: !71)
!3680 = !DILocalVariable(name: "authtab", scope: !3663, file: !634, line: 204, type: !3681)
!3681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 640, elements: !534)
!3682 = !DILocation(line: 0, scope: !3663)
!3683 = !DILocation(line: 204, column: 3, scope: !3663)
!3684 = !DILocation(line: 204, column: 15, scope: !3663)
!3685 = !DILocation(line: 0, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !634, line: 206, column: 3)
!3687 = distinct !DILexicalBlock(scope: !3663, file: !634, line: 206, column: 3)
!3688 = !DILocation(line: 208, column: 35, scope: !3686)
!3689 = !DILocation(line: 208, column: 14, scope: !3686)
!3690 = !DILocation(line: 208, column: 33, scope: !3686)
!3691 = !DILocation(line: 208, column: 67, scope: !3686)
!3692 = !DILocation(line: 206, column: 3, scope: !3687)
!3693 = !DILocation(line: 0, scope: !3687)
!3694 = !DILocation(line: 211, column: 3, scope: !3663)
!3695 = !DILocation(line: 213, column: 1, scope: !3663)
!3696 = distinct !DISubprogram(name: "version_etc", scope: !634, file: !634, line: 230, type: !3697, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3598, !79, !79, !79, null}
!3699 = !{!3700, !3701, !3702, !3703, !3704}
!3700 = !DILocalVariable(name: "stream", arg: 1, scope: !3696, file: !634, line: 230, type: !3598)
!3701 = !DILocalVariable(name: "command_name", arg: 2, scope: !3696, file: !634, line: 231, type: !79)
!3702 = !DILocalVariable(name: "package", arg: 3, scope: !3696, file: !634, line: 231, type: !79)
!3703 = !DILocalVariable(name: "version", arg: 4, scope: !3696, file: !634, line: 232, type: !79)
!3704 = !DILocalVariable(name: "authors", scope: !3696, file: !634, line: 234, type: !3705)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !248, line: 52, baseType: !3706)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3707, line: 32, baseType: !3708)
!3707 = !DIFile(filename: "/usr/lib/clang/10.0.0/include/stdarg.h", directory: "")
!3708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !634, line: 234, baseType: !3709)
!3709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3667, size: 192, elements: !54)
!3710 = !DILocation(line: 0, scope: !3696)
!3711 = !DILocation(line: 234, column: 3, scope: !3696)
!3712 = !DILocation(line: 234, column: 11, scope: !3696)
!3713 = !DILocation(line: 236, column: 3, scope: !3696)
!3714 = !DILocation(line: 237, column: 3, scope: !3696)
!3715 = !DILocation(line: 238, column: 3, scope: !3696)
!3716 = !DILocation(line: 239, column: 1, scope: !3696)
!3717 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !634, file: !634, line: 242, type: !270, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !246)
!3718 = !DILocation(line: 244, column: 3, scope: !3717)
!3719 = !DILocation(line: 249, column: 3, scope: !3717)
!3720 = !DILocation(line: 255, column: 3, scope: !3717)
!3721 = !DILocation(line: 260, column: 3, scope: !3717)
!3722 = !DILocation(line: 262, column: 1, scope: !3717)
!3723 = distinct !DISubprogram(name: "xnmalloc", scope: !473, file: !473, line: 99, type: !3724, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!69, !71, !71}
!3726 = !{!3727, !3728}
!3727 = !DILocalVariable(name: "n", arg: 1, scope: !3723, file: !473, line: 99, type: !71)
!3728 = !DILocalVariable(name: "s", arg: 2, scope: !3723, file: !473, line: 99, type: !71)
!3729 = !DILocation(line: 0, scope: !3723)
!3730 = !DILocation(line: 101, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3723, file: !473, line: 101, column: 7)
!3732 = !DILocation(line: 101, column: 7, scope: !3723)
!3733 = !DILocation(line: 102, column: 5, scope: !3731)
!3734 = !DILocation(line: 103, column: 21, scope: !3723)
!3735 = !DILocalVariable(name: "n", arg: 1, scope: !3736, file: !676, line: 39, type: !71)
!3736 = distinct !DISubprogram(name: "xmalloc", scope: !676, file: !676, line: 39, type: !133, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3737)
!3737 = !{!3735, !3738}
!3738 = !DILocalVariable(name: "p", scope: !3736, file: !676, line: 41, type: !69)
!3739 = !DILocation(line: 0, scope: !3736, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 103, column: 10, scope: !3723)
!3741 = !DILocation(line: 41, column: 13, scope: !3736, inlinedAt: !3740)
!3742 = !DILocation(line: 42, column: 8, scope: !3743, inlinedAt: !3740)
!3743 = distinct !DILexicalBlock(scope: !3736, file: !676, line: 42, column: 7)
!3744 = !DILocation(line: 42, column: 15, scope: !3743, inlinedAt: !3740)
!3745 = !DILocation(line: 42, column: 10, scope: !3743, inlinedAt: !3740)
!3746 = !DILocation(line: 43, column: 5, scope: !3743, inlinedAt: !3740)
!3747 = !DILocation(line: 103, column: 3, scope: !3723)
!3748 = !DILocation(line: 0, scope: !3736)
!3749 = !DILocation(line: 41, column: 13, scope: !3736)
!3750 = !DILocation(line: 42, column: 8, scope: !3743)
!3751 = !DILocation(line: 42, column: 15, scope: !3743)
!3752 = !DILocation(line: 42, column: 10, scope: !3743)
!3753 = !DILocation(line: 43, column: 5, scope: !3743)
!3754 = !DILocation(line: 44, column: 3, scope: !3736)
!3755 = distinct !DISubprogram(name: "xnrealloc", scope: !473, file: !473, line: 112, type: !3756, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!69, !69, !71, !71}
!3758 = !{!3759, !3760, !3761}
!3759 = !DILocalVariable(name: "p", arg: 1, scope: !3755, file: !473, line: 112, type: !69)
!3760 = !DILocalVariable(name: "n", arg: 2, scope: !3755, file: !473, line: 112, type: !71)
!3761 = !DILocalVariable(name: "s", arg: 3, scope: !3755, file: !473, line: 112, type: !71)
!3762 = !DILocation(line: 0, scope: !3755)
!3763 = !DILocation(line: 114, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3755, file: !473, line: 114, column: 7)
!3765 = !DILocation(line: 114, column: 7, scope: !3755)
!3766 = !DILocation(line: 115, column: 5, scope: !3764)
!3767 = !DILocation(line: 116, column: 25, scope: !3755)
!3768 = !DILocalVariable(name: "p", arg: 1, scope: !3769, file: !676, line: 51, type: !69)
!3769 = distinct !DISubprogram(name: "xrealloc", scope: !676, file: !676, line: 51, type: !137, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3770)
!3770 = !{!3768, !3771}
!3771 = !DILocalVariable(name: "n", arg: 2, scope: !3769, file: !676, line: 51, type: !71)
!3772 = !DILocation(line: 0, scope: !3769, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 116, column: 10, scope: !3755)
!3774 = !DILocation(line: 53, column: 8, scope: !3775, inlinedAt: !3773)
!3775 = distinct !DILexicalBlock(scope: !3769, file: !676, line: 53, column: 7)
!3776 = !DILocation(line: 53, column: 13, scope: !3775, inlinedAt: !3773)
!3777 = !DILocation(line: 53, column: 10, scope: !3775, inlinedAt: !3773)
!3778 = !DILocation(line: 57, column: 7, scope: !3779, inlinedAt: !3773)
!3779 = distinct !DILexicalBlock(scope: !3775, file: !676, line: 54, column: 5)
!3780 = !DILocation(line: 58, column: 7, scope: !3779, inlinedAt: !3773)
!3781 = !DILocation(line: 61, column: 7, scope: !3769, inlinedAt: !3773)
!3782 = !DILocation(line: 62, column: 8, scope: !3783, inlinedAt: !3773)
!3783 = distinct !DILexicalBlock(scope: !3769, file: !676, line: 62, column: 7)
!3784 = !DILocation(line: 62, column: 13, scope: !3783, inlinedAt: !3773)
!3785 = !DILocation(line: 62, column: 10, scope: !3783, inlinedAt: !3773)
!3786 = !DILocation(line: 63, column: 5, scope: !3783, inlinedAt: !3773)
!3787 = !DILocation(line: 116, column: 3, scope: !3755)
!3788 = !DILocation(line: 0, scope: !3769)
!3789 = !DILocation(line: 53, column: 8, scope: !3775)
!3790 = !DILocation(line: 53, column: 13, scope: !3775)
!3791 = !DILocation(line: 53, column: 10, scope: !3775)
!3792 = !DILocation(line: 57, column: 7, scope: !3779)
!3793 = !DILocation(line: 58, column: 7, scope: !3779)
!3794 = !DILocation(line: 61, column: 7, scope: !3769)
!3795 = !DILocation(line: 62, column: 8, scope: !3783)
!3796 = !DILocation(line: 62, column: 13, scope: !3783)
!3797 = !DILocation(line: 62, column: 10, scope: !3783)
!3798 = !DILocation(line: 63, column: 5, scope: !3783)
!3799 = !DILocation(line: 65, column: 1, scope: !3769)
!3800 = !DILocation(line: 0, scope: !679)
!3801 = !DILocation(line: 176, column: 14, scope: !679)
!3802 = !DILocation(line: 178, column: 9, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !679, file: !473, line: 178, column: 7)
!3804 = !DILocation(line: 178, column: 7, scope: !679)
!3805 = !DILocation(line: 180, column: 13, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !473, line: 180, column: 11)
!3807 = distinct !DILexicalBlock(scope: !3803, file: !473, line: 179, column: 5)
!3808 = !DILocation(line: 180, column: 11, scope: !3807)
!3809 = !DILocation(line: 188, column: 30, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3806, file: !473, line: 181, column: 9)
!3811 = !DILocation(line: 189, column: 16, scope: !3810)
!3812 = !DILocation(line: 189, column: 13, scope: !3810)
!3813 = !DILocation(line: 190, column: 9, scope: !3810)
!3814 = !DILocation(line: 191, column: 11, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3807, file: !473, line: 191, column: 11)
!3816 = !DILocation(line: 191, column: 11, scope: !3807)
!3817 = !DILocation(line: 206, column: 7, scope: !679)
!3818 = !DILocation(line: 207, column: 25, scope: !679)
!3819 = !DILocation(line: 0, scope: !3769, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 207, column: 10, scope: !679)
!3821 = !DILocation(line: 53, column: 10, scope: !3775, inlinedAt: !3820)
!3822 = !DILocation(line: 192, column: 9, scope: !3815)
!3823 = !DILocation(line: 200, column: 69, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !473, line: 200, column: 11)
!3825 = distinct !DILexicalBlock(scope: !3803, file: !473, line: 195, column: 5)
!3826 = !DILocation(line: 201, column: 11, scope: !3824)
!3827 = !DILocation(line: 200, column: 11, scope: !3825)
!3828 = !DILocation(line: 202, column: 9, scope: !3824)
!3829 = !DILocation(line: 203, column: 14, scope: !3825)
!3830 = !DILocation(line: 203, column: 18, scope: !3825)
!3831 = !DILocation(line: 203, column: 9, scope: !3825)
!3832 = !DILocation(line: 53, column: 8, scope: !3775, inlinedAt: !3820)
!3833 = !DILocation(line: 57, column: 7, scope: !3779, inlinedAt: !3820)
!3834 = !DILocation(line: 58, column: 7, scope: !3779, inlinedAt: !3820)
!3835 = !DILocation(line: 61, column: 7, scope: !3769, inlinedAt: !3820)
!3836 = !DILocation(line: 62, column: 8, scope: !3783, inlinedAt: !3820)
!3837 = !DILocation(line: 62, column: 13, scope: !3783, inlinedAt: !3820)
!3838 = !DILocation(line: 62, column: 10, scope: !3783, inlinedAt: !3820)
!3839 = !DILocation(line: 63, column: 5, scope: !3783, inlinedAt: !3820)
!3840 = !DILocation(line: 207, column: 3, scope: !679)
!3841 = distinct !DISubprogram(name: "xcharalloc", scope: !473, file: !473, line: 216, type: !3012, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3842)
!3842 = !{!3843}
!3843 = !DILocalVariable(name: "n", arg: 1, scope: !3841, file: !473, line: 216, type: !71)
!3844 = !DILocation(line: 0, scope: !3841)
!3845 = !DILocation(line: 0, scope: !3736, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 218, column: 10, scope: !3841)
!3847 = !DILocation(line: 41, column: 13, scope: !3736, inlinedAt: !3846)
!3848 = !DILocation(line: 42, column: 8, scope: !3743, inlinedAt: !3846)
!3849 = !DILocation(line: 42, column: 15, scope: !3743, inlinedAt: !3846)
!3850 = !DILocation(line: 42, column: 10, scope: !3743, inlinedAt: !3846)
!3851 = !DILocation(line: 43, column: 5, scope: !3743, inlinedAt: !3846)
!3852 = !DILocation(line: 218, column: 3, scope: !3841)
!3853 = distinct !DISubprogram(name: "x2realloc", scope: !676, file: !676, line: 74, type: !3854, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3856)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!69, !69, !682}
!3856 = !{!3857, !3858}
!3857 = !DILocalVariable(name: "p", arg: 1, scope: !3853, file: !676, line: 74, type: !69)
!3858 = !DILocalVariable(name: "pn", arg: 2, scope: !3853, file: !676, line: 74, type: !682)
!3859 = !DILocation(line: 0, scope: !3853)
!3860 = !DILocation(line: 0, scope: !679, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 76, column: 10, scope: !3853)
!3862 = !DILocation(line: 176, column: 14, scope: !679, inlinedAt: !3861)
!3863 = !DILocation(line: 178, column: 9, scope: !3803, inlinedAt: !3861)
!3864 = !DILocation(line: 178, column: 7, scope: !679, inlinedAt: !3861)
!3865 = !DILocation(line: 180, column: 13, scope: !3806, inlinedAt: !3861)
!3866 = !DILocation(line: 180, column: 11, scope: !3807, inlinedAt: !3861)
!3867 = !DILocation(line: 191, column: 11, scope: !3815, inlinedAt: !3861)
!3868 = !DILocation(line: 191, column: 11, scope: !3807, inlinedAt: !3861)
!3869 = !DILocation(line: 206, column: 7, scope: !679, inlinedAt: !3861)
!3870 = !DILocation(line: 0, scope: !3769, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 207, column: 10, scope: !679, inlinedAt: !3861)
!3872 = !DILocation(line: 53, column: 10, scope: !3775, inlinedAt: !3871)
!3873 = !DILocation(line: 192, column: 9, scope: !3815, inlinedAt: !3861)
!3874 = !DILocation(line: 201, column: 11, scope: !3824, inlinedAt: !3861)
!3875 = !DILocation(line: 200, column: 11, scope: !3825, inlinedAt: !3861)
!3876 = !DILocation(line: 202, column: 9, scope: !3824, inlinedAt: !3861)
!3877 = !DILocation(line: 203, column: 14, scope: !3825, inlinedAt: !3861)
!3878 = !DILocation(line: 203, column: 18, scope: !3825, inlinedAt: !3861)
!3879 = !DILocation(line: 203, column: 9, scope: !3825, inlinedAt: !3861)
!3880 = !DILocation(line: 53, column: 8, scope: !3775, inlinedAt: !3871)
!3881 = !DILocation(line: 57, column: 7, scope: !3779, inlinedAt: !3871)
!3882 = !DILocation(line: 58, column: 7, scope: !3779, inlinedAt: !3871)
!3883 = !DILocation(line: 61, column: 7, scope: !3769, inlinedAt: !3871)
!3884 = !DILocation(line: 62, column: 8, scope: !3783, inlinedAt: !3871)
!3885 = !DILocation(line: 62, column: 13, scope: !3783, inlinedAt: !3871)
!3886 = !DILocation(line: 62, column: 10, scope: !3783, inlinedAt: !3871)
!3887 = !DILocation(line: 63, column: 5, scope: !3783, inlinedAt: !3871)
!3888 = !DILocation(line: 76, column: 3, scope: !3853)
!3889 = distinct !DISubprogram(name: "xzalloc", scope: !676, file: !676, line: 84, type: !133, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3890)
!3890 = !{!3891}
!3891 = !DILocalVariable(name: "n", arg: 1, scope: !3889, file: !676, line: 84, type: !71)
!3892 = !DILocation(line: 0, scope: !3889)
!3893 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !676, line: 93, type: !71)
!3894 = distinct !DISubprogram(name: "xcalloc", scope: !676, file: !676, line: 93, type: !3724, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3895)
!3895 = !{!3893, !3896, !3897}
!3896 = !DILocalVariable(name: "s", arg: 2, scope: !3894, file: !676, line: 93, type: !71)
!3897 = !DILocalVariable(name: "p", scope: !3894, file: !676, line: 95, type: !69)
!3898 = !DILocation(line: 0, scope: !3894, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 86, column: 10, scope: !3889)
!3900 = !DILocation(line: 100, column: 7, scope: !3901, inlinedAt: !3899)
!3901 = distinct !DILexicalBlock(scope: !3894, file: !676, line: 100, column: 7)
!3902 = !DILocation(line: 101, column: 7, scope: !3901, inlinedAt: !3899)
!3903 = !DILocation(line: 101, column: 18, scope: !3901, inlinedAt: !3899)
!3904 = !DILocation(line: 101, column: 16, scope: !3901, inlinedAt: !3899)
!3905 = !DILocation(line: 100, column: 7, scope: !3894, inlinedAt: !3899)
!3906 = !DILocation(line: 102, column: 5, scope: !3901, inlinedAt: !3899)
!3907 = !DILocation(line: 86, column: 3, scope: !3889)
!3908 = !DILocation(line: 0, scope: !3894)
!3909 = !DILocation(line: 100, column: 7, scope: !3901)
!3910 = !DILocation(line: 101, column: 7, scope: !3901)
!3911 = !DILocation(line: 101, column: 18, scope: !3901)
!3912 = !DILocation(line: 101, column: 16, scope: !3901)
!3913 = !DILocation(line: 100, column: 7, scope: !3894)
!3914 = !DILocation(line: 102, column: 5, scope: !3901)
!3915 = !DILocation(line: 103, column: 3, scope: !3894)
!3916 = distinct !DISubprogram(name: "xmemdup", scope: !676, file: !676, line: 111, type: !3917, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3919)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!69, !311, !71}
!3919 = !{!3920, !3921}
!3920 = !DILocalVariable(name: "p", arg: 1, scope: !3916, file: !676, line: 111, type: !311)
!3921 = !DILocalVariable(name: "s", arg: 2, scope: !3916, file: !676, line: 111, type: !71)
!3922 = !DILocation(line: 0, scope: !3916)
!3923 = !DILocation(line: 0, scope: !3736, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 113, column: 18, scope: !3916)
!3925 = !DILocation(line: 41, column: 13, scope: !3736, inlinedAt: !3924)
!3926 = !DILocation(line: 42, column: 8, scope: !3743, inlinedAt: !3924)
!3927 = !DILocation(line: 42, column: 15, scope: !3743, inlinedAt: !3924)
!3928 = !DILocation(line: 42, column: 10, scope: !3743, inlinedAt: !3924)
!3929 = !DILocation(line: 43, column: 5, scope: !3743, inlinedAt: !3924)
!3930 = !DILocalVariable(name: "__dest", arg: 1, scope: !3931, file: !2545, line: 31, type: !3934)
!3931 = distinct !DISubprogram(name: "memcpy", scope: !2545, file: !2545, line: 31, type: !3932, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3936)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!69, !3934, !3935, !71}
!3934 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!3935 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !311)
!3936 = !{!3930, !3937, !3938}
!3937 = !DILocalVariable(name: "__src", arg: 2, scope: !3931, file: !2545, line: 31, type: !3935)
!3938 = !DILocalVariable(name: "__len", arg: 3, scope: !3931, file: !2545, line: 31, type: !71)
!3939 = !DILocation(line: 0, scope: !3931, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 113, column: 10, scope: !3916)
!3941 = !DILocation(line: 34, column: 10, scope: !3931, inlinedAt: !3940)
!3942 = !DILocation(line: 113, column: 3, scope: !3916)
!3943 = distinct !DISubprogram(name: "xstrdup", scope: !676, file: !676, line: 119, type: !263, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !3944)
!3944 = !{!3945}
!3945 = !DILocalVariable(name: "string", arg: 1, scope: !3943, file: !676, line: 119, type: !79)
!3946 = !DILocation(line: 0, scope: !3943)
!3947 = !DILocation(line: 121, column: 27, scope: !3943)
!3948 = !DILocation(line: 121, column: 43, scope: !3943)
!3949 = !DILocation(line: 0, scope: !3916, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 121, column: 10, scope: !3943)
!3951 = !DILocation(line: 0, scope: !3736, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 113, column: 18, scope: !3916, inlinedAt: !3950)
!3953 = !DILocation(line: 41, column: 13, scope: !3736, inlinedAt: !3952)
!3954 = !DILocation(line: 42, column: 8, scope: !3743, inlinedAt: !3952)
!3955 = !DILocation(line: 42, column: 15, scope: !3743, inlinedAt: !3952)
!3956 = !DILocation(line: 42, column: 10, scope: !3743, inlinedAt: !3952)
!3957 = !DILocation(line: 43, column: 5, scope: !3743, inlinedAt: !3952)
!3958 = !DILocation(line: 0, scope: !3931, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 113, column: 10, scope: !3916, inlinedAt: !3950)
!3960 = !DILocation(line: 34, column: 10, scope: !3931, inlinedAt: !3959)
!3961 = !DILocation(line: 121, column: 3, scope: !3943)
!3962 = distinct !DISubprogram(name: "xalloc_die", scope: !697, file: !697, line: 32, type: !270, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !246)
!3963 = !DILocation(line: 34, column: 10, scope: !3962)
!3964 = !DILocation(line: 34, column: 33, scope: !3962)
!3965 = !DILocation(line: 34, column: 3, scope: !3962)
!3966 = !DILocation(line: 40, column: 3, scope: !3962)
!3967 = distinct !DISubprogram(name: "xstrndup", scope: !700, file: !700, line: 30, type: !3202, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !699, retainedNodes: !3968)
!3968 = !{!3969, !3970, !3971}
!3969 = !DILocalVariable(name: "string", arg: 1, scope: !3967, file: !700, line: 30, type: !79)
!3970 = !DILocalVariable(name: "n", arg: 2, scope: !3967, file: !700, line: 30, type: !71)
!3971 = !DILocalVariable(name: "s", scope: !3967, file: !700, line: 32, type: !25)
!3972 = !DILocation(line: 0, scope: !3967)
!3973 = !DILocation(line: 32, column: 13, scope: !3967)
!3974 = !DILocation(line: 33, column: 9, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3967, file: !700, line: 33, column: 7)
!3976 = !DILocation(line: 33, column: 7, scope: !3967)
!3977 = !DILocation(line: 34, column: 5, scope: !3975)
!3978 = !DILocation(line: 35, column: 3, scope: !3967)
!3979 = distinct !DISubprogram(name: "rpl_calloc", scope: !703, file: !703, line: 42, type: !3724, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !3980)
!3980 = !{!3981, !3982, !3983, !3984}
!3981 = !DILocalVariable(name: "n", arg: 1, scope: !3979, file: !703, line: 42, type: !71)
!3982 = !DILocalVariable(name: "s", arg: 2, scope: !3979, file: !703, line: 42, type: !71)
!3983 = !DILocalVariable(name: "result", scope: !3979, file: !703, line: 44, type: !69)
!3984 = !DILocalVariable(name: "bytes", scope: !3985, file: !703, line: 56, type: !71)
!3985 = distinct !DILexicalBlock(scope: !3986, file: !703, line: 53, column: 5)
!3986 = distinct !DILexicalBlock(scope: !3979, file: !703, line: 47, column: 7)
!3987 = !DILocation(line: 0, scope: !3979)
!3988 = !DILocation(line: 47, column: 9, scope: !3986)
!3989 = !DILocation(line: 47, column: 19, scope: !3986)
!3990 = !DILocation(line: 47, column: 14, scope: !3986)
!3991 = !DILocation(line: 0, scope: !3985)
!3992 = !DILocation(line: 57, column: 21, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3985, file: !703, line: 57, column: 11)
!3994 = !DILocation(line: 57, column: 11, scope: !3985)
!3995 = !DILocation(line: 59, column: 11, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3993, file: !703, line: 58, column: 9)
!3997 = !DILocation(line: 59, column: 17, scope: !3996)
!3998 = !DILocation(line: 65, column: 12, scope: !3979)
!3999 = !DILocation(line: 72, column: 3, scope: !3979)
!4000 = !DILocation(line: 73, column: 1, scope: !3979)
!4001 = distinct !DISubprogram(name: "rpl_fclose", scope: !706, file: !706, line: 58, type: !4002, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !705, retainedNodes: !4006)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!23, !4004}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !712)
!4006 = !{!4007, !4008, !4009, !4010}
!4007 = !DILocalVariable(name: "fp", arg: 1, scope: !4001, file: !706, line: 58, type: !4004)
!4008 = !DILocalVariable(name: "saved_errno", scope: !4001, file: !706, line: 60, type: !23)
!4009 = !DILocalVariable(name: "fd", scope: !4001, file: !706, line: 61, type: !23)
!4010 = !DILocalVariable(name: "result", scope: !4001, file: !706, line: 62, type: !23)
!4011 = !DILocation(line: 0, scope: !4001)
!4012 = !DILocation(line: 65, column: 8, scope: !4001)
!4013 = !DILocation(line: 66, column: 10, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4001, file: !706, line: 66, column: 7)
!4015 = !DILocation(line: 66, column: 7, scope: !4001)
!4016 = !DILocation(line: 67, column: 12, scope: !4014)
!4017 = !DILocation(line: 67, column: 5, scope: !4014)
!4018 = !DILocation(line: 72, column: 9, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4001, file: !706, line: 72, column: 7)
!4020 = !DILocation(line: 72, column: 23, scope: !4019)
!4021 = !DILocation(line: 72, column: 33, scope: !4019)
!4022 = !DILocation(line: 72, column: 26, scope: !4019)
!4023 = !DILocation(line: 72, column: 59, scope: !4019)
!4024 = !DILocation(line: 73, column: 7, scope: !4019)
!4025 = !DILocation(line: 73, column: 10, scope: !4019)
!4026 = !DILocation(line: 72, column: 7, scope: !4001)
!4027 = !DILocation(line: 100, column: 12, scope: !4001)
!4028 = !DILocation(line: 105, column: 7, scope: !4001)
!4029 = !DILocation(line: 74, column: 19, scope: !4019)
!4030 = !DILocation(line: 105, column: 19, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4001, file: !706, line: 105, column: 7)
!4032 = !DILocation(line: 107, column: 13, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4031, file: !706, line: 106, column: 5)
!4034 = !DILocation(line: 109, column: 5, scope: !4033)
!4035 = !DILocation(line: 112, column: 1, scope: !4001)
!4036 = distinct !DISubprogram(name: "rpl_fflush", scope: !749, file: !749, line: 129, type: !4037, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !4041)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!23, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !755)
!4041 = !{!4042}
!4042 = !DILocalVariable(name: "stream", arg: 1, scope: !4036, file: !749, line: 129, type: !4039)
!4043 = !DILocation(line: 0, scope: !4036)
!4044 = !DILocation(line: 150, column: 14, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4036, file: !749, line: 150, column: 7)
!4046 = !DILocation(line: 150, column: 22, scope: !4045)
!4047 = !DILocation(line: 150, column: 27, scope: !4045)
!4048 = !DILocation(line: 150, column: 7, scope: !4036)
!4049 = !DILocation(line: 151, column: 12, scope: !4045)
!4050 = !DILocation(line: 151, column: 5, scope: !4045)
!4051 = !DILocalVariable(name: "fp", arg: 1, scope: !4052, file: !749, line: 41, type: !4039)
!4052 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !749, file: !749, line: 41, type: !4053, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !4055)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{null, !4039}
!4055 = !{!4051}
!4056 = !DILocation(line: 0, scope: !4052, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 156, column: 3, scope: !4036)
!4058 = !DILocation(line: 43, column: 11, scope: !4059, inlinedAt: !4057)
!4059 = distinct !DILexicalBlock(scope: !4052, file: !749, line: 43, column: 7)
!4060 = !{!4061, !1416, i64 0}
!4061 = !{!"_IO_FILE", !1416, i64 0, !1328, i64 8, !1328, i64 16, !1328, i64 24, !1328, i64 32, !1328, i64 40, !1328, i64 48, !1328, i64 56, !1328, i64 64, !1328, i64 72, !1328, i64 80, !1328, i64 88, !1328, i64 96, !1328, i64 104, !1416, i64 112, !1416, i64 116, !1523, i64 120, !1612, i64 128, !1329, i64 130, !1329, i64 131, !1328, i64 136, !1523, i64 144, !1328, i64 152, !1328, i64 160, !1328, i64 168, !1328, i64 176, !1523, i64 184, !1416, i64 192, !1329, i64 196}
!4062 = !DILocation(line: 43, column: 18, scope: !4059, inlinedAt: !4057)
!4063 = !DILocation(line: 43, column: 7, scope: !4052, inlinedAt: !4057)
!4064 = !DILocation(line: 45, column: 5, scope: !4059, inlinedAt: !4057)
!4065 = !DILocation(line: 158, column: 10, scope: !4036)
!4066 = !DILocation(line: 158, column: 3, scope: !4036)
!4067 = !DILocation(line: 235, column: 1, scope: !4036)
!4068 = distinct !DISubprogram(name: "rpl_fseeko", scope: !790, file: !790, line: 28, type: !4069, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4074)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!23, !4071, !4073, !23}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !796)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !248, line: 63, baseType: !45)
!4074 = !{!4075, !4076, !4077, !4078}
!4075 = !DILocalVariable(name: "fp", arg: 1, scope: !4068, file: !790, line: 28, type: !4071)
!4076 = !DILocalVariable(name: "offset", arg: 2, scope: !4068, file: !790, line: 28, type: !4073)
!4077 = !DILocalVariable(name: "whence", arg: 3, scope: !4068, file: !790, line: 28, type: !23)
!4078 = !DILocalVariable(name: "pos", scope: !4079, file: !790, line: 117, type: !4073)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !790, line: 113, column: 5)
!4080 = distinct !DILexicalBlock(scope: !4068, file: !790, line: 52, column: 7)
!4081 = !DILocation(line: 0, scope: !4068)
!4082 = !DILocation(line: 52, column: 11, scope: !4080)
!4083 = !{!4061, !1328, i64 16}
!4084 = !DILocation(line: 52, column: 31, scope: !4080)
!4085 = !{!4061, !1328, i64 8}
!4086 = !DILocation(line: 52, column: 24, scope: !4080)
!4087 = !DILocation(line: 53, column: 7, scope: !4080)
!4088 = !DILocation(line: 53, column: 14, scope: !4080)
!4089 = !{!4061, !1328, i64 40}
!4090 = !DILocation(line: 53, column: 35, scope: !4080)
!4091 = !{!4061, !1328, i64 32}
!4092 = !DILocation(line: 53, column: 28, scope: !4080)
!4093 = !DILocation(line: 54, column: 7, scope: !4080)
!4094 = !DILocation(line: 54, column: 14, scope: !4080)
!4095 = !{!4061, !1328, i64 72}
!4096 = !DILocation(line: 54, column: 28, scope: !4080)
!4097 = !DILocation(line: 52, column: 7, scope: !4068)
!4098 = !DILocation(line: 117, column: 26, scope: !4079)
!4099 = !DILocation(line: 117, column: 19, scope: !4079)
!4100 = !DILocation(line: 0, scope: !4079)
!4101 = !DILocation(line: 118, column: 15, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4079, file: !790, line: 118, column: 11)
!4103 = !DILocation(line: 118, column: 11, scope: !4079)
!4104 = !DILocation(line: 129, column: 11, scope: !4079)
!4105 = !DILocation(line: 129, column: 18, scope: !4079)
!4106 = !DILocation(line: 130, column: 11, scope: !4079)
!4107 = !DILocation(line: 130, column: 19, scope: !4079)
!4108 = !{!4061, !1523, i64 144}
!4109 = !DILocation(line: 161, column: 7, scope: !4079)
!4110 = !DILocation(line: 163, column: 10, scope: !4068)
!4111 = !DILocation(line: 163, column: 3, scope: !4068)
!4112 = !DILocation(line: 164, column: 1, scope: !4068)
!4113 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !831, file: !831, line: 86, type: !4114, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !830, retainedNodes: !4120)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!71, !4116, !79, !71, !4117}
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2289, line: 6, baseType: !4119)
!4119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !499, line: 21, baseType: !837)
!4120 = !{!4121, !4122, !4123, !4124, !4125, !4126, !4127}
!4121 = !DILocalVariable(name: "pwc", arg: 1, scope: !4113, file: !831, line: 86, type: !4116)
!4122 = !DILocalVariable(name: "s", arg: 2, scope: !4113, file: !831, line: 86, type: !79)
!4123 = !DILocalVariable(name: "n", arg: 3, scope: !4113, file: !831, line: 86, type: !71)
!4124 = !DILocalVariable(name: "ps", arg: 4, scope: !4113, file: !831, line: 86, type: !4117)
!4125 = !DILocalVariable(name: "ret", scope: !4113, file: !831, line: 88, type: !71)
!4126 = !DILocalVariable(name: "wc", scope: !4113, file: !831, line: 89, type: !2293)
!4127 = !DILocalVariable(name: "uc", scope: !4128, file: !831, line: 156, type: !343)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !831, line: 155, column: 5)
!4129 = distinct !DILexicalBlock(scope: !4113, file: !831, line: 154, column: 7)
!4130 = !DILocation(line: 0, scope: !4113)
!4131 = !DILocation(line: 89, column: 3, scope: !4113)
!4132 = !DILocation(line: 105, column: 9, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4113, file: !831, line: 105, column: 7)
!4134 = !DILocation(line: 105, column: 7, scope: !4113)
!4135 = !DILocation(line: 145, column: 9, scope: !4113)
!4136 = !DILocation(line: 154, column: 19, scope: !4129)
!4137 = !DILocation(line: 154, column: 31, scope: !4129)
!4138 = !DILocation(line: 154, column: 26, scope: !4129)
!4139 = !DILocation(line: 154, column: 41, scope: !4129)
!4140 = !DILocation(line: 154, column: 7, scope: !4113)
!4141 = !DILocation(line: 156, column: 26, scope: !4128)
!4142 = !DILocation(line: 0, scope: !4128)
!4143 = !DILocation(line: 157, column: 14, scope: !4128)
!4144 = !DILocation(line: 157, column: 12, scope: !4128)
!4145 = !DILocation(line: 163, column: 1, scope: !4113)
!4146 = distinct !DISubprogram(name: "print_and_abort", scope: !570, file: !570, line: 330, type: !270, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !246)
!4147 = !DILocation(line: 340, column: 3, scope: !4146)
!4148 = !DILocation(line: 342, column: 9, scope: !4146)
!4149 = !DILocation(line: 342, column: 3, scope: !4146)
!4150 = distinct !DISubprogram(name: "_obstack_begin", scope: !570, file: !570, line: 150, type: !4151, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4187)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!23, !4153, !71, !71, !132, !143}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !106, line: 174, size: 704, elements: !4155)
!4155 = !{!4156, !4157, !4164, !4165, !4166, !4167, !4172, !4173, !4178, !4183, !4184, !4185, !4186}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !4154, file: !106, line: 176, baseType: !71, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !4154, file: !106, line: 177, baseType: !4158, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !106, line: 167, size: 128, elements: !4160)
!4160 = !{!4161, !4162, !4163}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !4159, file: !106, line: 169, baseType: !25, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4159, file: !106, line: 170, baseType: !4158, size: 64, offset: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !4159, file: !106, line: 171, baseType: !116, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !4154, file: !106, line: 178, baseType: !25, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !4154, file: !106, line: 179, baseType: !25, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !4154, file: !106, line: 180, baseType: !25, size: 64, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4154, file: !106, line: 185, baseType: !4168, size: 64, offset: 320)
!4168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4154, file: !106, line: 181, size: 64, elements: !4169)
!4169 = !{!4170, !4171}
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !4168, file: !106, line: 183, baseType: !71, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4168, file: !106, line: 184, baseType: !69, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !4154, file: !106, line: 186, baseType: !71, size: 64, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !4154, file: !106, line: 193, baseType: !4174, size: 64, offset: 448)
!4174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4154, file: !106, line: 189, size: 64, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4174, file: !106, line: 191, baseType: !132, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4174, file: !106, line: 192, baseType: !136, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !4154, file: !106, line: 198, baseType: !4179, size: 64, offset: 512)
!4179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4154, file: !106, line: 194, size: 64, elements: !4180)
!4180 = !{!4181, !4182}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !4179, file: !106, line: 196, baseType: !143, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4179, file: !106, line: 197, baseType: !147, size: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !4154, file: !106, line: 200, baseType: !69, size: 64, offset: 576)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !4154, file: !106, line: 201, baseType: !6, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !4154, file: !106, line: 202, baseType: !6, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !4154, file: !106, line: 206, baseType: !6, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!4187 = !{!4188, !4189, !4190, !4191, !4192}
!4188 = !DILocalVariable(name: "h", arg: 1, scope: !4150, file: !570, line: 150, type: !4153)
!4189 = !DILocalVariable(name: "size", arg: 2, scope: !4150, file: !570, line: 151, type: !71)
!4190 = !DILocalVariable(name: "alignment", arg: 3, scope: !4150, file: !570, line: 151, type: !71)
!4191 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4150, file: !570, line: 152, type: !132)
!4192 = !DILocalVariable(name: "freefun", arg: 5, scope: !4150, file: !570, line: 153, type: !143)
!4193 = !DILocation(line: 0, scope: !4150)
!4194 = !DILocation(line: 155, column: 15, scope: !4150)
!4195 = !DILocation(line: 155, column: 21, scope: !4150)
!4196 = !DILocation(line: 156, column: 14, scope: !4150)
!4197 = !DILocation(line: 156, column: 20, scope: !4150)
!4198 = !DILocation(line: 157, column: 6, scope: !4150)
!4199 = !DILocation(line: 157, column: 20, scope: !4150)
!4200 = !DILocalVariable(name: "h", arg: 1, scope: !4201, file: !570, line: 109, type: !4153)
!4201 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !570, file: !570, line: 109, type: !4202, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4204)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!23, !4153, !71, !71}
!4204 = !{!4200, !4205, !4206, !4207, !4208}
!4205 = !DILocalVariable(name: "size", arg: 2, scope: !4201, file: !570, line: 110, type: !71)
!4206 = !DILocalVariable(name: "alignment", arg: 3, scope: !4201, file: !570, line: 110, type: !71)
!4207 = !DILocalVariable(name: "chunk", scope: !4201, file: !570, line: 112, type: !4158)
!4208 = !DILocalVariable(name: "extra", scope: !4209, file: !570, line: 127, type: !23)
!4209 = distinct !DILexicalBlock(scope: !4210, file: !570, line: 118, column: 5)
!4210 = distinct !DILexicalBlock(scope: !4201, file: !570, line: 116, column: 7)
!4211 = !DILocation(line: 0, scope: !4201, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 158, column: 10, scope: !4150)
!4213 = !DILocation(line: 114, column: 17, scope: !4214, inlinedAt: !4212)
!4214 = distinct !DILexicalBlock(scope: !4201, file: !570, line: 114, column: 7)
!4215 = !DILocation(line: 114, column: 7, scope: !4201, inlinedAt: !4212)
!4216 = !DILocation(line: 116, column: 12, scope: !4210, inlinedAt: !4212)
!4217 = !DILocation(line: 116, column: 7, scope: !4201, inlinedAt: !4212)
!4218 = !DILocation(line: 133, column: 6, scope: !4201, inlinedAt: !4212)
!4219 = !DILocation(line: 133, column: 17, scope: !4201, inlinedAt: !4212)
!4220 = !{!1522, !1523, i64 0}
!4221 = !DILocation(line: 134, column: 33, scope: !4201, inlinedAt: !4212)
!4222 = !DILocation(line: 134, column: 6, scope: !4201, inlinedAt: !4212)
!4223 = !DILocation(line: 134, column: 21, scope: !4201, inlinedAt: !4212)
!4224 = !DILocalVariable(name: "h", arg: 1, scope: !4225, file: !570, line: 84, type: !4153)
!4225 = distinct !DISubprogram(name: "call_chunkfun", scope: !570, file: !570, line: 84, type: !4226, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!69, !4153, !71}
!4228 = !{!4224, !4229}
!4229 = !DILocalVariable(name: "size", arg: 2, scope: !4225, file: !570, line: 84, type: !71)
!4230 = !DILocation(line: 0, scope: !4225, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 136, column: 22, scope: !4201, inlinedAt: !4212)
!4232 = !DILocation(line: 89, column: 12, scope: !4233, inlinedAt: !4231)
!4233 = distinct !DILexicalBlock(scope: !4225, file: !570, line: 86, column: 7)
!4234 = !DILocation(line: 136, column: 14, scope: !4201, inlinedAt: !4212)
!4235 = !DILocation(line: 136, column: 20, scope: !4201, inlinedAt: !4212)
!4236 = !DILocation(line: 137, column: 8, scope: !4237, inlinedAt: !4212)
!4237 = distinct !DILexicalBlock(scope: !4201, file: !570, line: 137, column: 7)
!4238 = !DILocation(line: 137, column: 7, scope: !4201, inlinedAt: !4212)
!4239 = !DILocation(line: 138, column: 7, scope: !4237, inlinedAt: !4212)
!4240 = !DILocation(line: 138, column: 5, scope: !4237, inlinedAt: !4212)
!4241 = !DILocation(line: 139, column: 35, scope: !4201, inlinedAt: !4212)
!4242 = !DILocation(line: 139, column: 21, scope: !4201, inlinedAt: !4212)
!4243 = !DILocation(line: 139, column: 33, scope: !4201, inlinedAt: !4212)
!4244 = !DILocation(line: 139, column: 6, scope: !4201, inlinedAt: !4212)
!4245 = !DILocation(line: 139, column: 16, scope: !4201, inlinedAt: !4212)
!4246 = !DILocation(line: 141, column: 55, scope: !4201, inlinedAt: !4212)
!4247 = !DILocation(line: 141, column: 50, scope: !4201, inlinedAt: !4212)
!4248 = !DILocation(line: 141, column: 27, scope: !4201, inlinedAt: !4212)
!4249 = !DILocation(line: 141, column: 33, scope: !4201, inlinedAt: !4212)
!4250 = !DILocation(line: 141, column: 6, scope: !4201, inlinedAt: !4212)
!4251 = !DILocation(line: 141, column: 18, scope: !4201, inlinedAt: !4212)
!4252 = !DILocation(line: 142, column: 10, scope: !4201, inlinedAt: !4212)
!4253 = !DILocation(line: 142, column: 15, scope: !4201, inlinedAt: !4212)
!4254 = !DILocation(line: 144, column: 25, scope: !4201, inlinedAt: !4212)
!4255 = !DILocation(line: 145, column: 19, scope: !4201, inlinedAt: !4212)
!4256 = !DILocation(line: 158, column: 3, scope: !4150)
!4257 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !570, file: !570, line: 162, type: !4258, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!23, !4153, !71, !71, !136, !147, !69}
!4260 = !{!4261, !4262, !4263, !4264, !4265, !4266}
!4261 = !DILocalVariable(name: "h", arg: 1, scope: !4257, file: !570, line: 162, type: !4153)
!4262 = !DILocalVariable(name: "size", arg: 2, scope: !4257, file: !570, line: 163, type: !71)
!4263 = !DILocalVariable(name: "alignment", arg: 3, scope: !4257, file: !570, line: 163, type: !71)
!4264 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4257, file: !570, line: 164, type: !136)
!4265 = !DILocalVariable(name: "freefun", arg: 5, scope: !4257, file: !570, line: 165, type: !147)
!4266 = !DILocalVariable(name: "arg", arg: 6, scope: !4257, file: !570, line: 166, type: !69)
!4267 = !DILocation(line: 0, scope: !4257)
!4268 = !DILocation(line: 168, column: 6, scope: !4257)
!4269 = !DILocation(line: 168, column: 15, scope: !4257)
!4270 = !DILocation(line: 168, column: 21, scope: !4257)
!4271 = !DILocation(line: 169, column: 6, scope: !4257)
!4272 = !DILocation(line: 169, column: 14, scope: !4257)
!4273 = !DILocation(line: 169, column: 20, scope: !4257)
!4274 = !DILocation(line: 170, column: 6, scope: !4257)
!4275 = !DILocation(line: 170, column: 16, scope: !4257)
!4276 = !{!1522, !1328, i64 72}
!4277 = !DILocation(line: 171, column: 6, scope: !4257)
!4278 = !DILocation(line: 171, column: 20, scope: !4257)
!4279 = !DILocation(line: 0, scope: !4201, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 172, column: 10, scope: !4257)
!4281 = !DILocation(line: 114, column: 17, scope: !4214, inlinedAt: !4280)
!4282 = !DILocation(line: 114, column: 7, scope: !4201, inlinedAt: !4280)
!4283 = !DILocation(line: 116, column: 12, scope: !4210, inlinedAt: !4280)
!4284 = !DILocation(line: 116, column: 7, scope: !4201, inlinedAt: !4280)
!4285 = !DILocation(line: 133, column: 6, scope: !4201, inlinedAt: !4280)
!4286 = !DILocation(line: 133, column: 17, scope: !4201, inlinedAt: !4280)
!4287 = !DILocation(line: 134, column: 33, scope: !4201, inlinedAt: !4280)
!4288 = !DILocation(line: 134, column: 6, scope: !4201, inlinedAt: !4280)
!4289 = !DILocation(line: 134, column: 21, scope: !4201, inlinedAt: !4280)
!4290 = !DILocation(line: 0, scope: !4225, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 136, column: 22, scope: !4201, inlinedAt: !4280)
!4292 = !DILocation(line: 87, column: 12, scope: !4233, inlinedAt: !4291)
!4293 = !DILocation(line: 136, column: 14, scope: !4201, inlinedAt: !4280)
!4294 = !DILocation(line: 136, column: 20, scope: !4201, inlinedAt: !4280)
!4295 = !DILocation(line: 137, column: 8, scope: !4237, inlinedAt: !4280)
!4296 = !DILocation(line: 137, column: 7, scope: !4201, inlinedAt: !4280)
!4297 = !DILocation(line: 138, column: 7, scope: !4237, inlinedAt: !4280)
!4298 = !DILocation(line: 138, column: 5, scope: !4237, inlinedAt: !4280)
!4299 = !DILocation(line: 139, column: 35, scope: !4201, inlinedAt: !4280)
!4300 = !DILocation(line: 139, column: 21, scope: !4201, inlinedAt: !4280)
!4301 = !DILocation(line: 139, column: 33, scope: !4201, inlinedAt: !4280)
!4302 = !DILocation(line: 139, column: 6, scope: !4201, inlinedAt: !4280)
!4303 = !DILocation(line: 139, column: 16, scope: !4201, inlinedAt: !4280)
!4304 = !DILocation(line: 141, column: 55, scope: !4201, inlinedAt: !4280)
!4305 = !DILocation(line: 141, column: 50, scope: !4201, inlinedAt: !4280)
!4306 = !DILocation(line: 141, column: 27, scope: !4201, inlinedAt: !4280)
!4307 = !DILocation(line: 141, column: 33, scope: !4201, inlinedAt: !4280)
!4308 = !DILocation(line: 141, column: 6, scope: !4201, inlinedAt: !4280)
!4309 = !DILocation(line: 141, column: 18, scope: !4201, inlinedAt: !4280)
!4310 = !DILocation(line: 142, column: 10, scope: !4201, inlinedAt: !4280)
!4311 = !DILocation(line: 142, column: 15, scope: !4201, inlinedAt: !4280)
!4312 = !DILocation(line: 144, column: 25, scope: !4201, inlinedAt: !4280)
!4313 = !DILocation(line: 145, column: 19, scope: !4201, inlinedAt: !4280)
!4314 = !DILocation(line: 172, column: 3, scope: !4257)
!4315 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !570, file: !570, line: 182, type: !4316, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !4153, !71}
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327}
!4319 = !DILocalVariable(name: "h", arg: 1, scope: !4315, file: !570, line: 182, type: !4153)
!4320 = !DILocalVariable(name: "length", arg: 2, scope: !4315, file: !570, line: 182, type: !71)
!4321 = !DILocalVariable(name: "old_chunk", scope: !4315, file: !570, line: 184, type: !4158)
!4322 = !DILocalVariable(name: "new_chunk", scope: !4315, file: !570, line: 185, type: !4158)
!4323 = !DILocalVariable(name: "obj_size", scope: !4315, file: !570, line: 186, type: !71)
!4324 = !DILocalVariable(name: "object_base", scope: !4315, file: !570, line: 187, type: !25)
!4325 = !DILocalVariable(name: "sum1", scope: !4315, file: !570, line: 190, type: !71)
!4326 = !DILocalVariable(name: "sum2", scope: !4315, file: !570, line: 191, type: !71)
!4327 = !DILocalVariable(name: "new_size", scope: !4315, file: !570, line: 192, type: !71)
!4328 = !DILocation(line: 0, scope: !4315)
!4329 = !DILocation(line: 184, column: 41, scope: !4315)
!4330 = !DILocation(line: 186, column: 24, scope: !4315)
!4331 = !DILocation(line: 186, column: 39, scope: !4315)
!4332 = !DILocation(line: 186, column: 34, scope: !4315)
!4333 = !DILocation(line: 190, column: 26, scope: !4315)
!4334 = !DILocation(line: 191, column: 27, scope: !4315)
!4335 = !DILocation(line: 191, column: 22, scope: !4315)
!4336 = !DILocation(line: 192, column: 38, scope: !4315)
!4337 = !DILocation(line: 192, column: 26, scope: !4315)
!4338 = !DILocation(line: 192, column: 44, scope: !4315)
!4339 = !DILocation(line: 193, column: 16, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4315, file: !570, line: 193, column: 7)
!4341 = !DILocation(line: 193, column: 7, scope: !4315)
!4342 = !DILocation(line: 195, column: 21, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4315, file: !570, line: 195, column: 7)
!4344 = !DILocation(line: 195, column: 16, scope: !4343)
!4345 = !DILocation(line: 195, column: 7, scope: !4315)
!4346 = !DILocation(line: 199, column: 16, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4315, file: !570, line: 199, column: 7)
!4348 = !DILocation(line: 199, column: 32, scope: !4347)
!4349 = !DILocation(line: 199, column: 24, scope: !4347)
!4350 = !DILocation(line: 0, scope: !4225, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 200, column: 17, scope: !4347)
!4352 = !DILocation(line: 86, column: 10, scope: !4233, inlinedAt: !4351)
!4353 = !DILocation(line: 86, column: 7, scope: !4233, inlinedAt: !4351)
!4354 = !DILocation(line: 0, scope: !4233, inlinedAt: !4351)
!4355 = !DILocation(line: 86, column: 7, scope: !4225, inlinedAt: !4351)
!4356 = !DILocation(line: 87, column: 24, scope: !4233, inlinedAt: !4351)
!4357 = !DILocation(line: 87, column: 34, scope: !4233, inlinedAt: !4351)
!4358 = !DILocation(line: 87, column: 12, scope: !4233, inlinedAt: !4351)
!4359 = !DILocation(line: 87, column: 5, scope: !4233, inlinedAt: !4351)
!4360 = !DILocation(line: 89, column: 24, scope: !4233, inlinedAt: !4351)
!4361 = !DILocation(line: 89, column: 12, scope: !4233, inlinedAt: !4351)
!4362 = !DILocation(line: 89, column: 5, scope: !4233, inlinedAt: !4351)
!4363 = !DILocation(line: 201, column: 8, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4315, file: !570, line: 201, column: 7)
!4365 = !DILocation(line: 201, column: 7, scope: !4315)
!4366 = !DILocation(line: 202, column: 7, scope: !4364)
!4367 = !DILocation(line: 202, column: 5, scope: !4364)
!4368 = !DILocation(line: 203, column: 12, scope: !4315)
!4369 = !DILocation(line: 204, column: 14, scope: !4315)
!4370 = !DILocation(line: 204, column: 19, scope: !4315)
!4371 = !DILocation(line: 205, column: 58, scope: !4315)
!4372 = !DILocation(line: 205, column: 25, scope: !4315)
!4373 = !DILocation(line: 205, column: 37, scope: !4315)
!4374 = !DILocation(line: 205, column: 14, scope: !4315)
!4375 = !DILocation(line: 205, column: 20, scope: !4315)
!4376 = !DILocation(line: 209, column: 5, scope: !4315)
!4377 = !DILocation(line: 212, column: 27, scope: !4315)
!4378 = !DILocalVariable(name: "__dest", arg: 1, scope: !4379, file: !2545, line: 31, type: !3934)
!4379 = distinct !DISubprogram(name: "memcpy", scope: !2545, file: !2545, line: 31, type: !3932, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4380)
!4380 = !{!4378, !4381, !4382}
!4381 = !DILocalVariable(name: "__src", arg: 2, scope: !4379, file: !2545, line: 31, type: !3935)
!4382 = !DILocalVariable(name: "__len", arg: 3, scope: !4379, file: !2545, line: 31, type: !71)
!4383 = !DILocation(line: 0, scope: !4379, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 212, column: 3, scope: !4315)
!4385 = !DILocation(line: 34, column: 10, scope: !4379, inlinedAt: !4384)
!4386 = !DILocation(line: 217, column: 11, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4315, file: !570, line: 217, column: 7)
!4388 = !DILocation(line: 217, column: 8, scope: !4387)
!4389 = !DILocation(line: 218, column: 7, scope: !4387)
!4390 = !DILocation(line: 218, column: 14, scope: !4387)
!4391 = !DILocation(line: 219, column: 14, scope: !4387)
!4392 = !DILocation(line: 219, column: 11, scope: !4387)
!4393 = !DILocation(line: 217, column: 7, scope: !4315)
!4394 = !DILocation(line: 222, column: 36, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4387, file: !570, line: 221, column: 5)
!4396 = !DILocation(line: 222, column: 23, scope: !4395)
!4397 = !DILocation(line: 223, column: 24, scope: !4395)
!4398 = !DILocalVariable(name: "h", arg: 1, scope: !4399, file: !570, line: 93, type: !4153)
!4399 = distinct !DISubprogram(name: "call_freefun", scope: !570, file: !570, line: 93, type: !4400, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4402)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{null, !4153, !69}
!4402 = !{!4398, !4403}
!4403 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !4399, file: !570, line: 93, type: !69)
!4404 = !DILocation(line: 0, scope: !4399, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 223, column: 7, scope: !4395)
!4406 = !DILocation(line: 95, column: 10, scope: !4407, inlinedAt: !4405)
!4407 = distinct !DILexicalBlock(scope: !4399, file: !570, line: 95, column: 7)
!4408 = !DILocation(line: 95, column: 7, scope: !4407, inlinedAt: !4405)
!4409 = !DILocation(line: 0, scope: !4407, inlinedAt: !4405)
!4410 = !DILocation(line: 95, column: 7, scope: !4399, inlinedAt: !4405)
!4411 = !DILocation(line: 96, column: 16, scope: !4407, inlinedAt: !4405)
!4412 = !DILocation(line: 96, column: 26, scope: !4407, inlinedAt: !4405)
!4413 = !DILocation(line: 96, column: 5, scope: !4407, inlinedAt: !4405)
!4414 = !DILocation(line: 98, column: 16, scope: !4407, inlinedAt: !4405)
!4415 = !DILocation(line: 98, column: 5, scope: !4407, inlinedAt: !4405)
!4416 = !DILocation(line: 226, column: 18, scope: !4315)
!4417 = !DILocation(line: 227, column: 33, scope: !4315)
!4418 = !DILocation(line: 227, column: 16, scope: !4315)
!4419 = !DILocation(line: 229, column: 25, scope: !4315)
!4420 = !DILocation(line: 230, column: 1, scope: !4315)
!4421 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !570, file: !570, line: 241, type: !4422, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4424)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!23, !4153, !69}
!4424 = !{!4425, !4426, !4427, !4428}
!4425 = !DILocalVariable(name: "h", arg: 1, scope: !4421, file: !570, line: 241, type: !4153)
!4426 = !DILocalVariable(name: "obj", arg: 2, scope: !4421, file: !570, line: 241, type: !69)
!4427 = !DILocalVariable(name: "lp", scope: !4421, file: !570, line: 243, type: !4158)
!4428 = !DILocalVariable(name: "plp", scope: !4421, file: !570, line: 244, type: !4158)
!4429 = !DILocation(line: 0, scope: !4421)
!4430 = !DILocation(line: 246, column: 13, scope: !4421)
!4431 = !DILocation(line: 250, column: 13, scope: !4421)
!4432 = !DILocation(line: 250, column: 18, scope: !4421)
!4433 = !DILocation(line: 250, column: 22, scope: !4421)
!4434 = !DILocation(line: 250, column: 34, scope: !4421)
!4435 = !DILocation(line: 250, column: 41, scope: !4421)
!4436 = !DILocation(line: 250, column: 59, scope: !4421)
!4437 = !DILocation(line: 250, column: 65, scope: !4421)
!4438 = !DILocation(line: 250, column: 3, scope: !4421)
!4439 = !DILocation(line: 252, column: 17, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4421, file: !570, line: 251, column: 5)
!4441 = distinct !{!4441, !4438, !4442}
!4442 = !DILocation(line: 254, column: 5, scope: !4421)
!4443 = !DILocation(line: 255, column: 3, scope: !4421)
!4444 = distinct !DISubprogram(name: "_obstack_free", scope: !570, file: !570, line: 262, type: !4400, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4445)
!4445 = !{!4446, !4447, !4448, !4449}
!4446 = !DILocalVariable(name: "h", arg: 1, scope: !4444, file: !570, line: 262, type: !4153)
!4447 = !DILocalVariable(name: "obj", arg: 2, scope: !4444, file: !570, line: 262, type: !69)
!4448 = !DILocalVariable(name: "lp", scope: !4444, file: !570, line: 264, type: !4158)
!4449 = !DILocalVariable(name: "plp", scope: !4444, file: !570, line: 265, type: !4158)
!4450 = !DILocation(line: 0, scope: !4444)
!4451 = !DILocation(line: 267, column: 11, scope: !4444)
!4452 = !DILocation(line: 271, column: 13, scope: !4444)
!4453 = !DILocation(line: 271, column: 18, scope: !4444)
!4454 = !DILocation(line: 0, scope: !4407, inlinedAt: !4455)
!4455 = distinct !DILocation(line: 274, column: 7, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4444, file: !570, line: 272, column: 5)
!4457 = !DILocation(line: 271, column: 22, scope: !4444)
!4458 = !DILocation(line: 271, column: 34, scope: !4444)
!4459 = !DILocation(line: 271, column: 41, scope: !4444)
!4460 = !DILocation(line: 271, column: 59, scope: !4444)
!4461 = !DILocation(line: 271, column: 65, scope: !4444)
!4462 = !DILocation(line: 271, column: 3, scope: !4444)
!4463 = !DILocation(line: 273, column: 17, scope: !4456)
!4464 = !DILocation(line: 0, scope: !4399, inlinedAt: !4455)
!4465 = !DILocation(line: 95, column: 10, scope: !4407, inlinedAt: !4455)
!4466 = !DILocation(line: 95, column: 7, scope: !4407, inlinedAt: !4455)
!4467 = !DILocation(line: 95, column: 7, scope: !4399, inlinedAt: !4455)
!4468 = !DILocation(line: 96, column: 16, scope: !4407, inlinedAt: !4455)
!4469 = !DILocation(line: 96, column: 26, scope: !4407, inlinedAt: !4455)
!4470 = !DILocation(line: 96, column: 5, scope: !4407, inlinedAt: !4455)
!4471 = !DILocation(line: 98, column: 16, scope: !4407, inlinedAt: !4455)
!4472 = !DILocation(line: 98, column: 5, scope: !4407, inlinedAt: !4455)
!4473 = !DILocation(line: 278, column: 29, scope: !4456)
!4474 = distinct !{!4474, !4462, !4475}
!4475 = !DILocation(line: 279, column: 5, scope: !4444)
!4476 = !DILocation(line: 282, column: 27, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4478, file: !570, line: 281, column: 5)
!4478 = distinct !DILexicalBlock(scope: !4444, file: !570, line: 280, column: 7)
!4479 = !DILocation(line: 282, column: 37, scope: !4477)
!4480 = !DILocation(line: 282, column: 10, scope: !4477)
!4481 = !DILocation(line: 282, column: 22, scope: !4477)
!4482 = !DILocation(line: 283, column: 28, scope: !4477)
!4483 = !DILocation(line: 283, column: 10, scope: !4477)
!4484 = !DILocation(line: 283, column: 22, scope: !4477)
!4485 = !DILocation(line: 284, column: 16, scope: !4477)
!4486 = !DILocation(line: 285, column: 5, scope: !4477)
!4487 = !DILocation(line: 286, column: 16, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4478, file: !570, line: 286, column: 12)
!4489 = !DILocation(line: 286, column: 12, scope: !4478)
!4490 = !DILocation(line: 288, column: 5, scope: !4488)
!4491 = !DILocation(line: 289, column: 1, scope: !4444)
!4492 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !570, file: !570, line: 292, type: !4493, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !569, retainedNodes: !4495)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!71, !4153}
!4495 = !{!4496, !4497, !4498}
!4496 = !DILocalVariable(name: "h", arg: 1, scope: !4492, file: !570, line: 292, type: !4153)
!4497 = !DILocalVariable(name: "lp", scope: !4492, file: !570, line: 294, type: !4158)
!4498 = !DILocalVariable(name: "nbytes", scope: !4492, file: !570, line: 295, type: !71)
!4499 = !DILocation(line: 0, scope: !4492)
!4500 = !DILocation(line: 297, column: 16, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4492, file: !570, line: 297, column: 3)
!4502 = !DILocation(line: 0, scope: !4501)
!4503 = !DILocation(line: 297, column: 26, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4501, file: !570, line: 297, column: 3)
!4505 = !DILocation(line: 297, column: 3, scope: !4501)
!4506 = !DILocation(line: 299, column: 21, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !570, line: 298, column: 5)
!4508 = !DILocation(line: 299, column: 27, scope: !4507)
!4509 = !DILocation(line: 299, column: 14, scope: !4507)
!4510 = !DILocation(line: 297, column: 41, scope: !4504)
!4511 = distinct !{!4511, !4505, !4512}
!4512 = !DILocation(line: 300, column: 5, scope: !4501)
!4513 = !DILocation(line: 301, column: 3, scope: !4492)
!4514 = distinct !DISubprogram(name: "close_stream", scope: !850, file: !850, line: 56, type: !4515, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4519)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!23, !4517}
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !856)
!4519 = !{!4520, !4521, !4523, !4524}
!4520 = !DILocalVariable(name: "stream", arg: 1, scope: !4514, file: !850, line: 56, type: !4517)
!4521 = !DILocalVariable(name: "some_pending", scope: !4514, file: !850, line: 58, type: !4522)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!4523 = !DILocalVariable(name: "prev_fail", scope: !4514, file: !850, line: 59, type: !4522)
!4524 = !DILocalVariable(name: "fclose_fail", scope: !4514, file: !850, line: 60, type: !4522)
!4525 = !DILocation(line: 0, scope: !4514)
!4526 = !DILocation(line: 58, column: 30, scope: !4514)
!4527 = !DILocalVariable(name: "__stream", arg: 1, scope: !4528, file: !1568, line: 135, type: !4517)
!4528 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1568, file: !1568, line: 135, type: !4515, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !849, retainedNodes: !4529)
!4529 = !{!4527}
!4530 = !DILocation(line: 0, scope: !4528, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 59, column: 27, scope: !4514)
!4532 = !DILocation(line: 137, column: 10, scope: !4528, inlinedAt: !4531)
!4533 = !DILocation(line: 59, column: 43, scope: !4514)
!4534 = !DILocation(line: 60, column: 29, scope: !4514)
!4535 = !DILocation(line: 60, column: 45, scope: !4514)
!4536 = !DILocation(line: 70, column: 17, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4514, file: !850, line: 70, column: 7)
!4538 = !DILocation(line: 58, column: 50, scope: !4514)
!4539 = !DILocation(line: 70, column: 33, scope: !4537)
!4540 = !DILocation(line: 70, column: 53, scope: !4537)
!4541 = !DILocation(line: 70, column: 59, scope: !4537)
!4542 = !DILocation(line: 70, column: 7, scope: !4514)
!4543 = !DILocation(line: 72, column: 11, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4537, file: !850, line: 71, column: 5)
!4545 = !DILocation(line: 73, column: 9, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4544, file: !850, line: 72, column: 11)
!4547 = !DILocation(line: 73, column: 15, scope: !4546)
!4548 = !DILocation(line: 78, column: 1, scope: !4514)
!4549 = distinct !DISubprogram(name: "hard_locale", scope: !888, file: !888, line: 27, type: !847, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !887, retainedNodes: !4550)
!4550 = !{!4551, !4552}
!4551 = !DILocalVariable(name: "category", arg: 1, scope: !4549, file: !888, line: 27, type: !23)
!4552 = !DILocalVariable(name: "locale", scope: !4549, file: !888, line: 29, type: !4553)
!4553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2056, elements: !4554)
!4554 = !{!4555}
!4555 = !DISubrange(count: 257)
!4556 = !DILocation(line: 0, scope: !4549)
!4557 = !DILocation(line: 29, column: 3, scope: !4549)
!4558 = !DILocation(line: 29, column: 8, scope: !4549)
!4559 = !DILocation(line: 31, column: 7, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4549, file: !888, line: 31, column: 7)
!4561 = !DILocation(line: 31, column: 7, scope: !4549)
!4562 = !DILocation(line: 34, column: 12, scope: !4549)
!4563 = !DILocation(line: 34, column: 38, scope: !4549)
!4564 = !DILocation(line: 34, column: 41, scope: !4549)
!4565 = !DILocation(line: 34, column: 66, scope: !4549)
!4566 = !DILocation(line: 35, column: 1, scope: !4549)
!4567 = distinct !DISubprogram(name: "locale_charset", scope: !895, file: !895, line: 831, type: !522, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4568)
!4568 = !{!4569}
!4569 = !DILocalVariable(name: "codeset", scope: !4567, file: !895, line: 833, type: !79)
!4570 = !DILocation(line: 847, column: 13, scope: !4567)
!4571 = !DILocation(line: 0, scope: !4567)
!4572 = !DILocation(line: 911, column: 15, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4567, file: !895, line: 911, column: 7)
!4574 = !DILocation(line: 911, column: 7, scope: !4567)
!4575 = !DILocation(line: 1070, column: 13, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !895, line: 1070, column: 13)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !895, line: 1060, column: 7)
!4578 = distinct !DILexicalBlock(scope: !4567, file: !895, line: 1019, column: 3)
!4579 = !DILocation(line: 1070, column: 24, scope: !4576)
!4580 = !DILocation(line: 1070, column: 13, scope: !4577)
!4581 = !DILocation(line: 1158, column: 3, scope: !4567)
!4582 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1288, file: !1288, line: 269, type: !4583, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1287, retainedNodes: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!23, !23, !25, !71}
!4585 = !{!4586, !4587, !4588}
!4586 = !DILocalVariable(name: "category", arg: 1, scope: !4582, file: !1288, line: 269, type: !23)
!4587 = !DILocalVariable(name: "buf", arg: 2, scope: !4582, file: !1288, line: 269, type: !25)
!4588 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4582, file: !1288, line: 269, type: !71)
!4589 = !DILocation(line: 0, scope: !4582)
!4590 = !DILocalVariable(name: "category", arg: 1, scope: !4591, file: !1288, line: 91, type: !23)
!4591 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1288, file: !1288, line: 91, type: !4583, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1287, retainedNodes: !4592)
!4592 = !{!4590, !4593, !4594, !4595, !4596}
!4593 = !DILocalVariable(name: "buf", arg: 2, scope: !4591, file: !1288, line: 91, type: !25)
!4594 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4591, file: !1288, line: 91, type: !71)
!4595 = !DILocalVariable(name: "result", scope: !4591, file: !1288, line: 140, type: !79)
!4596 = !DILocalVariable(name: "length", scope: !4597, file: !1288, line: 154, type: !71)
!4597 = distinct !DILexicalBlock(scope: !4598, file: !1288, line: 153, column: 5)
!4598 = distinct !DILexicalBlock(scope: !4591, file: !1288, line: 142, column: 7)
!4599 = !DILocation(line: 0, scope: !4591, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 274, column: 10, scope: !4582)
!4601 = !DILocalVariable(name: "category", arg: 1, scope: !4602, file: !1288, line: 60, type: !23)
!4602 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !1288, file: !1288, line: 60, type: !4603, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1287, retainedNodes: !4605)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!79, !23}
!4605 = !{!4601, !4606}
!4606 = !DILocalVariable(name: "result", scope: !4602, file: !1288, line: 62, type: !79)
!4607 = !DILocation(line: 0, scope: !4602, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 140, column: 24, scope: !4591, inlinedAt: !4600)
!4609 = !DILocation(line: 62, column: 24, scope: !4602, inlinedAt: !4608)
!4610 = !DILocation(line: 142, column: 14, scope: !4598, inlinedAt: !4600)
!4611 = !DILocation(line: 142, column: 7, scope: !4591, inlinedAt: !4600)
!4612 = !DILocation(line: 145, column: 19, scope: !4613, inlinedAt: !4600)
!4613 = distinct !DILexicalBlock(scope: !4614, file: !1288, line: 145, column: 11)
!4614 = distinct !DILexicalBlock(scope: !4598, file: !1288, line: 143, column: 5)
!4615 = !DILocation(line: 145, column: 11, scope: !4614, inlinedAt: !4600)
!4616 = !DILocation(line: 149, column: 16, scope: !4613, inlinedAt: !4600)
!4617 = !DILocation(line: 149, column: 9, scope: !4613, inlinedAt: !4600)
!4618 = !DILocation(line: 154, column: 23, scope: !4597, inlinedAt: !4600)
!4619 = !DILocation(line: 0, scope: !4597, inlinedAt: !4600)
!4620 = !DILocation(line: 155, column: 18, scope: !4621, inlinedAt: !4600)
!4621 = distinct !DILexicalBlock(scope: !4597, file: !1288, line: 155, column: 11)
!4622 = !DILocation(line: 155, column: 11, scope: !4597, inlinedAt: !4600)
!4623 = !DILocation(line: 157, column: 39, scope: !4624, inlinedAt: !4600)
!4624 = distinct !DILexicalBlock(scope: !4621, file: !1288, line: 156, column: 9)
!4625 = !DILocalVariable(name: "__dest", arg: 1, scope: !4626, file: !2545, line: 31, type: !3934)
!4626 = distinct !DISubprogram(name: "memcpy", scope: !2545, file: !2545, line: 31, type: !3932, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1287, retainedNodes: !4627)
!4627 = !{!4625, !4628, !4629}
!4628 = !DILocalVariable(name: "__src", arg: 2, scope: !4626, file: !2545, line: 31, type: !3935)
!4629 = !DILocalVariable(name: "__len", arg: 3, scope: !4626, file: !2545, line: 31, type: !71)
!4630 = !DILocation(line: 0, scope: !4626, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 157, column: 11, scope: !4624, inlinedAt: !4600)
!4632 = !DILocation(line: 34, column: 10, scope: !4626, inlinedAt: !4631)
!4633 = !DILocation(line: 158, column: 11, scope: !4624, inlinedAt: !4600)
!4634 = !DILocation(line: 162, column: 23, scope: !4635, inlinedAt: !4600)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !1288, line: 162, column: 15)
!4636 = distinct !DILexicalBlock(scope: !4621, file: !1288, line: 161, column: 9)
!4637 = !DILocation(line: 162, column: 15, scope: !4636, inlinedAt: !4600)
!4638 = !DILocation(line: 167, column: 44, scope: !4639, inlinedAt: !4600)
!4639 = distinct !DILexicalBlock(scope: !4635, file: !1288, line: 163, column: 13)
!4640 = !DILocation(line: 0, scope: !4626, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 167, column: 15, scope: !4639, inlinedAt: !4600)
!4642 = !DILocation(line: 34, column: 10, scope: !4626, inlinedAt: !4641)
!4643 = !DILocation(line: 168, column: 15, scope: !4639, inlinedAt: !4600)
!4644 = !DILocation(line: 168, column: 32, scope: !4639, inlinedAt: !4600)
!4645 = !DILocation(line: 169, column: 13, scope: !4639, inlinedAt: !4600)
!4646 = !DILocation(line: 0, scope: !4598, inlinedAt: !4600)
!4647 = !DILocation(line: 274, column: 3, scope: !4582)
!4648 = distinct !DISubprogram(name: "setlocale_null", scope: !1288, file: !1288, line: 301, type: !4603, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1287, retainedNodes: !4649)
!4649 = !{!4650}
!4650 = !DILocalVariable(name: "category", arg: 1, scope: !4648, file: !1288, line: 301, type: !23)
!4651 = !DILocation(line: 0, scope: !4648)
!4652 = !DILocation(line: 0, scope: !4602, inlinedAt: !4653)
!4653 = distinct !DILocation(line: 304, column: 10, scope: !4648)
!4654 = !DILocation(line: 62, column: 24, scope: !4602, inlinedAt: !4653)
!4655 = !DILocation(line: 304, column: 3, scope: !4648)
