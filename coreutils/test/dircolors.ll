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
@G_line = internal constant [4304 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2020 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Below are TERM entries, which can be a glob patterns, to match\00# against the TERM environment variable to determine if it is colorizable.\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM xterm*\00# Below are the color init strings for the basic file types.\00# One can use codes for 256 or more colors supported by modern terminals.\00# The default color codes use the capabilities of an 8 color terminal\00# with some additional attributes as per the following codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # file that is setuid (u+s)\00SETGID 30;43 # file that is setgid (g+s)\00CAPABILITY 30;41 # file with capability\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for files with execute permission:\00EXEC 01;32\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to colorize below. Put the extension, a space, and the color init string.\00# (and any comments you want to add after a '#')\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to colorize scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00 # archives or compressed (bright red)\00.tar 01;31\00.tgz 01;31\00.arc 01;31\00.arj 01;31\00.taz 01;31\00.lha 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.tlz 01;31\00.txz 01;31\00.tzo 01;31\00.t7z 01;31\00.zip 01;31\00.z 01;31\00.dz 01;31\00.gz 01;31\00.lrz 01;31\00.lz 01;31\00.lzo 01;31\00.xz 01;31\00.zst 01;31\00.tzst 01;31\00.bz2 01;31\00.bz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tz 01;31\00.deb 01;31\00.rpm 01;31\00.jar 01;31\00.war 01;31\00.ear 01;31\00.sar 01;31\00.rar 01;31\00.alz 01;31\00.ace 01;31\00.zoo 01;31\00.cpio 01;31\00.7z 01;31\00.rz 01;31\00.cab 01;31\00.wim 01;31\00.swm 01;31\00.dwm 01;31\00.esd 01;31\00# image formats\00.jpg 01;35\00.jpeg 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.webp 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00", align 16, !dbg !246
@.str.44 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"tcsh\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"no SHELL environment variable, and no shell type option given\00", align 1
@lsc_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !244
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
@slack_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), i8* null], align 16, !dbg !252
@ls_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0), i8* null], align 16, !dbg !258
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
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i64 0, i64 0), align 8, !dbg !272
@.str.118 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !278
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !283
@.str.123 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.124 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.125 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !285
@.str.132 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !291
@.str.137 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.138 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.139 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.142, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.143, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.144, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.145, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.146, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.147, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.148, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.149, i32 0, i32 0), i8* null], align 16, !dbg !297
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !309
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !315
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !325
@.str.11.150 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.151 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.152 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.153 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.154 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.155 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.156 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !332
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !339
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !327
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !341
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !346
@.str.1.198 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@obstack_alloc_failed_handler = dso_local local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !354
@.str.1.212 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1.222 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.225 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.226 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32 %0) local_unnamed_addr #0 !dbg !813 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !817, metadata !DIExpression()), !dbg !818
  %3 = icmp eq i32 %0, 0, !dbg !819
  br i1 %3, label %9, label %4, !dbg !821

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !822, !tbaa !824
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #28, !dbg !822
  %7 = load i8*, i8** @program_name, align 8, !dbg !822, !tbaa !824
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #28, !dbg !822
  br label %61, !dbg !822

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 5) #28, !dbg !828
  %11 = load i8*, i8** @program_name, align 8, !dbg !828, !tbaa !824
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #28, !dbg !828
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @.str.2, i64 0, i64 0), i32 5) #28, !dbg !830
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !830, !tbaa !824
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !830
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #28, !dbg !831
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !831, !tbaa !824
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !831
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #28, !dbg !832
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !832, !tbaa !824
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !832
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.5, i64 0, i64 0), i32 5) #28, !dbg !833
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !833, !tbaa !824
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !833
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), metadata !834, metadata !DIExpression()) #28, !dbg !853
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !855
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #28, !dbg !855
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !840, metadata !DIExpression()) #28, !dbg !856
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(112) %25, i8* nonnull align 16 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #28, !dbg !856
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), metadata !849, metadata !DIExpression()) #28, !dbg !853
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !850, metadata !DIExpression()) #28, !dbg !853
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !857
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !850, metadata !DIExpression()) #28, !dbg !853
  br label %27, !dbg !858

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !850, metadata !DIExpression()) #28, !dbg !853
  %30 = tail call i32 @strcmp(i8* nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* nonnull %28) #29, !dbg !859
  %31 = icmp eq i32 %30, 0, !dbg !859
  br i1 %31, label %37, label %32, !dbg !858

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !860
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !850, metadata !DIExpression()) #28, !dbg !853
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !861
  %35 = load i8*, i8** %34, align 8, !dbg !861, !tbaa !862
  %36 = icmp eq i8* %35, null, !dbg !864
  br i1 %36, label %37, label %27, !dbg !865, !llvm.loop !866

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !868
  %40 = load i8*, i8** %39, align 8, !dbg !868, !tbaa !870
  %41 = icmp eq i8* %40, null, !dbg !871
  %42 = select i1 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %40, !dbg !872
  call void @llvm.dbg.value(metadata i8* %42, metadata !849, metadata !DIExpression()) #28, !dbg !853
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #28, !dbg !873
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #28, !dbg !873
  %45 = tail call i8* @setlocale(i32 5, i8* null) #28, !dbg !874
  call void @llvm.dbg.value(metadata i8* %45, metadata !852, metadata !DIExpression()) #28, !dbg !853
  %46 = icmp eq i8* %45, null, !dbg !875
  br i1 %46, label %54, label %47, !dbg !877

47:                                               ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #29, !dbg !878
  %49 = icmp eq i32 %48, 0, !dbg !878
  br i1 %49, label %54, label %50, !dbg !879

50:                                               ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.33, i64 0, i64 0), i32 5) #28, !dbg !880
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !880, !tbaa !824
  %53 = tail call i32 @fputs_unlocked(i8* %51, %struct._IO_FILE* %52) #28, !dbg !880
  br label %54, !dbg !882

54:                                               ; preds = %37, %47, %50
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 5) #28, !dbg !883
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #28, !dbg !883
  %57 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #28, !dbg !884
  %58 = icmp eq i8* %42, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), !dbg !884
  %59 = select i1 %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), !dbg !884
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %57, i8* %42, i8* %59) #28, !dbg !884
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #28, !dbg !885
  br label %61

61:                                               ; preds = %54, %4
  tail call void @exit(i32 %0) #30, !dbg !886
  unreachable, !dbg !886
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !887 i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !891 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !895 i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 %0, i8** %1) local_unnamed_addr #8 !dbg !899 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !904, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata i8** %1, metadata !905, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata i8 1, metadata !906, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata i32 2, metadata !908, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata i8 0, metadata !909, metadata !DIExpression()), !dbg !929
  %3 = load i8*, i8** %1, align 8, !dbg !930, !tbaa !824
  tail call void @set_program_name(i8* %3) #28, !dbg !931
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)) #28, !dbg !932
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0)) #28, !dbg !933
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #28, !dbg !934
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #28, !dbg !935
  br label %8, !dbg !936

8:                                                ; preds = %11, %2
  %9 = phi i1 [ false, %2 ], [ true, %11 ]
  %10 = phi i32 [ 2, %2 ], [ %12, %11 ]
  br label %11, !dbg !936

11:                                               ; preds = %14, %8
  %12 = phi i32 [ %10, %8 ], [ %15, %14 ], !dbg !937
  call void @llvm.dbg.value(metadata i32 %12, metadata !908, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata i8 undef, metadata !909, metadata !DIExpression()), !dbg !929
  %13 = tail call i32 @getopt_long(i32 %0, i8** nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #28, !dbg !938
  call void @llvm.dbg.value(metadata i32 %13, metadata !907, metadata !DIExpression()), !dbg !929
  switch i32 %13, label %21 [
    i32 -1, label %22
    i32 98, label %14
    i32 99, label %16
    i32 112, label %8
    i32 -130, label %17
    i32 -131, label %18
  ], !dbg !936, !llvm.loop !939

14:                                               ; preds = %11, %16
  %15 = phi i32 [ 1, %16 ], [ 0, %11 ]
  br label %11, !dbg !929, !llvm.loop !939

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 1, metadata !908, metadata !DIExpression()), !dbg !929
  br label %14, !dbg !941

17:                                               ; preds = %11
  tail call void @usage(i32 0) #31, !dbg !943
  unreachable, !dbg !943

18:                                               ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !944, !tbaa !824
  %20 = load i8*, i8** @Version, align 8, !dbg !944, !tbaa !824
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* null) #28, !dbg !944
  tail call void @exit(i32 0) #30, !dbg !944
  unreachable, !dbg !944

21:                                               ; preds = %11
  tail call void @usage(i32 1) #31, !dbg !945
  unreachable, !dbg !945

22:                                               ; preds = %11
  %23 = load i32, i32* @optind, align 4, !dbg !946, !tbaa !947
  %24 = sub nsw i32 %0, %23, !dbg !949
  call void @llvm.dbg.value(metadata i32 %24, metadata !904, metadata !DIExpression()), !dbg !929
  %25 = sext i32 %23 to i64, !dbg !950
  %26 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !950
  call void @llvm.dbg.value(metadata i8** %26, metadata !905, metadata !DIExpression()), !dbg !929
  %27 = icmp ne i32 %12, 2
  %28 = and i1 %9, %27, !dbg !951
  br i1 %28, label %29, label %31, !dbg !951

29:                                               ; preds = %22
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.13, i64 0, i64 0), i32 5) #28, !dbg !953
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %30) #28, !dbg !955
  tail call void @usage(i32 1) #31, !dbg !956
  unreachable, !dbg !956

31:                                               ; preds = %22
  %32 = xor i1 %9, true, !dbg !957
  %33 = zext i1 %32 to i32, !dbg !957
  %34 = icmp sgt i32 %24, %33, !dbg !959
  br i1 %34, label %35, label %46, !dbg !960

35:                                               ; preds = %31
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 5) #28, !dbg !961
  %37 = zext i1 %32 to i64, !dbg !963
  %38 = getelementptr inbounds i8*, i8** %26, i64 %37, !dbg !963
  %39 = load i8*, i8** %38, align 8, !dbg !963, !tbaa !824
  %40 = tail call i8* @quote(i8* %39) #28, !dbg !964
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %36, i8* %40) #28, !dbg !965
  br i1 %9, label %41, label %45, !dbg !966

41:                                               ; preds = %35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !967, !tbaa !824
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), i32 5) #28, !dbg !967
  %44 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %42, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %43) #28, !dbg !967
  br label %45, !dbg !967

45:                                               ; preds = %41, %35
  tail call void @usage(i32 1) #31, !dbg !969
  unreachable, !dbg !969

46:                                               ; preds = %31
  br i1 %9, label %47, label %56, !dbg !970

47:                                               ; preds = %46, %47
  %48 = phi i8* [ %52, %47 ], [ getelementptr inbounds ([4304 x i8], [4304 x i8]* @G_line, i64 0, i64 0), %46 ]
  call void @llvm.dbg.value(metadata i8* %48, metadata !910, metadata !DIExpression()), !dbg !971
  %49 = tail call i32 @puts(i8* nonnull dereferenceable(1) %48), !dbg !972
  %50 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %48) #29, !dbg !974
  %51 = add i64 %50, 1, !dbg !975
  %52 = getelementptr inbounds i8, i8* %48, i64 %51, !dbg !976
  call void @llvm.dbg.value(metadata i8* %52, metadata !910, metadata !DIExpression()), !dbg !971
  %53 = ptrtoint i8* %52 to i64, !dbg !977
  %54 = sub i64 %53, ptrtoint ([4304 x i8]* @G_line to i64), !dbg !977
  %55 = icmp ult i64 %54, 4304, !dbg !978
  br i1 %55, label %47, label %139, !dbg !979, !llvm.loop !980

56:                                               ; preds = %46
  %57 = icmp eq i32 %12, 2, !dbg !982
  br i1 %57, label %58, label %74, !dbg !984

58:                                               ; preds = %56
  %59 = tail call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0)) #28, !dbg !985
  call void @llvm.dbg.value(metadata i8* %59, metadata !990, metadata !DIExpression()) #28, !dbg !993
  %60 = icmp eq i8* %59, null, !dbg !994
  br i1 %60, label %72, label %61, !dbg !996

61:                                               ; preds = %58
  %62 = load i8, i8* %59, align 1, !dbg !997, !tbaa !998
  %63 = icmp eq i8 %62, 0, !dbg !999
  br i1 %63, label %72, label %64, !dbg !1000

64:                                               ; preds = %61
  %65 = tail call i8* @last_component(i8* nonnull %59) #29, !dbg !1001
  call void @llvm.dbg.value(metadata i8* %65, metadata !990, metadata !DIExpression()) #28, !dbg !993
  %66 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %65, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #29, !dbg !1002
  %67 = icmp eq i32 %66, 0, !dbg !1002
  br i1 %67, label %74, label %68, !dbg !1004

68:                                               ; preds = %64
  %69 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %65, i8* nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0)) #29, !dbg !1005
  %70 = icmp eq i32 %69, 0, !dbg !1005
  %71 = zext i1 %70 to i32, !dbg !1006
  br label %74, !dbg !1006

72:                                               ; preds = %61, %58
  call void @llvm.dbg.value(metadata i32 undef, metadata !908, metadata !DIExpression()), !dbg !929
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i32 5) #28, !dbg !1007
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %73) #28, !dbg !1007
  unreachable, !dbg !1007

74:                                               ; preds = %68, %64, %56
  %75 = phi i32 [ %12, %56 ], [ %71, %68 ], [ 1, %64 ], !dbg !929
  call void @llvm.dbg.value(metadata i32 %75, metadata !908, metadata !DIExpression()), !dbg !929
  %76 = tail call i32 @_obstack_begin(%struct.obstack* nonnull @lsc_obstack, i64 0, i64 0, i8* (i64)* nonnull @malloc, void (i8*)* nonnull @free) #28, !dbg !1010
  %77 = icmp eq i32 %24, 0, !dbg !1011
  br i1 %77, label %78, label %80, !dbg !1013

78:                                               ; preds = %74
  %79 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* null, i8* null), !dbg !1014
  call void @llvm.dbg.value(metadata i1 %79, metadata !906, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !929
  call void @llvm.dbg.value(metadata i1 %94, metadata !906, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !929
  br i1 %79, label %103, label %139, !dbg !1015

80:                                               ; preds = %74
  %81 = load i8*, i8** %26, align 8, !dbg !1016, !tbaa !824
  call void @llvm.dbg.value(metadata i8* %81, metadata !1017, metadata !DIExpression()) #28, !dbg !1023
  %82 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %81, i8* nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i64 0, i64 0)) #29, !dbg !1025
  %83 = icmp eq i32 %82, 0, !dbg !1025
  br i1 %83, label %92, label %84, !dbg !1027

84:                                               ; preds = %80
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1028, !tbaa !824
  %86 = tail call %struct._IO_FILE* @freopen_safer(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0), %struct._IO_FILE* %85) #28, !dbg !1029
  %87 = icmp eq %struct._IO_FILE* %86, null, !dbg !1030
  br i1 %87, label %88, label %92, !dbg !1031

88:                                               ; preds = %84
  %89 = tail call i32* @__errno_location() #32, !dbg !1032
  %90 = load i32, i32* %89, align 4, !dbg !1032, !tbaa !947
  %91 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %81) #28, !dbg !1034
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %91) #28, !dbg !1035
  br label %139, !dbg !1036

92:                                               ; preds = %84, %80
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1037, !tbaa !824
  %94 = tail call fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* %93, i8* %81) #28, !dbg !1038
  call void @llvm.dbg.value(metadata i1 %94, metadata !1022, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #28, !dbg !1023
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1039, !tbaa !824
  %96 = tail call i32 @rpl_fclose(%struct._IO_FILE* %95) #28, !dbg !1041
  %97 = icmp eq i32 %96, 0, !dbg !1042
  br i1 %97, label %102, label %98, !dbg !1043

98:                                               ; preds = %92
  %99 = tail call i32* @__errno_location() #32, !dbg !1044
  %100 = load i32, i32* %99, align 4, !dbg !1044, !tbaa !947
  %101 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %81) #28, !dbg !1046
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.117, i64 0, i64 0), i8* %101) #28, !dbg !1047
  br label %139, !dbg !1048

102:                                              ; preds = %92
  call void @llvm.dbg.value(metadata i1 %94, metadata !906, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !929
  br i1 %94, label %103, label %139, !dbg !1015

103:                                              ; preds = %78, %102
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !917, metadata !DIExpression()), !dbg !1049
  %104 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1050, !tbaa !1051
  %105 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2), align 8, !dbg !1050, !tbaa !1054
  %106 = ptrtoint i8* %104 to i64, !dbg !1050
  %107 = ptrtoint i8* %105 to i64, !dbg !1050
  %108 = sub i64 %106, %107, !dbg !1050
  call void @llvm.dbg.value(metadata i64 %108, metadata !913, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !920, metadata !DIExpression()), !dbg !1056
  call void @llvm.dbg.value(metadata i8* %105, metadata !922, metadata !DIExpression()), !dbg !1056
  %109 = icmp eq i8* %104, %105, !dbg !1057
  br i1 %109, label %110, label %113, !dbg !1059

110:                                              ; preds = %103
  %111 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !1057
  %112 = or i8 %111, 2, !dbg !1057
  store i8 %112, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !1057
  br label %113, !dbg !1057

113:                                              ; preds = %110, %103
  %114 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 6), align 8, !dbg !1059, !tbaa !1060
  %115 = add i64 %114, %106, !dbg !1059
  %116 = xor i64 %114, -1, !dbg !1059
  %117 = and i64 %115, %116, !dbg !1059
  %118 = getelementptr inbounds i8, i8* null, i64 %117, !dbg !1059
  store i8* %118, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1059, !tbaa !1051
  %119 = load i8*, i8** bitcast (%struct._obstack_chunk** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 1) to i8**), align 8, !dbg !1061, !tbaa !1063
  %120 = ptrtoint i8* %118 to i64, !dbg !1061
  %121 = ptrtoint i8* %119 to i64, !dbg !1061
  %122 = sub i64 %120, %121, !dbg !1061
  %123 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1061, !tbaa !1064
  %124 = ptrtoint i8* %123 to i64, !dbg !1061
  %125 = sub i64 %124, %121, !dbg !1061
  %126 = icmp ugt i64 %122, %125, !dbg !1061
  br i1 %126, label %127, label %128, !dbg !1059

127:                                              ; preds = %113
  store i8* %123, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1061, !tbaa !1051
  br label %128, !dbg !1061

128:                                              ; preds = %127, %113
  %129 = phi i8* [ %123, %127 ], [ %118, %113 ], !dbg !1059
  store i8* %129, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2), align 8, !dbg !1059, !tbaa !1054
  call void @llvm.dbg.value(metadata i8* %105, metadata !919, metadata !DIExpression()), !dbg !1055
  %130 = icmp eq i32 %75, 0, !dbg !1065
  %131 = select i1 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), !dbg !1067
  %132 = select i1 %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), !dbg !1067
  call void @llvm.dbg.value(metadata i8* %132, metadata !924, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata i8* %131, metadata !923, metadata !DIExpression()), !dbg !1055
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1068, !tbaa !824
  %134 = tail call i32 @fputs_unlocked(i8* %131, %struct._IO_FILE* %133), !dbg !1068
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1069, !tbaa !824
  %136 = tail call i64 @fwrite_unlocked(i8* %105, i64 1, i64 %108, %struct._IO_FILE* %135), !dbg !1069
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1070, !tbaa !824
  %138 = tail call i32 @fputs_unlocked(i8* %132, %struct._IO_FILE* %137), !dbg !1070
  br label %139, !dbg !1071

139:                                              ; preds = %47, %88, %98, %78, %102, %128
  %140 = phi i32 [ 0, %128 ], [ 1, %102 ], [ 1, %78 ], [ 1, %98 ], [ 1, %88 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !906, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !929
  ret i32 %140, !dbg !1072
}

; Function Attrs: nounwind
declare !dbg !1073 i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1076 i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1079 i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1083 i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare !dbg !1089 void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1093 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare !dbg !1096 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #9

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) #10

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare void @free(i8* nocapture noundef) #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @dc_parse_stream(%struct._IO_FILE* %0, i8* %1) unnamed_addr #8 !dbg !12 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !82, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %1, metadata !83, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 0, metadata !84, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4304 x i8], [4304 x i8]* @G_line, i64 0, i64 0), metadata !85, metadata !DIExpression()), !dbg !1097
  %5 = bitcast i8** %3 to i8*, !dbg !1098
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #28, !dbg !1098
  call void @llvm.dbg.value(metadata i8* null, metadata !86, metadata !DIExpression()), !dbg !1097
  store i8* null, i8** %3, align 8, !dbg !1099, !tbaa !824
  %6 = bitcast i64* %4 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #28, !dbg !1100
  call void @llvm.dbg.value(metadata i64 0, metadata !87, metadata !DIExpression()), !dbg !1097
  store i64 0, i64* %4, align 8, !dbg !1101, !tbaa !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !90, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 3, metadata !91, metadata !DIExpression()), !dbg !1097
  %7 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #28, !dbg !1103
  call void @llvm.dbg.value(metadata i8* %7, metadata !89, metadata !DIExpression()), !dbg !1097
  %8 = icmp eq i8* %7, null, !dbg !1104
  br i1 %8, label %12, label %9, !dbg !1106

9:                                                ; preds = %2
  %10 = load i8, i8* %7, align 1, !dbg !1107, !tbaa !998
  %11 = icmp eq i8 %10, 0, !dbg !1108
  br i1 %11, label %12, label %13, !dbg !1109

12:                                               ; preds = %9, %2
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), metadata !89, metadata !DIExpression()), !dbg !1097
  br label %13, !dbg !1110

13:                                               ; preds = %12, %9
  %14 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %12 ], [ %7, %9 ], !dbg !1097
  call void @llvm.dbg.value(metadata i8* %14, metadata !89, metadata !DIExpression()), !dbg !1097
  %15 = icmp eq %struct._IO_FILE* %0, null
  %16 = icmp eq i8* %1, null
  br label %17, !dbg !1111

17:                                               ; preds = %240, %13
  %18 = phi i32 [ %241, %240 ], [ 3, %13 ]
  %19 = phi i8 [ %242, %240 ], [ 1, %13 ]
  %20 = phi i8* [ %43, %240 ], [ getelementptr inbounds ([4304 x i8], [4304 x i8]* @G_line, i64 0, i64 0), %13 ]
  %21 = phi i64 [ %29, %240 ], [ 0, %13 ]
  br label %22, !dbg !1112

22:                                               ; preds = %17, %113
  %23 = phi i8 [ %19, %17 ], [ 0, %113 ]
  %24 = phi i8* [ %20, %17 ], [ %43, %113 ]
  %25 = phi i64 [ %21, %17 ], [ %29, %113 ]
  br label %26, !dbg !1112

26:                                               ; preds = %56, %22
  %27 = phi i8* [ %24, %22 ], [ %43, %56 ], !dbg !1113
  %28 = phi i64 [ %25, %22 ], [ %29, %56 ], !dbg !1097
  call void @llvm.dbg.value(metadata i64 %28, metadata !84, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %27, metadata !85, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %23, metadata !90, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %18, metadata !91, metadata !DIExpression()), !dbg !1097
  %29 = add i64 %28, 1, !dbg !1114
  call void @llvm.dbg.value(metadata i64 %29, metadata !84, metadata !DIExpression()), !dbg !1097
  br i1 %15, label %35, label %30, !dbg !1112

30:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8** %3, metadata !86, metadata !DIExpression(DW_OP_deref)), !dbg !1097
  call void @llvm.dbg.value(metadata i64* %4, metadata !87, metadata !DIExpression(DW_OP_deref)), !dbg !1097
  call void @llvm.dbg.value(metadata i8** %3, metadata !1115, metadata !DIExpression()) #28, !dbg !1124
  call void @llvm.dbg.value(metadata i64* %4, metadata !1122, metadata !DIExpression()) #28, !dbg !1124
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1123, metadata !DIExpression()) #28, !dbg !1124
  %31 = call i64 @__getdelim(i8** nonnull %3, i64* nonnull %4, i32 10, %struct._IO_FILE* nonnull %0) #28, !dbg !1129
  %32 = icmp slt i64 %31, 1, !dbg !1130
  %33 = load i8*, i8** %3, align 8, !dbg !1131, !tbaa !824
  call void @llvm.dbg.value(metadata i8* %33, metadata !86, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %33, metadata !86, metadata !DIExpression()), !dbg !1097
  br i1 %32, label %34, label %41, !dbg !1132

34:                                               ; preds = %30
  call void @free(i8* %33) #28, !dbg !1133
  br label %243, !dbg !1135

35:                                               ; preds = %26
  %36 = icmp eq i8* %27, getelementptr inbounds ([4304 x i8], [4304 x i8]* @G_line, i64 1, i64 0), !dbg !1136
  br i1 %36, label %243, label %37, !dbg !1139

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i8* %27, metadata !88, metadata !DIExpression()), !dbg !1097
  %38 = call i64 @strlen(i8* nonnull dereferenceable(1) %27) #29, !dbg !1140
  %39 = add i64 %38, 1, !dbg !1141
  %40 = getelementptr inbounds i8, i8* %27, i64 %39, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %40, metadata !85, metadata !DIExpression()), !dbg !1097
  br label %41

41:                                               ; preds = %30, %37
  %42 = phi i8* [ %27, %37 ], [ %33, %30 ], !dbg !1143
  %43 = phi i8* [ %40, %37 ], [ %27, %30 ], !dbg !1097
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %42, metadata !88, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %42, metadata !1144, metadata !DIExpression()) #28, !dbg !1154
  call void @llvm.dbg.value(metadata i8** undef, metadata !1149, metadata !DIExpression()) #28, !dbg !1154
  call void @llvm.dbg.value(metadata i8** undef, metadata !1150, metadata !DIExpression()) #28, !dbg !1154
  call void @llvm.dbg.value(metadata i8* %42, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  %44 = tail call i16** @__ctype_b_loc() #32, !dbg !1154
  %45 = load i16*, i16** %44, align 8, !tbaa !824
  br label %46, !dbg !1156

46:                                               ; preds = %46, %41
  %47 = phi i8* [ %42, %41 ], [ %54, %46 ], !dbg !1158
  call void @llvm.dbg.value(metadata i8* %47, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  %48 = load i8, i8* %47, align 1, !dbg !1159, !tbaa !998
  %49 = zext i8 %48 to i64, !dbg !1159
  %50 = getelementptr inbounds i16, i16* %45, i64 %49, !dbg !1159
  %51 = load i16, i16* %50, align 2, !dbg !1159, !tbaa !1161
  %52 = and i16 %51, 8192, !dbg !1159
  %53 = icmp eq i16 %52, 0, !dbg !1163
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %54, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  br i1 %53, label %55, label %46, !dbg !1163, !llvm.loop !1165

55:                                               ; preds = %46
  switch i8 %48, label %57 [
    i8 0, label %56
    i8 35, label %56
  ], !dbg !1167

56:                                               ; preds = %55, %55, %108
  br label %26, !dbg !1097, !llvm.loop !1169

57:                                               ; preds = %55, %57
  %58 = phi i8* [ %59, %57 ], [ %47, %55 ]
  %59 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1171
  %60 = load i8, i8* %59, align 1, !dbg !1173, !tbaa !998
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i16, i16* %45, i64 %61
  %63 = load i16, i16* %62, align 2, !dbg !1173, !tbaa !1161
  call void @llvm.dbg.value(metadata i8* %59, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  %64 = and i16 %63, 8192, !dbg !1173
  %65 = icmp ne i16 %64, 0, !dbg !1173
  %66 = icmp eq i8 %60, 0
  %67 = or i1 %66, %65, !dbg !1174
  call void @llvm.dbg.value(metadata i8* %59, metadata !1151, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #28, !dbg !1154
  br i1 %67, label %68, label %57, !dbg !1174, !llvm.loop !1175

68:                                               ; preds = %57
  %69 = ptrtoint i8* %59 to i64, !dbg !1178
  %70 = ptrtoint i8* %47 to i64, !dbg !1178
  %71 = sub i64 %69, %70, !dbg !1178
  %72 = call noalias i8* @xstrndup(i8* nonnull %47, i64 %71) #28, !dbg !1179
  %73 = load i8, i8* %59, align 1, !dbg !1180, !tbaa !998
  %74 = icmp eq i8 %73, 0, !dbg !1182
  br i1 %74, label %108, label %75, !dbg !1183

75:                                               ; preds = %68
  %76 = load i16*, i16** %44, align 8, !tbaa !824
  br label %77, !dbg !1184

77:                                               ; preds = %77, %75
  %78 = phi i8* [ %79, %77 ], [ %59, %75 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8* %78, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  %79 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %79, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  %80 = load i8, i8* %79, align 1, !dbg !1187, !tbaa !998
  %81 = zext i8 %80 to i64, !dbg !1187
  %82 = getelementptr inbounds i16, i16* %76, i64 %81, !dbg !1187
  %83 = load i16, i16* %82, align 2, !dbg !1187, !tbaa !1161
  %84 = and i16 %83, 8192, !dbg !1187
  %85 = icmp eq i16 %84, 0, !dbg !1188
  br i1 %85, label %86, label %77, !dbg !1188, !llvm.loop !1189

86:                                               ; preds = %77
  switch i8 %80, label %87 [
    i8 0, label %108
    i8 35, label %108
  ], !dbg !1191

87:                                               ; preds = %86, %91
  %88 = phi i8 [ %93, %91 ], [ %80, %86 ], !dbg !1193
  %89 = phi i8* [ %92, %91 ], [ %79, %86 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8* %89, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  switch i8 %88, label %91 [
    i8 0, label %90
    i8 35, label %90
  ], !dbg !1194

90:                                               ; preds = %87, %87
  br label %94, !dbg !1195

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1197
  call void @llvm.dbg.value(metadata i8* %92, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  %93 = load i8, i8* %92, align 1, !dbg !1193, !tbaa !998
  br label %87, !dbg !1198, !llvm.loop !1199

94:                                               ; preds = %90, %94
  %95 = phi i8* [ %96, %94 ], [ %89, %90 ]
  %96 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !1201
  call void @llvm.dbg.value(metadata i8* %96, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  %97 = load i8, i8* %96, align 1, !dbg !1202, !tbaa !998
  %98 = zext i8 %97 to i64, !dbg !1202
  %99 = getelementptr inbounds i16, i16* %76, i64 %98, !dbg !1202
  %100 = load i16, i16* %99, align 2, !dbg !1202, !tbaa !1161
  %101 = and i16 %100, 8192, !dbg !1202
  %102 = icmp eq i16 %101, 0, !dbg !1195
  br i1 %102, label %103, label %94, !dbg !1195, !llvm.loop !1204

103:                                              ; preds = %94
  call void @llvm.dbg.value(metadata i8* %95, metadata !1151, metadata !DIExpression()) #28, !dbg !1154
  %104 = ptrtoint i8* %95 to i64, !dbg !1206
  %105 = ptrtoint i8* %79 to i64, !dbg !1206
  %106 = sub i64 %104, %105, !dbg !1206
  %107 = call noalias i8* @xstrndup(i8* nonnull %79, i64 %106) #28, !dbg !1207
  br label %108, !dbg !1208

108:                                              ; preds = %68, %86, %86, %103
  %109 = phi i8* [ null, %68 ], [ %107, %103 ], [ null, %86 ], [ null, %86 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1209
  %110 = icmp eq i8* %72, null, !dbg !1210
  br i1 %110, label %56, label %111, !dbg !1212

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1209
  %112 = icmp eq i8* %109, null, !dbg !1213
  br i1 %112, label %113, label %116, !dbg !1215

113:                                              ; preds = %111
  %114 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 5) #28, !dbg !1216
  %115 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %1) #28, !dbg !1218
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %114, i8* %115, i64 %29) #28, !dbg !1219
  call void @llvm.dbg.value(metadata i8 0, metadata !90, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1209
  call void @free(i8* nonnull %72) #28, !dbg !1220
  br label %22, !dbg !1221, !llvm.loop !1169

116:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i8 0, metadata !95, metadata !DIExpression()), !dbg !1209
  %117 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0)) #29, !dbg !1222
  %118 = icmp eq i32 %117, 0, !dbg !1223
  br i1 %118, label %119, label %125, !dbg !1224

119:                                              ; preds = %116
  %120 = call i32 @fnmatch(i8* nonnull %109, i8* %14, i32 0) #28, !dbg !1225
  %121 = icmp eq i32 %120, 0, !dbg !1228
  %122 = icmp eq i32 %18, 2
  %123 = or i1 %122, %121, !dbg !1229
  %124 = select i1 %123, i32 2, i32 0, !dbg !1229
  br label %240, !dbg !1229

125:                                              ; preds = %116
  %126 = icmp eq i32 %18, 2, !dbg !1230
  %127 = select i1 %126, i32 1, i32 %18, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %127, metadata !91, metadata !DIExpression()), !dbg !1097
  %128 = icmp eq i32 %127, 0, !dbg !1233
  br i1 %128, label %240, label %129, !dbg !1234

129:                                              ; preds = %125
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1209
  %130 = load i8, i8* %72, align 1, !dbg !1235, !tbaa !998
  switch i8 %130, label %173 [
    i8 46, label %131
    i8 42, label %156
  ], !dbg !1236

131:                                              ; preds = %129
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !96, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !154, metadata !DIExpression()), !dbg !1238
  %132 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1239, !tbaa !1064
  %133 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1239, !tbaa !1051
  %134 = icmp eq i8* %132, %133, !dbg !1240
  br i1 %134, label %135, label %137, !dbg !1241

135:                                              ; preds = %131
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1240
  %136 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1241, !tbaa !1051
  br label %137, !dbg !1240

137:                                              ; preds = %135, %131
  %138 = phi i8* [ %136, %135 ], [ %133, %131 ], !dbg !1241
  %139 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !1241
  store i8* %139, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1241, !tbaa !1051
  store i8 42, i8* %138, align 1, !dbg !1241, !tbaa !998
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1209
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1242
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !159, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !161, metadata !DIExpression()), !dbg !1244
  %140 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1245, !tbaa !1064
  %141 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1245, !tbaa !1051
  %142 = icmp eq i8* %140, %141, !dbg !1246
  br i1 %142, label %143, label %145, !dbg !1247

143:                                              ; preds = %137
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1246
  %144 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1247, !tbaa !1051
  br label %145, !dbg !1246

145:                                              ; preds = %143, %137
  %146 = phi i8* [ %144, %143 ], [ %141, %137 ], !dbg !1247
  %147 = getelementptr inbounds i8, i8* %146, i64 1, !dbg !1247
  store i8* %147, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1247, !tbaa !1051
  store i8 61, i8* %146, align 1, !dbg !1247, !tbaa !998
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1209
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1248
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !164, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !166, metadata !DIExpression()), !dbg !1250
  %148 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1251, !tbaa !1064
  %149 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1251, !tbaa !1051
  %150 = icmp eq i8* %148, %149, !dbg !1252
  br i1 %150, label %151, label %153, !dbg !1253

151:                                              ; preds = %145
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1252
  %152 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1253, !tbaa !1051
  br label %153, !dbg !1252

153:                                              ; preds = %151, %145
  %154 = phi i8* [ %152, %151 ], [ %149, %145 ], !dbg !1253
  %155 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1253
  store i8* %155, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1253, !tbaa !1051
  store i8 58, i8* %154, align 1, !dbg !1253, !tbaa !998
  br label %240, !dbg !1254

156:                                              ; preds = %129
  call fastcc void @append_quoted(i8* nonnull %72), !dbg !1255
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !169, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !173, metadata !DIExpression()), !dbg !1257
  %157 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1258, !tbaa !1064
  %158 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1258, !tbaa !1051
  %159 = icmp eq i8* %157, %158, !dbg !1259
  br i1 %159, label %160, label %162, !dbg !1260

160:                                              ; preds = %156
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1259
  %161 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1260, !tbaa !1051
  br label %162, !dbg !1259

162:                                              ; preds = %160, %156
  %163 = phi i8* [ %161, %160 ], [ %158, %156 ], !dbg !1260
  %164 = getelementptr inbounds i8, i8* %163, i64 1, !dbg !1260
  store i8* %164, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1260, !tbaa !1051
  store i8 61, i8* %163, align 1, !dbg !1260, !tbaa !998
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1209
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1261
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !176, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !178, metadata !DIExpression()), !dbg !1263
  %165 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1264, !tbaa !1064
  %166 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1264, !tbaa !1051
  %167 = icmp eq i8* %165, %166, !dbg !1265
  br i1 %167, label %168, label %170, !dbg !1266

168:                                              ; preds = %162
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1265
  %169 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1266, !tbaa !1051
  br label %170, !dbg !1265

170:                                              ; preds = %168, %162
  %171 = phi i8* [ %169, %168 ], [ %166, %162 ], !dbg !1266
  %172 = getelementptr inbounds i8, i8* %171, i64 1, !dbg !1266
  store i8* %172, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1266, !tbaa !1051
  store i8 58, i8* %171, align 1, !dbg !1266, !tbaa !998
  br label %240, !dbg !1267

173:                                              ; preds = %129
  %174 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0)) #29, !dbg !1268
  %175 = icmp eq i32 %174, 0, !dbg !1269
  br i1 %175, label %240, label %176, !dbg !1270

176:                                              ; preds = %173
  %177 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0)) #29, !dbg !1271
  %178 = icmp eq i32 %177, 0, !dbg !1272
  br i1 %178, label %240, label %179, !dbg !1273

179:                                              ; preds = %176
  %180 = call i32 @c_strcasecmp(i8* nonnull %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0)) #29, !dbg !1274
  %181 = icmp eq i32 %180, 0, !dbg !1275
  br i1 %181, label %240, label %184, !dbg !1276

182:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1277
  %183 = icmp eq i64 %190, 37, !dbg !1278
  br i1 %183, label %229, label %184, !dbg !1281, !llvm.loop !1282

184:                                              ; preds = %179, %182
  %185 = phi i64 [ %190, %182 ], [ 0, %179 ]
  call void @llvm.dbg.value(metadata i64 %185, metadata !181, metadata !DIExpression()), !dbg !1277
  %186 = getelementptr inbounds [38 x i8*], [38 x i8*]* @slack_codes, i64 0, i64 %185, !dbg !1284
  %187 = load i8*, i8** %186, align 8, !dbg !1284, !tbaa !824
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1209
  %188 = call i32 @c_strcasecmp(i8* nonnull %72, i8* %187) #29, !dbg !1285
  %189 = icmp eq i32 %188, 0, !dbg !1287
  %190 = add nuw nsw i64 %185, 1, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %190, metadata !181, metadata !DIExpression()), !dbg !1277
  br i1 %189, label %191, label %182, !dbg !1289

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !184, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !189, metadata !DIExpression()), !dbg !1291
  %192 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1292, !tbaa !1064
  %193 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1292, !tbaa !1051
  %194 = icmp eq i8* %192, %193, !dbg !1293
  br i1 %194, label %195, label %197, !dbg !1294

195:                                              ; preds = %191
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1293
  %196 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1294, !tbaa !1051
  br label %197, !dbg !1293

197:                                              ; preds = %195, %191
  %198 = phi i8* [ %196, %195 ], [ %193, %191 ], !dbg !1294
  %199 = getelementptr inbounds [38 x i8*], [38 x i8*]* @ls_codes, i64 0, i64 %185, !dbg !1294
  %200 = load i8*, i8** %199, align 8, !dbg !1294, !tbaa !824
  %201 = load i8, i8* %200, align 1, !dbg !1294, !tbaa !998
  %202 = getelementptr inbounds i8, i8* %198, i64 1, !dbg !1294
  store i8* %202, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1294, !tbaa !1051
  store i8 %201, i8* %198, align 1, !dbg !1294, !tbaa !998
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !192, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !194, metadata !DIExpression()), !dbg !1296
  %203 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1297, !tbaa !1064
  %204 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1297, !tbaa !1051
  %205 = icmp eq i8* %203, %204, !dbg !1298
  br i1 %205, label %206, label %208, !dbg !1299

206:                                              ; preds = %197
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1298
  %207 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1299, !tbaa !1051
  br label %208, !dbg !1298

208:                                              ; preds = %206, %197
  %209 = phi i8* [ %207, %206 ], [ %204, %197 ], !dbg !1299
  %210 = getelementptr inbounds i8, i8* %200, i64 1, !dbg !1299
  %211 = load i8, i8* %210, align 1, !dbg !1299, !tbaa !998
  %212 = getelementptr inbounds i8, i8* %209, i64 1, !dbg !1299
  store i8* %212, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1299, !tbaa !1051
  store i8 %211, i8* %209, align 1, !dbg !1299, !tbaa !998
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !197, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !199, metadata !DIExpression()), !dbg !1301
  %213 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1302, !tbaa !1064
  %214 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1302, !tbaa !1051
  %215 = icmp eq i8* %213, %214, !dbg !1303
  br i1 %215, label %216, label %218, !dbg !1304

216:                                              ; preds = %208
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1303
  %217 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1304, !tbaa !1051
  br label %218, !dbg !1303

218:                                              ; preds = %216, %208
  %219 = phi i8* [ %217, %216 ], [ %214, %208 ], !dbg !1304
  %220 = getelementptr inbounds i8, i8* %219, i64 1, !dbg !1304
  store i8* %220, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1304, !tbaa !1051
  store i8 61, i8* %219, align 1, !dbg !1304, !tbaa !998
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1209
  call fastcc void @append_quoted(i8* nonnull %109), !dbg !1305
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !202, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !204, metadata !DIExpression()), !dbg !1307
  %221 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1308, !tbaa !1064
  %222 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1308, !tbaa !1051
  %223 = icmp eq i8* %221, %222, !dbg !1309
  br i1 %223, label %224, label %226, !dbg !1310

224:                                              ; preds = %218
  call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1309
  %225 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1310, !tbaa !1051
  br label %226, !dbg !1309

226:                                              ; preds = %224, %218
  %227 = phi i8* [ %225, %224 ], [ %222, %218 ], !dbg !1310
  %228 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !1310
  store i8* %228, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1310, !tbaa !1051
  store i8 58, i8* %227, align 1, !dbg !1310, !tbaa !998
  br label %240, !dbg !1311

229:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i32 %127, metadata !91, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 undef, metadata !95, metadata !DIExpression()), !dbg !1209
  %230 = add i32 %127, -1
  %231 = icmp ult i32 %230, 2
  br i1 %231, label %232, label %240, !dbg !1312

232:                                              ; preds = %229
  %233 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 5) #28, !dbg !1314
  br i1 %16, label %236, label %234, !dbg !1316

234:                                              ; preds = %232
  %235 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* nonnull %1) #28, !dbg !1317
  br label %238, !dbg !1316

236:                                              ; preds = %232
  %237 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i64 0, i64 0), i32 5) #28, !dbg !1318
  br label %238, !dbg !1316

238:                                              ; preds = %236, %234
  %239 = phi i8* [ %235, %234 ], [ %237, %236 ], !dbg !1316
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1209
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %233, i8* %239, i64 %29, i8* nonnull %72) #28, !dbg !1319
  call void @llvm.dbg.value(metadata i8 0, metadata !90, metadata !DIExpression()), !dbg !1097
  br label %240, !dbg !1320

240:                                              ; preds = %125, %119, %226, %179, %176, %173, %170, %153, %238, %229
  %241 = phi i32 [ %127, %238 ], [ %127, %229 ], [ %124, %119 ], [ 0, %125 ], [ %127, %226 ], [ %127, %179 ], [ %127, %176 ], [ %127, %173 ], [ %127, %170 ], [ %127, %153 ]
  %242 = phi i8 [ 0, %238 ], [ %23, %229 ], [ %23, %119 ], [ %23, %125 ], [ %23, %226 ], [ %23, %179 ], [ %23, %176 ], [ %23, %173 ], [ %23, %170 ], [ %23, %153 ], !dbg !1097
  call void @llvm.dbg.value(metadata i8 %242, metadata !90, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %72, metadata !92, metadata !DIExpression()), !dbg !1209
  call void @free(i8* %72) #28, !dbg !1321
  call void @llvm.dbg.value(metadata i8* %109, metadata !94, metadata !DIExpression()), !dbg !1209
  call void @free(i8* %109) #28, !dbg !1322
  br label %17, !dbg !1170

243:                                              ; preds = %35, %34
  call void @llvm.dbg.value(metadata i8* %43, metadata !85, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 undef, metadata !90, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 undef, metadata !91, metadata !DIExpression()), !dbg !1097
  %244 = and i8 %23, 1, !dbg !1323
  %245 = icmp ne i8 %244, 0, !dbg !1323
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #28, !dbg !1324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #28, !dbg !1324
  ret i1 %245, !dbg !1325
}

; Function Attrs: nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare !dbg !1326 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #12

declare !dbg !1331 i32 @fnmatch(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @append_quoted(i8* nocapture readonly %0) unnamed_addr #8 !dbg !1335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1337, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 1, metadata !1338, metadata !DIExpression()), !dbg !1367
  %2 = load i8, i8* %0, align 1, !dbg !1368, !tbaa !998
  %3 = icmp eq i8 %2, 0, !dbg !1369
  br i1 %3, label %63, label %4, !dbg !1370

4:                                                ; preds = %1, %56
  %5 = phi i8 [ %61, %56 ], [ %2, %1 ]
  %6 = phi i8* [ %60, %56 ], [ %0, %1 ]
  %7 = phi i8 [ %50, %56 ], [ 1, %1 ]
  call void @llvm.dbg.value(metadata i8* %6, metadata !1337, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %7, metadata !1338, metadata !DIExpression()), !dbg !1367
  %8 = sext i8 %5 to i32, !dbg !1368
  switch i32 %8, label %49 [
    i32 39, label %9
    i32 92, label %34
    i32 94, label %34
    i32 58, label %37
    i32 61, label %37
  ], !dbg !1371

9:                                                ; preds = %4
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1339, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1343, metadata !DIExpression()), !dbg !1373
  %10 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1374, !tbaa !1064
  %11 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1374, !tbaa !1051
  %12 = icmp eq i8* %10, %11, !dbg !1375
  br i1 %12, label %13, label %15, !dbg !1376

13:                                               ; preds = %9
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1375
  %14 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1376, !tbaa !1051
  br label %15, !dbg !1375

15:                                               ; preds = %13, %9
  %16 = phi i8* [ %14, %13 ], [ %11, %9 ], !dbg !1376
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1376
  store i8* %17, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1376, !tbaa !1051
  store i8 39, i8* %16, align 1, !dbg !1376, !tbaa !998
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1346, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1348, metadata !DIExpression()), !dbg !1378
  %18 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1379, !tbaa !1064
  %19 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1379, !tbaa !1051
  %20 = icmp eq i8* %18, %19, !dbg !1380
  br i1 %20, label %21, label %23, !dbg !1381

21:                                               ; preds = %15
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1380
  %22 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1381, !tbaa !1051
  br label %23, !dbg !1380

23:                                               ; preds = %21, %15
  %24 = phi i8* [ %22, %21 ], [ %19, %15 ], !dbg !1381
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !1381
  store i8* %25, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1381, !tbaa !1051
  store i8 92, i8* %24, align 1, !dbg !1381, !tbaa !998
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1351, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1353, metadata !DIExpression()), !dbg !1383
  %26 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1384, !tbaa !1064
  %27 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1384, !tbaa !1051
  %28 = icmp eq i8* %26, %27, !dbg !1385
  br i1 %28, label %29, label %31, !dbg !1386

29:                                               ; preds = %23
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1385
  %30 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1386, !tbaa !1051
  br label %31, !dbg !1385

31:                                               ; preds = %29, %23
  %32 = phi i8* [ %30, %29 ], [ %27, %23 ], !dbg !1386
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1386
  store i8* %33, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1386, !tbaa !1051
  store i8 39, i8* %32, align 1, !dbg !1386, !tbaa !998
  call void @llvm.dbg.value(metadata i8 1, metadata !1338, metadata !DIExpression()), !dbg !1367
  br label %49, !dbg !1387

34:                                               ; preds = %4, %4
  %35 = and i8 %7, 1, !dbg !1388
  %36 = xor i8 %35, 1, !dbg !1389
  call void @llvm.dbg.value(metadata i8 %36, metadata !1338, metadata !DIExpression()), !dbg !1367
  br label %49, !dbg !1390

37:                                               ; preds = %4, %4
  %38 = and i8 %7, 1, !dbg !1391
  %39 = icmp eq i8 %38, 0, !dbg !1391
  br i1 %39, label %49, label %40, !dbg !1392

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1356, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1359, metadata !DIExpression()), !dbg !1394
  %41 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1395, !tbaa !1064
  %42 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1395, !tbaa !1051
  %43 = icmp eq i8* %41, %42, !dbg !1396
  br i1 %43, label %44, label %46, !dbg !1397

44:                                               ; preds = %40
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1396
  %45 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1397, !tbaa !1051
  br label %46, !dbg !1396

46:                                               ; preds = %44, %40
  %47 = phi i8* [ %45, %44 ], [ %42, %40 ], !dbg !1397
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1397
  store i8* %48, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1397, !tbaa !1051
  store i8 92, i8* %47, align 1, !dbg !1397, !tbaa !998
  br label %49, !dbg !1398

49:                                               ; preds = %4, %46, %37, %34, %31
  %50 = phi i8 [ %36, %34 ], [ 1, %31 ], [ 1, %37 ], [ 1, %46 ], [ 1, %4 ], !dbg !1399
  call void @llvm.dbg.value(metadata i8 %50, metadata !1338, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1362, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1364, metadata !DIExpression()), !dbg !1401
  %51 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1402, !tbaa !1064
  %52 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1402, !tbaa !1051
  %53 = icmp eq i8* %51, %52, !dbg !1403
  br i1 %53, label %54, label %56, !dbg !1404

54:                                               ; preds = %49
  tail call void @_obstack_newchunk(%struct.obstack* nonnull @lsc_obstack, i64 1) #28, !dbg !1403
  %55 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1404, !tbaa !1051
  br label %56, !dbg !1403

56:                                               ; preds = %54, %49
  %57 = phi i8* [ %55, %54 ], [ %52, %49 ], !dbg !1404
  %58 = load i8, i8* %6, align 1, !dbg !1404, !tbaa !998
  %59 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1404
  store i8* %59, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1404, !tbaa !1051
  store i8 %58, i8* %57, align 1, !dbg !1404, !tbaa !998
  %60 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1405
  call void @llvm.dbg.value(metadata i8* %60, metadata !1337, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata i8 %50, metadata !1338, metadata !DIExpression()), !dbg !1367
  %61 = load i8, i8* %60, align 1, !dbg !1368, !tbaa !998
  %62 = icmp eq i8 %61, 0, !dbg !1369
  br i1 %62, label %63, label %4, !dbg !1370, !llvm.loop !1406

63:                                               ; preds = %56, %1
  ret void, !dbg !1408
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @c_strcasecmp(i8* readonly %0, i8* readonly %1) local_unnamed_addr #13 !dbg !1409 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1413, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %1, metadata !1414, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %0, metadata !1415, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %1, metadata !1416, metadata !DIExpression()), !dbg !1419
  %3 = icmp eq i8* %0, %1, !dbg !1420
  br i1 %3, label %31, label %4, !dbg !1422

4:                                                ; preds = %2, %23
  %5 = phi i8* [ %25, %23 ], [ %1, %2 ], !dbg !1419
  %6 = phi i8* [ %24, %23 ], [ %0, %2 ], !dbg !1419
  call void @llvm.dbg.value(metadata i8* %6, metadata !1415, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %5, metadata !1416, metadata !DIExpression()), !dbg !1419
  %7 = load i8, i8* %6, align 1, !dbg !1423, !tbaa !998
  %8 = zext i8 %7 to i32, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %8, metadata !1425, metadata !DIExpression()), !dbg !1431
  %9 = add nsw i32 %8, -65, !dbg !1433
  %10 = icmp ult i32 %9, 26, !dbg !1433
  %11 = add nuw nsw i32 %8, 32, !dbg !1433
  %12 = select i1 %10, i32 %11, i32 %8, !dbg !1433
  call void @llvm.dbg.value(metadata i32 %12, metadata !1417, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1419
  %13 = load i8, i8* %5, align 1, !dbg !1434, !tbaa !998
  %14 = zext i8 %13 to i32, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %14, metadata !1425, metadata !DIExpression()), !dbg !1435
  %15 = add nsw i32 %14, -65, !dbg !1437
  %16 = icmp ult i32 %15, 26, !dbg !1437
  %17 = add nuw nsw i32 %14, 32, !dbg !1437
  %18 = select i1 %16, i32 %17, i32 %14, !dbg !1437
  call void @llvm.dbg.value(metadata i32 %18, metadata !1418, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1419
  %19 = and i32 %12, 255, !dbg !1438
  %20 = icmp eq i32 %19, 0, !dbg !1440
  br i1 %20, label %21, label %23, !dbg !1441

21:                                               ; preds = %4
  %22 = and i32 %18, 255, !dbg !1442
  br label %28, !dbg !1441

23:                                               ; preds = %4
  %24 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1444
  call void @llvm.dbg.value(metadata i8* %24, metadata !1415, metadata !DIExpression()), !dbg !1419
  %25 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %25, metadata !1416, metadata !DIExpression()), !dbg !1419
  %26 = and i32 %18, 255, !dbg !1446
  %27 = icmp eq i32 %19, %26, !dbg !1447
  br i1 %27, label %4, label %28, !dbg !1448, !llvm.loop !1449

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %26, %23 ], !dbg !1442
  %30 = sub nsw i32 %19, %29, !dbg !1452
  br label %31, !dbg !1453

31:                                               ; preds = %2, %28
  %32 = phi i32 [ %30, %28 ], [ 0, %2 ], !dbg !1419
  ret i32 %32, !dbg !1454
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* %0) local_unnamed_addr #14 !dbg !1455 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1457, metadata !DIExpression()), !dbg !1458
  store i8* %0, i8** @file_name, align 8, !dbg !1459, !tbaa !824
  ret void, !dbg !1460
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %0) local_unnamed_addr #14 !dbg !1461 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1465, metadata !DIExpression()), !dbg !1466
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1467, !tbaa !1468
  ret void, !dbg !1470
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #8 !dbg !1471 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1476, !tbaa !824
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #28, !dbg !1477
  %3 = icmp eq i32 %2, 0, !dbg !1478
  br i1 %3, label %22, label %4, !dbg !1479

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1480, !tbaa !1468, !range !1481
  %6 = icmp eq i8 %5, 0, !dbg !1480
  br i1 %6, label %11, label %7, !dbg !1482

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #32, !dbg !1483
  %9 = load i32, i32* %8, align 4, !dbg !1483, !tbaa !947
  %10 = icmp eq i32 %9, 32, !dbg !1484
  br i1 %10, label %22, label %11, !dbg !1485

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i64 0, i64 0), i32 5) #28, !dbg !1486
  call void @llvm.dbg.value(metadata i8* %12, metadata !1473, metadata !DIExpression()), !dbg !1487
  %13 = load i8*, i8** @file_name, align 8, !dbg !1488, !tbaa !824
  %14 = icmp eq i8* %13, null, !dbg !1488
  %15 = tail call i32* @__errno_location() #32, !dbg !1490
  %16 = load i32, i32* %15, align 4, !dbg !1490, !tbaa !947
  br i1 %14, label %19, label %17, !dbg !1491

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #28, !dbg !1492
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.124, i64 0, i64 0), i8* %18, i8* %12) #28, !dbg !1493
  br label %20, !dbg !1493

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.125, i64 0, i64 0), i8* %12) #28, !dbg !1494
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1495, !tbaa !947
  tail call void @_exit(i32 %21) #30, !dbg !1496
  unreachable, !dbg !1496

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1497, !tbaa !824
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #28, !dbg !1499
  %25 = icmp eq i32 %24, 0, !dbg !1500
  br i1 %25, label %28, label %26, !dbg !1501

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1502, !tbaa !947
  tail call void @_exit(i32 %27) #30, !dbg !1503
  unreachable, !dbg !1503

28:                                               ; preds = %22
  ret void, !dbg !1504
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #15

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i8* @last_component(i8* readonly %0) local_unnamed_addr #13 !dbg !1505 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1507, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8* %0, metadata !1508, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 0, metadata !1510, metadata !DIExpression()), !dbg !1511
  br label %2, !dbg !1512

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1511
  call void @llvm.dbg.value(metadata i8* %3, metadata !1508, metadata !DIExpression()), !dbg !1511
  %4 = load i8, i8* %3, align 1, !dbg !1513, !tbaa !998
  %5 = icmp eq i8 %4, 47, !dbg !1513
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1514
  call void @llvm.dbg.value(metadata i8* %6, metadata !1508, metadata !DIExpression()), !dbg !1511
  br i1 %5, label %2, label %7, !dbg !1512, !llvm.loop !1515

7:                                                ; preds = %2, %17
  %8 = phi i8 [ %21, %17 ], [ %4, %2 ], !dbg !1516
  %9 = phi i8* [ %18, %17 ], [ %3, %2 ], !dbg !1519
  %10 = phi i8* [ %20, %17 ], [ %3, %2 ], !dbg !1520
  %11 = phi i8 [ %19, %17 ], [ 0, %2 ], !dbg !1511
  call void @llvm.dbg.value(metadata i8 %11, metadata !1510, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8* %10, metadata !1509, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8* %9, metadata !1508, metadata !DIExpression()), !dbg !1511
  switch i8 %8, label %12 [
    i8 0, label %22
    i8 47, label %17
  ], !dbg !1521

12:                                               ; preds = %7
  %13 = and i8 %11, 1, !dbg !1522
  %14 = icmp eq i8 %13, 0, !dbg !1522
  %15 = select i1 %14, i8* %9, i8* %10, !dbg !1526
  %16 = select i1 %14, i8 %11, i8 0, !dbg !1526
  br label %17, !dbg !1526

17:                                               ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !1511
  %19 = phi i8 [ 1, %7 ], [ %16, %12 ], !dbg !1511
  call void @llvm.dbg.value(metadata i8 %19, metadata !1510, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8* %18, metadata !1508, metadata !DIExpression()), !dbg !1511
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1527
  call void @llvm.dbg.value(metadata i8* %20, metadata !1509, metadata !DIExpression()), !dbg !1511
  %21 = load i8, i8* %20, align 1, !dbg !1516, !tbaa !998
  br label %7, !dbg !1528, !llvm.loop !1529

22:                                               ; preds = %7
  ret i8* %9, !dbg !1531
}

; Function Attrs: nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @base_len(i8* nocapture readonly %0) local_unnamed_addr #16 !dbg !1532 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1536, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1538, metadata !DIExpression()), !dbg !1539
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %2, metadata !1537, metadata !DIExpression()), !dbg !1539
  %3 = icmp ne i64 %2, 0, !dbg !1542
  %4 = zext i1 %3 to i64, !dbg !1542
  br label %5, !dbg !1542

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1543
  call void @llvm.dbg.value(metadata i64 %6, metadata !1537, metadata !DIExpression()), !dbg !1539
  %7 = icmp ugt i64 %6, 1, !dbg !1544
  br i1 %7, label %8, label %13, !dbg !1546

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1547
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1547
  %11 = load i8, i8* %10, align 1, !dbg !1547, !tbaa !998
  %12 = icmp eq i8 %11, 47, !dbg !1547
  br i1 %12, label %5, label %13, !dbg !1548, !llvm.loop !1549

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1543
  ret i64 %14, !dbg !1551
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* %0, i8* %1, %struct._IO_FILE* %2) local_unnamed_addr #8 !dbg !1552 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1590, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8* %1, metadata !1591, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1592, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8 0, metadata !1593, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1597
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #28, !dbg !1598
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %54
  ], !dbg !1599

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #28, !dbg !1600
  %7 = icmp ne i32 %6, 2, !dbg !1603
  %8 = zext i1 %7 to i8, !dbg !1604
  br label %9, !dbg !1604

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !1597
  call void @llvm.dbg.value(metadata i8 %10, metadata !1595, metadata !DIExpression()), !dbg !1597
  %11 = tail call i32 @dup2(i32 1, i32 1) #28, !dbg !1605
  %12 = icmp ne i32 %11, 1, !dbg !1607
  %13 = zext i1 %12 to i8, !dbg !1608
  br label %14, !dbg !1608

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !1597
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !1597
  call void @llvm.dbg.value(metadata i8 %16, metadata !1595, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i8 %15, metadata !1594, metadata !DIExpression()), !dbg !1597
  %17 = tail call i32 @dup2(i32 0, i32 0) #28, !dbg !1609
  %18 = icmp eq i32 %17, 0, !dbg !1611
  call void @llvm.dbg.value(metadata i8 undef, metadata !1593, metadata !DIExpression()), !dbg !1597
  br i1 %18, label %27, label %19, !dbg !1612

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !1614, metadata !DIExpression()) #28, !dbg !1620
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #28, !dbg !1622
  call void @llvm.dbg.value(metadata i32 %20, metadata !1619, metadata !DIExpression()) #28, !dbg !1620
  %21 = icmp eq i32 %20, 0, !dbg !1623
  %22 = icmp slt i32 %20, 1, !dbg !1625
  br i1 %22, label %26, label %23, !dbg !1625

23:                                               ; preds = %19
  %24 = tail call i32 @close(i32 %20) #28, !dbg !1626
  %25 = tail call i32* @__errno_location() #32, !dbg !1630
  store i32 9, i32* %25, align 4, !dbg !1631, !tbaa !947
  br label %26, !dbg !1632

26:                                               ; preds = %19, %23
  br i1 %21, label %27, label %59, !dbg !1633

27:                                               ; preds = %26, %14
  %28 = xor i1 %18, true, !dbg !1634
  %29 = icmp eq i8 %15, 0, !dbg !1634
  br i1 %29, label %39, label %30, !dbg !1636

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !1614, metadata !DIExpression()) #28, !dbg !1637
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #28, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %31, metadata !1619, metadata !DIExpression()) #28, !dbg !1637
  %32 = icmp eq i32 %31, 1, !dbg !1640
  %33 = icmp slt i32 %31, 0
  %34 = or i1 %32, %33, !dbg !1641
  br i1 %34, label %38, label %35, !dbg !1641

35:                                               ; preds = %30
  %36 = tail call i32 @close(i32 %31) #28, !dbg !1642
  %37 = tail call i32* @__errno_location() #32, !dbg !1643
  store i32 9, i32* %37, align 4, !dbg !1644, !tbaa !947
  br label %38, !dbg !1645

38:                                               ; preds = %30, %35
  br i1 %32, label %39, label %59, !dbg !1646

39:                                               ; preds = %38, %27
  %40 = phi i8 [ 1, %38 ], [ 0, %27 ]
  %41 = icmp eq i8 %16, 0, !dbg !1647
  br i1 %41, label %54, label %42, !dbg !1649

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata i32 2, metadata !1614, metadata !DIExpression()) #28, !dbg !1650
  %43 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i64 0, i64 0), i32 0) #28, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %43, metadata !1619, metadata !DIExpression()) #28, !dbg !1650
  %44 = icmp eq i32 %43, 2, !dbg !1653
  %45 = icmp slt i32 %43, 0
  %46 = or i1 %44, %45, !dbg !1654
  br i1 %46, label %50, label %47, !dbg !1654

47:                                               ; preds = %42
  %48 = tail call i32 @close(i32 %43) #28, !dbg !1655
  %49 = tail call i32* @__errno_location() #32, !dbg !1656
  store i32 9, i32* %49, align 4, !dbg !1657, !tbaa !947
  br label %50, !dbg !1658

50:                                               ; preds = %42, %47
  br i1 %44, label %54, label %51, !dbg !1659

51:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1592, metadata !DIExpression()), !dbg !1597
  %52 = tail call i32* @__errno_location() #32, !dbg !1660
  %53 = load i32, i32* %52, align 4, !dbg !1660, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %65, metadata !1596, metadata !DIExpression()), !dbg !1597
  br label %67, !dbg !1661

54:                                               ; preds = %3, %50, %39
  %55 = phi i8 [ 1, %50 ], [ 0, %39 ], [ 0, %3 ]
  %56 = phi i8 [ %40, %50 ], [ %40, %39 ], [ 0, %3 ]
  %57 = phi i1 [ %28, %50 ], [ %28, %39 ], [ false, %3 ]
  %58 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #28, !dbg !1662
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, metadata !1592, metadata !DIExpression()), !dbg !1597
  br label %59

59:                                               ; preds = %38, %26, %54
  %60 = phi i8 [ %55, %54 ], [ %16, %26 ], [ %16, %38 ]
  %61 = phi i8 [ %56, %54 ], [ %15, %26 ], [ 1, %38 ]
  %62 = phi i1 [ %57, %54 ], [ true, %26 ], [ %28, %38 ]
  %63 = phi %struct._IO_FILE* [ %58, %54 ], [ null, %26 ], [ null, %38 ], !dbg !1663
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !1592, metadata !DIExpression()), !dbg !1597
  %64 = tail call i32* @__errno_location() #32, !dbg !1660
  %65 = load i32, i32* %64, align 4, !dbg !1660, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %65, metadata !1596, metadata !DIExpression()), !dbg !1597
  %66 = icmp eq i8 %60, 0, !dbg !1664
  br i1 %66, label %74, label %67, !dbg !1661

67:                                               ; preds = %51, %59
  %68 = phi i32 [ %53, %51 ], [ %65, %59 ]
  %69 = phi i32* [ %52, %51 ], [ %64, %59 ]
  %70 = phi %struct._IO_FILE* [ null, %51 ], [ %63, %59 ]
  %71 = phi i1 [ %28, %51 ], [ %62, %59 ]
  %72 = phi i8 [ %40, %51 ], [ %61, %59 ]
  %73 = tail call i32 @close(i32 2) #28, !dbg !1666
  br label %74, !dbg !1666

74:                                               ; preds = %67, %59
  %75 = phi i32 [ %68, %67 ], [ %65, %59 ]
  %76 = phi i32* [ %69, %67 ], [ %64, %59 ]
  %77 = phi %struct._IO_FILE* [ %70, %67 ], [ %63, %59 ]
  %78 = phi i1 [ %71, %67 ], [ %62, %59 ]
  %79 = phi i8 [ %72, %67 ], [ %61, %59 ]
  %80 = icmp eq i8 %79, 0, !dbg !1667
  br i1 %80, label %83, label %81, !dbg !1669

81:                                               ; preds = %74
  %82 = tail call i32 @close(i32 1) #28, !dbg !1670
  br label %83, !dbg !1670

83:                                               ; preds = %81, %74
  br i1 %78, label %84, label %86, !dbg !1671

84:                                               ; preds = %83
  %85 = tail call i32 @close(i32 0) #28, !dbg !1672
  br label %86, !dbg !1672

86:                                               ; preds = %84, %83
  %87 = icmp eq %struct._IO_FILE* %77, null, !dbg !1674
  br i1 %87, label %88, label %89, !dbg !1676

88:                                               ; preds = %86
  store i32 %75, i32* %76, align 4, !dbg !1677, !tbaa !947
  br label %89, !dbg !1678

89:                                               ; preds = %88, %86
  ret %struct._IO_FILE* %77, !dbg !1679
}

; Function Attrs: nofree nounwind
declare !dbg !1680 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1683 i32 @dup2(i32, i32) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1687 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #17

declare !dbg !1691 i32 @close(i32) local_unnamed_addr #3

declare !dbg !1692 %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8* %0) local_unnamed_addr #8 !dbg !1695 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1697, metadata !DIExpression()), !dbg !1700
  %2 = icmp eq i8* %0, null, !dbg !1701
  br i1 %2, label %3, label %6, !dbg !1703

3:                                                ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1704, !tbaa !824
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.137, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #33, !dbg !1706
  tail call void @abort() #30, !dbg !1707
  unreachable, !dbg !1707

6:                                                ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #29, !dbg !1708
  call void @llvm.dbg.value(metadata i8* %7, metadata !1698, metadata !DIExpression()), !dbg !1700
  %8 = icmp eq i8* %7, null, !dbg !1709
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1710
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1710
  call void @llvm.dbg.value(metadata i8* %10, metadata !1699, metadata !DIExpression()), !dbg !1700
  %11 = ptrtoint i8* %10 to i64, !dbg !1711
  %12 = ptrtoint i8* %0 to i64, !dbg !1711
  %13 = sub i64 %11, %12, !dbg !1711
  %14 = icmp sgt i64 %13, 6, !dbg !1713
  br i1 %14, label %15, label %24, !dbg !1714

15:                                               ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1715
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.138, i64 0, i64 0), i64 7) #29, !dbg !1716
  %18 = icmp eq i32 %17, 0, !dbg !1717
  br i1 %18, label %19, label %24, !dbg !1718

19:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1697, metadata !DIExpression()), !dbg !1700
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.139, i64 0, i64 0), i64 3) #29, !dbg !1719
  %21 = icmp eq i32 %20, 0, !dbg !1722
  br i1 %21, label %22, label %24, !dbg !1723

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1724
  call void @llvm.dbg.value(metadata i8* %23, metadata !1697, metadata !DIExpression()), !dbg !1700
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1726, !tbaa !824
  br label %24, !dbg !1727

24:                                               ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1697, metadata !DIExpression()), !dbg !1700
  store i8* %25, i8** @program_name, align 8, !dbg !1728, !tbaa !824
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1729, !tbaa !824
  ret void, !dbg !1730
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #18

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i8* @strrchr(i8*, i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %0) local_unnamed_addr #8 !dbg !1731 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1736, metadata !DIExpression()), !dbg !1739
  %2 = tail call i32* @__errno_location() #32, !dbg !1740
  %3 = load i32, i32* %2, align 4, !dbg !1740, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %3, metadata !1737, metadata !DIExpression()), !dbg !1739
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1741
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1741
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1741
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #28, !dbg !1742
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1742
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1738, metadata !DIExpression()), !dbg !1739
  store i32 %3, i32* %2, align 4, !dbg !1743, !tbaa !947
  ret %struct.quoting_options* %8, !dbg !1744
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly %0) local_unnamed_addr #13 !dbg !1745 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1751, metadata !DIExpression()), !dbg !1752
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1753
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1753
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1754
  %5 = load i32, i32* %4, align 8, !dbg !1754, !tbaa !1755
  ret i32 %5, !dbg !1757
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #14 !dbg !1758 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1762, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %1, metadata !1763, metadata !DIExpression()), !dbg !1764
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1765
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1765
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1766
  store i32 %1, i32* %5, align 8, !dbg !1767, !tbaa !1755
  ret void, !dbg !1768
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* %0, i8 signext %1, i32 %2) local_unnamed_addr #19 !dbg !1769 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1773, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %1, metadata !1774, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %2, metadata !1775, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 %1, metadata !1776, metadata !DIExpression()), !dbg !1781
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1782
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1782
  %6 = lshr i8 %1, 5, !dbg !1783
  %7 = zext i8 %6 to i64, !dbg !1783
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1784
  call void @llvm.dbg.value(metadata i32* %8, metadata !1777, metadata !DIExpression()), !dbg !1781
  %9 = and i8 %1, 31, !dbg !1785
  %10 = zext i8 %9 to i32, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %10, metadata !1779, metadata !DIExpression()), !dbg !1781
  %11 = load i32, i32* %8, align 4, !dbg !1786, !tbaa !947
  %12 = lshr i32 %11, %10, !dbg !1787
  %13 = and i32 %12, 1, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %13, metadata !1780, metadata !DIExpression()), !dbg !1781
  %14 = and i32 %2, 1, !dbg !1789
  %15 = xor i32 %13, %14, !dbg !1790
  %16 = shl i32 %15, %10, !dbg !1791
  %17 = xor i32 %16, %11, !dbg !1792
  store i32 %17, i32* %8, align 4, !dbg !1792, !tbaa !947
  ret i32 %13, !dbg !1793
}

; Function Attrs: nofree norecurse nounwind sspstrong uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %0, i32 %1) local_unnamed_addr #19 !dbg !1794 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1798, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i32 %1, metadata !1799, metadata !DIExpression()), !dbg !1801
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1802
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1804
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1798, metadata !DIExpression()), !dbg !1801
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1805
  %6 = load i32, i32* %5, align 4, !dbg !1805, !tbaa !1806
  call void @llvm.dbg.value(metadata i32 %6, metadata !1800, metadata !DIExpression()), !dbg !1801
  store i32 %1, i32* %5, align 4, !dbg !1807, !tbaa !1806
  ret i32 %6, !dbg !1808
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !1809 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1813, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8* %2, metadata !1815, metadata !DIExpression()), !dbg !1816
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1817
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1819
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1813, metadata !DIExpression()), !dbg !1816
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1820
  store i32 10, i32* %6, align 8, !dbg !1821, !tbaa !1755
  %7 = icmp ne i8* %1, null, !dbg !1822
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1824
  br i1 %9, label %11, label %10, !dbg !1824

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !1825
  unreachable, !dbg !1825

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1826
  store i8* %1, i8** %12, align 8, !dbg !1827, !tbaa !1828
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1829
  store i8* %2, i8** %13, align 8, !dbg !1830, !tbaa !1831
  ret void, !dbg !1832
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8* %0, i64 %1, i8* %2, i64 %3, %struct.quoting_options* readonly %4) local_unnamed_addr #8 !dbg !1833 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1837, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %1, metadata !1838, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8* %2, metadata !1839, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %3, metadata !1840, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1841, metadata !DIExpression()), !dbg !1845
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1846
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1842, metadata !DIExpression()), !dbg !1845
  %8 = tail call i32* @__errno_location() #32, !dbg !1847
  %9 = load i32, i32* %8, align 4, !dbg !1847, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %9, metadata !1843, metadata !DIExpression()), !dbg !1845
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1848
  %11 = load i32, i32* %10, align 8, !dbg !1848, !tbaa !1755
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1849
  %13 = load i32, i32* %12, align 4, !dbg !1849, !tbaa !1806
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1850
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1851
  %16 = load i8*, i8** %15, align 8, !dbg !1851, !tbaa !1828
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1852
  %18 = load i8*, i8** %17, align 8, !dbg !1852, !tbaa !1831
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %19, metadata !1844, metadata !DIExpression()), !dbg !1845
  store i32 %9, i32* %8, align 4, !dbg !1854, !tbaa !947
  ret i64 %19, !dbg !1855
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32* readonly %6, i8* readonly %7, i8* readonly %8) unnamed_addr #8 !dbg !1856 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1862, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %1, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %2, metadata !1864, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %3, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %4, metadata !1866, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %5, metadata !1867, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32* %6, metadata !1868, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %7, metadata !1869, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %8, metadata !1870, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1873, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* null, metadata !1874, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1875, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1876, metadata !DIExpression()), !dbg !1932
  %13 = tail call i64 @__ctype_get_mb_cur_max() #28, !dbg !1933
  %14 = icmp eq i64 %13, 1, !dbg !1934
  call void @llvm.dbg.value(metadata i1 %14, metadata !1877, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1932
  %15 = lshr i32 %5, 1, !dbg !1935
  %16 = trunc i32 %15 to i8, !dbg !1935
  %17 = and i8 %16, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i8 %17, metadata !1878, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 1, metadata !1881, metadata !DIExpression()), !dbg !1932
  %18 = getelementptr inbounds i8, i8* %2, i64 1
  %19 = and i32 %5, 4
  %20 = icmp ne i32 %19, 0
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = bitcast i64* %10 to i8*
  %24 = bitcast i32* %12 to i8*
  %25 = icmp eq i32* %6, null
  br label %26, !dbg !1936

26:                                               ; preds = %603, %9
  %27 = phi i32 [ %4, %9 ], [ 2, %603 ]
  %28 = phi i8* [ %7, %9 ], [ %94, %603 ]
  %29 = phi i8* [ %8, %9 ], [ %95, %603 ]
  %30 = phi i64 [ 0, %9 ], [ %124, %603 ], !dbg !1937
  %31 = phi i8* [ null, %9 ], [ %97, %603 ], !dbg !1938
  %32 = phi i64 [ 0, %9 ], [ %98, %603 ], !dbg !1939
  %33 = phi i8 [ 0, %9 ], [ %99, %603 ], !dbg !1940
  %34 = phi i64 [ %3, %9 ], [ %588, %603 ]
  %35 = phi i8 [ %17, %9 ], [ %100, %603 ], !dbg !1932
  %36 = phi i8 [ 0, %9 ], [ %126, %603 ], !dbg !1941
  %37 = phi i8 [ 0, %9 ], [ %127, %603 ], !dbg !1942
  %38 = phi i8 [ 1, %9 ], [ %128, %603 ], !dbg !1943
  %39 = phi i64 [ %1, %9 ], [ %124, %603 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %38, metadata !1881, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %37, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %36, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %35, metadata !1878, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %34, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %33, metadata !1876, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %32, metadata !1875, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %31, metadata !1874, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %30, metadata !1873, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %29, metadata !1870, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %28, metadata !1869, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %27, metadata !1866, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.label(metadata !1926), !dbg !1944
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
  ], !dbg !1945

40:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1878, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 5, metadata !1866, metadata !DIExpression()), !dbg !1932
  br label %92, !dbg !1946

41:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 %35, metadata !1878, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 5, metadata !1866, metadata !DIExpression()), !dbg !1932
  %42 = and i8 %35, 1, !dbg !1948
  %43 = icmp eq i8 %42, 0, !dbg !1948
  br i1 %43, label %44, label %92, !dbg !1946

44:                                               ; preds = %41
  %45 = icmp eq i64 %39, 0, !dbg !1950
  br i1 %45, label %92, label %46, !dbg !1953

46:                                               ; preds = %44
  store i8 34, i8* %0, align 1, !dbg !1950, !tbaa !998
  br label %92, !dbg !1950

47:                                               ; preds = %26, %26
  %48 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.150, i64 0, i64 0), i32 %27), !dbg !1954
  call void @llvm.dbg.value(metadata i8* %48, metadata !1869, metadata !DIExpression()), !dbg !1932
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), i32 %27), !dbg !1958
  call void @llvm.dbg.value(metadata i8* %49, metadata !1870, metadata !DIExpression()), !dbg !1932
  br label %50, !dbg !1959

50:                                               ; preds = %26, %47
  %51 = phi i8* [ %48, %47 ], [ %28, %26 ]
  %52 = phi i8* [ %49, %47 ], [ %29, %26 ]
  call void @llvm.dbg.value(metadata i8* %52, metadata !1870, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %51, metadata !1869, metadata !DIExpression()), !dbg !1932
  %53 = and i8 %35, 1, !dbg !1960
  %54 = icmp eq i8 %53, 0, !dbg !1960
  br i1 %54, label %55, label %70, !dbg !1962

55:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i8* %51, metadata !1874, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1872, metadata !DIExpression()), !dbg !1932
  %56 = load i8, i8* %51, align 1, !dbg !1963, !tbaa !998
  %57 = icmp eq i8 %56, 0, !dbg !1966
  br i1 %57, label %70, label %58, !dbg !1966

58:                                               ; preds = %55, %65
  %59 = phi i8 [ %68, %65 ], [ %56, %55 ]
  %60 = phi i8* [ %67, %65 ], [ %51, %55 ]
  %61 = phi i64 [ %66, %65 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i8* %60, metadata !1874, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %61, metadata !1872, metadata !DIExpression()), !dbg !1932
  %62 = icmp ult i64 %61, %39, !dbg !1967
  br i1 %62, label %63, label %65, !dbg !1970

63:                                               ; preds = %58
  %64 = getelementptr inbounds i8, i8* %0, i64 %61, !dbg !1967
  store i8 %59, i8* %64, align 1, !dbg !1967, !tbaa !998
  br label %65, !dbg !1967

65:                                               ; preds = %63, %58
  %66 = add i64 %61, 1, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %66, metadata !1872, metadata !DIExpression()), !dbg !1932
  %67 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1971
  call void @llvm.dbg.value(metadata i8* %67, metadata !1874, metadata !DIExpression()), !dbg !1932
  %68 = load i8, i8* %67, align 1, !dbg !1963, !tbaa !998
  %69 = icmp eq i8 %68, 0, !dbg !1966
  br i1 %69, label %70, label %58, !dbg !1966, !llvm.loop !1972

70:                                               ; preds = %65, %55, %50
  %71 = phi i64 [ 0, %50 ], [ 0, %55 ], [ %66, %65 ], !dbg !1974
  call void @llvm.dbg.value(metadata i64 %71, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 1, metadata !1876, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %52, metadata !1874, metadata !DIExpression()), !dbg !1932
  %72 = call i64 @strlen(i8* nonnull dereferenceable(1) %52) #29, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %72, metadata !1875, metadata !DIExpression()), !dbg !1932
  br label %92, !dbg !1976

73:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 1, metadata !1876, metadata !DIExpression()), !dbg !1932
  br label %74, !dbg !1977

74:                                               ; preds = %26, %73
  %75 = phi i8 [ %33, %26 ], [ 1, %73 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %75, metadata !1876, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 1, metadata !1878, metadata !DIExpression()), !dbg !1932
  br label %76, !dbg !1978

76:                                               ; preds = %26, %74
  %77 = phi i8 [ %33, %26 ], [ %75, %74 ], !dbg !1940
  %78 = phi i8 [ %35, %26 ], [ 1, %74 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %78, metadata !1878, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %77, metadata !1876, metadata !DIExpression()), !dbg !1932
  %79 = and i8 %78, 1, !dbg !1979
  %80 = icmp eq i8 %79, 0, !dbg !1979
  %81 = select i1 %80, i8 1, i8 %77, !dbg !1981
  br label %82, !dbg !1981

82:                                               ; preds = %76, %26
  %83 = phi i8 [ %33, %26 ], [ %81, %76 ], !dbg !1932
  %84 = phi i8 [ %35, %26 ], [ %78, %76 ], !dbg !1935
  call void @llvm.dbg.value(metadata i8 %84, metadata !1878, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %83, metadata !1876, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 2, metadata !1866, metadata !DIExpression()), !dbg !1932
  %85 = and i8 %84, 1, !dbg !1982
  %86 = icmp eq i8 %85, 0, !dbg !1982
  br i1 %86, label %87, label %92, !dbg !1984

87:                                               ; preds = %82
  %88 = icmp eq i64 %39, 0, !dbg !1985
  br i1 %88, label %92, label %89, !dbg !1988

89:                                               ; preds = %87
  store i8 39, i8* %0, align 1, !dbg !1985, !tbaa !998
  br label %92, !dbg !1985

90:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8 0, metadata !1878, metadata !DIExpression()), !dbg !1932
  br label %92, !dbg !1989

91:                                               ; preds = %26
  call void @abort() #30, !dbg !1990
  unreachable, !dbg !1990

92:                                               ; preds = %40, %82, %89, %87, %26, %41, %46, %44, %90, %70
  %93 = phi i32 [ 0, %90 ], [ %27, %70 ], [ 5, %44 ], [ 5, %46 ], [ 5, %41 ], [ %27, %26 ], [ 2, %87 ], [ 2, %89 ], [ 2, %82 ], [ 5, %40 ]
  %94 = phi i8* [ %28, %90 ], [ %51, %70 ], [ %28, %44 ], [ %28, %46 ], [ %28, %41 ], [ %28, %26 ], [ %28, %87 ], [ %28, %89 ], [ %28, %82 ], [ %28, %40 ]
  %95 = phi i8* [ %29, %90 ], [ %52, %70 ], [ %29, %44 ], [ %29, %46 ], [ %29, %41 ], [ %29, %26 ], [ %29, %87 ], [ %29, %89 ], [ %29, %82 ], [ %29, %40 ]
  %96 = phi i64 [ 0, %90 ], [ %71, %70 ], [ 1, %44 ], [ 1, %46 ], [ 0, %41 ], [ 0, %26 ], [ 1, %87 ], [ 1, %89 ], [ 0, %82 ], [ 0, %40 ], !dbg !1974
  %97 = phi i8* [ %31, %90 ], [ %52, %70 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %44 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %46 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %41 ], [ %31, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %87 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), %82 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), %40 ], !dbg !1932
  %98 = phi i64 [ %32, %90 ], [ %72, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ %32, %26 ], [ 1, %87 ], [ 1, %89 ], [ 1, %82 ], [ 1, %40 ], !dbg !1932
  %99 = phi i8 [ %33, %90 ], [ 1, %70 ], [ 1, %44 ], [ 1, %46 ], [ 1, %41 ], [ 1, %26 ], [ %83, %87 ], [ %83, %89 ], [ %83, %82 ], [ 1, %40 ], !dbg !1932
  %100 = phi i8 [ 0, %90 ], [ %35, %70 ], [ %35, %44 ], [ %35, %46 ], [ %35, %41 ], [ 0, %26 ], [ %84, %87 ], [ %84, %89 ], [ %84, %82 ], [ 1, %40 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %100, metadata !1878, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %99, metadata !1876, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %98, metadata !1875, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %97, metadata !1874, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %96, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %95, metadata !1870, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* %94, metadata !1869, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32 %93, metadata !1866, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1871, metadata !DIExpression()), !dbg !1932
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
  br label %121, !dbg !1991

121:                                              ; preds = %577, %92
  %122 = phi i64 [ 0, %92 ], [ %586, %577 ], !dbg !1992
  %123 = phi i64 [ %96, %92 ], [ %579, %577 ], !dbg !1974
  %124 = phi i64 [ %30, %92 ], [ %580, %577 ], !dbg !1937
  %125 = phi i64 [ %34, %92 ], [ %581, %577 ]
  %126 = phi i8 [ %36, %92 ], [ %582, %577 ], !dbg !1941
  %127 = phi i8 [ %37, %92 ], [ %583, %577 ], !dbg !1942
  %128 = phi i8 [ %38, %92 ], [ %584, %577 ], !dbg !1943
  %129 = phi i64 [ %39, %92 ], [ %585, %577 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %128, metadata !1881, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %127, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %126, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %125, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %124, metadata !1873, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %123, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %122, metadata !1871, metadata !DIExpression()), !dbg !1932
  %130 = icmp eq i64 %125, -1, !dbg !1993
  br i1 %130, label %131, label %135, !dbg !1994

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1995
  %133 = load i8, i8* %132, align 1, !dbg !1995, !tbaa !998
  %134 = icmp eq i8 %133, 0, !dbg !1996
  br i1 %134, label %587, label %137, !dbg !1997

135:                                              ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1998
  br i1 %136, label %587, label %137, !dbg !1997

137:                                              ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1887, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 0, metadata !1888, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !1999
  br i1 %106, label %138, label %153, !dbg !2000

138:                                              ; preds = %137
  %139 = add i64 %122, %98, !dbg !2002
  %140 = and i1 %107, %130, !dbg !2003
  br i1 %140, label %141, label %143, !dbg !2003

141:                                              ; preds = %138
  %142 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %142, metadata !1865, metadata !DIExpression()), !dbg !1932
  br label %143, !dbg !2005

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ], !dbg !2005
  call void @llvm.dbg.value(metadata i64 %144, metadata !1865, metadata !DIExpression()), !dbg !1932
  %145 = icmp ugt i64 %139, %144, !dbg !2006
  br i1 %145, label %153, label %146, !dbg !2007

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2008
  %148 = call i32 @bcmp(i8* %147, i8* %97, i64 %98), !dbg !2009
  %149 = icmp ne i32 %148, 0, !dbg !2010
  %150 = or i1 %149, %109, !dbg !2011
  %151 = xor i1 %149, true, !dbg !2011
  %152 = zext i1 %151 to i8, !dbg !2011
  br i1 %150, label %153, label %646, !dbg !2011

153:                                              ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i1 [ %149, %146 ], [ true, %143 ], [ true, %137 ], !dbg !1999
  %156 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8 %156, metadata !1887, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %154, metadata !1865, metadata !DIExpression()), !dbg !1932
  %157 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2012
  %158 = load i8, i8* %157, align 1, !dbg !2012, !tbaa !998
  call void @llvm.dbg.value(metadata i8 %158, metadata !1882, metadata !DIExpression()), !dbg !1999
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
  ], !dbg !2013

159:                                              ; preds = %153
  br i1 %102, label %160, label %208, !dbg !2014

160:                                              ; preds = %159
  br i1 %109, label %161, label %635, !dbg !2015

161:                                              ; preds = %160
  call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()), !dbg !1999
  %162 = and i8 %126, 1, !dbg !2019
  %163 = icmp eq i8 %162, 0, !dbg !2019
  %164 = and i1 %110, %163, !dbg !2019
  br i1 %164, label %165, label %181, !dbg !2019

165:                                              ; preds = %161
  %166 = icmp ult i64 %123, %129, !dbg !2021
  br i1 %166, label %167, label %169, !dbg !2025

167:                                              ; preds = %165
  %168 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2021
  store i8 39, i8* %168, align 1, !dbg !2021, !tbaa !998
  br label %169, !dbg !2021

169:                                              ; preds = %167, %165
  %170 = add i64 %123, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %170, metadata !1872, metadata !DIExpression()), !dbg !1932
  %171 = icmp ult i64 %170, %129, !dbg !2026
  br i1 %171, label %172, label %174, !dbg !2029

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, i8* %0, i64 %170, !dbg !2026
  store i8 36, i8* %173, align 1, !dbg !2026, !tbaa !998
  br label %174, !dbg !2026

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 2, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %175, metadata !1872, metadata !DIExpression()), !dbg !1932
  %176 = icmp ult i64 %175, %129, !dbg !2030
  br i1 %176, label %177, label %179, !dbg !2033

177:                                              ; preds = %174
  %178 = getelementptr inbounds i8, i8* %0, i64 %175, !dbg !2030
  store i8 39, i8* %178, align 1, !dbg !2030, !tbaa !998
  br label %179, !dbg !2030

179:                                              ; preds = %177, %174
  %180 = add i64 %123, 3, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %180, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !1932
  br label %181, !dbg !2034

181:                                              ; preds = %161, %179
  %182 = phi i64 [ %180, %179 ], [ %123, %161 ], !dbg !1932
  %183 = phi i8 [ 1, %179 ], [ %126, %161 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %183, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %182, metadata !1872, metadata !DIExpression()), !dbg !1932
  %184 = icmp ult i64 %182, %129, !dbg !2035
  br i1 %184, label %185, label %187, !dbg !2038

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2035
  store i8 92, i8* %186, align 1, !dbg !2035, !tbaa !998
  br label %187, !dbg !2035

187:                                              ; preds = %185, %181
  %188 = add i64 %182, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %188, metadata !1872, metadata !DIExpression()), !dbg !1932
  %189 = add i64 %122, 1
  %190 = icmp ult i64 %189, %154
  %191 = and i1 %103, %190, !dbg !2039
  br i1 %191, label %192, label %473, !dbg !2039

192:                                              ; preds = %187
  %193 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2041
  %194 = load i8, i8* %193, align 1, !dbg !2041, !tbaa !998
  %195 = add i8 %194, -48, !dbg !2042
  %196 = icmp ult i8 %195, 10, !dbg !2042
  br i1 %196, label %197, label %473, !dbg !2042

197:                                              ; preds = %192
  %198 = icmp ult i64 %188, %129, !dbg !2043
  br i1 %198, label %199, label %201, !dbg !2047

199:                                              ; preds = %197
  %200 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !2043
  store i8 48, i8* %200, align 1, !dbg !2043, !tbaa !998
  br label %201, !dbg !2043

201:                                              ; preds = %199, %197
  %202 = add i64 %182, 2, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %202, metadata !1872, metadata !DIExpression()), !dbg !1932
  %203 = icmp ult i64 %202, %129, !dbg !2048
  br i1 %203, label %204, label %206, !dbg !2051

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, i8* %0, i64 %202, !dbg !2048
  store i8 48, i8* %205, align 1, !dbg !2048, !tbaa !998
  br label %206, !dbg !2048

206:                                              ; preds = %204, %201
  %207 = add i64 %182, 3, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %207, metadata !1872, metadata !DIExpression()), !dbg !1932
  br label %473, !dbg !2052

208:                                              ; preds = %159
  br i1 %22, label %473, label %577, !dbg !2053

209:                                              ; preds = %153
  switch i32 %93, label %473 [
    i32 2, label %210
    i32 5, label %211
  ], !dbg !2054

210:                                              ; preds = %209
  br i1 %109, label %473, label %631, !dbg !2055

211:                                              ; preds = %209
  %212 = add i64 %122, 2
  %213 = icmp ult i64 %212, %154
  %214 = and i1 %20, %213, !dbg !2057
  br i1 %214, label %215, label %473, !dbg !2057

215:                                              ; preds = %211
  %216 = add i64 %122, 1, !dbg !2059
  %217 = getelementptr inbounds i8, i8* %2, i64 %216, !dbg !2060
  %218 = load i8, i8* %217, align 1, !dbg !2060, !tbaa !998
  %219 = icmp eq i8 %218, 63, !dbg !2061
  br i1 %219, label %220, label %473, !dbg !2062

220:                                              ; preds = %215
  %221 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2063
  %222 = load i8, i8* %221, align 1, !dbg !2063, !tbaa !998
  %223 = sext i8 %222 to i32, !dbg !2063
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
  ], !dbg !2064

224:                                              ; preds = %220, %220, %220, %220, %220, %220, %220, %220, %220
  br i1 %109, label %225, label %646, !dbg !2065

225:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 %222, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 undef, metadata !1871, metadata !DIExpression()), !dbg !1932
  %226 = icmp ult i64 %123, %129, !dbg !2067
  br i1 %226, label %227, label %229, !dbg !2070

227:                                              ; preds = %225
  %228 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2067
  store i8 63, i8* %228, align 1, !dbg !2067, !tbaa !998
  br label %229, !dbg !2067

229:                                              ; preds = %227, %225
  %230 = add i64 %123, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %230, metadata !1872, metadata !DIExpression()), !dbg !1932
  %231 = icmp ult i64 %230, %129, !dbg !2071
  br i1 %231, label %232, label %234, !dbg !2074

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, i8* %0, i64 %230, !dbg !2071
  store i8 34, i8* %233, align 1, !dbg !2071, !tbaa !998
  br label %234, !dbg !2071

234:                                              ; preds = %232, %229
  %235 = add i64 %123, 2, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %235, metadata !1872, metadata !DIExpression()), !dbg !1932
  %236 = icmp ult i64 %235, %129, !dbg !2075
  br i1 %236, label %237, label %239, !dbg !2078

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, i8* %0, i64 %235, !dbg !2075
  store i8 34, i8* %238, align 1, !dbg !2075, !tbaa !998
  br label %239, !dbg !2075

239:                                              ; preds = %237, %234
  %240 = add i64 %123, 3, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %240, metadata !1872, metadata !DIExpression()), !dbg !1932
  %241 = icmp ult i64 %240, %129, !dbg !2079
  br i1 %241, label %242, label %244, !dbg !2082

242:                                              ; preds = %239
  %243 = getelementptr inbounds i8, i8* %0, i64 %240, !dbg !2079
  store i8 63, i8* %243, align 1, !dbg !2079, !tbaa !998
  br label %244, !dbg !2079

244:                                              ; preds = %242, %239
  %245 = add i64 %123, 4, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %245, metadata !1872, metadata !DIExpression()), !dbg !1932
  br label %473, !dbg !2083

246:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1886, metadata !DIExpression()), !dbg !1999
  br label %256, !dbg !2084

247:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1886, metadata !DIExpression()), !dbg !1999
  br label %256, !dbg !2085

248:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1886, metadata !DIExpression()), !dbg !1999
  br label %254, !dbg !2086

249:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1886, metadata !DIExpression()), !dbg !1999
  br label %254, !dbg !2087

250:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1886, metadata !DIExpression()), !dbg !1999
  br label %256, !dbg !2088

251:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 %158, metadata !1886, metadata !DIExpression()), !dbg !1999
  br i1 %110, label %252, label %253, !dbg !2089

252:                                              ; preds = %251
  br i1 %109, label %533, label %631, !dbg !2090

253:                                              ; preds = %251
  br i1 %120, label %533, label %254, !dbg !2093

254:                                              ; preds = %253, %153, %249, %248
  %255 = phi i8 [ 92, %253 ], [ 116, %249 ], [ 114, %248 ], [ 110, %153 ], !dbg !2095
  call void @llvm.dbg.value(metadata i8 %255, metadata !1886, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.label(metadata !1927), !dbg !2096
  br i1 %111, label %256, label %631, !dbg !2097

256:                                              ; preds = %153, %254, %250, %247, %246
  %257 = phi i8 [ %255, %254 ], [ 118, %250 ], [ 102, %247 ], [ 98, %246 ], [ 97, %153 ], !dbg !2095
  call void @llvm.dbg.value(metadata i8 %257, metadata !1886, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.label(metadata !1928), !dbg !2099
  br i1 %102, label %495, label %473, !dbg !2100

258:                                              ; preds = %153, %153
  switch i64 %154, label %473 [
    i64 -1, label %259
    i64 1, label %262
  ], !dbg !2101

259:                                              ; preds = %258
  %260 = load i8, i8* %18, align 1, !dbg !2102, !tbaa !998
  %261 = icmp eq i8 %260, 0, !dbg !2104
  br i1 %261, label %262, label %473, !dbg !2105

262:                                              ; preds = %258, %259, %153, %153
  %263 = icmp eq i64 %122, 0, !dbg !2106
  br i1 %263, label %264, label %473, !dbg !2108

264:                                              ; preds = %262, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1889, metadata !DIExpression()), !dbg !1999
  br label %265, !dbg !2109

265:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %264
  %266 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %264 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8 %266, metadata !1889, metadata !DIExpression()), !dbg !1999
  br i1 %111, label %473, label %631, !dbg !2110

267:                                              ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 1, metadata !1889, metadata !DIExpression()), !dbg !1999
  br i1 %110, label %268, label %473, !dbg !2112

268:                                              ; preds = %267
  br i1 %109, label %269, label %631, !dbg !2113

269:                                              ; preds = %268
  %270 = icmp eq i64 %129, 0, !dbg !2116
  %271 = icmp ne i64 %124, 0
  %272 = or i1 %271, %270, !dbg !2118
  %273 = select i1 %272, i64 %124, i64 %129, !dbg !2118
  %274 = select i1 %272, i64 %129, i64 0, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %274, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %273, metadata !1873, metadata !DIExpression()), !dbg !1932
  %275 = icmp ult i64 %123, %274, !dbg !2119
  br i1 %275, label %276, label %278, !dbg !2122

276:                                              ; preds = %269
  %277 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2119
  store i8 39, i8* %277, align 1, !dbg !2119, !tbaa !998
  br label %278, !dbg !2119

278:                                              ; preds = %276, %269
  %279 = add i64 %123, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i64 %279, metadata !1872, metadata !DIExpression()), !dbg !1932
  %280 = icmp ult i64 %279, %274, !dbg !2123
  br i1 %280, label %281, label %283, !dbg !2126

281:                                              ; preds = %278
  %282 = getelementptr inbounds i8, i8* %0, i64 %279, !dbg !2123
  store i8 92, i8* %282, align 1, !dbg !2123, !tbaa !998
  br label %283, !dbg !2123

283:                                              ; preds = %281, %278
  %284 = add i64 %123, 2, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %284, metadata !1872, metadata !DIExpression()), !dbg !1932
  %285 = icmp ult i64 %284, %274, !dbg !2127
  br i1 %285, label %286, label %288, !dbg !2130

286:                                              ; preds = %283
  %287 = getelementptr inbounds i8, i8* %0, i64 %284, !dbg !2127
  store i8 39, i8* %287, align 1, !dbg !2127, !tbaa !998
  br label %288, !dbg !2127

288:                                              ; preds = %286, %283
  %289 = add i64 %123, 3, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %289, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1932
  br label %473, !dbg !2131

290:                                              ; preds = %153
  br i1 %14, label %291, label %301, !dbg !2132

291:                                              ; preds = %290
  call void @llvm.dbg.value(metadata i64 1, metadata !1890, metadata !DIExpression()), !dbg !2133
  %292 = tail call i16** @__ctype_b_loc() #32, !dbg !2134
  %293 = load i16*, i16** %292, align 8, !dbg !2134, !tbaa !824
  %294 = zext i8 %158 to i64, !dbg !2134
  %295 = getelementptr inbounds i16, i16* %293, i64 %294, !dbg !2134
  %296 = load i16, i16* %295, align 2, !dbg !2134, !tbaa !1161
  %297 = lshr i16 %296, 14, !dbg !2136
  %298 = trunc i16 %297 to i8, !dbg !2136
  %299 = and i8 %298, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i8 %354, metadata !1893, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %355, metadata !1890, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %306, metadata !1865, metadata !DIExpression()), !dbg !1932
  %300 = icmp eq i8 %299, 0, !dbg !2137
  call void @llvm.dbg.value(metadata i1 %357, metadata !1889, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1999
  br label %359, !dbg !2138

301:                                              ; preds = %290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2139
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %11, metadata !1894, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8* %23, metadata !2141, metadata !DIExpression()) #28, !dbg !2149
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()) #28, !dbg !2149
  call void @llvm.dbg.value(metadata i64 8, metadata !2148, metadata !DIExpression()) #28, !dbg !2149
  store i64 0, i64* %10, align 8, !dbg !2151
  call void @llvm.dbg.value(metadata i64 0, metadata !1890, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i8 1, metadata !1893, metadata !DIExpression()), !dbg !2133
  %302 = icmp eq i64 %154, -1, !dbg !2152
  br i1 %302, label %303, label %305, !dbg !2154

303:                                              ; preds = %301
  %304 = call i64 @strlen(i8* nonnull dereferenceable(1) %2) #29, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %304, metadata !1865, metadata !DIExpression()), !dbg !1932
  br label %305, !dbg !2156

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %304, %303 ], [ %154, %301 ], !dbg !1999
  call void @llvm.dbg.value(metadata i64 %306, metadata !1865, metadata !DIExpression()), !dbg !1932
  br label %307, !dbg !2157

307:                                              ; preds = %344, %305
  %308 = phi i64 [ 0, %305 ], [ %349, %344 ], !dbg !2158
  %309 = phi i8 [ 1, %305 ], [ %348, %344 ], !dbg !2159
  call void @llvm.dbg.value(metadata i8 %309, metadata !1893, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %308, metadata !1890, metadata !DIExpression()), !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2160
  %310 = add i64 %308, %122, !dbg !2161
  %311 = getelementptr inbounds i8, i8* %2, i64 %310, !dbg !2162
  %312 = sub i64 %306, %310, !dbg !2163
  call void @llvm.dbg.value(metadata i32* %12, metadata !1912, metadata !DIExpression(DW_OP_deref)), !dbg !2164
  %313 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %311, i64 %312, %struct.__mbstate_t* nonnull %11) #28, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %313, metadata !1915, metadata !DIExpression()), !dbg !2164
  switch i64 %313, label %328 [
    i64 0, label %340
    i64 -1, label %341
    i64 -2, label %314
  ], !dbg !2166

314:                                              ; preds = %307
  call void @llvm.dbg.value(metadata i64 %308, metadata !1890, metadata !DIExpression()), !dbg !2133
  %315 = icmp ugt i64 %306, %310, !dbg !2167
  br i1 %315, label %316, label %341, !dbg !2169

316:                                              ; preds = %314
  %317 = sub i64 %306, %122, !dbg !2170
  br label %318, !dbg !2170

318:                                              ; preds = %316, %324
  %319 = phi i64 [ %326, %324 ], [ %310, %316 ]
  %320 = phi i64 [ %325, %324 ], [ %308, %316 ]
  call void @llvm.dbg.value(metadata i64 %320, metadata !1890, metadata !DIExpression()), !dbg !2133
  %321 = getelementptr inbounds i8, i8* %2, i64 %319, !dbg !2171
  %322 = load i8, i8* %321, align 1, !dbg !2171, !tbaa !998
  %323 = icmp eq i8 %322, 0, !dbg !2169
  br i1 %323, label %341, label %324, !dbg !2170

324:                                              ; preds = %318
  %325 = add i64 %320, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %325, metadata !1890, metadata !DIExpression()), !dbg !2133
  %326 = add i64 %325, %122, !dbg !2173
  %327 = icmp ult i64 %326, %306, !dbg !2167
  br i1 %327, label %318, label %341, !dbg !2169, !llvm.loop !2174

328:                                              ; preds = %307
  %329 = icmp ugt i64 %313, 1
  %330 = and i1 %113, %329, !dbg !2175
  call void @llvm.dbg.value(metadata i64 1, metadata !1916, metadata !DIExpression()), !dbg !2176
  br i1 %330, label %331, label %344, !dbg !2175

331:                                              ; preds = %328, %337
  %332 = phi i64 [ %338, %337 ], [ 1, %328 ]
  call void @llvm.dbg.value(metadata i64 %332, metadata !1916, metadata !DIExpression()), !dbg !2176
  %333 = add i64 %332, %310, !dbg !2177
  %334 = getelementptr inbounds i8, i8* %2, i64 %333, !dbg !2180
  %335 = load i8, i8* %334, align 1, !dbg !2180, !tbaa !998
  %336 = sext i8 %335 to i32, !dbg !2180
  switch i32 %336, label %337 [
    i32 91, label %352
    i32 92, label %352
    i32 94, label %352
    i32 96, label %352
    i32 124, label %352
  ], !dbg !2181

337:                                              ; preds = %331
  %338 = add nuw i64 %332, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %338, metadata !1916, metadata !DIExpression()), !dbg !2176
  %339 = icmp eq i64 %338, %313, !dbg !2183
  br i1 %339, label %344, label %331, !dbg !2184, !llvm.loop !2185

340:                                              ; preds = %307
  br label %341, !dbg !2187

341:                                              ; preds = %318, %324, %307, %340, %314
  %342 = phi i64 [ %308, %314 ], [ %308, %340 ], [ %308, %307 ], [ %320, %318 ], [ %317, %324 ]
  %343 = phi i8 [ 0, %314 ], [ %309, %340 ], [ 0, %307 ], [ 0, %324 ], [ 0, %318 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1893, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 undef, metadata !1890, metadata !DIExpression()), !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2187
  br label %353

344:                                              ; preds = %337, %328
  %345 = load i32, i32* %12, align 4, !dbg !2188, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %345, metadata !1912, metadata !DIExpression()), !dbg !2164
  %346 = call i32 @iswprint(i32 %345) #28, !dbg !2190
  %347 = icmp eq i32 %346, 0, !dbg !2190
  %348 = select i1 %347, i8 0, i8 %309, !dbg !2191
  call void @llvm.dbg.value(metadata i8 %348, metadata !1893, metadata !DIExpression()), !dbg !2133
  %349 = add i64 %313, %308, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %349, metadata !1890, metadata !DIExpression()), !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2187
  %350 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #29, !dbg !2193
  %351 = icmp eq i32 %350, 0, !dbg !2194
  br i1 %351, label %307, label %353, !dbg !2195, !llvm.loop !2196

352:                                              ; preds = %331, %331, %331, %331, %331
  call void @llvm.dbg.value(metadata i8 undef, metadata !1893, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 undef, metadata !1890, metadata !DIExpression()), !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #28, !dbg !2187
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2198
  br label %631

353:                                              ; preds = %344, %341
  %354 = phi i8 [ %343, %341 ], [ %348, %344 ]
  %355 = phi i64 [ %342, %341 ], [ %349, %344 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #28, !dbg !2198
  call void @llvm.dbg.value(metadata i8 %354, metadata !1893, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %355, metadata !1890, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %306, metadata !1865, metadata !DIExpression()), !dbg !1932
  %356 = and i8 %354, 1, !dbg !2137
  %357 = icmp eq i8 %356, 0, !dbg !2137
  call void @llvm.dbg.value(metadata i1 %357, metadata !1889, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1999
  %358 = icmp ugt i64 %355, 1, !dbg !2199
  br i1 %358, label %367, label %359, !dbg !2138

359:                                              ; preds = %291, %353
  %360 = phi i1 [ %300, %291 ], [ %357, %353 ]
  %361 = phi i8 [ %299, %291 ], [ %354, %353 ]
  %362 = phi i64 [ 1, %291 ], [ %355, %353 ]
  %363 = phi i64 [ %154, %291 ], [ %306, %353 ]
  %364 = and i1 %102, %360, !dbg !2200
  br i1 %364, label %367, label %365, !dbg !2200

365:                                              ; preds = %359
  %366 = and i8 %361, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i8 %472, metadata !1889, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %441, metadata !1888, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %440, metadata !1887, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %439, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %438, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %371, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %437, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %375, metadata !1871, metadata !DIExpression()), !dbg !1932
  br label %473

367:                                              ; preds = %359, %353
  %368 = phi i1 [ true, %359 ], [ %357, %353 ]
  %369 = phi i8 [ %361, %359 ], [ %354, %353 ]
  %370 = phi i64 [ %362, %359 ], [ %355, %353 ]
  %371 = phi i64 [ %363, %359 ], [ %306, %353 ]
  %372 = add i64 %370, %122, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %372, metadata !1923, metadata !DIExpression()), !dbg !2202
  %373 = and i1 %102, %368
  br label %374, !dbg !2203

374:                                              ; preds = %467, %367
  %375 = phi i64 [ %122, %367 ], [ %442, %467 ], !dbg !1992
  %376 = phi i64 [ %123, %367 ], [ %468, %467 ], !dbg !1932
  %377 = phi i8 [ %126, %367 ], [ %463, %467 ], !dbg !1941
  %378 = phi i8 [ %158, %367 ], [ %470, %467 ], !dbg !1999
  %379 = phi i8 [ %156, %367 ], [ %440, %467 ], !dbg !1999
  %380 = phi i8 [ 0, %367 ], [ %441, %467 ], !dbg !2204
  call void @llvm.dbg.value(metadata i8 %380, metadata !1888, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %379, metadata !1887, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %378, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %377, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %376, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %375, metadata !1871, metadata !DIExpression()), !dbg !1932
  br i1 %373, label %381, label %427, !dbg !2205

381:                                              ; preds = %374
  br i1 %109, label %382, label %635, !dbg !2210

382:                                              ; preds = %381
  call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()), !dbg !1999
  %383 = and i8 %377, 1, !dbg !2213
  %384 = icmp eq i8 %383, 0, !dbg !2213
  %385 = and i1 %110, %384, !dbg !2213
  br i1 %385, label %386, label %402, !dbg !2213

386:                                              ; preds = %382
  %387 = icmp ult i64 %376, %129, !dbg !2215
  br i1 %387, label %388, label %390, !dbg !2219

388:                                              ; preds = %386
  %389 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2215
  store i8 39, i8* %389, align 1, !dbg !2215, !tbaa !998
  br label %390, !dbg !2215

390:                                              ; preds = %388, %386
  %391 = add i64 %376, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %391, metadata !1872, metadata !DIExpression()), !dbg !1932
  %392 = icmp ult i64 %391, %129, !dbg !2220
  br i1 %392, label %393, label %395, !dbg !2223

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, i8* %0, i64 %391, !dbg !2220
  store i8 36, i8* %394, align 1, !dbg !2220, !tbaa !998
  br label %395, !dbg !2220

395:                                              ; preds = %393, %390
  %396 = add i64 %376, 2, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %396, metadata !1872, metadata !DIExpression()), !dbg !1932
  %397 = icmp ult i64 %396, %129, !dbg !2224
  br i1 %397, label %398, label %400, !dbg !2227

398:                                              ; preds = %395
  %399 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2224
  store i8 39, i8* %399, align 1, !dbg !2224, !tbaa !998
  br label %400, !dbg !2224

400:                                              ; preds = %398, %395
  %401 = add i64 %376, 3, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %401, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !1932
  br label %402, !dbg !2228

402:                                              ; preds = %382, %400
  %403 = phi i64 [ %401, %400 ], [ %376, %382 ], !dbg !1932
  %404 = phi i8 [ 1, %400 ], [ %377, %382 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %404, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %403, metadata !1872, metadata !DIExpression()), !dbg !1932
  %405 = icmp ult i64 %403, %129, !dbg !2229
  br i1 %405, label %406, label %408, !dbg !2232

406:                                              ; preds = %402
  %407 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2229
  store i8 92, i8* %407, align 1, !dbg !2229, !tbaa !998
  br label %408, !dbg !2229

408:                                              ; preds = %406, %402
  %409 = add i64 %403, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %409, metadata !1872, metadata !DIExpression()), !dbg !1932
  %410 = icmp ult i64 %409, %129, !dbg !2233
  br i1 %410, label %411, label %415, !dbg !2236

411:                                              ; preds = %408
  %412 = lshr i8 %378, 6, !dbg !2233
  %413 = or i8 %412, 48, !dbg !2233
  %414 = getelementptr inbounds i8, i8* %0, i64 %409, !dbg !2233
  store i8 %413, i8* %414, align 1, !dbg !2233, !tbaa !998
  br label %415, !dbg !2233

415:                                              ; preds = %411, %408
  %416 = add i64 %403, 2, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %416, metadata !1872, metadata !DIExpression()), !dbg !1932
  %417 = icmp ult i64 %416, %129, !dbg !2237
  br i1 %417, label %418, label %423, !dbg !2240

418:                                              ; preds = %415
  %419 = lshr i8 %378, 3, !dbg !2237
  %420 = and i8 %419, 7, !dbg !2237
  %421 = or i8 %420, 48, !dbg !2237
  %422 = getelementptr inbounds i8, i8* %0, i64 %416, !dbg !2237
  store i8 %421, i8* %422, align 1, !dbg !2237, !tbaa !998
  br label %423, !dbg !2237

423:                                              ; preds = %418, %415
  %424 = add i64 %403, 3, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %424, metadata !1872, metadata !DIExpression()), !dbg !1932
  %425 = and i8 %378, 7, !dbg !2241
  %426 = or i8 %425, 48, !dbg !2242
  call void @llvm.dbg.value(metadata i8 %426, metadata !1882, metadata !DIExpression()), !dbg !1999
  br label %436, !dbg !2243

427:                                              ; preds = %374
  %428 = and i8 %379, 1, !dbg !2244
  %429 = icmp eq i8 %428, 0, !dbg !2244
  br i1 %429, label %436, label %430, !dbg !2246

430:                                              ; preds = %427
  %431 = icmp ult i64 %376, %129, !dbg !2247
  br i1 %431, label %432, label %434, !dbg !2251

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, i8* %0, i64 %376, !dbg !2247
  store i8 92, i8* %433, align 1, !dbg !2247, !tbaa !998
  br label %434, !dbg !2247

434:                                              ; preds = %432, %430
  %435 = add i64 %376, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %435, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1887, metadata !DIExpression()), !dbg !1999
  br label %436, !dbg !2252

436:                                              ; preds = %427, %434, %423
  %437 = phi i64 [ %435, %434 ], [ %376, %427 ], [ %424, %423 ], !dbg !1932
  %438 = phi i8 [ %377, %434 ], [ %377, %427 ], [ %404, %423 ], !dbg !1941
  %439 = phi i8 [ %378, %434 ], [ %378, %427 ], [ %426, %423 ], !dbg !1999
  %440 = phi i8 [ 0, %434 ], [ %379, %427 ], [ %379, %423 ], !dbg !1999
  %441 = phi i8 [ %380, %434 ], [ %380, %427 ], [ 1, %423 ], !dbg !1999
  call void @llvm.dbg.value(metadata i8 %441, metadata !1888, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %440, metadata !1887, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %439, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %438, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %437, metadata !1872, metadata !DIExpression()), !dbg !1932
  %442 = add i64 %375, 1, !dbg !2253
  %443 = icmp ugt i64 %372, %442, !dbg !2255
  br i1 %443, label %444, label %471, !dbg !2256

444:                                              ; preds = %436
  %445 = and i8 %438, 1, !dbg !2257
  %446 = icmp ne i8 %445, 0, !dbg !2257
  %447 = and i8 %441, 1, !dbg !2257
  %448 = icmp eq i8 %447, 0, !dbg !2257
  %449 = and i1 %446, %448, !dbg !2257
  br i1 %449, label %450, label %461, !dbg !2257

450:                                              ; preds = %444
  %451 = icmp ult i64 %437, %129, !dbg !2260
  br i1 %451, label %452, label %454, !dbg !2264

452:                                              ; preds = %450
  %453 = getelementptr inbounds i8, i8* %0, i64 %437, !dbg !2260
  store i8 39, i8* %453, align 1, !dbg !2260, !tbaa !998
  br label %454, !dbg !2260

454:                                              ; preds = %452, %450
  %455 = add i64 %437, 1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %455, metadata !1872, metadata !DIExpression()), !dbg !1932
  %456 = icmp ult i64 %455, %129, !dbg !2265
  br i1 %456, label %457, label %459, !dbg !2268

457:                                              ; preds = %454
  %458 = getelementptr inbounds i8, i8* %0, i64 %455, !dbg !2265
  store i8 39, i8* %458, align 1, !dbg !2265, !tbaa !998
  br label %459, !dbg !2265

459:                                              ; preds = %457, %454
  %460 = add i64 %437, 2, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %460, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1932
  br label %461, !dbg !2269

461:                                              ; preds = %444, %459
  %462 = phi i64 [ %460, %459 ], [ %437, %444 ], !dbg !2270
  %463 = phi i8 [ 0, %459 ], [ %438, %444 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %463, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %462, metadata !1872, metadata !DIExpression()), !dbg !1932
  %464 = icmp ult i64 %462, %129, !dbg !2271
  br i1 %464, label %465, label %467, !dbg !2274

465:                                              ; preds = %461
  %466 = getelementptr inbounds i8, i8* %0, i64 %462, !dbg !2271
  store i8 %439, i8* %466, align 1, !dbg !2271, !tbaa !998
  br label %467, !dbg !2271

467:                                              ; preds = %465, %461
  %468 = add i64 %462, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %468, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %442, metadata !1871, metadata !DIExpression()), !dbg !1932
  %469 = getelementptr inbounds i8, i8* %2, i64 %442, !dbg !2275
  %470 = load i8, i8* %469, align 1, !dbg !2275, !tbaa !998
  call void @llvm.dbg.value(metadata i8 %470, metadata !1882, metadata !DIExpression()), !dbg !1999
  br label %374, !dbg !2276, !llvm.loop !2277

471:                                              ; preds = %436
  %472 = and i8 %369, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i8 %472, metadata !1889, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %441, metadata !1888, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %440, metadata !1887, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %439, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %438, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %371, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %437, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %375, metadata !1871, metadata !DIExpression()), !dbg !1932
  br label %533

473:                                              ; preds = %365, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %258, %187, %192, %206, %267, %288, %265, %262, %259, %256, %210, %244, %220, %215, %211, %209, %208
  %474 = phi i64 [ %122, %288 ], [ %122, %267 ], [ %122, %265 ], [ %122, %262 ], [ %122, %259 ], [ %122, %256 ], [ %122, %209 ], [ %122, %220 ], [ %212, %244 ], [ %122, %215 ], [ %122, %211 ], [ %122, %210 ], [ %122, %208 ], [ %122, %206 ], [ %122, %192 ], [ %122, %187 ], [ %122, %258 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %365 ], !dbg !1992
  %475 = phi i64 [ %289, %288 ], [ %123, %267 ], [ %123, %265 ], [ %123, %262 ], [ %123, %259 ], [ %123, %256 ], [ %123, %209 ], [ %123, %220 ], [ %245, %244 ], [ %123, %215 ], [ %123, %211 ], [ %123, %210 ], [ %123, %208 ], [ %207, %206 ], [ %188, %192 ], [ %188, %187 ], [ %123, %258 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %365 ], !dbg !1932
  %476 = phi i64 [ %273, %288 ], [ %124, %267 ], [ %124, %265 ], [ %124, %262 ], [ %124, %259 ], [ %124, %256 ], [ %124, %209 ], [ %124, %220 ], [ %124, %244 ], [ %124, %215 ], [ %124, %211 ], [ %124, %210 ], [ %124, %208 ], [ %124, %206 ], [ %124, %192 ], [ %124, %187 ], [ %124, %258 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %365 ], !dbg !1937
  %477 = phi i64 [ %154, %288 ], [ %154, %267 ], [ %154, %265 ], [ %154, %262 ], [ -1, %259 ], [ %154, %256 ], [ %154, %209 ], [ %154, %220 ], [ %154, %244 ], [ %154, %215 ], [ %154, %211 ], [ %154, %210 ], [ %154, %208 ], [ %154, %206 ], [ %154, %192 ], [ %154, %187 ], [ %154, %258 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %363, %365 ], !dbg !2280
  %478 = phi i8 [ 0, %288 ], [ %126, %267 ], [ %126, %265 ], [ %126, %262 ], [ %126, %259 ], [ %126, %256 ], [ %126, %209 ], [ %126, %220 ], [ %126, %244 ], [ %126, %215 ], [ %126, %211 ], [ %126, %210 ], [ %126, %208 ], [ %183, %206 ], [ %183, %192 ], [ %183, %187 ], [ %126, %258 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %365 ], !dbg !1932
  %479 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %127, %265 ], [ %127, %262 ], [ %127, %259 ], [ %127, %256 ], [ %127, %209 ], [ %127, %220 ], [ %127, %244 ], [ %127, %215 ], [ %127, %211 ], [ %127, %210 ], [ %127, %208 ], [ %127, %206 ], [ %127, %192 ], [ %127, %187 ], [ %127, %258 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %365 ], !dbg !1932
  %480 = phi i8 [ 39, %288 ], [ 39, %267 ], [ %158, %265 ], [ %158, %262 ], [ %158, %259 ], [ %158, %256 ], [ 63, %209 ], [ 63, %220 ], [ %222, %244 ], [ 63, %215 ], [ 63, %211 ], [ 63, %210 ], [ 0, %208 ], [ 48, %206 ], [ 48, %192 ], [ 48, %187 ], [ %158, %258 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %153 ], [ %158, %365 ], !dbg !1999
  %481 = phi i8 [ 0, %288 ], [ 0, %267 ], [ 0, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 1, %206 ], [ 1, %192 ], [ 1, %187 ], [ 0, %258 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %365 ], !dbg !1999
  %482 = phi i8 [ 1, %288 ], [ 1, %267 ], [ %266, %265 ], [ 0, %262 ], [ 0, %259 ], [ 0, %256 ], [ 0, %209 ], [ 0, %220 ], [ 0, %244 ], [ 0, %215 ], [ 0, %211 ], [ 0, %210 ], [ 0, %208 ], [ 0, %206 ], [ 0, %192 ], [ 0, %187 ], [ 0, %258 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %366, %365 ], !dbg !1999
  %483 = phi i64 [ %274, %288 ], [ %129, %267 ], [ %129, %265 ], [ %129, %262 ], [ %129, %259 ], [ %129, %256 ], [ %129, %209 ], [ %129, %220 ], [ %129, %244 ], [ %129, %215 ], [ %129, %211 ], [ %129, %210 ], [ %129, %208 ], [ %129, %206 ], [ %129, %192 ], [ %129, %187 ], [ %129, %258 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %365 ]
  call void @llvm.dbg.value(metadata i64 %483, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %482, metadata !1889, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %481, metadata !1888, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %156, metadata !1887, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %480, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %479, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %478, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %477, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %476, metadata !1873, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %475, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %474, metadata !1871, metadata !DIExpression()), !dbg !1932
  br i1 %116, label %494, label %484, !dbg !2281

484:                                              ; preds = %473
  %485 = lshr i8 %480, 5, !dbg !2283
  %486 = zext i8 %485 to i64, !dbg !2283
  %487 = getelementptr inbounds i32, i32* %6, i64 %486, !dbg !2284
  %488 = load i32, i32* %487, align 4, !dbg !2284, !tbaa !947
  %489 = and i8 %480, 31, !dbg !2285
  %490 = zext i8 %489 to i32, !dbg !2285
  %491 = shl nuw i32 1, %490, !dbg !2286
  %492 = and i32 %488, %491, !dbg !2286
  %493 = icmp eq i32 %492, 0, !dbg !2286
  br i1 %493, label %494, label %495, !dbg !2287

494:                                              ; preds = %473, %484
  br i1 %155, label %533, label %495, !dbg !2288

495:                                              ; preds = %256, %494, %484
  %496 = phi i64 [ %474, %484 ], [ %474, %494 ], [ %122, %256 ], !dbg !2289
  %497 = phi i64 [ %475, %484 ], [ %475, %494 ], [ %123, %256 ], !dbg !1932
  %498 = phi i64 [ %476, %484 ], [ %476, %494 ], [ %124, %256 ], !dbg !1937
  %499 = phi i64 [ %477, %484 ], [ %477, %494 ], [ %154, %256 ], !dbg !2280
  %500 = phi i8 [ %478, %484 ], [ %478, %494 ], [ %126, %256 ], !dbg !1941
  %501 = phi i8 [ %479, %484 ], [ %479, %494 ], [ %127, %256 ], !dbg !1942
  %502 = phi i8 [ %480, %484 ], [ %480, %494 ], [ %257, %256 ], !dbg !1999
  %503 = phi i8 [ %482, %484 ], [ %482, %494 ], [ 0, %256 ], !dbg !1999
  %504 = phi i64 [ %483, %484 ], [ %483, %494 ], [ %129, %256 ]
  call void @llvm.dbg.value(metadata i64 %504, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %503, metadata !1889, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %502, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %501, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %500, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %499, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %498, metadata !1873, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %497, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %496, metadata !1871, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.label(metadata !1929), !dbg !2290
  br i1 %109, label %505, label %635, !dbg !2291

505:                                              ; preds = %495
  call void @llvm.dbg.value(metadata i8 1, metadata !1888, metadata !DIExpression()), !dbg !1999
  %506 = and i8 %500, 1, !dbg !2293
  %507 = icmp eq i8 %506, 0, !dbg !2293
  %508 = and i1 %110, %507, !dbg !2293
  br i1 %508, label %509, label %525, !dbg !2293

509:                                              ; preds = %505
  %510 = icmp ult i64 %497, %504, !dbg !2295
  br i1 %510, label %511, label %513, !dbg !2299

511:                                              ; preds = %509
  %512 = getelementptr inbounds i8, i8* %0, i64 %497, !dbg !2295
  store i8 39, i8* %512, align 1, !dbg !2295, !tbaa !998
  br label %513, !dbg !2295

513:                                              ; preds = %511, %509
  %514 = add i64 %497, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %514, metadata !1872, metadata !DIExpression()), !dbg !1932
  %515 = icmp ult i64 %514, %504, !dbg !2300
  br i1 %515, label %516, label %518, !dbg !2303

516:                                              ; preds = %513
  %517 = getelementptr inbounds i8, i8* %0, i64 %514, !dbg !2300
  store i8 36, i8* %517, align 1, !dbg !2300, !tbaa !998
  br label %518, !dbg !2300

518:                                              ; preds = %516, %513
  %519 = add i64 %497, 2, !dbg !2303
  call void @llvm.dbg.value(metadata i64 %519, metadata !1872, metadata !DIExpression()), !dbg !1932
  %520 = icmp ult i64 %519, %504, !dbg !2304
  br i1 %520, label %521, label %523, !dbg !2307

521:                                              ; preds = %518
  %522 = getelementptr inbounds i8, i8* %0, i64 %519, !dbg !2304
  store i8 39, i8* %522, align 1, !dbg !2304, !tbaa !998
  br label %523, !dbg !2304

523:                                              ; preds = %521, %518
  %524 = add i64 %497, 3, !dbg !2307
  call void @llvm.dbg.value(metadata i64 %524, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 1, metadata !1879, metadata !DIExpression()), !dbg !1932
  br label %525, !dbg !2308

525:                                              ; preds = %505, %523
  %526 = phi i64 [ %524, %523 ], [ %497, %505 ], !dbg !1999
  %527 = phi i8 [ 1, %523 ], [ %500, %505 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %527, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %526, metadata !1872, metadata !DIExpression()), !dbg !1932
  %528 = icmp ult i64 %526, %504, !dbg !2309
  br i1 %528, label %529, label %531, !dbg !2312

529:                                              ; preds = %525
  %530 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2309
  store i8 92, i8* %530, align 1, !dbg !2309, !tbaa !998
  br label %531, !dbg !2309

531:                                              ; preds = %525, %529
  %532 = add i64 %526, 1, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %543, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %542, metadata !1889, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %541, metadata !1888, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %540, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %539, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %538, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %537, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %536, metadata !1873, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %535, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %534, metadata !1871, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.label(metadata !1930), !dbg !2313
  br label %560, !dbg !2314

533:                                              ; preds = %253, %471, %252, %494
  %534 = phi i64 [ %375, %471 ], [ %474, %494 ], [ %122, %252 ], [ %122, %253 ], !dbg !2289
  %535 = phi i64 [ %437, %471 ], [ %475, %494 ], [ %123, %252 ], [ %123, %253 ], !dbg !1932
  %536 = phi i64 [ %124, %471 ], [ %476, %494 ], [ %124, %252 ], [ %124, %253 ], !dbg !1937
  %537 = phi i64 [ %371, %471 ], [ %477, %494 ], [ %154, %252 ], [ %154, %253 ], !dbg !2280
  %538 = phi i8 [ %438, %471 ], [ %478, %494 ], [ %126, %252 ], [ %126, %253 ], !dbg !1941
  %539 = phi i8 [ %127, %471 ], [ %479, %494 ], [ %127, %252 ], [ %127, %253 ], !dbg !1942
  %540 = phi i8 [ %439, %471 ], [ %480, %494 ], [ 92, %252 ], [ 92, %253 ], !dbg !2317
  %541 = phi i8 [ %441, %471 ], [ %481, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1999
  %542 = phi i8 [ %472, %471 ], [ %482, %494 ], [ 0, %252 ], [ 0, %253 ], !dbg !1999
  %543 = phi i64 [ %129, %471 ], [ %483, %494 ], [ %129, %252 ], [ %129, %253 ]
  call void @llvm.dbg.value(metadata i64 %543, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %542, metadata !1889, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %541, metadata !1888, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %540, metadata !1882, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i8 %539, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %538, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %537, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %536, metadata !1873, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %535, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %534, metadata !1871, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.label(metadata !1930), !dbg !2313
  %544 = and i8 %538, 1, !dbg !2314
  %545 = icmp ne i8 %544, 0, !dbg !2314
  %546 = and i8 %541, 1, !dbg !2314
  %547 = icmp eq i8 %546, 0, !dbg !2314
  %548 = and i1 %545, %547, !dbg !2314
  br i1 %548, label %549, label %560, !dbg !2314

549:                                              ; preds = %533
  %550 = icmp ult i64 %535, %543, !dbg !2318
  br i1 %550, label %551, label %553, !dbg !2322

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, i8* %0, i64 %535, !dbg !2318
  store i8 39, i8* %552, align 1, !dbg !2318, !tbaa !998
  br label %553, !dbg !2318

553:                                              ; preds = %551, %549
  %554 = add i64 %535, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %554, metadata !1872, metadata !DIExpression()), !dbg !1932
  %555 = icmp ult i64 %554, %543, !dbg !2323
  br i1 %555, label %556, label %558, !dbg !2326

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, i8* %0, i64 %554, !dbg !2323
  store i8 39, i8* %557, align 1, !dbg !2323, !tbaa !998
  br label %558, !dbg !2323

558:                                              ; preds = %556, %553
  %559 = add i64 %535, 2, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %559, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1879, metadata !DIExpression()), !dbg !1932
  br label %560, !dbg !2327

560:                                              ; preds = %531, %533, %558
  %561 = phi i64 [ %543, %558 ], [ %543, %533 ], [ %504, %531 ]
  %562 = phi i8 [ %542, %558 ], [ %542, %533 ], [ %503, %531 ]
  %563 = phi i8 [ %540, %558 ], [ %540, %533 ], [ %502, %531 ]
  %564 = phi i8 [ %539, %558 ], [ %539, %533 ], [ %501, %531 ]
  %565 = phi i64 [ %537, %558 ], [ %537, %533 ], [ %499, %531 ]
  %566 = phi i64 [ %536, %558 ], [ %536, %533 ], [ %498, %531 ]
  %567 = phi i64 [ %534, %558 ], [ %534, %533 ], [ %496, %531 ]
  %568 = phi i64 [ %559, %558 ], [ %535, %533 ], [ %532, %531 ], !dbg !1999
  %569 = phi i8 [ 0, %558 ], [ %538, %533 ], [ %527, %531 ], !dbg !1932
  call void @llvm.dbg.value(metadata i8 %569, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %568, metadata !1872, metadata !DIExpression()), !dbg !1932
  %570 = icmp ult i64 %568, %561, !dbg !2328
  br i1 %570, label %571, label %573, !dbg !2331

571:                                              ; preds = %560
  %572 = getelementptr inbounds i8, i8* %0, i64 %568, !dbg !2328
  store i8 %563, i8* %572, align 1, !dbg !2328, !tbaa !998
  br label %573, !dbg !2328

573:                                              ; preds = %571, %560
  %574 = add i64 %568, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %574, metadata !1872, metadata !DIExpression()), !dbg !1932
  %575 = icmp eq i8 %562, 0, !dbg !2332
  %576 = select i1 %575, i8 0, i8 %128, !dbg !2334
  call void @llvm.dbg.value(metadata i8 %576, metadata !1881, metadata !DIExpression()), !dbg !1932
  br label %577, !dbg !2335

577:                                              ; preds = %573, %208
  %578 = phi i64 [ %567, %573 ], [ %122, %208 ], !dbg !2289
  %579 = phi i64 [ %574, %573 ], [ %123, %208 ], !dbg !1932
  %580 = phi i64 [ %566, %573 ], [ %124, %208 ], !dbg !1937
  %581 = phi i64 [ %565, %573 ], [ %154, %208 ], !dbg !2280
  %582 = phi i8 [ %569, %573 ], [ %126, %208 ], !dbg !1941
  %583 = phi i8 [ %564, %573 ], [ %127, %208 ], !dbg !1932
  %584 = phi i8 [ %576, %573 ], [ %128, %208 ], !dbg !1943
  %585 = phi i64 [ %561, %573 ], [ %129, %208 ]
  call void @llvm.dbg.value(metadata i64 %585, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %584, metadata !1881, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %583, metadata !1880, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 %582, metadata !1879, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %581, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %580, metadata !1873, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %579, metadata !1872, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %578, metadata !1871, metadata !DIExpression()), !dbg !1932
  %586 = add i64 %578, 1, !dbg !2336
  call void @llvm.dbg.value(metadata i64 %586, metadata !1871, metadata !DIExpression()), !dbg !1932
  br label %121, !dbg !2337, !llvm.loop !2338

587:                                              ; preds = %131, %135
  %588 = phi i64 [ -1, %131 ], [ %122, %135 ]
  %589 = icmp eq i64 %123, 0, !dbg !2340
  %590 = and i1 %110, %589, !dbg !2342
  %591 = xor i1 %590, true, !dbg !2342
  %592 = or i1 %109, %591, !dbg !2342
  br i1 %592, label %593, label %635, !dbg !2342

593:                                              ; preds = %587
  %594 = and i1 %110, %109, !dbg !2343
  %595 = and i8 %127, 1
  %596 = icmp ne i8 %595, 0
  %597 = and i1 %594, %596, !dbg !2343
  br i1 %597, label %598, label %607, !dbg !2343

598:                                              ; preds = %593
  %599 = and i8 %128, 1, !dbg !2345
  %600 = icmp eq i8 %599, 0, !dbg !2345
  br i1 %600, label %603, label %601, !dbg !2348

601:                                              ; preds = %598
  %602 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %588, i32 5, i32 %5, i32* %6, i8* %94, i8* %95), !dbg !2349
  br label %652, !dbg !2350

603:                                              ; preds = %598
  %604 = icmp eq i64 %129, 0, !dbg !2351
  %605 = icmp ne i64 %124, 0
  %606 = and i1 %605, %604, !dbg !2353
  br i1 %606, label %26, label %607, !dbg !2353

607:                                              ; preds = %603, %593
  %608 = phi i1 [ true, %603 ], [ %109, %593 ]
  %609 = icmp ne i8* %97, null, !dbg !2354
  %610 = and i1 %609, %608, !dbg !2356
  br i1 %610, label %611, label %626, !dbg !2356

611:                                              ; preds = %607
  call void @llvm.dbg.value(metadata i8* %97, metadata !1874, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %123, metadata !1872, metadata !DIExpression()), !dbg !1932
  %612 = load i8, i8* %97, align 1, !dbg !2357, !tbaa !998
  %613 = icmp eq i8 %612, 0, !dbg !2360
  br i1 %613, label %626, label %614, !dbg !2360

614:                                              ; preds = %611, %621
  %615 = phi i8 [ %624, %621 ], [ %612, %611 ]
  %616 = phi i8* [ %623, %621 ], [ %97, %611 ]
  %617 = phi i64 [ %622, %621 ], [ %123, %611 ]
  call void @llvm.dbg.value(metadata i8* %616, metadata !1874, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %617, metadata !1872, metadata !DIExpression()), !dbg !1932
  %618 = icmp ult i64 %617, %129, !dbg !2361
  br i1 %618, label %619, label %621, !dbg !2364

619:                                              ; preds = %614
  %620 = getelementptr inbounds i8, i8* %0, i64 %617, !dbg !2361
  store i8 %615, i8* %620, align 1, !dbg !2361, !tbaa !998
  br label %621, !dbg !2361

621:                                              ; preds = %619, %614
  %622 = add i64 %617, 1, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %622, metadata !1872, metadata !DIExpression()), !dbg !1932
  %623 = getelementptr inbounds i8, i8* %616, i64 1, !dbg !2365
  call void @llvm.dbg.value(metadata i8* %623, metadata !1874, metadata !DIExpression()), !dbg !1932
  %624 = load i8, i8* %623, align 1, !dbg !2357, !tbaa !998
  %625 = icmp eq i8 %624, 0, !dbg !2360
  br i1 %625, label %626, label %614, !dbg !2360, !llvm.loop !2366

626:                                              ; preds = %621, %611, %607
  %627 = phi i64 [ %123, %607 ], [ %123, %611 ], [ %622, %621 ], !dbg !1974
  call void @llvm.dbg.value(metadata i64 %627, metadata !1872, metadata !DIExpression()), !dbg !1932
  %628 = icmp ult i64 %627, %129, !dbg !2368
  br i1 %628, label %629, label %652, !dbg !2370

629:                                              ; preds = %626
  %630 = getelementptr inbounds i8, i8* %0, i64 %627, !dbg !2371
  store i8 0, i8* %630, align 1, !dbg !2372, !tbaa !998
  br label %652, !dbg !2371

631:                                              ; preds = %210, %252, %254, %265, %268, %352
  %632 = phi i64 [ %306, %352 ], [ %154, %268 ], [ %154, %265 ], [ %154, %254 ], [ %154, %252 ], [ %154, %210 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %637, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.label(metadata !1931), !dbg !2373
  %633 = icmp eq i8 %101, 0, !dbg !2374
  %634 = select i1 %633, i32 2, i32 4, !dbg !2374
  br label %642, !dbg !2374

635:                                              ; preds = %587, %495, %160, %381
  %636 = phi i8 [ 1, %381 ], [ %101, %495 ], [ 1, %160 ], [ %101, %587 ]
  %637 = phi i64 [ %371, %381 ], [ %499, %495 ], [ %154, %160 ], [ %588, %587 ]
  %638 = phi i64 [ %129, %381 ], [ %504, %495 ], [ %129, %160 ], [ %129, %587 ]
  call void @llvm.dbg.value(metadata i64 %638, metadata !1863, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i64 %637, metadata !1865, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.label(metadata !1931), !dbg !2373
  %639 = icmp eq i32 %93, 2, !dbg !2376
  %640 = icmp eq i8 %636, 0, !dbg !2374
  %641 = select i1 %640, i32 2, i32 4, !dbg !2374
  br i1 %639, label %642, label %646, !dbg !2374

642:                                              ; preds = %631, %635
  %643 = phi i32 [ %634, %631 ], [ %641, %635 ]
  %644 = phi i64 [ %129, %631 ], [ %638, %635 ]
  %645 = phi i64 [ %632, %631 ], [ %637, %635 ]
  br label %646, !dbg !2374

646:                                              ; preds = %224, %146, %635, %642
  %647 = phi i64 [ %644, %642 ], [ %638, %635 ], [ %129, %146 ], [ %129, %224 ]
  %648 = phi i64 [ %645, %642 ], [ %637, %635 ], [ %154, %224 ], [ %144, %146 ]
  %649 = phi i32 [ %643, %642 ], [ %93, %635 ], [ 5, %224 ], [ %93, %146 ]
  call void @llvm.dbg.value(metadata i32 %649, metadata !1866, metadata !DIExpression()), !dbg !1932
  %650 = and i32 %5, -3, !dbg !2377
  %651 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %647, i8* %2, i64 %648, i32 %649, i32 %650, i32* null, i8* %94, i8* %95), !dbg !2378
  br label %652, !dbg !2379

652:                                              ; preds = %626, %629, %646, %601
  %653 = phi i64 [ %651, %646 ], [ %602, %601 ], [ %627, %629 ], [ %627, %626 ]
  ret i64 %653, !dbg !2380
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8* %0, i32 %1) unnamed_addr #8 !dbg !2381 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2385, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %1, metadata !2386, metadata !DIExpression()), !dbg !2389
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #28, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %3, metadata !2387, metadata !DIExpression()), !dbg !2389
  %4 = icmp eq i8* %3, %0, !dbg !2391
  br i1 %4, label %5, label %72, !dbg !2393

5:                                                ; preds = %2
  %6 = tail call i8* @locale_charset() #28, !dbg !2394
  call void @llvm.dbg.value(metadata i8* %6, metadata !2388, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %6, metadata !2395, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8* undef, metadata !2401, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 85, metadata !2402, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 84, metadata !2403, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 70, metadata !2404, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 45, metadata !2405, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 56, metadata !2406, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 0, metadata !2408, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 0, metadata !2409, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2411
  %7 = load i8, i8* %6, align 1, !dbg !2414, !tbaa !998
  %8 = and i8 %7, -33, !dbg !2414
  %9 = sext i8 %8 to i32, !dbg !2414
  switch i32 %9, label %69 [
    i32 85, label %10
    i32 71, label %36
  ], !dbg !2414

10:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2416, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8* undef, metadata !2421, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 84, metadata !2422, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 70, metadata !2423, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 45, metadata !2424, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 56, metadata !2425, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 0, metadata !2426, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 0, metadata !2427, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8 0, metadata !2429, metadata !DIExpression()), !dbg !2430
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2434
  %12 = load i8, i8* %11, align 1, !dbg !2434, !tbaa !998
  %13 = and i8 %12, -33, !dbg !2434
  %14 = icmp eq i8 %13, 84, !dbg !2434
  br i1 %14, label %15, label %69, !dbg !2434

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %6, metadata !2436, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* undef, metadata !2441, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 70, metadata !2442, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 45, metadata !2443, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 56, metadata !2444, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 0, metadata !2445, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 0, metadata !2446, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 0, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8 0, metadata !2448, metadata !DIExpression()), !dbg !2449
  %16 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2453
  %17 = load i8, i8* %16, align 1, !dbg !2453, !tbaa !998
  %18 = and i8 %17, -33, !dbg !2453
  %19 = icmp eq i8 %18, 70, !dbg !2453
  br i1 %19, label %20, label %69, !dbg !2453

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %6, metadata !2455, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8* undef, metadata !2460, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 45, metadata !2461, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 56, metadata !2462, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2463, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2464, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2465, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2466, metadata !DIExpression()), !dbg !2467
  %21 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2471
  %22 = load i8, i8* %21, align 1, !dbg !2471, !tbaa !998
  %23 = icmp eq i8 %22, 45, !dbg !2471
  br i1 %23, label %24, label %69, !dbg !2473

24:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %6, metadata !2474, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* undef, metadata !2479, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 56, metadata !2480, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2481, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2484, metadata !DIExpression()), !dbg !2485
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2489
  %26 = load i8, i8* %25, align 1, !dbg !2489, !tbaa !998
  %27 = icmp eq i8 %26, 56, !dbg !2489
  br i1 %27, label %28, label %69, !dbg !2491

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i8* %6, metadata !2492, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8* undef, metadata !2497, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 0, metadata !2498, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 0, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 0, metadata !2501, metadata !DIExpression()), !dbg !2502
  %29 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2506
  %30 = load i8, i8* %29, align 1, !dbg !2506, !tbaa !998
  %31 = icmp eq i8 %30, 0, !dbg !2506
  br i1 %31, label %32, label %69, !dbg !2508

32:                                               ; preds = %28
  %33 = load i8, i8* %0, align 1, !dbg !2509, !tbaa !998
  %34 = icmp eq i8 %33, 96, !dbg !2510
  %35 = select i1 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.153, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.154, i64 0, i64 0), !dbg !2509
  br label %72, !dbg !2511

36:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2416, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8* undef, metadata !2421, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 66, metadata !2422, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 49, metadata !2423, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 56, metadata !2424, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 48, metadata !2425, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 51, metadata !2426, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 48, metadata !2427, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 0, metadata !2428, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 0, metadata !2429, metadata !DIExpression()), !dbg !2512
  %37 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2516
  %38 = load i8, i8* %37, align 1, !dbg !2516, !tbaa !998
  %39 = and i8 %38, -33, !dbg !2516
  %40 = icmp eq i8 %39, 66, !dbg !2516
  br i1 %40, label %41, label %69, !dbg !2516

41:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8* %6, metadata !2436, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8* undef, metadata !2441, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 49, metadata !2442, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 56, metadata !2443, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 48, metadata !2444, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 51, metadata !2445, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 48, metadata !2446, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 0, metadata !2447, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 0, metadata !2448, metadata !DIExpression()), !dbg !2517
  %42 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2519
  %43 = load i8, i8* %42, align 1, !dbg !2519, !tbaa !998
  %44 = icmp eq i8 %43, 49, !dbg !2519
  br i1 %44, label %45, label %69, !dbg !2520

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* %6, metadata !2455, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8* undef, metadata !2460, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 56, metadata !2461, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 48, metadata !2462, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 51, metadata !2463, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 48, metadata !2464, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 0, metadata !2465, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 0, metadata !2466, metadata !DIExpression()), !dbg !2521
  %46 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2523
  %47 = load i8, i8* %46, align 1, !dbg !2523, !tbaa !998
  %48 = icmp eq i8 %47, 56, !dbg !2523
  br i1 %48, label %49, label %69, !dbg !2524

49:                                               ; preds = %45
  call void @llvm.dbg.value(metadata i8* %6, metadata !2474, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8* undef, metadata !2479, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 48, metadata !2480, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 51, metadata !2481, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 48, metadata !2482, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 0, metadata !2484, metadata !DIExpression()), !dbg !2525
  %50 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2527
  %51 = load i8, i8* %50, align 1, !dbg !2527, !tbaa !998
  %52 = icmp eq i8 %51, 48, !dbg !2527
  br i1 %52, label %53, label %69, !dbg !2528

53:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i8* %6, metadata !2492, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8* undef, metadata !2497, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 51, metadata !2498, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 48, metadata !2499, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 0, metadata !2500, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 0, metadata !2501, metadata !DIExpression()), !dbg !2529
  %54 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2531
  %55 = load i8, i8* %54, align 1, !dbg !2531, !tbaa !998
  %56 = icmp eq i8 %55, 51, !dbg !2531
  br i1 %56, label %57, label %69, !dbg !2532

57:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %6, metadata !2533, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8* undef, metadata !2538, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 48, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 0, metadata !2540, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 0, metadata !2541, metadata !DIExpression()), !dbg !2542
  %58 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2546
  %59 = load i8, i8* %58, align 1, !dbg !2546, !tbaa !998
  %60 = icmp eq i8 %59, 48, !dbg !2546
  br i1 %60, label %61, label %69, !dbg !2548

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8* %6, metadata !2549, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8* undef, metadata !2554, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2556, metadata !DIExpression()), !dbg !2557
  %62 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2561
  %63 = load i8, i8* %62, align 1, !dbg !2561, !tbaa !998
  %64 = icmp eq i8 %63, 0, !dbg !2561
  br i1 %64, label %65, label %69, !dbg !2563

65:                                               ; preds = %61
  %66 = load i8, i8* %0, align 1, !dbg !2564, !tbaa !998
  %67 = icmp eq i8 %66, 96, !dbg !2565
  %68 = select i1 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.155, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.156, i64 0, i64 0), !dbg !2564
  br label %72, !dbg !2566

69:                                               ; preds = %5, %28, %24, %20, %15, %10, %57, %53, %49, %45, %41, %36, %61
  %70 = icmp eq i32 %1, 9, !dbg !2567
  %71 = select i1 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.152, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.151, i64 0, i64 0), !dbg !2568
  br label %72, !dbg !2569

72:                                               ; preds = %2, %69, %65, %32
  %73 = phi i8* [ %35, %32 ], [ %68, %65 ], [ %71, %69 ], [ %3, %2 ], !dbg !2389
  ret i8* %73, !dbg !2570
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind
declare !dbg !2571 i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly willreturn
declare !dbg !2575 i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8* %0, i64 %1, %struct.quoting_options* %2) local_unnamed_addr #8 !dbg !2581 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2585, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 %1, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %0, metadata !2589, metadata !DIExpression()) #28, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %1, metadata !2594, metadata !DIExpression()) #28, !dbg !2602
  call void @llvm.dbg.value(metadata i64* null, metadata !2595, metadata !DIExpression()) #28, !dbg !2602
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2596, metadata !DIExpression()) #28, !dbg !2602
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2604
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2597, metadata !DIExpression()) #28, !dbg !2602
  %6 = tail call i32* @__errno_location() #32, !dbg !2605
  %7 = load i32, i32* %6, align 4, !dbg !2605, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %7, metadata !2598, metadata !DIExpression()) #28, !dbg !2602
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2606
  %9 = load i32, i32* %8, align 4, !dbg !2606, !tbaa !1806
  %10 = or i32 %9, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i32 %10, metadata !2599, metadata !DIExpression()) #28, !dbg !2602
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2608
  %12 = load i32, i32* %11, align 8, !dbg !2608, !tbaa !1755
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2609
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2610
  %15 = load i8*, i8** %14, align 8, !dbg !2610, !tbaa !1828
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2611
  %17 = load i8*, i8** %16, align 8, !dbg !2611, !tbaa !1831
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #28, !dbg !2612
  %19 = add i64 %18, 1, !dbg !2613
  call void @llvm.dbg.value(metadata i64 %19, metadata !2600, metadata !DIExpression()) #28, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %19, metadata !2614, metadata !DIExpression()) #28, !dbg !2619
  %20 = tail call noalias i8* @xmalloc(i64 %19) #28, !dbg !2621
  call void @llvm.dbg.value(metadata i8* %20, metadata !2601, metadata !DIExpression()) #28, !dbg !2602
  %21 = load i32, i32* %11, align 8, !dbg !2622, !tbaa !1755
  %22 = load i8*, i8** %14, align 8, !dbg !2623, !tbaa !1828
  %23 = load i8*, i8** %16, align 8, !dbg !2624, !tbaa !1831
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #28, !dbg !2625
  store i32 %7, i32* %6, align 4, !dbg !2626, !tbaa !947
  ret i8* %20, !dbg !2627
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* %2, %struct.quoting_options* %3) local_unnamed_addr #8 !dbg !2590 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2589, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i64 %1, metadata !2594, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i64* %2, metadata !2595, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2596, metadata !DIExpression()), !dbg !2628
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2629
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2629
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2597, metadata !DIExpression()), !dbg !2628
  %7 = tail call i32* @__errno_location() #32, !dbg !2630
  %8 = load i32, i32* %7, align 4, !dbg !2630, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %8, metadata !2598, metadata !DIExpression()), !dbg !2628
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2631
  %10 = load i32, i32* %9, align 4, !dbg !2631, !tbaa !1806
  %11 = icmp eq i64* %2, null, !dbg !2632
  %12 = zext i1 %11 to i32, !dbg !2632
  %13 = or i32 %10, %12, !dbg !2633
  call void @llvm.dbg.value(metadata i32 %13, metadata !2599, metadata !DIExpression()), !dbg !2628
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2634
  %15 = load i32, i32* %14, align 8, !dbg !2634, !tbaa !1755
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2635
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2636
  %18 = load i8*, i8** %17, align 8, !dbg !2636, !tbaa !1828
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2637
  %20 = load i8*, i8** %19, align 8, !dbg !2637, !tbaa !1831
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %15, i32 %13, i32* nonnull %16, i8* %18, i8* %20), !dbg !2638
  %22 = add i64 %21, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %22, metadata !2600, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i64 %22, metadata !2614, metadata !DIExpression()) #28, !dbg !2640
  %23 = tail call noalias i8* @xmalloc(i64 %22) #28, !dbg !2642
  call void @llvm.dbg.value(metadata i8* %23, metadata !2601, metadata !DIExpression()), !dbg !2628
  %24 = load i32, i32* %14, align 8, !dbg !2643, !tbaa !1755
  %25 = load i8*, i8** %17, align 8, !dbg !2644, !tbaa !1828
  %26 = load i8*, i8** %19, align 8, !dbg !2645, !tbaa !1831
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %23, i64 %22, i8* %0, i64 %1, i32 %24, i32 %13, i32* nonnull %16, i8* %25, i8* %26), !dbg !2646
  store i32 %8, i32* %7, align 4, !dbg !2647, !tbaa !947
  br i1 %11, label %29, label %28, !dbg !2648

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2649, !tbaa !1102
  br label %29, !dbg !2651

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2652
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #8 !dbg !2653 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2657, !tbaa !824
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2655, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 1, metadata !2656, metadata !DIExpression()), !dbg !2658
  %2 = load i32, i32* @nslots, align 4, !dbg !2659, !tbaa !947
  %3 = icmp sgt i32 %2, 1, !dbg !2662
  br i1 %3, label %4, label %12, !dbg !2663

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2662
  br label %6, !dbg !2663

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 1, %4 ], [ %10, %6 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !2656, metadata !DIExpression()), !dbg !2658
  %8 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %7, i32 1, !dbg !2664
  %9 = load i8*, i8** %8, align 8, !dbg !2664, !tbaa !2665
  tail call void @free(i8* %9) #28, !dbg !2667
  %10 = add nuw nsw i64 %7, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %10, metadata !2656, metadata !DIExpression()), !dbg !2658
  %11 = icmp eq i64 %10, %5, !dbg !2662
  br i1 %11, label %12, label %6, !dbg !2663, !llvm.loop !2669

12:                                               ; preds = %6, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2671
  %14 = load i8*, i8** %13, align 8, !dbg !2671, !tbaa !2665
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2673
  br i1 %15, label %17, label %16, !dbg !2674

16:                                               ; preds = %12
  tail call void @free(i8* %14) #28, !dbg !2675
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2677, !tbaa !2678
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2679, !tbaa !2665
  br label %17, !dbg !2680

17:                                               ; preds = %16, %12
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2681
  br i1 %18, label %21, label %19, !dbg !2683

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2684
  tail call void @free(i8* %20) #28, !dbg !2686
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2687, !tbaa !824
  br label %21, !dbg !2688

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2689, !tbaa !947
  ret void, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8* %1, metadata !2694, metadata !DIExpression()), !dbg !2695
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2696
  ret i8* %3, !dbg !2697
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* %3) unnamed_addr #8 !dbg !2698 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2702, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %1, metadata !2703, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %2, metadata !2704, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2705, metadata !DIExpression()), !dbg !2717
  %5 = tail call i32* @__errno_location() #32, !dbg !2718
  %6 = load i32, i32* %5, align 4, !dbg !2718, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %6, metadata !2706, metadata !DIExpression()), !dbg !2717
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2719, !tbaa !824
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2707, metadata !DIExpression()), !dbg !2717
  %8 = icmp slt i32 %0, 0, !dbg !2720
  br i1 %8, label %9, label %10, !dbg !2722

9:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2723
  unreachable, !dbg !2723

10:                                               ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2724, !tbaa !947
  %12 = icmp sgt i32 %11, %0, !dbg !2725
  br i1 %12, label %34, label %13, !dbg !2726

13:                                               ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2727
  call void @llvm.dbg.value(metadata i1 %14, metadata !2708, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2728
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2711, metadata !DIExpression()), !dbg !2728
  %15 = icmp eq i32 %0, 2147483647, !dbg !2729
  br i1 %15, label %16, label %17, !dbg !2731

16:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !2732
  unreachable, !dbg !2732

17:                                               ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2733
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2733
  %20 = add nuw nsw i32 %0, 1, !dbg !2734
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 4, !dbg !2735
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #28, !dbg !2736
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2736
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2707, metadata !DIExpression()), !dbg !2717
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2737, !tbaa !824
  br i1 %14, label %25, label %26, !dbg !2738

25:                                               ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %23, i8* nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2739, !tbaa.struct !2741
  br label %26, !dbg !2742

26:                                               ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2743, !tbaa !947
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2744
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2745
  %31 = sub nsw i32 %20, %27, !dbg !2746
  %32 = sext i32 %31 to i64, !dbg !2747
  %33 = shl nsw i64 %32, 4, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %30, metadata !2141, metadata !DIExpression()) #28, !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()) #28, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %33, metadata !2148, metadata !DIExpression()) #28, !dbg !2749
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %30, i8 0, i64 %33, i1 false) #28, !dbg !2751
  store i32 %20, i32* @nslots, align 4, !dbg !2752, !tbaa !947
  br label %34, !dbg !2753

34:                                               ; preds = %26, %10
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2717
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2707, metadata !DIExpression()), !dbg !2717
  %36 = zext i32 %0 to i64, !dbg !2754
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2755
  %38 = load i64, i64* %37, align 8, !dbg !2755, !tbaa !2678
  call void @llvm.dbg.value(metadata i64 %38, metadata !2712, metadata !DIExpression()), !dbg !2756
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2757
  %40 = load i8*, i8** %39, align 8, !dbg !2757, !tbaa !2665
  call void @llvm.dbg.value(metadata i8* %40, metadata !2714, metadata !DIExpression()), !dbg !2756
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2758
  %42 = load i32, i32* %41, align 4, !dbg !2758, !tbaa !1806
  %43 = or i32 %42, 1, !dbg !2759
  call void @llvm.dbg.value(metadata i32 %43, metadata !2715, metadata !DIExpression()), !dbg !2756
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2760
  %45 = load i32, i32* %44, align 8, !dbg !2760, !tbaa !1755
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2761
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2762
  %48 = load i8*, i8** %47, align 8, !dbg !2762, !tbaa !1828
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2763
  %50 = load i8*, i8** %49, align 8, !dbg !2763, !tbaa !1831
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2764
  call void @llvm.dbg.value(metadata i64 %51, metadata !2716, metadata !DIExpression()), !dbg !2756
  %52 = icmp ugt i64 %38, %51, !dbg !2765
  br i1 %52, label %63, label %53, !dbg !2767

53:                                               ; preds = %34
  %54 = add i64 %51, 1, !dbg !2768
  call void @llvm.dbg.value(metadata i64 %54, metadata !2712, metadata !DIExpression()), !dbg !2756
  store i64 %54, i64* %37, align 8, !dbg !2770, !tbaa !2678
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2771
  br i1 %55, label %57, label %56, !dbg !2773

56:                                               ; preds = %53
  tail call void @free(i8* %40) #28, !dbg !2774
  br label %57, !dbg !2774

57:                                               ; preds = %56, %53
  call void @llvm.dbg.value(metadata i64 %54, metadata !2614, metadata !DIExpression()) #28, !dbg !2775
  %58 = tail call noalias i8* @xmalloc(i64 %54) #28, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %58, metadata !2714, metadata !DIExpression()), !dbg !2756
  store i8* %58, i8** %39, align 8, !dbg !2778, !tbaa !2665
  %59 = load i32, i32* %44, align 8, !dbg !2779, !tbaa !1755
  %60 = load i8*, i8** %47, align 8, !dbg !2780, !tbaa !1828
  %61 = load i8*, i8** %49, align 8, !dbg !2781, !tbaa !1831
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2782
  br label %63, !dbg !2783

63:                                               ; preds = %57, %34
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2756
  call void @llvm.dbg.value(metadata i8* %64, metadata !2714, metadata !DIExpression()), !dbg !2756
  store i32 %6, i32* %5, align 4, !dbg !2784, !tbaa !947
  ret i8* %64, !dbg !2785
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2790, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8* %1, metadata !2791, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %2, metadata !2792, metadata !DIExpression()), !dbg !2793
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2794
  ret i8* %4, !dbg !2795
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8* %0) local_unnamed_addr #8 !dbg !2796 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2798, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 0, metadata !2693, metadata !DIExpression()) #28, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %0, metadata !2694, metadata !DIExpression()) #28, !dbg !2800
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2802
  ret i8* %2, !dbg !2803
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !2804 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %1, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i32 0, metadata !2790, metadata !DIExpression()) #28, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %0, metadata !2791, metadata !DIExpression()) #28, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %1, metadata !2792, metadata !DIExpression()) #28, !dbg !2811
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #28, !dbg !2813
  ret i8* %3, !dbg !2814
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !2815 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2819, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %1, metadata !2820, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %2, metadata !2821, metadata !DIExpression()), !dbg !2823
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2824
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2824
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2822, metadata !DIExpression()), !dbg !2825
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2826), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %1, metadata !2830, metadata !DIExpression()) #28, !dbg !2836
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2835, metadata !DIExpression()) #28, !dbg !2838
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2838, !alias.scope !2826
  %6 = icmp eq i32 %1, 10, !dbg !2839
  br i1 %6, label %7, label %8, !dbg !2841

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2842, !noalias !2826
  unreachable, !dbg !2842

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2843
  store i32 %1, i32* %9, align 8, !dbg !2844, !tbaa !1755, !alias.scope !2826
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2845
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2846
  ret i8* %10, !dbg !2847
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %0, i32 %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !2848 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 %1, metadata !2853, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8* %2, metadata !2854, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %3, metadata !2855, metadata !DIExpression()), !dbg !2857
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2858
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2858
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2856, metadata !DIExpression()), !dbg !2859
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2860), !dbg !2863
  call void @llvm.dbg.value(metadata i32 %1, metadata !2830, metadata !DIExpression()) #28, !dbg !2864
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2835, metadata !DIExpression()) #28, !dbg !2866
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #28, !dbg !2866, !alias.scope !2860
  %7 = icmp eq i32 %1, 10, !dbg !2867
  br i1 %7, label %8, label %9, !dbg !2868

8:                                                ; preds = %4
  tail call void @abort() #30, !dbg !2869, !noalias !2860
  unreachable, !dbg !2869

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2870
  store i32 %1, i32* %10, align 8, !dbg !2871, !tbaa !1755, !alias.scope !2860
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2872
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !2873
  ret i8* %11, !dbg !2874
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !2875 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i8* %1, metadata !2880, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2819, metadata !DIExpression()) #28, !dbg !2882
  call void @llvm.dbg.value(metadata i32 %0, metadata !2820, metadata !DIExpression()) #28, !dbg !2882
  call void @llvm.dbg.value(metadata i8* %1, metadata !2821, metadata !DIExpression()) #28, !dbg !2882
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2884
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2884
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2822, metadata !DIExpression()) #28, !dbg !2885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2886) #28, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %0, metadata !2830, metadata !DIExpression()) #28, !dbg !2890
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2835, metadata !DIExpression()) #28, !dbg !2892
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28, !dbg !2892, !alias.scope !2886
  %5 = icmp eq i32 %0, 10, !dbg !2893
  br i1 %5, label %6, label %7, !dbg !2894

6:                                                ; preds = %2
  tail call void @abort() #30, !dbg !2895, !noalias !2886
  unreachable, !dbg !2895

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2896
  store i32 %0, i32* %8, align 8, !dbg !2897, !tbaa !1755, !alias.scope !2886
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !2898
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2899
  ret i8* %9, !dbg !2900
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !2901 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2905, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* %1, metadata !2906, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i64 %2, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i32 0, metadata !2852, metadata !DIExpression()) #28, !dbg !2909
  call void @llvm.dbg.value(metadata i32 %0, metadata !2853, metadata !DIExpression()) #28, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %1, metadata !2854, metadata !DIExpression()) #28, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %2, metadata !2855, metadata !DIExpression()) #28, !dbg !2909
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2911
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2911
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2856, metadata !DIExpression()) #28, !dbg !2912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2913) #28, !dbg !2916
  call void @llvm.dbg.value(metadata i32 %0, metadata !2830, metadata !DIExpression()) #28, !dbg !2917
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2835, metadata !DIExpression()) #28, !dbg !2919
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #28, !dbg !2919, !alias.scope !2913
  %6 = icmp eq i32 %0, 10, !dbg !2920
  br i1 %6, label %7, label %8, !dbg !2921

7:                                                ; preds = %3
  tail call void @abort() #30, !dbg !2922, !noalias !2913
  unreachable, !dbg !2922

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2923
  store i32 %0, i32* %9, align 8, !dbg !2924, !tbaa !1755, !alias.scope !2913
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #28, !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2926
  ret i8* %10, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext %2) local_unnamed_addr #8 !dbg !2928 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2932, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i8 %2, metadata !2934, metadata !DIExpression()), !dbg !2936
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2937
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2937
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2939, !tbaa.struct !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1773, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 %2, metadata !1774, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 1, metadata !1775, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i8 %2, metadata !1776, metadata !DIExpression()), !dbg !2941
  %6 = lshr i8 %2, 5, !dbg !2943
  %7 = zext i8 %6 to i64, !dbg !2943
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2944
  call void @llvm.dbg.value(metadata i32* %8, metadata !1777, metadata !DIExpression()), !dbg !2941
  %9 = and i8 %2, 31, !dbg !2945
  %10 = zext i8 %9 to i32, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %10, metadata !1779, metadata !DIExpression()), !dbg !2941
  %11 = load i32, i32* %8, align 4, !dbg !2946, !tbaa !947
  %12 = lshr i32 %11, %10, !dbg !2947
  %13 = and i32 %12, 1, !dbg !2948
  call void @llvm.dbg.value(metadata i32 %13, metadata !1780, metadata !DIExpression()), !dbg !2941
  %14 = xor i32 %13, 1, !dbg !2949
  %15 = shl i32 %14, %10, !dbg !2950
  %16 = xor i32 %15, %11, !dbg !2951
  store i32 %16, i32* %8, align 4, !dbg !2951, !tbaa !947
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2952
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !2953
  ret i8* %17, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8* %0, i8 signext %1) local_unnamed_addr #8 !dbg !2955 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8 %1, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i8* %0, metadata !2932, metadata !DIExpression()) #28, !dbg !2962
  call void @llvm.dbg.value(metadata i64 -1, metadata !2933, metadata !DIExpression()) #28, !dbg !2962
  call void @llvm.dbg.value(metadata i8 %1, metadata !2934, metadata !DIExpression()) #28, !dbg !2962
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2964
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2964
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2935, metadata !DIExpression()) #28, !dbg !2965
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !2966, !tbaa.struct !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1773, metadata !DIExpression()) #28, !dbg !2967
  call void @llvm.dbg.value(metadata i8 %1, metadata !1774, metadata !DIExpression()) #28, !dbg !2967
  call void @llvm.dbg.value(metadata i32 1, metadata !1775, metadata !DIExpression()) #28, !dbg !2967
  call void @llvm.dbg.value(metadata i8 %1, metadata !1776, metadata !DIExpression()) #28, !dbg !2967
  %5 = lshr i8 %1, 5, !dbg !2969
  %6 = zext i8 %5 to i64, !dbg !2969
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2970
  call void @llvm.dbg.value(metadata i32* %7, metadata !1777, metadata !DIExpression()) #28, !dbg !2967
  %8 = and i8 %1, 31, !dbg !2971
  %9 = zext i8 %8 to i32, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %9, metadata !1779, metadata !DIExpression()) #28, !dbg !2967
  %10 = load i32, i32* %7, align 4, !dbg !2972, !tbaa !947
  %11 = lshr i32 %10, %9, !dbg !2973
  %12 = and i32 %11, 1, !dbg !2974
  call void @llvm.dbg.value(metadata i32 %12, metadata !1780, metadata !DIExpression()) #28, !dbg !2967
  %13 = xor i32 %12, 1, !dbg !2975
  %14 = shl i32 %13, %9, !dbg !2976
  %15 = xor i32 %14, %10, !dbg !2977
  store i32 %15, i32* %7, align 4, !dbg !2977, !tbaa !947
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #28, !dbg !2978
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !2979
  ret i8* %16, !dbg !2980
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8* %0) local_unnamed_addr #8 !dbg !2981 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2983, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()) #28, !dbg !2985
  call void @llvm.dbg.value(metadata i8 58, metadata !2960, metadata !DIExpression()) #28, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %0, metadata !2932, metadata !DIExpression()) #28, !dbg !2987
  call void @llvm.dbg.value(metadata i64 -1, metadata !2933, metadata !DIExpression()) #28, !dbg !2987
  call void @llvm.dbg.value(metadata i8 58, metadata !2934, metadata !DIExpression()) #28, !dbg !2987
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2989
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #28, !dbg !2989
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2935, metadata !DIExpression()) #28, !dbg !2990
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %3, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !2991, !tbaa.struct !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1773, metadata !DIExpression()) #28, !dbg !2992
  call void @llvm.dbg.value(metadata i8 58, metadata !1774, metadata !DIExpression()) #28, !dbg !2992
  call void @llvm.dbg.value(metadata i32 1, metadata !1775, metadata !DIExpression()) #28, !dbg !2992
  call void @llvm.dbg.value(metadata i8 58, metadata !1776, metadata !DIExpression()) #28, !dbg !2992
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2994
  call void @llvm.dbg.value(metadata i32* %4, metadata !1777, metadata !DIExpression()) #28, !dbg !2992
  call void @llvm.dbg.value(metadata i32 26, metadata !1779, metadata !DIExpression()) #28, !dbg !2992
  %5 = load i32, i32* %4, align 4, !dbg !2995, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %5, metadata !1780, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !2992
  %6 = or i32 %5, 67108864, !dbg !2996
  store i32 %6, i32* %4, align 4, !dbg !2996, !tbaa !947
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #28, !dbg !2997
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #28, !dbg !2998
  ret i8* %7, !dbg !2999
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3000 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3002, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %1, metadata !3003, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8* %0, metadata !2932, metadata !DIExpression()) #28, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()) #28, !dbg !3005
  call void @llvm.dbg.value(metadata i8 58, metadata !2934, metadata !DIExpression()) #28, !dbg !3005
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3007
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3007
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2935, metadata !DIExpression()) #28, !dbg !3008
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %4, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #28, !dbg !3009, !tbaa.struct !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1773, metadata !DIExpression()) #28, !dbg !3010
  call void @llvm.dbg.value(metadata i8 58, metadata !1774, metadata !DIExpression()) #28, !dbg !3010
  call void @llvm.dbg.value(metadata i32 1, metadata !1775, metadata !DIExpression()) #28, !dbg !3010
  call void @llvm.dbg.value(metadata i8 58, metadata !1776, metadata !DIExpression()) #28, !dbg !3010
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3012
  call void @llvm.dbg.value(metadata i32* %5, metadata !1777, metadata !DIExpression()) #28, !dbg !3010
  call void @llvm.dbg.value(metadata i32 26, metadata !1779, metadata !DIExpression()) #28, !dbg !3010
  %6 = load i32, i32* %5, align 4, !dbg !3013, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %6, metadata !1780, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #28, !dbg !3010
  %7 = or i32 %6, 67108864, !dbg !3014
  store i32 %7, i32* %5, align 4, !dbg !3014, !tbaa !947
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #28, !dbg !3015
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #28, !dbg !3016
  ret i8* %8, !dbg !3017
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %0, i32 %1, i8* %2) local_unnamed_addr #8 !dbg !3018 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2835, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3024
  call void @llvm.dbg.value(metadata i32 %0, metadata !3020, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i32 %1, metadata !3021, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %2, metadata !3022, metadata !DIExpression()), !dbg !3026
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3027
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3027
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3023, metadata !DIExpression()), !dbg !3028
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3029
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3029
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030), !dbg !3029
  call void @llvm.dbg.value(metadata i32 %1, metadata !2830, metadata !DIExpression()) #28, !dbg !3033
  call void @llvm.dbg.value(metadata i32 0, metadata !2835, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3033
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %7, i8 0, i64 52, i1 false), !dbg !3024, !alias.scope !3030
  %8 = icmp eq i32 %1, 10, !dbg !3034
  br i1 %8, label %9, label %10, !dbg !3035

9:                                                ; preds = %3
  tail call void @abort() #30, !dbg !3036, !noalias !3030
  unreachable, !dbg !3036

10:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2835, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3033
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3029
  store i32 %1, i32* %11, align 8, !dbg !3029, !tbaa.struct !2940
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3029
  %13 = bitcast i32* %12 to i8*, !dbg !3029
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(52) %13, i8* nonnull align 4 dereferenceable(52) %7, i64 52, i1 false), !dbg !3029, !tbaa.struct !3037
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3029
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1773, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 58, metadata !1774, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 1, metadata !1775, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i8 58, metadata !1776, metadata !DIExpression()), !dbg !3038
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3040
  call void @llvm.dbg.value(metadata i32* %14, metadata !1777, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 26, metadata !1779, metadata !DIExpression()), !dbg !3038
  %15 = load i32, i32* %14, align 4, !dbg !3041, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %15, metadata !1780, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3038
  %16 = or i32 %15, 67108864, !dbg !3042
  store i32 %16, i32* %14, align 4, !dbg !3042, !tbaa !947
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3043
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3044
  ret i8* %17, !dbg !3045
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32 %0, i8* %1, i8* %2, i8* %3) local_unnamed_addr #8 !dbg !3046 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3050, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %1, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %2, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8* %3, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i32 %0, metadata !3055, metadata !DIExpression()) #28, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %1, metadata !3060, metadata !DIExpression()) #28, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %2, metadata !3061, metadata !DIExpression()) #28, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %3, metadata !3062, metadata !DIExpression()) #28, !dbg !3065
  call void @llvm.dbg.value(metadata i64 -1, metadata !3063, metadata !DIExpression()) #28, !dbg !3065
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3067
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3067
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3064, metadata !DIExpression()) #28, !dbg !3068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3069, !tbaa.struct !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1813, metadata !DIExpression()) #28, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression()) #28, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %2, metadata !1815, metadata !DIExpression()) #28, !dbg !3070
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1813, metadata !DIExpression()) #28, !dbg !3070
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3072
  store i32 10, i32* %7, align 8, !dbg !3073, !tbaa !1755
  %8 = icmp ne i8* %1, null, !dbg !3074
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3075
  br i1 %10, label %12, label %11, !dbg !3075

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3076
  unreachable, !dbg !3076

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3077
  store i8* %1, i8** %13, align 8, !dbg !3078, !tbaa !1828
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3079
  store i8* %2, i8** %14, align 8, !dbg !3080, !tbaa !1831
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #28, !dbg !3081
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3082
  ret i8* %15, !dbg !3083
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 %4) local_unnamed_addr #8 !dbg !3056 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3055, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %1, metadata !3060, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %2, metadata !3061, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %3, metadata !3062, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %4, metadata !3063, metadata !DIExpression()), !dbg !3084
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3085
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3085
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3064, metadata !DIExpression()), !dbg !3086
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %7, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3087, !tbaa.struct !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1813, metadata !DIExpression()) #28, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %1, metadata !1814, metadata !DIExpression()) #28, !dbg !3088
  call void @llvm.dbg.value(metadata i8* %2, metadata !1815, metadata !DIExpression()) #28, !dbg !3088
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1813, metadata !DIExpression()) #28, !dbg !3088
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3090
  store i32 10, i32* %8, align 8, !dbg !3091, !tbaa !1755
  %9 = icmp ne i8* %1, null, !dbg !3092
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3093
  br i1 %11, label %13, label %12, !dbg !3093

12:                                               ; preds = %5
  tail call void @abort() #30, !dbg !3094
  unreachable, !dbg !3094

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3095
  store i8* %1, i8** %14, align 8, !dbg !3096, !tbaa !1828
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3097
  store i8* %2, i8** %15, align 8, !dbg !3098, !tbaa !1831
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3099
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #28, !dbg !3100
  ret i8* %16, !dbg !3101
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8* %0, i8* %1, i8* %2) local_unnamed_addr #8 !dbg !3102 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %1, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %2, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 0, metadata !3050, metadata !DIExpression()) #28, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()) #28, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %1, metadata !3052, metadata !DIExpression()) #28, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %2, metadata !3053, metadata !DIExpression()) #28, !dbg !3110
  call void @llvm.dbg.value(metadata i32 0, metadata !3055, metadata !DIExpression()) #28, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %0, metadata !3060, metadata !DIExpression()) #28, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %1, metadata !3061, metadata !DIExpression()) #28, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %2, metadata !3062, metadata !DIExpression()) #28, !dbg !3112
  call void @llvm.dbg.value(metadata i64 -1, metadata !3063, metadata !DIExpression()) #28, !dbg !3112
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3114
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3114
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3064, metadata !DIExpression()) #28, !dbg !3115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %5, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3116, !tbaa.struct !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1813, metadata !DIExpression()) #28, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %0, metadata !1814, metadata !DIExpression()) #28, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %1, metadata !1815, metadata !DIExpression()) #28, !dbg !3117
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1813, metadata !DIExpression()) #28, !dbg !3117
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3119
  store i32 10, i32* %6, align 8, !dbg !3120, !tbaa !1755
  %7 = icmp ne i8* %0, null, !dbg !3121
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3122
  br i1 %9, label %11, label %10, !dbg !3122

10:                                               ; preds = %3
  tail call void @abort() #30, !dbg !3123
  unreachable, !dbg !3123

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3124
  store i8* %0, i8** %12, align 8, !dbg !3125, !tbaa !1828
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3126
  store i8* %1, i8** %13, align 8, !dbg !3127, !tbaa !1831
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #28, !dbg !3128
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #28, !dbg !3129
  ret i8* %14, !dbg !3130
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8* %0, i8* %1, i8* %2, i64 %3) local_unnamed_addr #8 !dbg !3131 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3135, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i8* %2, metadata !3137, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %3, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i32 0, metadata !3055, metadata !DIExpression()) #28, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %0, metadata !3060, metadata !DIExpression()) #28, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %1, metadata !3061, metadata !DIExpression()) #28, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %2, metadata !3062, metadata !DIExpression()) #28, !dbg !3140
  call void @llvm.dbg.value(metadata i64 %3, metadata !3063, metadata !DIExpression()) #28, !dbg !3140
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3142
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3142
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3064, metadata !DIExpression()) #28, !dbg !3143
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(56) %6, i8* nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #28, !dbg !3144, !tbaa.struct !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1813, metadata !DIExpression()) #28, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %0, metadata !1814, metadata !DIExpression()) #28, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %1, metadata !1815, metadata !DIExpression()) #28, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1813, metadata !DIExpression()) #28, !dbg !3145
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3147
  store i32 10, i32* %7, align 8, !dbg !3148, !tbaa !1755
  %8 = icmp ne i8* %0, null, !dbg !3149
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3150
  br i1 %10, label %12, label %11, !dbg !3150

11:                                               ; preds = %4
  tail call void @abort() #30, !dbg !3151
  unreachable, !dbg !3151

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3152
  store i8* %0, i8** %13, align 8, !dbg !3153, !tbaa !1828
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3154
  store i8* %1, i8** %14, align 8, !dbg !3155, !tbaa !1831
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #28, !dbg !3156
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #28, !dbg !3157
  ret i8* %15, !dbg !3158
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32 %0, i8* %1, i64 %2) local_unnamed_addr #8 !dbg !3159 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3163, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %2, metadata !3165, metadata !DIExpression()), !dbg !3166
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3167
  ret i8* %4, !dbg !3168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !3174, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression()) #28, !dbg !3176
  call void @llvm.dbg.value(metadata i8* %0, metadata !3164, metadata !DIExpression()) #28, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()) #28, !dbg !3176
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3178
  ret i8* %3, !dbg !3179
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32 %0, i8* %1) local_unnamed_addr #8 !dbg !3180 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 %0, metadata !3163, metadata !DIExpression()) #28, !dbg !3187
  call void @llvm.dbg.value(metadata i8* %1, metadata !3164, metadata !DIExpression()) #28, !dbg !3187
  call void @llvm.dbg.value(metadata i64 -1, metadata !3165, metadata !DIExpression()) #28, !dbg !3187
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3189
  ret i8* %3, !dbg !3190
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8* %0) local_unnamed_addr #8 !dbg !3191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3184, metadata !DIExpression()) #28, !dbg !3197
  call void @llvm.dbg.value(metadata i8* %0, metadata !3185, metadata !DIExpression()) #28, !dbg !3197
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression()) #28, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %0, metadata !3164, metadata !DIExpression()) #28, !dbg !3199
  call void @llvm.dbg.value(metadata i64 -1, metadata !3165, metadata !DIExpression()) #28, !dbg !3199
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #28, !dbg !3201
  ret i8* %2, !dbg !3202
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4, i64 %5) local_unnamed_addr #8 !dbg !3203 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3242, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %1, metadata !3243, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %2, metadata !3244, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8* %3, metadata !3245, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8** %4, metadata !3246, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %5, metadata !3247, metadata !DIExpression()), !dbg !3248
  %7 = icmp eq i8* %1, null, !dbg !3249
  br i1 %7, label %10, label %8, !dbg !3251

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.163, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #28, !dbg !3252
  br label %12, !dbg !3252

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.164, i64 0, i64 0), i8* %2, i8* %3) #28, !dbg !3253
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.165, i64 0, i64 0), i32 5) #28, !dbg !3254
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2020) #28, !dbg !3254
  %15 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.166, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3255
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.167, i64 0, i64 0), i32 5) #28, !dbg !3256
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.168, i64 0, i64 0)) #28, !dbg !3256
  %18 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.166, i64 0, i64 0), %struct._IO_FILE* %0), !dbg !3257
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
  ], !dbg !3258

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.169, i64 0, i64 0), i32 5) #28, !dbg !3259
  %21 = load i8*, i8** %4, align 8, !dbg !3259, !tbaa !824
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %20, i8* %21) #28, !dbg !3259
  br label %147, !dbg !3261

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.170, i64 0, i64 0), i32 5) #28, !dbg !3262
  %25 = load i8*, i8** %4, align 8, !dbg !3262, !tbaa !824
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3262
  %27 = load i8*, i8** %26, align 8, !dbg !3262, !tbaa !824
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %24, i8* %25, i8* %27) #28, !dbg !3262
  br label %147, !dbg !3263

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.171, i64 0, i64 0), i32 5) #28, !dbg !3264
  %31 = load i8*, i8** %4, align 8, !dbg !3264, !tbaa !824
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3264
  %33 = load i8*, i8** %32, align 8, !dbg !3264, !tbaa !824
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3264
  %35 = load i8*, i8** %34, align 8, !dbg !3264, !tbaa !824
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %30, i8* %31, i8* %33, i8* %35) #28, !dbg !3264
  br label %147, !dbg !3265

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.172, i64 0, i64 0), i32 5) #28, !dbg !3266
  %39 = load i8*, i8** %4, align 8, !dbg !3266, !tbaa !824
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3266
  %41 = load i8*, i8** %40, align 8, !dbg !3266, !tbaa !824
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3266
  %43 = load i8*, i8** %42, align 8, !dbg !3266, !tbaa !824
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3266
  %45 = load i8*, i8** %44, align 8, !dbg !3266, !tbaa !824
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %38, i8* %39, i8* %41, i8* %43, i8* %45) #28, !dbg !3266
  br label %147, !dbg !3267

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.173, i64 0, i64 0), i32 5) #28, !dbg !3268
  %49 = load i8*, i8** %4, align 8, !dbg !3268, !tbaa !824
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3268
  %51 = load i8*, i8** %50, align 8, !dbg !3268, !tbaa !824
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3268
  %53 = load i8*, i8** %52, align 8, !dbg !3268, !tbaa !824
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3268
  %55 = load i8*, i8** %54, align 8, !dbg !3268, !tbaa !824
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3268
  %57 = load i8*, i8** %56, align 8, !dbg !3268, !tbaa !824
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %48, i8* %49, i8* %51, i8* %53, i8* %55, i8* %57) #28, !dbg !3268
  br label %147, !dbg !3269

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.174, i64 0, i64 0), i32 5) #28, !dbg !3270
  %61 = load i8*, i8** %4, align 8, !dbg !3270, !tbaa !824
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3270
  %63 = load i8*, i8** %62, align 8, !dbg !3270, !tbaa !824
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3270
  %65 = load i8*, i8** %64, align 8, !dbg !3270, !tbaa !824
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3270
  %67 = load i8*, i8** %66, align 8, !dbg !3270, !tbaa !824
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3270
  %69 = load i8*, i8** %68, align 8, !dbg !3270, !tbaa !824
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3270
  %71 = load i8*, i8** %70, align 8, !dbg !3270, !tbaa !824
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %60, i8* %61, i8* %63, i8* %65, i8* %67, i8* %69, i8* %71) #28, !dbg !3270
  br label %147, !dbg !3271

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.175, i64 0, i64 0), i32 5) #28, !dbg !3272
  %75 = load i8*, i8** %4, align 8, !dbg !3272, !tbaa !824
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3272
  %77 = load i8*, i8** %76, align 8, !dbg !3272, !tbaa !824
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3272
  %79 = load i8*, i8** %78, align 8, !dbg !3272, !tbaa !824
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3272
  %81 = load i8*, i8** %80, align 8, !dbg !3272, !tbaa !824
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3272
  %83 = load i8*, i8** %82, align 8, !dbg !3272, !tbaa !824
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3272
  %85 = load i8*, i8** %84, align 8, !dbg !3272, !tbaa !824
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3272
  %87 = load i8*, i8** %86, align 8, !dbg !3272, !tbaa !824
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %74, i8* %75, i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87) #28, !dbg !3272
  br label %147, !dbg !3273

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.176, i64 0, i64 0), i32 5) #28, !dbg !3274
  %91 = load i8*, i8** %4, align 8, !dbg !3274, !tbaa !824
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3274
  %93 = load i8*, i8** %92, align 8, !dbg !3274, !tbaa !824
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3274
  %95 = load i8*, i8** %94, align 8, !dbg !3274, !tbaa !824
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3274
  %97 = load i8*, i8** %96, align 8, !dbg !3274, !tbaa !824
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3274
  %99 = load i8*, i8** %98, align 8, !dbg !3274, !tbaa !824
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3274
  %101 = load i8*, i8** %100, align 8, !dbg !3274, !tbaa !824
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3274
  %103 = load i8*, i8** %102, align 8, !dbg !3274, !tbaa !824
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3274
  %105 = load i8*, i8** %104, align 8, !dbg !3274, !tbaa !824
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %90, i8* %91, i8* %93, i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105) #28, !dbg !3274
  br label %147, !dbg !3275

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.177, i64 0, i64 0), i32 5) #28, !dbg !3276
  %109 = load i8*, i8** %4, align 8, !dbg !3276, !tbaa !824
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3276
  %111 = load i8*, i8** %110, align 8, !dbg !3276, !tbaa !824
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3276
  %113 = load i8*, i8** %112, align 8, !dbg !3276, !tbaa !824
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3276
  %115 = load i8*, i8** %114, align 8, !dbg !3276, !tbaa !824
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3276
  %117 = load i8*, i8** %116, align 8, !dbg !3276, !tbaa !824
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3276
  %119 = load i8*, i8** %118, align 8, !dbg !3276, !tbaa !824
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3276
  %121 = load i8*, i8** %120, align 8, !dbg !3276, !tbaa !824
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3276
  %123 = load i8*, i8** %122, align 8, !dbg !3276, !tbaa !824
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3276
  %125 = load i8*, i8** %124, align 8, !dbg !3276, !tbaa !824
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %108, i8* %109, i8* %111, i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125) #28, !dbg !3276
  br label %147, !dbg !3277

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.178, i64 0, i64 0), i32 5) #28, !dbg !3278
  %129 = load i8*, i8** %4, align 8, !dbg !3278, !tbaa !824
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3278
  %131 = load i8*, i8** %130, align 8, !dbg !3278, !tbaa !824
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3278
  %133 = load i8*, i8** %132, align 8, !dbg !3278, !tbaa !824
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3278
  %135 = load i8*, i8** %134, align 8, !dbg !3278, !tbaa !824
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3278
  %137 = load i8*, i8** %136, align 8, !dbg !3278, !tbaa !824
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3278
  %139 = load i8*, i8** %138, align 8, !dbg !3278, !tbaa !824
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3278
  %141 = load i8*, i8** %140, align 8, !dbg !3278, !tbaa !824
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3278
  %143 = load i8*, i8** %142, align 8, !dbg !3278, !tbaa !824
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3278
  %145 = load i8*, i8** %144, align 8, !dbg !3278, !tbaa !824
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %128, i8* %129, i8* %131, i8* %133, i8* %135, i8* %137, i8* %139, i8* %141, i8* %143, i8* %145) #28, !dbg !3278
  br label %147, !dbg !3279

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3280
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** readonly %4) local_unnamed_addr #8 !dbg !3281 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3285, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %1, metadata !3286, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %2, metadata !3287, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8* %3, metadata !3288, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i8** %4, metadata !3289, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 0, metadata !3290, metadata !DIExpression()), !dbg !3291
  br label %6, !dbg !3292

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3294
  call void @llvm.dbg.value(metadata i64 %7, metadata !3290, metadata !DIExpression()), !dbg !3291
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3295
  %9 = load i8*, i8** %8, align 8, !dbg !3295, !tbaa !824
  %10 = icmp eq i8* %9, null, !dbg !3297
  %11 = add i64 %7, 1, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %11, metadata !3290, metadata !DIExpression()), !dbg !3291
  br i1 %10, label %12, label %6, !dbg !3297, !llvm.loop !3299

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3301
  ret void, !dbg !3302
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nocapture %4) local_unnamed_addr #8 !dbg !3303 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3314, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* %1, metadata !3315, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* %2, metadata !3316, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i8* %3, metadata !3317, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3318, metadata !DIExpression()), !dbg !3322
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3323
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3323
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3320, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 0, metadata !3319, metadata !DIExpression()), !dbg !3322
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  call void @llvm.dbg.value(metadata i64 0, metadata !3319, metadata !DIExpression()), !dbg !3322
  %11 = load i32, i32* %8, align 8, !dbg !3325
  %12 = icmp ult i32 %11, 41, !dbg !3325
  br i1 %12, label %13, label %18, !dbg !3325

13:                                               ; preds = %5
  %14 = load i8*, i8** %10, align 8, !dbg !3325
  %15 = zext i32 %11 to i64, !dbg !3325
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3325
  %17 = add nuw nsw i32 %11, 8, !dbg !3325
  store i32 %17, i32* %8, align 8, !dbg !3325
  br label %21, !dbg !3325

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8, !dbg !3325
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3325
  store i8* %20, i8** %9, align 8, !dbg !3325
  br label %21, !dbg !3325

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3325
  %25 = load i8*, i8** %24, align 8, !dbg !3325
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3328
  store i8* %25, i8** %26, align 16, !dbg !3329, !tbaa !824
  %27 = icmp eq i8* %25, null, !dbg !3330
  br i1 %27, label %30, label %28, !dbg !3331

28:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 1, metadata !3319, metadata !DIExpression()), !dbg !3322
  %29 = icmp ult i32 %22, 41, !dbg !3325
  br i1 %29, label %35, label %32, !dbg !3325

30:                                               ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3332
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3333
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #28, !dbg !3334
  ret void, !dbg !3334

32:                                               ; preds = %28
  %33 = load i8*, i8** %9, align 8, !dbg !3325
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3325
  store i8* %34, i8** %9, align 8, !dbg !3325
  br label %40, !dbg !3325

35:                                               ; preds = %28
  %36 = load i8*, i8** %10, align 8, !dbg !3325
  %37 = zext i32 %22 to i64, !dbg !3325
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3325
  %39 = add nuw nsw i32 %22, 8, !dbg !3325
  store i32 %39, i32* %8, align 8, !dbg !3325
  br label %40, !dbg !3325

40:                                               ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3325
  %44 = load i8*, i8** %43, align 8, !dbg !3325
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3328
  store i8* %44, i8** %45, align 8, !dbg !3329, !tbaa !824
  %46 = icmp eq i8* %44, null, !dbg !3330
  br i1 %46, label %30, label %47, !dbg !3331

47:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 2, metadata !3319, metadata !DIExpression()), !dbg !3322
  %48 = icmp ult i32 %41, 41, !dbg !3325
  br i1 %48, label %52, label %49, !dbg !3325

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8, !dbg !3325
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3325
  store i8* %51, i8** %9, align 8, !dbg !3325
  br label %57, !dbg !3325

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !3325
  %54 = zext i32 %41 to i64, !dbg !3325
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3325
  %56 = add nuw nsw i32 %41, 8, !dbg !3325
  store i32 %56, i32* %8, align 8, !dbg !3325
  br label %57, !dbg !3325

57:                                               ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3325
  %61 = load i8*, i8** %60, align 8, !dbg !3325
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3328
  store i8* %61, i8** %62, align 16, !dbg !3329, !tbaa !824
  %63 = icmp eq i8* %61, null, !dbg !3330
  br i1 %63, label %30, label %64, !dbg !3331

64:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 3, metadata !3319, metadata !DIExpression()), !dbg !3322
  %65 = icmp ult i32 %58, 41, !dbg !3325
  br i1 %65, label %69, label %66, !dbg !3325

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8, !dbg !3325
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3325
  store i8* %68, i8** %9, align 8, !dbg !3325
  br label %74, !dbg !3325

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8, !dbg !3325
  %71 = zext i32 %58 to i64, !dbg !3325
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3325
  %73 = add nuw nsw i32 %58, 8, !dbg !3325
  store i32 %73, i32* %8, align 8, !dbg !3325
  br label %74, !dbg !3325

74:                                               ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3325
  %78 = load i8*, i8** %77, align 8, !dbg !3325
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3328
  store i8* %78, i8** %79, align 8, !dbg !3329, !tbaa !824
  %80 = icmp eq i8* %78, null, !dbg !3330
  br i1 %80, label %30, label %81, !dbg !3331

81:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 4, metadata !3319, metadata !DIExpression()), !dbg !3322
  %82 = icmp ult i32 %75, 41, !dbg !3325
  br i1 %82, label %86, label %83, !dbg !3325

83:                                               ; preds = %81
  %84 = load i8*, i8** %9, align 8, !dbg !3325
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3325
  store i8* %85, i8** %9, align 8, !dbg !3325
  br label %91, !dbg !3325

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8, !dbg !3325
  %88 = zext i32 %75 to i64, !dbg !3325
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3325
  %90 = add nuw nsw i32 %75, 8, !dbg !3325
  store i32 %90, i32* %8, align 8, !dbg !3325
  br label %91, !dbg !3325

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3325
  %95 = load i8*, i8** %94, align 8, !dbg !3325
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3328
  store i8* %95, i8** %96, align 16, !dbg !3329, !tbaa !824
  %97 = icmp eq i8* %95, null, !dbg !3330
  br i1 %97, label %30, label %98, !dbg !3331

98:                                               ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 5, metadata !3319, metadata !DIExpression()), !dbg !3322
  %99 = icmp ult i32 %92, 41, !dbg !3325
  br i1 %99, label %103, label %100, !dbg !3325

100:                                              ; preds = %98
  %101 = load i8*, i8** %9, align 8, !dbg !3325
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3325
  store i8* %102, i8** %9, align 8, !dbg !3325
  br label %108, !dbg !3325

103:                                              ; preds = %98
  %104 = load i8*, i8** %10, align 8, !dbg !3325
  %105 = zext i32 %92 to i64, !dbg !3325
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3325
  %107 = add nuw nsw i32 %92, 8, !dbg !3325
  store i32 %107, i32* %8, align 8, !dbg !3325
  br label %108, !dbg !3325

108:                                              ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3325
  %111 = load i8*, i8** %110, align 8, !dbg !3325
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3328
  store i8* %111, i8** %112, align 8, !dbg !3329, !tbaa !824
  %113 = icmp eq i8* %111, null, !dbg !3330
  br i1 %113, label %30, label %114, !dbg !3331

114:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3319, metadata !DIExpression()), !dbg !3322
  %115 = load i8*, i8** %9, align 8, !dbg !3325
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3325
  store i8* %116, i8** %9, align 8, !dbg !3325
  %117 = bitcast i8* %115 to i8**, !dbg !3325
  %118 = load i8*, i8** %117, align 8, !dbg !3325
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3328
  store i8* %118, i8** %119, align 16, !dbg !3329, !tbaa !824
  %120 = icmp eq i8* %118, null, !dbg !3330
  br i1 %120, label %30, label %121, !dbg !3331

121:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3319, metadata !DIExpression()), !dbg !3322
  %122 = load i8*, i8** %9, align 8, !dbg !3325
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3325
  store i8* %123, i8** %9, align 8, !dbg !3325
  %124 = bitcast i8* %122 to i8**, !dbg !3325
  %125 = load i8*, i8** %124, align 8, !dbg !3325
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3328
  store i8* %125, i8** %126, align 8, !dbg !3329, !tbaa !824
  %127 = icmp eq i8* %125, null, !dbg !3330
  br i1 %127, label %30, label %128, !dbg !3331

128:                                              ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3319, metadata !DIExpression()), !dbg !3322
  %129 = load i8*, i8** %9, align 8, !dbg !3325
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3325
  store i8* %130, i8** %9, align 8, !dbg !3325
  %131 = bitcast i8* %129 to i8**, !dbg !3325
  %132 = load i8*, i8** %131, align 8, !dbg !3325
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3328
  store i8* %132, i8** %133, align 16, !dbg !3329, !tbaa !824
  %134 = icmp eq i8* %132, null, !dbg !3330
  br i1 %134, label %30, label %135, !dbg !3331

135:                                              ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3319, metadata !DIExpression()), !dbg !3322
  %136 = load i8*, i8** %9, align 8, !dbg !3325
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3325
  store i8* %137, i8** %9, align 8, !dbg !3325
  %138 = bitcast i8* %136 to i8**, !dbg !3325
  %139 = load i8*, i8** %138, align 8, !dbg !3325
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3328
  store i8* %139, i8** %140, align 8, !dbg !3329, !tbaa !824
  %141 = icmp eq i8* %139, null, !dbg !3330
  %142 = select i1 %141, i64 9, i64 10, !dbg !3331
  br label %30, !dbg !3331
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, ...) local_unnamed_addr #8 !dbg !3335 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3339, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %1, metadata !3340, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %2, metadata !3341, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i8* %3, metadata !3342, metadata !DIExpression()), !dbg !3349
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3350
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3350
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3343, metadata !DIExpression()), !dbg !3351
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3352
  call void @llvm.va_start(i8* nonnull %6), !dbg !3352
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3353
  call void @llvm.va_end(i8* nonnull %6), !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #28, !dbg !3355
  ret void, !dbg !3355
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #8 !dbg !3356 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3357, !tbaa !824
  %2 = tail call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.166, i64 0, i64 0), %struct._IO_FILE* %1), !dbg !3357
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.181, i64 0, i64 0), i32 5) #28, !dbg !3358
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.182, i64 0, i64 0)) #28, !dbg !3358
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.183, i64 0, i64 0), i32 5) #28, !dbg !3359
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.184, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.185, i64 0, i64 0)) #28, !dbg !3359
  %7 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.186, i64 0, i64 0), i32 5) #28, !dbg !3360
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.187, i64 0, i64 0)) #28, !dbg !3360
  ret void, !dbg !3361
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64 %0, i64 %1) local_unnamed_addr #25 !dbg !3362 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3366, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i64 %1, metadata !3367, metadata !DIExpression()), !dbg !3368
  %3 = udiv i64 9223372036854775807, %1, !dbg !3369
  %4 = icmp ult i64 %3, %0, !dbg !3369
  br i1 %4, label %5, label %6, !dbg !3371

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3372
  unreachable, !dbg !3372

6:                                                ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %7, metadata !3374, metadata !DIExpression()) #28, !dbg !3378
  %8 = tail call noalias i8* @malloc(i64 %7) #28, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %8, metadata !3377, metadata !DIExpression()) #28, !dbg !3378
  %9 = icmp eq i8* %8, null, !dbg !3381
  %10 = icmp ne i64 %7, 0
  %11 = and i1 %10, %9, !dbg !3383
  br i1 %11, label %12, label %13, !dbg !3383

12:                                               ; preds = %6
  tail call void @xalloc_die() #30, !dbg !3384
  unreachable, !dbg !3384

13:                                               ; preds = %6
  ret i8* %8, !dbg !3385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64 %0) local_unnamed_addr #8 !dbg !3375 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3374, metadata !DIExpression()), !dbg !3386
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %2, metadata !3377, metadata !DIExpression()), !dbg !3386
  %3 = icmp eq i8* %2, null, !dbg !3388
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3389
  br i1 %5, label %6, label %7, !dbg !3389

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3390
  unreachable, !dbg !3390

7:                                                ; preds = %1
  ret i8* %2, !dbg !3391
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8* %0, i64 %1, i64 %2) local_unnamed_addr #25 !dbg !3392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3396, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %1, metadata !3397, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %2, metadata !3398, metadata !DIExpression()), !dbg !3399
  %4 = udiv i64 9223372036854775807, %2, !dbg !3400
  %5 = icmp ult i64 %4, %1, !dbg !3400
  br i1 %5, label %6, label %7, !dbg !3402

6:                                                ; preds = %3
  tail call void @xalloc_die() #30, !dbg !3403
  unreachable, !dbg !3403

7:                                                ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %0, metadata !3405, metadata !DIExpression()) #28, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %8, metadata !3408, metadata !DIExpression()) #28, !dbg !3409
  %9 = icmp eq i64 %8, 0, !dbg !3411
  %10 = icmp ne i8* %0, null
  %11 = and i1 %10, %9, !dbg !3413
  br i1 %11, label %12, label %13, !dbg !3413

12:                                               ; preds = %7
  tail call void @free(i8* nonnull %0) #28, !dbg !3414
  br label %19, !dbg !3416

13:                                               ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #28, !dbg !3417
  call void @llvm.dbg.value(metadata i8* %14, metadata !3405, metadata !DIExpression()) #28, !dbg !3409
  %15 = icmp eq i8* %14, null, !dbg !3418
  %16 = icmp ne i64 %8, 0
  %17 = and i1 %16, %15, !dbg !3420
  br i1 %17, label %18, label %19, !dbg !3420

18:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3421
  unreachable, !dbg !3421

19:                                               ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3409
  ret i8* %20, !dbg !3422
}

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture, i64) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3406 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3405, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i64 %1, metadata !3408, metadata !DIExpression()), !dbg !3423
  %3 = icmp eq i64 %1, 0, !dbg !3424
  %4 = icmp ne i8* %0, null
  %5 = and i1 %4, %3, !dbg !3425
  br i1 %5, label %6, label %7, !dbg !3425

6:                                                ; preds = %2
  tail call void @free(i8* nonnull %0) #28, !dbg !3426
  br label %13, !dbg !3427

7:                                                ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #28, !dbg !3428
  call void @llvm.dbg.value(metadata i8* %8, metadata !3405, metadata !DIExpression()), !dbg !3423
  %9 = icmp eq i8* %8, null, !dbg !3429
  %10 = icmp ne i64 %1, 0
  %11 = and i1 %10, %9, !dbg !3430
  br i1 %11, label %12, label %13, !dbg !3430

12:                                               ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3431
  unreachable, !dbg !3431

13:                                               ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3423
  ret i8* %14, !dbg !3432
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8* %0, i64* nocapture %1, i64 %2) local_unnamed_addr #25 !dbg !385 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !390, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64* %1, metadata !391, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %2, metadata !392, metadata !DIExpression()), !dbg !3433
  %4 = load i64, i64* %1, align 8, !dbg !3434, !tbaa !1102
  call void @llvm.dbg.value(metadata i64 %4, metadata !393, metadata !DIExpression()), !dbg !3433
  %5 = icmp eq i8* %0, null, !dbg !3435
  br i1 %5, label %6, label %20, !dbg !3437

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3438
  br i1 %7, label %8, label %13, !dbg !3441

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3442
  call void @llvm.dbg.value(metadata i64 %9, metadata !393, metadata !DIExpression()), !dbg !3433
  %10 = icmp ugt i64 %2, 128, !dbg !3444
  %11 = zext i1 %10 to i64, !dbg !3444
  %12 = add nuw nsw i64 %9, %11, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %12, metadata !393, metadata !DIExpression()), !dbg !3433
  br label %13, !dbg !3446

13:                                               ; preds = %8, %6
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3433
  call void @llvm.dbg.value(metadata i64 %14, metadata !393, metadata !DIExpression()), !dbg !3433
  %15 = udiv i64 9223372036854775807, %2, !dbg !3447
  %16 = icmp ult i64 %15, %14, !dbg !3447
  br i1 %16, label %19, label %17, !dbg !3449

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !393, metadata !DIExpression()), !dbg !3433
  store i64 %14, i64* %1, align 8, !dbg !3450, !tbaa !1102
  %18 = mul i64 %14, %2, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %0, metadata !3405, metadata !DIExpression()) #28, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %28, metadata !3408, metadata !DIExpression()) #28, !dbg !3452
  br label %31, !dbg !3454

19:                                               ; preds = %13
  tail call void @xalloc_die() #30, !dbg !3455
  unreachable, !dbg !3455

20:                                               ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3456
  %22 = icmp ugt i64 %21, %4, !dbg !3459
  br i1 %22, label %24, label %23, !dbg !3460

23:                                               ; preds = %20
  tail call void @xalloc_die() #30, !dbg !3461
  unreachable, !dbg !3461

24:                                               ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3462
  %26 = add nuw i64 %4, 1, !dbg !3463
  %27 = add i64 %26, %25, !dbg !3464
  call void @llvm.dbg.value(metadata i64 %27, metadata !393, metadata !DIExpression()), !dbg !3433
  store i64 %27, i64* %1, align 8, !dbg !3450, !tbaa !1102
  %28 = mul i64 %27, %2, !dbg !3451
  call void @llvm.dbg.value(metadata i8* %0, metadata !3405, metadata !DIExpression()) #28, !dbg !3452
  call void @llvm.dbg.value(metadata i64 %28, metadata !3408, metadata !DIExpression()) #28, !dbg !3452
  %29 = icmp eq i64 %28, 0, !dbg !3465
  br i1 %29, label %30, label %31, !dbg !3454

30:                                               ; preds = %24
  tail call void @free(i8* nonnull %0) #28, !dbg !3466
  br label %38, !dbg !3467

31:                                               ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #28, !dbg !3468
  call void @llvm.dbg.value(metadata i8* %33, metadata !3405, metadata !DIExpression()) #28, !dbg !3452
  %34 = icmp eq i8* %33, null, !dbg !3469
  %35 = icmp ne i64 %32, 0
  %36 = and i1 %35, %34, !dbg !3470
  br i1 %36, label %37, label %38, !dbg !3470

37:                                               ; preds = %31
  tail call void @xalloc_die() #30, !dbg !3471
  unreachable, !dbg !3471

38:                                               ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3452
  ret i8* %39, !dbg !3472
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64 %0) local_unnamed_addr #25 !dbg !3473 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3475, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 %0, metadata !3374, metadata !DIExpression()) #28, !dbg !3477
  %2 = tail call noalias i8* @malloc(i64 %0) #28, !dbg !3479
  call void @llvm.dbg.value(metadata i8* %2, metadata !3377, metadata !DIExpression()) #28, !dbg !3477
  %3 = icmp eq i8* %2, null, !dbg !3480
  %4 = icmp ne i64 %0, 0
  %5 = and i1 %4, %3, !dbg !3481
  br i1 %5, label %6, label %7, !dbg !3481

6:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3482
  unreachable, !dbg !3482

7:                                                ; preds = %1
  ret i8* %2, !dbg !3483
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8* %0, i64* nocapture %1) local_unnamed_addr #8 !dbg !3484 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3488, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64* %1, metadata !3489, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i8* %0, metadata !390, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i64* %1, metadata !391, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i64 1, metadata !392, metadata !DIExpression()) #28, !dbg !3491
  %3 = load i64, i64* %1, align 8, !dbg !3493, !tbaa !1102
  call void @llvm.dbg.value(metadata i64 %3, metadata !393, metadata !DIExpression()) #28, !dbg !3491
  %4 = icmp eq i8* %0, null, !dbg !3494
  br i1 %4, label %5, label %10, !dbg !3495

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3496
  br i1 %6, label %17, label %7, !dbg !3497

7:                                                ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !393, metadata !DIExpression()) #28, !dbg !3491
  %8 = icmp slt i64 %3, 0, !dbg !3498
  br i1 %8, label %9, label %17, !dbg !3499

9:                                                ; preds = %7
  tail call void @xalloc_die() #30, !dbg !3500
  unreachable, !dbg !3500

10:                                               ; preds = %2
  %11 = icmp ult i64 %3, 6148914691236517204, !dbg !3501
  br i1 %11, label %13, label %12, !dbg !3502

12:                                               ; preds = %10
  tail call void @xalloc_die() #30, !dbg !3503
  unreachable, !dbg !3503

13:                                               ; preds = %10
  %14 = lshr i64 %3, 1, !dbg !3504
  %15 = add nuw nsw i64 %3, 1, !dbg !3505
  %16 = add nuw nsw i64 %15, %14, !dbg !3506
  call void @llvm.dbg.value(metadata i64 %16, metadata !393, metadata !DIExpression()) #28, !dbg !3491
  call void @llvm.dbg.value(metadata i8* %0, metadata !3405, metadata !DIExpression()) #28, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %16, metadata !3408, metadata !DIExpression()) #28, !dbg !3507
  br label %17, !dbg !3509

17:                                               ; preds = %7, %5, %13
  %18 = phi i64 [ %16, %13 ], [ %3, %7 ], [ 128, %5 ], !dbg !3510
  store i64 %18, i64* %1, align 8, !dbg !3510, !tbaa !1102
  %19 = tail call i8* @realloc(i8* %0, i64 %18) #28, !dbg !3511
  call void @llvm.dbg.value(metadata i8* %19, metadata !3405, metadata !DIExpression()) #28, !dbg !3507
  %20 = icmp eq i8* %19, null, !dbg !3512
  br i1 %20, label %21, label %22, !dbg !3513

21:                                               ; preds = %17
  tail call void @xalloc_die() #30, !dbg !3514
  unreachable, !dbg !3514

22:                                               ; preds = %17
  ret i8* %19, !dbg !3515
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64 %0) local_unnamed_addr #8 !dbg !3516 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i64 %0, metadata !3520, metadata !DIExpression()) #28, !dbg !3525
  call void @llvm.dbg.value(metadata i64 1, metadata !3523, metadata !DIExpression()) #28, !dbg !3525
  %2 = icmp slt i64 %0, 0, !dbg !3527
  br i1 %2, label %6, label %3, !dbg !3529

3:                                                ; preds = %1
  %4 = tail call i8* @rpl_calloc(i64 %0, i64 1) #28, !dbg !3530
  call void @llvm.dbg.value(metadata i8* %4, metadata !3524, metadata !DIExpression()) #28, !dbg !3525
  %5 = icmp eq i8* %4, null, !dbg !3531
  br i1 %5, label %6, label %7, !dbg !3532

6:                                                ; preds = %3, %1
  tail call void @xalloc_die() #30, !dbg !3533
  unreachable, !dbg !3533

7:                                                ; preds = %3
  ret i8* %4, !dbg !3534
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64 %0, i64 %1) local_unnamed_addr #8 !dbg !3521 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3520, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 %1, metadata !3523, metadata !DIExpression()), !dbg !3535
  %3 = udiv i64 9223372036854775807, %1, !dbg !3536
  %4 = icmp ult i64 %3, %0, !dbg !3536
  br i1 %4, label %8, label %5, !dbg !3537

5:                                                ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #28, !dbg !3538
  call void @llvm.dbg.value(metadata i8* %6, metadata !3524, metadata !DIExpression()), !dbg !3535
  %7 = icmp eq i8* %6, null, !dbg !3539
  br i1 %7, label %8, label %9, !dbg !3540

8:                                                ; preds = %5, %2
  tail call void @xalloc_die() #30, !dbg !3541
  unreachable, !dbg !3541

9:                                                ; preds = %5
  ret i8* %6, !dbg !3542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xmemdup(i8* %0, i64 %1) local_unnamed_addr #8 !dbg !3543 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3547, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 %1, metadata !3548, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()) #28, !dbg !3550
  %3 = tail call noalias i8* @malloc(i64 %1) #28, !dbg !3552
  call void @llvm.dbg.value(metadata i8* %3, metadata !3377, metadata !DIExpression()) #28, !dbg !3550
  %4 = icmp eq i8* %3, null, !dbg !3553
  %5 = icmp ne i64 %1, 0
  %6 = and i1 %5, %4, !dbg !3554
  br i1 %6, label %7, label %8, !dbg !3554

7:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3555
  unreachable, !dbg !3555

8:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3556, metadata !DIExpression()) #28, !dbg !3565
  call void @llvm.dbg.value(metadata i8* %0, metadata !3563, metadata !DIExpression()) #28, !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3564, metadata !DIExpression()) #28, !dbg !3565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %3, i8* nonnull align 1 %0, i64 %1, i1 false) #28, !dbg !3567
  ret i8* %3, !dbg !3568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* %0) local_unnamed_addr #8 !dbg !3569 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3571, metadata !DIExpression()), !dbg !3572
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #29, !dbg !3573
  %3 = add i64 %2, 1, !dbg !3574
  call void @llvm.dbg.value(metadata i8* %0, metadata !3547, metadata !DIExpression()) #28, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %3, metadata !3548, metadata !DIExpression()) #28, !dbg !3575
  call void @llvm.dbg.value(metadata i64 %3, metadata !3374, metadata !DIExpression()) #28, !dbg !3577
  %4 = tail call noalias i8* @malloc(i64 %3) #28, !dbg !3579
  call void @llvm.dbg.value(metadata i8* %4, metadata !3377, metadata !DIExpression()) #28, !dbg !3577
  %5 = icmp eq i8* %4, null, !dbg !3580
  %6 = icmp ne i64 %3, 0
  %7 = and i1 %6, %5, !dbg !3581
  br i1 %7, label %8, label %9, !dbg !3581

8:                                                ; preds = %1
  tail call void @xalloc_die() #30, !dbg !3582
  unreachable, !dbg !3582

9:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3556, metadata !DIExpression()) #28, !dbg !3583
  call void @llvm.dbg.value(metadata i8* %0, metadata !3563, metadata !DIExpression()) #28, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %3, metadata !3564, metadata !DIExpression()) #28, !dbg !3583
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %4, i8* nonnull align 1 %0, i64 %3, i1 false) #28, !dbg !3585
  ret i8* %4, !dbg !3586
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3587 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3588, !tbaa !947
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.198, i64 0, i64 0), i32 5) #28, !dbg !3589
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.199, i64 0, i64 0), i8* %2) #28, !dbg !3590
  tail call void @abort() #30, !dbg !3591
  unreachable, !dbg !3591
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly %0, i64 %1) local_unnamed_addr #8 !dbg !3592 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %1, metadata !3595, metadata !DIExpression()), !dbg !3597
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #28, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %3, metadata !3596, metadata !DIExpression()), !dbg !3597
  %4 = icmp eq i8* %3, null, !dbg !3599
  br i1 %4, label %5, label %6, !dbg !3601

5:                                                ; preds = %2
  tail call void @xalloc_die() #30, !dbg !3602
  unreachable, !dbg !3602

6:                                                ; preds = %2
  ret i8* %3, !dbg !3603
}

; Function Attrs: inaccessiblemem_or_argmemonly nofree nounwind willreturn
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #26

; Function Attrs: nofree nounwind sspstrong uwtable willreturn
define dso_local noalias i8* @rpl_calloc(i64 %0, i64 %1) local_unnamed_addr #27 !dbg !3604 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3606, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %1, metadata !3607, metadata !DIExpression()), !dbg !3612
  %3 = icmp eq i64 %0, 0, !dbg !3613
  %4 = icmp eq i64 %1, 0
  %5 = or i1 %3, %4, !dbg !3614
  br i1 %5, label %11, label %6, !dbg !3614

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 undef, metadata !3609, metadata !DIExpression()), !dbg !3615
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0), !dbg !3616
  %8 = extractvalue { i64, i1 } %7, 1, !dbg !3616
  br i1 %8, label %9, label %11, !dbg !3618

9:                                                ; preds = %6
  %10 = tail call i32* @__errno_location() #32, !dbg !3619
  store i32 12, i32* %10, align 4, !dbg !3621, !tbaa !947
  br label %15

11:                                               ; preds = %6, %2
  %12 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %13 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !3606, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i64 %12, metadata !3607, metadata !DIExpression()), !dbg !3612
  %14 = tail call noalias i8* @calloc(i64 %13, i64 %12) #28, !dbg !3622
  call void @llvm.dbg.value(metadata i8* %14, metadata !3608, metadata !DIExpression()), !dbg !3612
  br label %15, !dbg !3623

15:                                               ; preds = %9, %11
  %16 = phi i8* [ %14, %11 ], [ null, %9 ], !dbg !3612
  ret i8* %16, !dbg !3624
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64, i64) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %0) local_unnamed_addr #8 !dbg !3625 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3663, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 0, metadata !3666, metadata !DIExpression()), !dbg !3667
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !3668
  call void @llvm.dbg.value(metadata i32 %2, metadata !3665, metadata !DIExpression()), !dbg !3667
  %3 = icmp slt i32 %2, 0, !dbg !3669
  br i1 %3, label %4, label %6, !dbg !3671

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3672
  br label %24, !dbg !3673

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !3674
  %8 = icmp eq i32 %7, 0, !dbg !3674
  br i1 %8, label %13, label %9, !dbg !3676

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !3677
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #28, !dbg !3678
  %12 = icmp eq i64 %11, -1, !dbg !3679
  br i1 %12, label %16, label %13, !dbg !3680

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #28, !dbg !3681
  %15 = icmp eq i32 %14, 0, !dbg !3681
  br i1 %15, label %16, label %18, !dbg !3682

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3664, metadata !DIExpression()), !dbg !3667
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3683
  call void @llvm.dbg.value(metadata i32 %21, metadata !3666, metadata !DIExpression()), !dbg !3667
  br label %24, !dbg !3684

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #32, !dbg !3685
  %20 = load i32, i32* %19, align 4, !dbg !3685, !tbaa !947
  call void @llvm.dbg.value(metadata i32 %20, metadata !3664, metadata !DIExpression()), !dbg !3667
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3683
  call void @llvm.dbg.value(metadata i32 %21, metadata !3666, metadata !DIExpression()), !dbg !3667
  %22 = icmp eq i32 %20, 0, !dbg !3686
  br i1 %22, label %24, label %23, !dbg !3684

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3688, !tbaa !947
  call void @llvm.dbg.value(metadata i32 -1, metadata !3666, metadata !DIExpression()), !dbg !3667
  br label %24, !dbg !3690

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3667
  ret i32 %25, !dbg !3691
}

; Function Attrs: nofree nounwind
declare !dbg !3692 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3695 i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !3698 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3736, metadata !DIExpression()), !dbg !3737
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3738
  br i1 %2, label %6, label %3, !dbg !3740

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #28, !dbg !3741
  %5 = icmp eq i32 %4, 0, !dbg !3741
  br i1 %5, label %6, label %8, !dbg !3742

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3743
  br label %17, !dbg !3744

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3745, metadata !DIExpression()) #28, !dbg !3750
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3752
  %10 = load i32, i32* %9, align 8, !dbg !3752, !tbaa !3754
  %11 = and i32 %10, 256, !dbg !3756
  %12 = icmp eq i32 %11, 0, !dbg !3756
  br i1 %12, label %15, label %13, !dbg !3757

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #28, !dbg !3758
  br label %15, !dbg !3758

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3759
  br label %17, !dbg !3760

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3737
  ret i32 %18, !dbg !3761
}

; Function Attrs: nofree nounwind
declare !dbg !3762 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull %0, i64 %1, i32 %2) local_unnamed_addr #8 !dbg !3765 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3804, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %1, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 %2, metadata !3806, metadata !DIExpression()), !dbg !3810
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3811
  %5 = load i8*, i8** %4, align 8, !dbg !3811, !tbaa !3812
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3813
  %7 = load i8*, i8** %6, align 8, !dbg !3813, !tbaa !3814
  %8 = icmp eq i8* %5, %7, !dbg !3815
  br i1 %8, label %9, label %28, !dbg !3816

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3817
  %11 = load i8*, i8** %10, align 8, !dbg !3817, !tbaa !3818
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3819
  %13 = load i8*, i8** %12, align 8, !dbg !3819, !tbaa !3820
  %14 = icmp eq i8* %11, %13, !dbg !3821
  br i1 %14, label %15, label %28, !dbg !3822

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3823
  %17 = load i8*, i8** %16, align 8, !dbg !3823, !tbaa !3824
  %18 = icmp eq i8* %17, null, !dbg !3825
  br i1 %18, label %19, label %28, !dbg !3826

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #28, !dbg !3827
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #28, !dbg !3828
  call void @llvm.dbg.value(metadata i64 %21, metadata !3807, metadata !DIExpression()), !dbg !3829
  %22 = icmp eq i64 %21, -1, !dbg !3830
  br i1 %22, label %30, label %23, !dbg !3832

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3833
  %25 = load i32, i32* %24, align 8, !dbg !3834, !tbaa !3754
  %26 = and i32 %25, -17, !dbg !3834
  store i32 %26, i32* %24, align 8, !dbg !3834, !tbaa !3754
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3835
  store i64 %21, i64* %27, align 8, !dbg !3836, !tbaa !3837
  br label %30, !dbg !3838

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3839
  br label %30, !dbg !3840

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3810
  ret i32 %31, !dbg !3841
}

; Function Attrs: nofree nounwind
declare !dbg !3842 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32* %0, i8* %1, i64 %2, %struct.__mbstate_t* %3) local_unnamed_addr #8 !dbg !3845 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3861, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i8* %1, metadata !3862, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata i64 %2, metadata !3863, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3864, metadata !DIExpression()), !dbg !3870
  %6 = bitcast i32* %5 to i8*, !dbg !3871
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #28, !dbg !3871
  %7 = icmp eq i32* %0, null, !dbg !3872
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3874
  call void @llvm.dbg.value(metadata i32* %8, metadata !3861, metadata !DIExpression()), !dbg !3870
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #28, !dbg !3875
  call void @llvm.dbg.value(metadata i64 %9, metadata !3865, metadata !DIExpression()), !dbg !3870
  %10 = icmp ugt i64 %9, -3, !dbg !3876
  %11 = icmp ne i64 %2, 0
  %12 = and i1 %11, %10, !dbg !3877
  br i1 %12, label %13, label %18, !dbg !3877

13:                                               ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #28, !dbg !3878
  br i1 %14, label %18, label %15, !dbg !3879

15:                                               ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3880, !tbaa !998
  call void @llvm.dbg.value(metadata i8 %16, metadata !3867, metadata !DIExpression()), !dbg !3881
  %17 = zext i8 %16 to i32, !dbg !3882
  store i32 %17, i32* %8, align 4, !dbg !3883, !tbaa !947
  br label %18

18:                                               ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3870
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #28, !dbg !3884
  ret i64 %19, !dbg !3884
}

; Function Attrs: nounwind
declare !dbg !3885 i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @print_and_abort() #0 !dbg !3889 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3890, !tbaa !824
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.212, i64 0, i64 0), i32 5) #28, !dbg !3890
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %1, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.213, i64 0, i64 0), i8* %2) #28, !dbg !3890
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !3891, !tbaa !947
  tail call void @exit(i32 %4) #30, !dbg !3892
  unreachable, !dbg !3892
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin(%struct.obstack* nocapture %0, i64 %1, i64 %2, i8* (i64)* %3, void (i8*)* %4) local_unnamed_addr #8 !dbg !3893 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !3931, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %1, metadata !3932, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %2, metadata !3933, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i8* (i64)* %3, metadata !3934, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !3935, metadata !DIExpression()), !dbg !3936
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !3937
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !3938, !tbaa !998
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !3939
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !3940, !tbaa !998
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !3941
  %9 = load i8, i8* %8, align 8, !dbg !3942
  %10 = and i8 %9, -2, !dbg !3942
  store i8 %10, i8* %8, align 8, !dbg !3942
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !3943, metadata !DIExpression()) #28, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %1, metadata !3948, metadata !DIExpression()) #28, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %2, metadata !3949, metadata !DIExpression()) #28, !dbg !3954
  %11 = icmp eq i64 %2, 0, !dbg !3956
  %12 = select i1 %11, i64 16, i64 %2, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %12, metadata !3949, metadata !DIExpression()) #28, !dbg !3954
  %13 = icmp eq i64 %1, 0, !dbg !3959
  %14 = select i1 %13, i64 4064, i64 %1, !dbg !3960
  call void @llvm.dbg.value(metadata i64 %14, metadata !3948, metadata !DIExpression()) #28, !dbg !3954
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !3961
  store i64 %14, i64* %15, align 8, !dbg !3962, !tbaa !3963
  %16 = add i64 %12, -1, !dbg !3964
  %17 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !3965
  store i64 %16, i64* %17, align 8, !dbg !3966, !tbaa !1060
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !3967, metadata !DIExpression()) #28, !dbg !3973
  call void @llvm.dbg.value(metadata i64 %14, metadata !3972, metadata !DIExpression()) #28, !dbg !3973
  %18 = tail call i8* %3(i64 %14) #28, !dbg !3975
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !3977
  %20 = bitcast %struct._obstack_chunk** %19 to i8**, !dbg !3978
  store i8* %18, i8** %20, align 8, !dbg !3978, !tbaa !1063
  call void @llvm.dbg.value(metadata i8* %18, metadata !3950, metadata !DIExpression()) #28, !dbg !3954
  %21 = icmp eq i8* %18, null, !dbg !3979
  br i1 %21, label %22, label %24, !dbg !3981

22:                                               ; preds = %5
  %23 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !3982, !tbaa !824
  tail call void %23() #30, !dbg !3983
  unreachable, !dbg !3983

24:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i8* %18, metadata !3950, metadata !DIExpression()) #28, !dbg !3954
  %25 = getelementptr inbounds i8, i8* %18, i64 16, !dbg !3984
  %26 = ptrtoint i8* %25 to i64, !dbg !3984
  %27 = add i64 %16, %26, !dbg !3984
  %28 = sub i64 0, %12, !dbg !3984
  %29 = and i64 %27, %28, !dbg !3984
  %30 = getelementptr inbounds i8, i8* null, i64 %29, !dbg !3984
  %31 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !3985
  store i8* %30, i8** %31, align 8, !dbg !3986, !tbaa !1054
  %32 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !3987
  store i8* %30, i8** %32, align 8, !dbg !3988, !tbaa !1051
  %33 = load i64, i64* %15, align 8, !dbg !3989, !tbaa !3963
  %34 = getelementptr inbounds i8, i8* %18, i64 %33, !dbg !3990
  %35 = bitcast i8* %18 to i8**, !dbg !3991
  store i8* %34, i8** %35, align 8, !dbg !3992, !tbaa !824
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !3993
  store i8* %34, i8** %36, align 8, !dbg !3994, !tbaa !1064
  %37 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !3995
  %38 = bitcast i8* %37 to %struct._obstack_chunk**, !dbg !3995
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %38, align 8, !dbg !3996, !tbaa !824
  %39 = load i8, i8* %8, align 8, !dbg !3997
  %40 = and i8 %39, -7, !dbg !3998
  store i8 %40, i8* %8, align 8, !dbg !3998
  ret i32 1, !dbg !3999
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @_obstack_begin_1(%struct.obstack* nocapture %0, i64 %1, i64 %2, i8* (i8*, i64)* %3, void (i8*, i8*)* %4, i8* %5) local_unnamed_addr #8 !dbg !4000 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4004, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %1, metadata !4005, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %2, metadata !4006, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, metadata !4007, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, metadata !4008, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8* %5, metadata !4009, metadata !DIExpression()), !dbg !4010
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !4011
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !4012
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !4013, !tbaa !998
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4014
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !4015
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !4016, !tbaa !998
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4017
  store i8* %5, i8** %11, align 8, !dbg !4018, !tbaa !4019
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4020
  %13 = load i8, i8* %12, align 8, !dbg !4021
  %14 = or i8 %13, 1, !dbg !4021
  store i8 %14, i8* %12, align 8, !dbg !4021
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !3943, metadata !DIExpression()) #28, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %1, metadata !3948, metadata !DIExpression()) #28, !dbg !4022
  call void @llvm.dbg.value(metadata i64 %2, metadata !3949, metadata !DIExpression()) #28, !dbg !4022
  %15 = icmp eq i64 %2, 0, !dbg !4024
  %16 = select i1 %15, i64 16, i64 %2, !dbg !4025
  call void @llvm.dbg.value(metadata i64 %16, metadata !3949, metadata !DIExpression()) #28, !dbg !4022
  %17 = icmp eq i64 %1, 0, !dbg !4026
  %18 = select i1 %17, i64 4064, i64 %1, !dbg !4027
  call void @llvm.dbg.value(metadata i64 %18, metadata !3948, metadata !DIExpression()) #28, !dbg !4022
  %19 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4028
  store i64 %18, i64* %19, align 8, !dbg !4029, !tbaa !3963
  %20 = add i64 %16, -1, !dbg !4030
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4031
  store i64 %20, i64* %21, align 8, !dbg !4032, !tbaa !1060
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !3967, metadata !DIExpression()) #28, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %18, metadata !3972, metadata !DIExpression()) #28, !dbg !4033
  %22 = tail call i8* %3(i8* %5, i64 %18) #28, !dbg !4035
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4036
  %24 = bitcast %struct._obstack_chunk** %23 to i8**, !dbg !4037
  store i8* %22, i8** %24, align 8, !dbg !4037, !tbaa !1063
  call void @llvm.dbg.value(metadata i8* %22, metadata !3950, metadata !DIExpression()) #28, !dbg !4022
  %25 = icmp eq i8* %22, null, !dbg !4038
  br i1 %25, label %26, label %28, !dbg !4039

26:                                               ; preds = %6
  %27 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4040, !tbaa !824
  tail call void %27() #30, !dbg !4041
  unreachable, !dbg !4041

28:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i8* %22, metadata !3950, metadata !DIExpression()) #28, !dbg !4022
  %29 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !4042
  %30 = ptrtoint i8* %29 to i64, !dbg !4042
  %31 = add i64 %20, %30, !dbg !4042
  %32 = sub i64 0, %16, !dbg !4042
  %33 = and i64 %31, %32, !dbg !4042
  %34 = getelementptr inbounds i8, i8* null, i64 %33, !dbg !4042
  %35 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4043
  store i8* %34, i8** %35, align 8, !dbg !4044, !tbaa !1054
  %36 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4045
  store i8* %34, i8** %36, align 8, !dbg !4046, !tbaa !1051
  %37 = load i64, i64* %19, align 8, !dbg !4047, !tbaa !3963
  %38 = getelementptr inbounds i8, i8* %22, i64 %37, !dbg !4048
  %39 = bitcast i8* %22 to i8**, !dbg !4049
  store i8* %38, i8** %39, align 8, !dbg !4050, !tbaa !824
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4051
  store i8* %38, i8** %40, align 8, !dbg !4052, !tbaa !1064
  %41 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !4053
  %42 = bitcast i8* %41 to %struct._obstack_chunk**, !dbg !4053
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %42, align 8, !dbg !4054, !tbaa !824
  %43 = load i8, i8* %12, align 8, !dbg !4055
  %44 = and i8 %43, -7, !dbg !4056
  store i8 %44, i8* %12, align 8, !dbg !4056
  ret i32 1, !dbg !4057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_newchunk(%struct.obstack* nocapture %0, i64 %1) local_unnamed_addr #8 !dbg !4058 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4062, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %1, metadata !4063, metadata !DIExpression()), !dbg !4071
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4072
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4072, !tbaa !1063
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4064, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* null, metadata !4065, metadata !DIExpression()), !dbg !4071
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4073
  %6 = load i8*, i8** %5, align 8, !dbg !4073, !tbaa !1051
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4074
  %8 = load i8*, i8** %7, align 8, !dbg !4074, !tbaa !1054
  %9 = ptrtoint i8* %6 to i64, !dbg !4075
  %10 = ptrtoint i8* %8 to i64, !dbg !4075
  %11 = sub i64 %9, %10, !dbg !4075
  call void @llvm.dbg.value(metadata i64 %11, metadata !4066, metadata !DIExpression()), !dbg !4071
  %12 = add i64 %11, %1, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %12, metadata !4068, metadata !DIExpression()), !dbg !4071
  %13 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !4077
  %14 = load i64, i64* %13, align 8, !dbg !4077, !tbaa !1060
  %15 = add i64 %12, %14, !dbg !4078
  call void @llvm.dbg.value(metadata i64 %15, metadata !4069, metadata !DIExpression()), !dbg !4071
  %16 = lshr i64 %11, 3, !dbg !4079
  %17 = add nuw nsw i64 %16, 100, !dbg !4080
  %18 = add i64 %17, %15, !dbg !4081
  call void @llvm.dbg.value(metadata i64 %18, metadata !4070, metadata !DIExpression()), !dbg !4071
  %19 = icmp ult i64 %18, %15, !dbg !4082
  %20 = select i1 %19, i64 %15, i64 %18, !dbg !4084
  call void @llvm.dbg.value(metadata i64 %20, metadata !4070, metadata !DIExpression()), !dbg !4071
  %21 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !4085
  %22 = load i64, i64* %21, align 8, !dbg !4085, !tbaa !3963
  %23 = icmp ult i64 %20, %22, !dbg !4087
  %24 = select i1 %23, i64 %22, i64 %20, !dbg !4088
  call void @llvm.dbg.value(metadata i64 %24, metadata !4070, metadata !DIExpression()), !dbg !4071
  %25 = icmp ugt i64 %11, %12, !dbg !4089
  %26 = icmp ugt i64 %12, %15
  %27 = or i1 %25, %26, !dbg !4091
  br i1 %27, label %47, label %28, !dbg !4091

28:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !3967, metadata !DIExpression()) #28, !dbg !4092
  call void @llvm.dbg.value(metadata i64 %24, metadata !3972, metadata !DIExpression()) #28, !dbg !4092
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !4094
  %30 = load i8, i8* %29, align 8, !dbg !4094
  %31 = and i8 %30, 1, !dbg !4094
  %32 = icmp eq i8 %31, 0, !dbg !4095
  br i1 %32, label %40, label %33, !dbg !4096

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !4097
  %35 = bitcast %union.anon.0* %34 to i8* (i8*, i64)**, !dbg !4098
  %36 = load i8* (i8*, i64)*, i8* (i8*, i64)** %35, align 8, !dbg !4098, !tbaa !998
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4099
  %38 = load i8*, i8** %37, align 8, !dbg !4099, !tbaa !4019
  %39 = tail call i8* %36(i8* %38, i64 %24) #28, !dbg !4100
  br label %44, !dbg !4101

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !4102
  %42 = load i8* (i64)*, i8* (i64)** %41, align 8, !dbg !4102, !tbaa !998
  %43 = tail call i8* %42(i64 %24) #28, !dbg !4103
  br label %44, !dbg !4104

44:                                               ; preds = %40, %33
  %45 = phi i8* [ %39, %33 ], [ %43, %40 ], !dbg !4105
  call void @llvm.dbg.value(metadata i8* %45, metadata !4065, metadata !DIExpression()), !dbg !4071
  %46 = icmp eq i8* %45, null, !dbg !4106
  br i1 %46, label %47, label %49, !dbg !4108

47:                                               ; preds = %2, %44
  %48 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !4109, !tbaa !824
  tail call void %48() #30, !dbg !4110
  unreachable, !dbg !4110

49:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i8* %45, metadata !4065, metadata !DIExpression()), !dbg !4071
  %50 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !4111
  store i8* %45, i8** %50, align 8, !dbg !4111, !tbaa !1063
  %51 = getelementptr inbounds i8, i8* %45, i64 8, !dbg !4112
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !4112
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %52, align 8, !dbg !4113, !tbaa !824
  %53 = getelementptr inbounds i8, i8* %45, i64 %24, !dbg !4114
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4115
  store i8* %53, i8** %54, align 8, !dbg !4116, !tbaa !1064
  %55 = bitcast i8* %45 to i8**, !dbg !4117
  store i8* %53, i8** %55, align 8, !dbg !4118, !tbaa !824
  %56 = getelementptr inbounds i8, i8* %45, i64 16, !dbg !4119
  %57 = ptrtoint i8* %56 to i64, !dbg !4119
  %58 = load i64, i64* %13, align 8, !dbg !4119, !tbaa !1060
  %59 = add i64 %58, %57, !dbg !4119
  %60 = xor i64 %58, -1, !dbg !4119
  %61 = and i64 %59, %60, !dbg !4119
  %62 = getelementptr inbounds i8, i8* null, i64 %61, !dbg !4119
  call void @llvm.dbg.value(metadata i8* %62, metadata !4067, metadata !DIExpression()), !dbg !4071
  %63 = load i8*, i8** %7, align 8, !dbg !4120, !tbaa !1054
  call void @llvm.dbg.value(metadata i8* %62, metadata !4121, metadata !DIExpression()) #28, !dbg !4126
  call void @llvm.dbg.value(metadata i8* %63, metadata !4124, metadata !DIExpression()) #28, !dbg !4126
  call void @llvm.dbg.value(metadata i64 %11, metadata !4125, metadata !DIExpression()) #28, !dbg !4126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %62, i8* nonnull align 1 %63, i64 %11, i1 false) #28, !dbg !4128
  %64 = load i8, i8* %29, align 8, !dbg !4129
  %65 = and i8 %64, 2, !dbg !4131
  %66 = icmp eq i8 %65, 0, !dbg !4131
  br i1 %66, label %67, label %93, !dbg !4132

67:                                               ; preds = %49
  %68 = load i8*, i8** %7, align 8, !dbg !4133, !tbaa !1054
  %69 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !4134
  %70 = ptrtoint i8* %69 to i64, !dbg !4134
  %71 = load i64, i64* %13, align 8, !dbg !4134, !tbaa !1060
  %72 = add i64 %71, %70, !dbg !4134
  %73 = xor i64 %71, -1, !dbg !4134
  %74 = and i64 %72, %73, !dbg !4134
  %75 = getelementptr inbounds i8, i8* null, i64 %74, !dbg !4134
  %76 = icmp eq i8* %68, %75, !dbg !4135
  br i1 %76, label %77, label %93, !dbg !4136

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !4137
  %79 = load %struct._obstack_chunk*, %struct._obstack_chunk** %78, align 8, !dbg !4137, !tbaa !824
  store %struct._obstack_chunk* %79, %struct._obstack_chunk** %52, align 8, !dbg !4139, !tbaa !824
  %80 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !4140
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4141, metadata !DIExpression()) #28, !dbg !4147
  call void @llvm.dbg.value(metadata i8* %80, metadata !4146, metadata !DIExpression()) #28, !dbg !4147
  %81 = load i8, i8* %29, align 8, !dbg !4149
  %82 = and i8 %81, 1, !dbg !4149
  %83 = icmp eq i8 %82, 0, !dbg !4151
  br i1 %83, label %90, label %84, !dbg !4152

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !4153
  %86 = bitcast %union.anon.1* %85 to void (i8*, i8*)**, !dbg !4154
  %87 = load void (i8*, i8*)*, void (i8*, i8*)** %86, align 8, !dbg !4154, !tbaa !998
  %88 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !4155
  %89 = load i8*, i8** %88, align 8, !dbg !4155, !tbaa !4019
  tail call void %87(i8* %89, i8* nonnull %80) #28, !dbg !4156
  br label %93, !dbg !4156

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !4157
  %92 = load void (i8*)*, void (i8*)** %91, align 8, !dbg !4157, !tbaa !998
  tail call void %92(i8* nonnull %80) #28, !dbg !4158
  br label %93

93:                                               ; preds = %90, %84, %67, %49
  store i8* %62, i8** %7, align 8, !dbg !4159, !tbaa !1054
  %94 = getelementptr inbounds i8, i8* %62, i64 %11, !dbg !4160
  store i8* %94, i8** %5, align 8, !dbg !4161, !tbaa !1051
  %95 = load i8, i8* %29, align 8, !dbg !4162
  %96 = and i8 %95, -3, !dbg !4162
  store i8 %96, i8* %29, align 8, !dbg !4162
  ret void, !dbg !4163
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i32 @_obstack_allocated_p(%struct.obstack* nocapture readonly %0, i8* readnone %1) local_unnamed_addr #13 !dbg !4164 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4168, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i8* %1, metadata !4169, metadata !DIExpression()), !dbg !4172
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4173
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4170, metadata !DIExpression()), !dbg !4172
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4172, !tbaa !824
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4170, metadata !DIExpression()), !dbg !4172
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !4174
  br i1 %5, label %18, label %6, !dbg !4175

6:                                                ; preds = %2, %14
  %7 = phi %struct._obstack_chunk* [ %16, %14 ], [ %4, %2 ]
  %8 = bitcast %struct._obstack_chunk* %7 to i8*, !dbg !4176
  %9 = icmp ult i8* %8, %1, !dbg !4177
  br i1 %9, label %10, label %14, !dbg !4178

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 0, !dbg !4179
  %12 = load i8*, i8** %11, align 8, !dbg !4179, !tbaa !824
  %13 = icmp ult i8* %12, %1, !dbg !4180
  br i1 %13, label %14, label %18, !dbg !4181

14:                                               ; preds = %6, %10
  %15 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !4182
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4171, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4170, metadata !DIExpression()), !dbg !4172
  %16 = load %struct._obstack_chunk*, %struct._obstack_chunk** %15, align 8, !dbg !4172, !tbaa !824
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %16, metadata !4170, metadata !DIExpression()), !dbg !4172
  %17 = icmp eq %struct._obstack_chunk* %16, null, !dbg !4174
  br i1 %17, label %18, label %6, !dbg !4175, !llvm.loop !4184

18:                                               ; preds = %10, %14, %2
  %19 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 1, %10 ], !dbg !4174
  ret i32 %19, !dbg !4186
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @_obstack_free(%struct.obstack* nocapture %0, i8* %1) local_unnamed_addr #8 !dbg !4187 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4189, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i8* %1, metadata !4190, metadata !DIExpression()), !dbg !4193
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4194
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !4194, !tbaa !1063
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !4191, metadata !DIExpression()), !dbg !4193
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !4195
  br i1 %5, label %41, label %6, !dbg !4196

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %10 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0
  br label %12, !dbg !4196

12:                                               ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !4191, metadata !DIExpression()), !dbg !4193
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !4197
  %15 = icmp ult i8* %14, %1, !dbg !4198
  br i1 %15, label %16, label %20, !dbg !4199

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !4200
  %18 = load i8*, i8** %17, align 8, !dbg !4200, !tbaa !824
  %19 = icmp ult i8* %18, %1, !dbg !4201
  br i1 %19, label %20, label %35, !dbg !4202

20:                                               ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !4203
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !4203, !tbaa !824
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !4192, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4141, metadata !DIExpression()) #28, !dbg !4205
  call void @llvm.dbg.value(metadata i8* %14, metadata !4146, metadata !DIExpression()) #28, !dbg !4205
  %23 = load i8, i8* %7, align 8, !dbg !4207
  %24 = and i8 %23, 1, !dbg !4207
  %25 = icmp eq i8 %24, 0, !dbg !4208
  br i1 %25, label %29, label %26, !dbg !4209

26:                                               ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %9, align 8, !dbg !4210, !tbaa !998
  %28 = load i8*, i8** %10, align 8, !dbg !4211, !tbaa !4019
  tail call void %27(i8* %28, i8* nonnull %14) #28, !dbg !4212
  br label %31, !dbg !4212

29:                                               ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %11, align 8, !dbg !4213, !tbaa !998
  tail call void %30(i8* nonnull %14) #28, !dbg !4214
  br label %31

31:                                               ; preds = %26, %29
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !4191, metadata !DIExpression()), !dbg !4193
  %32 = load i8, i8* %7, align 8, !dbg !4215
  %33 = or i8 %32, 2, !dbg !4215
  store i8 %33, i8* %7, align 8, !dbg !4215
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !4195
  br i1 %34, label %41, label %12, !dbg !4196, !llvm.loop !4216

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !4200
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !4218
  store i8* %1, i8** %37, align 8, !dbg !4221, !tbaa !1051
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !4222
  store i8* %1, i8** %38, align 8, !dbg !4223, !tbaa !1054
  %39 = load i8*, i8** %36, align 8, !dbg !4224, !tbaa !824
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !4225
  store i8* %39, i8** %40, align 8, !dbg !4226, !tbaa !1064
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !4227, !tbaa !1063
  br label %44, !dbg !4228

41:                                               ; preds = %31, %2
  %42 = icmp eq i8* %1, null, !dbg !4229
  br i1 %42, label %44, label %43, !dbg !4231

43:                                               ; preds = %41
  tail call void @abort() #30, !dbg !4232
  unreachable, !dbg !4232

44:                                               ; preds = %41, %35
  ret void, !dbg !4233
}

; Function Attrs: norecurse nounwind readonly sspstrong uwtable willreturn
define dso_local i64 @_obstack_memory_used(%struct.obstack* nocapture readonly %0) local_unnamed_addr #13 !dbg !4234 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !4238, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 0, metadata !4240, metadata !DIExpression()), !dbg !4241
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !4242
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4239, metadata !DIExpression()), !dbg !4241
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !dbg !4244, !tbaa !824
  call void @llvm.dbg.value(metadata i64 0, metadata !4240, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, metadata !4239, metadata !DIExpression()), !dbg !4241
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !4245
  br i1 %4, label %17, label %5, !dbg !4247

5:                                                ; preds = %1, %5
  %6 = phi %struct._obstack_chunk* [ %15, %5 ], [ %3, %1 ]
  %7 = phi i64 [ %13, %5 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %7, metadata !4240, metadata !DIExpression()), !dbg !4241
  %8 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %6, i64 0, i32 0, !dbg !4248
  %9 = load i8*, i8** %8, align 8, !dbg !4248, !tbaa !824
  %10 = ptrtoint i8* %9 to i64, !dbg !4250
  %11 = ptrtoint %struct._obstack_chunk* %6 to i64, !dbg !4250
  %12 = sub i64 %7, %11, !dbg !4250
  %13 = add i64 %12, %10, !dbg !4251
  call void @llvm.dbg.value(metadata i64 %13, metadata !4240, metadata !DIExpression()), !dbg !4241
  %14 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %6, i64 0, i32 1, !dbg !4252
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !4239, metadata !DIExpression()), !dbg !4241
  %15 = load %struct._obstack_chunk*, %struct._obstack_chunk** %14, align 8, !dbg !4244, !tbaa !824
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %15, metadata !4239, metadata !DIExpression()), !dbg !4241
  %16 = icmp eq %struct._obstack_chunk* %15, null, !dbg !4245
  br i1 %16, label %17, label %5, !dbg !4247, !llvm.loop !4253

17:                                               ; preds = %5, %1
  %18 = phi i64 [ 0, %1 ], [ %13, %5 ], !dbg !4241
  ret i64 %18, !dbg !4255
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %0) local_unnamed_addr #8 !dbg !4256 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4294, metadata !DIExpression()), !dbg !4299
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #28, !dbg !4300
  call void @llvm.dbg.value(metadata i1 undef, metadata !4295, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4299
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4301, metadata !DIExpression()), !dbg !4304
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4306
  %4 = load i32, i32* %3, align 8, !dbg !4306, !tbaa !3754
  %5 = and i32 %4, 32, !dbg !4307
  %6 = icmp eq i32 %5, 0, !dbg !4307
  call void @llvm.dbg.value(metadata i1 %6, metadata !4297, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4299
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #28, !dbg !4308
  %8 = icmp eq i32 %7, 0, !dbg !4309
  call void @llvm.dbg.value(metadata i1 %8, metadata !4298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4299
  br i1 %6, label %9, label %19, !dbg !4310

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4312
  call void @llvm.dbg.value(metadata i1 %10, metadata !4295, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4299
  %11 = or i1 %10, %8, !dbg !4313
  %12 = xor i1 %8, true, !dbg !4313
  %13 = sext i1 %12 to i32, !dbg !4313
  br i1 %11, label %22, label %14, !dbg !4313

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #32, !dbg !4314
  %16 = load i32, i32* %15, align 4, !dbg !4314, !tbaa !947
  %17 = icmp ne i32 %16, 9, !dbg !4315
  %18 = sext i1 %17 to i32, !dbg !4316
  br label %22, !dbg !4316

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4317

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #32, !dbg !4319
  store i32 0, i32* %21, align 4, !dbg !4321, !tbaa !947
  br label %22, !dbg !4319

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4299
  ret i32 %23, !dbg !4322
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32 %0) local_unnamed_addr #8 !dbg !4323 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !4325, metadata !DIExpression()), !dbg !4330
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4331
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #28, !dbg !4331
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4326, metadata !DIExpression()), !dbg !4332
  %4 = call i32 @setlocale_null_r(i32 %0, i8* nonnull %3, i64 257) #28, !dbg !4333
  %5 = icmp eq i32 %4, 0, !dbg !4333
  br i1 %5, label %6, label %13, !dbg !4335

6:                                                ; preds = %1
  %7 = bitcast [257 x i8]* %2 to i16*, !dbg !4336
  %8 = load i16, i16* %7, align 16, !dbg !4336
  %9 = icmp eq i16 %8, 67, !dbg !4336
  br i1 %9, label %13, label %10, !dbg !4337

10:                                               ; preds = %6
  %11 = call i32 @bcmp(i8* nonnull dereferenceable(6) %3, i8* nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.222, i64 0, i64 0), i64 6), !dbg !4338
  %12 = icmp ne i32 %11, 0, !dbg !4339
  br label %13, !dbg !4337

13:                                               ; preds = %6, %10, %1
  %14 = phi i1 [ false, %1 ], [ false, %6 ], [ %12, %10 ], !dbg !4330
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #28, !dbg !4340
  ret i1 %14, !dbg !4340
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #8 !dbg !4341 {
  %1 = tail call i8* @nl_langinfo(i32 14) #28, !dbg !4346
  call void @llvm.dbg.value(metadata i8* %1, metadata !4345, metadata !DIExpression()), !dbg !4347
  %2 = icmp eq i8* %1, null, !dbg !4348
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.225, i64 0, i64 0), i8* %1, !dbg !4350
  call void @llvm.dbg.value(metadata i8* %3, metadata !4345, metadata !DIExpression()), !dbg !4347
  %4 = load i8, i8* %3, align 1, !dbg !4351, !tbaa !998
  %5 = icmp eq i8 %4, 0, !dbg !4355
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.226, i64 0, i64 0), i8* %3, !dbg !4356
  call void @llvm.dbg.value(metadata i8* %6, metadata !4345, metadata !DIExpression()), !dbg !4347
  ret i8* %6, !dbg !4357
}

; Function Attrs: nounwind
declare !dbg !4358 i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @setlocale_null_r(i32 %0, i8* nonnull %1, i64 %2) local_unnamed_addr #8 !dbg !4361 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4365, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i8* %1, metadata !4366, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i64 %2, metadata !4367, metadata !DIExpression()), !dbg !4368
  call void @llvm.dbg.value(metadata i32 %0, metadata !4369, metadata !DIExpression()) #28, !dbg !4378
  call void @llvm.dbg.value(metadata i8* %1, metadata !4372, metadata !DIExpression()) #28, !dbg !4378
  call void @llvm.dbg.value(metadata i64 %2, metadata !4373, metadata !DIExpression()) #28, !dbg !4378
  call void @llvm.dbg.value(metadata i32 %0, metadata !4380, metadata !DIExpression()) #28, !dbg !4386
  %4 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !4388
  call void @llvm.dbg.value(metadata i8* %4, metadata !4385, metadata !DIExpression()) #28, !dbg !4386
  call void @llvm.dbg.value(metadata i8* %4, metadata !4374, metadata !DIExpression()) #28, !dbg !4378
  %5 = icmp eq i8* %4, null, !dbg !4389
  br i1 %5, label %6, label %9, !dbg !4390

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4391
  br i1 %7, label %19, label %8, !dbg !4394

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4395, !tbaa !998
  br label %19, !dbg !4396

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* nonnull %4) #29, !dbg !4397
  call void @llvm.dbg.value(metadata i64 %10, metadata !4375, metadata !DIExpression()) #28, !dbg !4398
  %11 = icmp ult i64 %10, %2, !dbg !4399
  br i1 %11, label %12, label %14, !dbg !4401

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4402
  call void @llvm.dbg.value(metadata i8* %1, metadata !4404, metadata !DIExpression()) #28, !dbg !4409
  call void @llvm.dbg.value(metadata i8* %4, metadata !4407, metadata !DIExpression()) #28, !dbg !4409
  call void @llvm.dbg.value(metadata i64 %13, metadata !4408, metadata !DIExpression()) #28, !dbg !4409
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %13, i1 false) #28, !dbg !4411
  br label %19, !dbg !4412

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4413
  br i1 %15, label %19, label %16, !dbg !4416

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4417
  call void @llvm.dbg.value(metadata i8* %1, metadata !4404, metadata !DIExpression()) #28, !dbg !4419
  call void @llvm.dbg.value(metadata i8* %4, metadata !4407, metadata !DIExpression()) #28, !dbg !4419
  call void @llvm.dbg.value(metadata i64 %17, metadata !4408, metadata !DIExpression()) #28, !dbg !4419
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %1, i8* nonnull align 1 %4, i64 %17, i1 false) #28, !dbg !4421
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4422
  store i8 0, i8* %18, align 1, !dbg !4423, !tbaa !998
  br label %19, !dbg !4424

19:                                               ; preds = %6, %8, %12, %14, %16
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4425
  ret i32 %20, !dbg !4426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @setlocale_null(i32 %0) local_unnamed_addr #8 !dbg !4427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4429, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 %0, metadata !4380, metadata !DIExpression()) #28, !dbg !4431
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #28, !dbg !4433
  call void @llvm.dbg.value(metadata i8* %2, metadata !4385, metadata !DIExpression()) #28, !dbg !4431
  ret i8* %2, !dbg !4434
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
attributes #9 = { nofree nounwind readonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inaccessiblememonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { inaccessiblemem_or_argmemonly nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { norecurse nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nofree norecurse nounwind sspstrong uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nounwind readonly sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nofree nounwind }
attributes #19 = { nofree norecurse nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #22 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { nofree nosync nounwind willreturn }
attributes #25 = { inlinehint nounwind sspstrong uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #26 = { inaccessiblemem_or_argmemonly nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #27 = { nofree nounwind sspstrong uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #28 = { nounwind }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind readnone willreturn }
attributes #33 = { cold }

!llvm.dbg.cu = !{!2, !274, !363, !280, !368, !287, !371, !293, !299, !373, !348, !380, !397, !399, !401, !403, !405, !407, !409, !356, !412, !414, !416, !805}
!llvm.ident = !{!807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807, !807}
!llvm.module.flags = !{!808, !809, !810, !811, !812}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 80, type: !260, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !241, globals: !243, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/dircolors.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!72 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stddef.h", directory: "")
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
!106 = !DIFile(filename: "./lib/obstack.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!213 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
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
!241 = !{!25, !69, !71, !79, !73, !23, !49, !242}
!242 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!243 = !{!244, !0, !246, !252, !258}
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "lsc_obstack", scope: !2, file: !3, line: 60, type: !105, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "G_line", scope: !2, file: !248, line: 1, type: !249, isLocal: true, isDefinition: true)
!248 = !DIFile(filename: "src/dircolors.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 34432, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 4304)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "slack_codes", scope: !2, file: !3, line: 62, type: !254, isLocal: true, isDefinition: true)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 2432, elements: !256)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!256 = !{!257}
!257 = !DISubrange(count: 38)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "ls_codes", scope: !2, file: !3, line: 72, type: !254, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 2048, elements: !270)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !263, line: 50, size: 256, elements: !264)
!263 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "")
!264 = !{!265, !266, !267, !269}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !262, file: !263, line: 52, baseType: !79, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !262, file: !263, line: 55, baseType: !23, size: 32, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !262, file: !263, line: 56, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !262, file: !263, line: 57, baseType: !23, size: 32, offset: 192)
!270 = !{!271}
!271 = !DISubrange(count: 8)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "Version", scope: !274, file: !275, line: 2, type: !79, isLocal: false, isDefinition: true)
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, globals: !277, splitDebugInlining: false, nameTableKind: None)
!275 = !DIFile(filename: "src/version.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!276 = !{}
!277 = !{!272}
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "file_name", scope: !280, file: !281, line: 46, type: !79, isLocal: true, isDefinition: true)
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, globals: !282, splitDebugInlining: false, nameTableKind: None)
!281 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!282 = !{!278, !283}
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !280, file: !281, line: 56, type: !15, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "exit_failure", scope: !287, file: !288, line: 24, type: !290, isLocal: false, isDefinition: true)
!287 = distinct !DICompileUnit(language: DW_LANG_C99, file: !288, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, globals: !289, splitDebugInlining: false, nameTableKind: None)
!288 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!289 = !{!285}
!290 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "program_name", scope: !293, file: !294, line: 33, type: !79, isLocal: false, isDefinition: true)
!293 = distinct !DICompileUnit(language: DW_LANG_C99, file: !294, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !295, globals: !296, splitDebugInlining: false, nameTableKind: None)
!294 = !DIFile(filename: "lib/progname.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!295 = !{!69, !25}
!296 = !{!291}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !299, file: !300, line: 85, type: !343, isLocal: false, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C99, file: !300, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !301, retainedTypes: !307, globals: !308, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!301 = !{!212, !302, !226}
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !213, line: 242, baseType: !6, size: 32, elements: !303)
!303 = !{!304, !305, !306}
!304 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!305 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!306 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!307 = !{!23, !49, !71, !25}
!308 = !{!297, !309, !315, !325, !327, !332, !339, !341}
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !299, file: !300, line: 101, type: !311, isLocal: false, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 320, elements: !313)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!313 = !{!314}
!314 = !DISubrange(count: 10)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !299, file: !300, line: 1052, type: !317, isLocal: false, isDefinition: true)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !300, line: 65, size: 448, elements: !318)
!318 = !{!319, !320, !321, !323, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !317, file: !300, line: 68, baseType: !212, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !300, line: 71, baseType: !23, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !317, file: !300, line: 75, baseType: !322, size: 256, offset: 64)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !270)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !317, file: !300, line: 78, baseType: !79, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !317, file: !300, line: 81, baseType: !79, size: 64, offset: 384)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !299, file: !300, line: 116, type: !317, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "slot0", scope: !299, file: !300, line: 842, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 256)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "slotvec", scope: !299, file: !300, line: 845, type: !334, isLocal: true, isDefinition: true)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !300, line: 834, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !335, file: !300, line: 836, baseType: !71, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !335, file: !300, line: 837, baseType: !25, size: 64, offset: 64)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "nslots", scope: !299, file: !300, line: 843, type: !23, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "slotvec0", scope: !299, file: !300, line: 844, type: !335, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 704, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 11)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !348, file: !349, line: 26, type: !351, isLocal: false, isDefinition: true)
!348 = distinct !DICompileUnit(language: DW_LANG_C99, file: !349, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, globals: !350, splitDebugInlining: false, nameTableKind: None)
!349 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!350 = !{!346}
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 376, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 47)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !356, file: !357, line: 351, type: !360, isLocal: false, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C99, file: !357, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !358, globals: !359, splitDebugInlining: false, nameTableKind: None)
!357 = !DIFile(filename: "lib/obstack.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!358 = !{!25, !69}
!359 = !{!354}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null}
!363 = distinct !DICompileUnit(language: DW_LANG_C99, file: !364, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !365, splitDebugInlining: false, nameTableKind: None)
!364 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !370, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!370 = !{!25}
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !375, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!375 = !{!376}
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !374, line: 40, baseType: !6, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2020, isUnsigned: true)
!379 = !{!69}
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !382, retainedTypes: !396, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!382 = !{!383}
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !385, file: !384, line: 186, baseType: !6, size: 32, elements: !394)
!384 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!385 = distinct !DISubprogram(name: "x2nrealloc", scope: !384, file: !384, line: 174, type: !386, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !389)
!386 = !DISubroutineType(types: !387)
!387 = !{!69, !69, !388, !71}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!389 = !{!390, !391, !392, !393}
!390 = !DILocalVariable(name: "p", arg: 1, scope: !385, file: !384, line: 174, type: !69)
!391 = !DILocalVariable(name: "pn", arg: 2, scope: !385, file: !384, line: 174, type: !388)
!392 = !DILocalVariable(name: "s", arg: 3, scope: !385, file: !384, line: 174, type: !71)
!393 = !DILocalVariable(name: "n", scope: !385, file: !384, line: 176, type: !71)
!394 = !{!395}
!395 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!396 = !{!71, !25, !69}
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !411, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!411 = !{!71}
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !418, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!418 = !{!419}
!419 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !420, line: 41, baseType: !6, size: 32, elements: !421)
!420 = !DIFile(filename: "/usr/include/langinfo.h", directory: "")
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804}
!422 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!423 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!424 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!425 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!426 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!427 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!428 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!429 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!430 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!431 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!432 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!433 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!434 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!435 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!436 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!437 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!438 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!439 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!440 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!441 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!442 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!443 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!444 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!445 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!446 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!447 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!448 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!449 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!450 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!451 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!452 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!453 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!454 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!455 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!456 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!457 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!458 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!459 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!460 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!461 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!462 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!463 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!464 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!465 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!466 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!467 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!468 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!469 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!470 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!471 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!530 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!533 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!534 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!535 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!536 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!537 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!538 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!539 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!540 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!541 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!542 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!543 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!544 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!617 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!690 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!691 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!692 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!693 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!694 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!695 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!696 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!697 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!698 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!699 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!700 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!701 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!702 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!703 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!704 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!706 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!707 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!708 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!709 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!710 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!711 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!730 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!731 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!732 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!733 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!734 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!735 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!736 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!737 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!738 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!739 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!740 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!741 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!742 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!743 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!744 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!745 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!746 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!747 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!748 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!749 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!750 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!751 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!752 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!753 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!754 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!755 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!756 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!757 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!758 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!759 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!760 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!761 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!762 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!763 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!764 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!765 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!766 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!767 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!768 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!769 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!770 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!771 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!772 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!773 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!774 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!775 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!776 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!777 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!778 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!779 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!780 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!781 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!782 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!783 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!784 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!785 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!786 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!787 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!788 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!789 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!790 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!791 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!792 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!793 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!794 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!795 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!796 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!797 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!798 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!799 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!800 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!801 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!802 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!803 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!804 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!805 = distinct !DICompileUnit(language: DW_LANG_C99, file: !806, producer: "clang version 12.0.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!806 = !DIFile(filename: "lib/setlocale_null.c", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!807 = !{!"clang version 12.0.1"}
!808 = !{i32 7, !"Dwarf Version", i32 4}
!809 = !{i32 2, !"Debug Info Version", i32 3}
!810 = !{i32 1, !"wchar_size", i32 4}
!811 = !{i32 7, !"PIC Level", i32 2}
!812 = !{i32 7, !"PIE Level", i32 2}
!813 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 93, type: !814, scopeLine: 94, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !816)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !23}
!816 = !{!817}
!817 = !DILocalVariable(name: "status", arg: 1, scope: !813, file: !3, line: 93, type: !23)
!818 = !DILocation(line: 0, scope: !813)
!819 = !DILocation(line: 95, column: 14, scope: !820)
!820 = distinct !DILexicalBlock(scope: !813, file: !3, line: 95, column: 7)
!821 = !DILocation(line: 95, column: 7, scope: !813)
!822 = !DILocation(line: 96, column: 5, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !3, line: 96, column: 5)
!824 = !{!825, !825, i64 0}
!825 = !{!"any pointer", !826, i64 0}
!826 = !{!"omnipotent char", !827, i64 0}
!827 = !{!"Simple C/C++ TBAA"}
!828 = !DILocation(line: 99, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !820, file: !3, line: 98, column: 5)
!830 = !DILocation(line: 100, column: 7, scope: !829)
!831 = !DILocation(line: 108, column: 7, scope: !829)
!832 = !DILocation(line: 109, column: 7, scope: !829)
!833 = !DILocation(line: 110, column: 7, scope: !829)
!834 = !DILocalVariable(name: "program", arg: 1, scope: !835, file: !836, line: 634, type: !79)
!835 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !836, file: !836, line: 634, type: !837, scopeLine: 635, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!836 = !DIFile(filename: "src/system.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!837 = !DISubroutineType(types: !838)
!838 = !{null, !79}
!839 = !{!834, !840, !849, !850, !852}
!840 = !DILocalVariable(name: "infomap", scope: !835, file: !836, line: 636, type: !841)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !842, size: 896, elements: !847)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !835, file: !836, line: 636, size: 128, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !843, file: !836, line: 636, baseType: !79, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !843, file: !836, line: 636, baseType: !79, size: 64, offset: 64)
!847 = !{!848}
!848 = !DISubrange(count: 7)
!849 = !DILocalVariable(name: "node", scope: !835, file: !836, line: 646, type: !79)
!850 = !DILocalVariable(name: "map_prog", scope: !835, file: !836, line: 647, type: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!852 = !DILocalVariable(name: "lc_messages", scope: !835, file: !836, line: 659, type: !79)
!853 = !DILocation(line: 0, scope: !835, inlinedAt: !854)
!854 = distinct !DILocation(line: 116, column: 7, scope: !829)
!855 = !DILocation(line: 636, column: 3, scope: !835, inlinedAt: !854)
!856 = !DILocation(line: 636, column: 67, scope: !835, inlinedAt: !854)
!857 = !DILocation(line: 647, column: 36, scope: !835, inlinedAt: !854)
!858 = !DILocation(line: 649, column: 3, scope: !835, inlinedAt: !854)
!859 = !DILocation(line: 649, column: 33, scope: !835, inlinedAt: !854)
!860 = !DILocation(line: 650, column: 13, scope: !835, inlinedAt: !854)
!861 = !DILocation(line: 649, column: 20, scope: !835, inlinedAt: !854)
!862 = !{!863, !825, i64 0}
!863 = !{!"infomap", !825, i64 0, !825, i64 8}
!864 = !DILocation(line: 649, column: 10, scope: !835, inlinedAt: !854)
!865 = !DILocation(line: 649, column: 28, scope: !835, inlinedAt: !854)
!866 = distinct !{!866, !858, !860, !867}
!867 = !{!"llvm.loop.mustprogress"}
!868 = !DILocation(line: 652, column: 17, scope: !869, inlinedAt: !854)
!869 = distinct !DILexicalBlock(scope: !835, file: !836, line: 652, column: 7)
!870 = !{!863, !825, i64 8}
!871 = !DILocation(line: 652, column: 7, scope: !869, inlinedAt: !854)
!872 = !DILocation(line: 652, column: 7, scope: !835, inlinedAt: !854)
!873 = !DILocation(line: 655, column: 3, scope: !835, inlinedAt: !854)
!874 = !DILocation(line: 659, column: 29, scope: !835, inlinedAt: !854)
!875 = !DILocation(line: 660, column: 7, scope: !876, inlinedAt: !854)
!876 = distinct !DILexicalBlock(scope: !835, file: !836, line: 660, column: 7)
!877 = !DILocation(line: 660, column: 19, scope: !876, inlinedAt: !854)
!878 = !DILocation(line: 660, column: 22, scope: !876, inlinedAt: !854)
!879 = !DILocation(line: 660, column: 7, scope: !835, inlinedAt: !854)
!880 = !DILocation(line: 666, column: 7, scope: !881, inlinedAt: !854)
!881 = distinct !DILexicalBlock(scope: !876, file: !836, line: 661, column: 5)
!882 = !DILocation(line: 668, column: 5, scope: !881, inlinedAt: !854)
!883 = !DILocation(line: 669, column: 3, scope: !835, inlinedAt: !854)
!884 = !DILocation(line: 671, column: 3, scope: !835, inlinedAt: !854)
!885 = !DILocation(line: 673, column: 1, scope: !835, inlinedAt: !854)
!886 = !DILocation(line: 119, column: 3, scope: !813)
!887 = !DISubprogram(name: "dcgettext", scope: !888, file: !888, line: 51, type: !889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!888 = !DIFile(filename: "/usr/include/libintl.h", directory: "")
!889 = !DISubroutineType(types: !890)
!890 = !{!25, !79, !79, !23}
!891 = !DISubprogram(name: "fputs_unlocked", scope: !892, file: !892, line: 667, type: !893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!892 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!893 = !DISubroutineType(types: !894)
!894 = !{!23, !79, !41}
!895 = !DISubprogram(name: "setlocale", scope: !896, file: !896, line: 122, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!896 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!897 = !DISubroutineType(types: !898)
!898 = !{!25, !23, !79}
!899 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 396, type: !900, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!900 = !DISubroutineType(types: !901)
!901 = !{!23, !23, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!903 = !{!904, !905, !906, !907, !908, !909, !910, !913, !917, !919, !920, !922, !923, !924, !925, !927, !928}
!904 = !DILocalVariable(name: "argc", arg: 1, scope: !899, file: !3, line: 396, type: !23)
!905 = !DILocalVariable(name: "argv", arg: 2, scope: !899, file: !3, line: 396, type: !902)
!906 = !DILocalVariable(name: "ok", scope: !899, file: !3, line: 398, type: !15)
!907 = !DILocalVariable(name: "optc", scope: !899, file: !3, line: 399, type: !23)
!908 = !DILocalVariable(name: "syntax", scope: !899, file: !3, line: 400, type: !5)
!909 = !DILocalVariable(name: "print_database", scope: !899, file: !3, line: 401, type: !15)
!910 = !DILocalVariable(name: "p", scope: !911, file: !3, line: 459, type: !79)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 458, column: 5)
!912 = distinct !DILexicalBlock(scope: !899, file: !3, line: 457, column: 7)
!913 = !DILocalVariable(name: "len", scope: !914, file: !3, line: 487, type: !71)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 486, column: 9)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 485, column: 11)
!916 = distinct !DILexicalBlock(scope: !912, file: !3, line: 467, column: 5)
!917 = !DILocalVariable(name: "__o", scope: !918, file: !3, line: 487, type: !157)
!918 = distinct !DILexicalBlock(scope: !914, file: !3, line: 487, column: 24)
!919 = !DILocalVariable(name: "s", scope: !914, file: !3, line: 488, type: !25)
!920 = !DILocalVariable(name: "__o1", scope: !921, file: !3, line: 488, type: !104)
!921 = distinct !DILexicalBlock(scope: !914, file: !3, line: 488, column: 21)
!922 = !DILocalVariable(name: "__value", scope: !921, file: !3, line: 488, type: !69)
!923 = !DILocalVariable(name: "prefix", scope: !914, file: !3, line: 489, type: !79)
!924 = !DILocalVariable(name: "suffix", scope: !914, file: !3, line: 490, type: !79)
!925 = !DILocalVariable(name: "__ptr", scope: !926, file: !3, line: 503, type: !79)
!926 = distinct !DILexicalBlock(scope: !914, file: !3, line: 503, column: 11)
!927 = !DILocalVariable(name: "__stream", scope: !926, file: !3, line: 503, type: !16)
!928 = !DILocalVariable(name: "__cnt", scope: !926, file: !3, line: 503, type: !71)
!929 = !DILocation(line: 0, scope: !899)
!930 = !DILocation(line: 404, column: 21, scope: !899)
!931 = !DILocation(line: 404, column: 3, scope: !899)
!932 = !DILocation(line: 405, column: 3, scope: !899)
!933 = !DILocation(line: 406, column: 3, scope: !899)
!934 = !DILocation(line: 407, column: 3, scope: !899)
!935 = !DILocation(line: 409, column: 3, scope: !899)
!936 = !DILocation(line: 411, column: 3, scope: !899)
!937 = !DILocation(line: 400, column: 21, scope: !899)
!938 = !DILocation(line: 411, column: 18, scope: !899)
!939 = distinct !{!939, !936, !940, !867}
!940 = !DILocation(line: 432, column: 7, scope: !899)
!941 = !DILocation(line: 420, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !899, file: !3, line: 413, column: 7)
!943 = !DILocation(line: 426, column: 7, scope: !942)
!944 = !DILocation(line: 428, column: 7, scope: !942)
!945 = !DILocation(line: 431, column: 9, scope: !942)
!946 = !DILocation(line: 434, column: 11, scope: !899)
!947 = !{!948, !948, i64 0}
!948 = !{!"int", !826, i64 0}
!949 = !DILocation(line: 434, column: 8, scope: !899)
!950 = !DILocation(line: 435, column: 8, scope: !899)
!951 = !DILocation(line: 439, column: 22, scope: !952)
!952 = distinct !DILexicalBlock(scope: !899, file: !3, line: 439, column: 7)
!953 = !DILocation(line: 442, column: 14, scope: !954)
!954 = distinct !DILexicalBlock(scope: !952, file: !3, line: 440, column: 5)
!955 = !DILocation(line: 441, column: 7, scope: !954)
!956 = !DILocation(line: 444, column: 7, scope: !954)
!957 = !DILocation(line: 447, column: 8, scope: !958)
!958 = distinct !DILexicalBlock(scope: !899, file: !3, line: 447, column: 7)
!959 = !DILocation(line: 447, column: 25, scope: !958)
!960 = !DILocation(line: 447, column: 7, scope: !899)
!961 = !DILocation(line: 449, column: 20, scope: !962)
!962 = distinct !DILexicalBlock(scope: !958, file: !3, line: 448, column: 5)
!963 = !DILocation(line: 449, column: 50, scope: !962)
!964 = !DILocation(line: 449, column: 43, scope: !962)
!965 = !DILocation(line: 449, column: 7, scope: !962)
!966 = !DILocation(line: 450, column: 11, scope: !962)
!967 = !DILocation(line: 451, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !962, file: !3, line: 450, column: 11)
!969 = !DILocation(line: 454, column: 7, scope: !962)
!970 = !DILocation(line: 457, column: 7, scope: !899)
!971 = !DILocation(line: 0, scope: !911)
!972 = !DILocation(line: 462, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !911, file: !3, line: 461, column: 9)
!974 = !DILocation(line: 463, column: 16, scope: !973)
!975 = !DILocation(line: 463, column: 27, scope: !973)
!976 = !DILocation(line: 463, column: 13, scope: !973)
!977 = !DILocation(line: 460, column: 16, scope: !911)
!978 = !DILocation(line: 460, column: 25, scope: !911)
!979 = !DILocation(line: 460, column: 7, scope: !911)
!980 = distinct !{!980, !979, !981, !867}
!981 = !DILocation(line: 464, column: 9, scope: !911)
!982 = !DILocation(line: 469, column: 18, scope: !983)
!983 = distinct !DILexicalBlock(scope: !916, file: !3, line: 469, column: 11)
!984 = !DILocation(line: 469, column: 11, scope: !916)
!985 = !DILocation(line: 130, column: 11, scope: !986, inlinedAt: !991)
!986 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !3, file: !3, line: 126, type: !987, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !989)
!987 = !DISubroutineType(types: !988)
!988 = !{!5}
!989 = !{!990}
!990 = !DILocalVariable(name: "shell", scope: !986, file: !3, line: 128, type: !25)
!991 = distinct !DILocation(line: 471, column: 20, scope: !992)
!992 = distinct !DILexicalBlock(scope: !983, file: !3, line: 470, column: 9)
!993 = !DILocation(line: 0, scope: !986, inlinedAt: !991)
!994 = !DILocation(line: 131, column: 13, scope: !995, inlinedAt: !991)
!995 = distinct !DILexicalBlock(scope: !986, file: !3, line: 131, column: 7)
!996 = !DILocation(line: 131, column: 21, scope: !995, inlinedAt: !991)
!997 = !DILocation(line: 131, column: 24, scope: !995, inlinedAt: !991)
!998 = !{!826, !826, i64 0}
!999 = !DILocation(line: 131, column: 31, scope: !995, inlinedAt: !991)
!1000 = !DILocation(line: 131, column: 7, scope: !986, inlinedAt: !991)
!1001 = !DILocation(line: 134, column: 11, scope: !986, inlinedAt: !991)
!1002 = !DILocation(line: 136, column: 7, scope: !1003, inlinedAt: !991)
!1003 = distinct !DILexicalBlock(scope: !986, file: !3, line: 136, column: 7)
!1004 = !DILocation(line: 136, column: 28, scope: !1003, inlinedAt: !991)
!1005 = !DILocation(line: 136, column: 31, scope: !1003, inlinedAt: !991)
!1006 = !DILocation(line: 136, column: 7, scope: !986, inlinedAt: !991)
!1007 = !DILocation(line: 474, column: 15, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 473, column: 13)
!1009 = distinct !DILexicalBlock(scope: !992, file: !3, line: 472, column: 15)
!1010 = !DILocation(line: 479, column: 7, scope: !916)
!1011 = !DILocation(line: 480, column: 16, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !916, file: !3, line: 480, column: 11)
!1013 = !DILocation(line: 480, column: 11, scope: !916)
!1014 = !DILocation(line: 481, column: 14, scope: !1012)
!1015 = !DILocation(line: 485, column: 11, scope: !916)
!1016 = !DILocation(line: 483, column: 29, scope: !1012)
!1017 = !DILocalVariable(name: "filename", arg: 1, scope: !1018, file: !3, line: 374, type: !79)
!1018 = distinct !DISubprogram(name: "dc_parse_file", scope: !3, file: !3, line: 374, type: !1019, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!15, !79}
!1021 = !{!1017, !1022}
!1022 = !DILocalVariable(name: "ok", scope: !1018, file: !3, line: 376, type: !15)
!1023 = !DILocation(line: 0, scope: !1018, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 483, column: 14, scope: !1012)
!1025 = !DILocation(line: 378, column: 9, scope: !1026, inlinedAt: !1024)
!1026 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 378, column: 7)
!1027 = !DILocation(line: 378, column: 31, scope: !1026, inlinedAt: !1024)
!1028 = !DILocation(line: 378, column: 58, scope: !1026, inlinedAt: !1024)
!1029 = !DILocation(line: 378, column: 34, scope: !1026, inlinedAt: !1024)
!1030 = !DILocation(line: 378, column: 65, scope: !1026, inlinedAt: !1024)
!1031 = !DILocation(line: 378, column: 7, scope: !1018, inlinedAt: !1024)
!1032 = !DILocation(line: 380, column: 17, scope: !1033, inlinedAt: !1024)
!1033 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 379, column: 5)
!1034 = !DILocation(line: 380, column: 30, scope: !1033, inlinedAt: !1024)
!1035 = !DILocation(line: 380, column: 7, scope: !1033, inlinedAt: !1024)
!1036 = !DILocation(line: 381, column: 7, scope: !1033, inlinedAt: !1024)
!1037 = !DILocation(line: 384, column: 25, scope: !1018, inlinedAt: !1024)
!1038 = !DILocation(line: 384, column: 8, scope: !1018, inlinedAt: !1024)
!1039 = !DILocation(line: 386, column: 15, scope: !1040, inlinedAt: !1024)
!1040 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 386, column: 7)
!1041 = !DILocation(line: 386, column: 7, scope: !1040, inlinedAt: !1024)
!1042 = !DILocation(line: 386, column: 22, scope: !1040, inlinedAt: !1024)
!1043 = !DILocation(line: 386, column: 7, scope: !1018, inlinedAt: !1024)
!1044 = !DILocation(line: 388, column: 17, scope: !1045, inlinedAt: !1024)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 387, column: 5)
!1046 = !DILocation(line: 388, column: 30, scope: !1045, inlinedAt: !1024)
!1047 = !DILocation(line: 388, column: 7, scope: !1045, inlinedAt: !1024)
!1048 = !DILocation(line: 389, column: 7, scope: !1045, inlinedAt: !1024)
!1049 = !DILocation(line: 0, scope: !918)
!1050 = !DILocation(line: 487, column: 24, scope: !918)
!1051 = !{!1052, !825, i64 24}
!1052 = !{!"obstack", !1053, i64 0, !825, i64 8, !825, i64 16, !825, i64 24, !825, i64 32, !826, i64 40, !1053, i64 48, !826, i64 56, !826, i64 64, !825, i64 72, !948, i64 80, !948, i64 80, !948, i64 80}
!1053 = !{!"long", !826, i64 0}
!1054 = !{!1052, !825, i64 16}
!1055 = !DILocation(line: 0, scope: !914)
!1056 = !DILocation(line: 0, scope: !921)
!1057 = !DILocation(line: 488, column: 21, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !921, file: !3, line: 488, column: 21)
!1059 = !DILocation(line: 488, column: 21, scope: !921)
!1060 = !{!1052, !1053, i64 48}
!1061 = !DILocation(line: 488, column: 21, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !921, file: !3, line: 488, column: 21)
!1063 = !{!1052, !825, i64 8}
!1064 = !{!1052, !825, i64 32}
!1065 = !DILocation(line: 492, column: 22, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !914, file: !3, line: 492, column: 15)
!1067 = !DILocation(line: 492, column: 15, scope: !914)
!1068 = !DILocation(line: 502, column: 11, scope: !914)
!1069 = !DILocation(line: 503, column: 11, scope: !914)
!1070 = !DILocation(line: 504, column: 11, scope: !914)
!1071 = !DILocation(line: 505, column: 9, scope: !914)
!1072 = !DILocation(line: 509, column: 1, scope: !899)
!1073 = !DISubprogram(name: "bindtextdomain", scope: !888, file: !888, line: 86, type: !1074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!25, !79, !79}
!1076 = !DISubprogram(name: "textdomain", scope: !888, file: !888, line: 82, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!25, !79}
!1079 = !DISubprogram(name: "atexit", scope: !1080, file: !1080, line: 595, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1080 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!23, !360}
!1083 = !DISubprogram(name: "getopt_long", scope: !263, file: !263, line: 66, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!23, !23, !1086, !79, !1088, !268}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!1089 = !DISubprogram(name: "error", scope: !1090, file: !1090, line: 52, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1090 = !DIFile(filename: "./lib/error.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !23, !23, !79, null}
!1093 = !DISubprogram(name: "puts", scope: !892, file: !892, line: 637, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!23, !79}
!1096 = !DISubprogram(name: "getenv", scope: !1080, file: !1080, line: 634, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1097 = !DILocation(line: 0, scope: !12)
!1098 = !DILocation(line: 243, column: 3, scope: !12)
!1099 = !DILocation(line: 243, column: 9, scope: !12)
!1100 = !DILocation(line: 244, column: 3, scope: !12)
!1101 = !DILocation(line: 244, column: 10, scope: !12)
!1102 = !{!1053, !1053, i64 0}
!1103 = !DILocation(line: 253, column: 10, scope: !12)
!1104 = !DILocation(line: 254, column: 12, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !12, file: !3, line: 254, column: 7)
!1106 = !DILocation(line: 254, column: 20, scope: !1105)
!1107 = !DILocation(line: 254, column: 23, scope: !1105)
!1108 = !DILocation(line: 254, column: 29, scope: !1105)
!1109 = !DILocation(line: 254, column: 7, scope: !12)
!1110 = !DILocation(line: 255, column: 5, scope: !1105)
!1111 = !DILocation(line: 257, column: 3, scope: !12)
!1112 = !DILocation(line: 264, column: 11, scope: !93)
!1113 = !DILocation(line: 242, column: 15, scope: !12)
!1114 = !DILocation(line: 262, column: 7, scope: !93)
!1115 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1116, file: !1117, line: 118, type: !902)
!1116 = distinct !DISubprogram(name: "getline", scope: !1117, file: !1117, line: 118, type: !1118, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1121)
!1117 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!1120, !902, !388, !16}
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !46, line: 194, baseType: !47)
!1121 = !{!1115, !1122, !1123}
!1122 = !DILocalVariable(name: "__n", arg: 2, scope: !1116, file: !1117, line: 118, type: !388)
!1123 = !DILocalVariable(name: "__stream", arg: 3, scope: !1116, file: !1117, line: 118, type: !16)
!1124 = !DILocation(line: 0, scope: !1116, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 266, column: 15, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 266, column: 15)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 265, column: 9)
!1128 = distinct !DILexicalBlock(scope: !93, file: !3, line: 264, column: 11)
!1129 = !DILocation(line: 120, column: 10, scope: !1116, inlinedAt: !1125)
!1130 = !DILocation(line: 266, column: 59, scope: !1126)
!1131 = !DILocation(line: 0, scope: !1127)
!1132 = !DILocation(line: 266, column: 15, scope: !1127)
!1133 = !DILocation(line: 268, column: 15, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 267, column: 13)
!1135 = !DILocation(line: 269, column: 15, scope: !1134)
!1136 = !DILocation(line: 275, column: 27, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 275, column: 15)
!1138 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 274, column: 9)
!1139 = !DILocation(line: 275, column: 15, scope: !1138)
!1140 = !DILocation(line: 278, column: 26, scope: !1138)
!1141 = !DILocation(line: 278, column: 47, scope: !1138)
!1142 = !DILocation(line: 278, column: 23, scope: !1138)
!1143 = !DILocation(line: 0, scope: !1128)
!1144 = !DILocalVariable(name: "line", arg: 1, scope: !1145, file: !3, line: 143, type: !79)
!1145 = distinct !DISubprogram(name: "parse_line", scope: !3, file: !3, line: 143, type: !1146, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !79, !902, !902}
!1148 = !{!1144, !1149, !1150, !1151, !1152, !1153}
!1149 = !DILocalVariable(name: "keyword", arg: 2, scope: !1145, file: !3, line: 143, type: !902)
!1150 = !DILocalVariable(name: "arg", arg: 3, scope: !1145, file: !3, line: 143, type: !902)
!1151 = !DILocalVariable(name: "p", scope: !1145, file: !3, line: 145, type: !79)
!1152 = !DILocalVariable(name: "keyword_start", scope: !1145, file: !3, line: 146, type: !79)
!1153 = !DILocalVariable(name: "arg_start", scope: !1145, file: !3, line: 147, type: !79)
!1154 = !DILocation(line: 0, scope: !1145, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 281, column: 7, scope: !93)
!1156 = !DILocation(line: 152, column: 8, scope: !1157, inlinedAt: !1155)
!1157 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 152, column: 3)
!1158 = !DILocation(line: 0, scope: !1157, inlinedAt: !1155)
!1159 = !DILocation(line: 152, column: 18, scope: !1160, inlinedAt: !1155)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 152, column: 3)
!1161 = !{!1162, !1162, i64 0}
!1162 = !{!"short", !826, i64 0}
!1163 = !DILocation(line: 152, column: 3, scope: !1157, inlinedAt: !1155)
!1164 = !DILocation(line: 152, column: 43, scope: !1160, inlinedAt: !1155)
!1165 = distinct !{!1165, !1163, !1166, !867}
!1166 = !DILocation(line: 153, column: 5, scope: !1157, inlinedAt: !1155)
!1167 = !DILocation(line: 156, column: 18, scope: !1168, inlinedAt: !1155)
!1168 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 156, column: 7)
!1169 = distinct !{!1169, !1111, !1170}
!1170 = !DILocation(line: 368, column: 5, scope: !12)
!1171 = !DILocation(line: 163, column: 7, scope: !1172, inlinedAt: !1155)
!1172 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 162, column: 5)
!1173 = !DILocation(line: 161, column: 11, scope: !1145, inlinedAt: !1155)
!1174 = !DILocation(line: 161, column: 35, scope: !1145, inlinedAt: !1155)
!1175 = distinct !{!1175, !1176, !1177, !867}
!1176 = !DILocation(line: 161, column: 3, scope: !1145, inlinedAt: !1155)
!1177 = !DILocation(line: 164, column: 5, scope: !1145, inlinedAt: !1155)
!1178 = !DILocation(line: 166, column: 41, scope: !1145, inlinedAt: !1155)
!1179 = !DILocation(line: 166, column: 14, scope: !1145, inlinedAt: !1155)
!1180 = !DILocation(line: 167, column: 7, scope: !1181, inlinedAt: !1155)
!1181 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 167, column: 7)
!1182 = !DILocation(line: 167, column: 11, scope: !1181, inlinedAt: !1155)
!1183 = !DILocation(line: 167, column: 7, scope: !1145, inlinedAt: !1155)
!1184 = !DILocation(line: 170, column: 3, scope: !1145, inlinedAt: !1155)
!1185 = !DILocation(line: 172, column: 7, scope: !1186, inlinedAt: !1155)
!1186 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 171, column: 5)
!1187 = !DILocation(line: 174, column: 10, scope: !1145, inlinedAt: !1155)
!1188 = !DILocation(line: 173, column: 5, scope: !1186, inlinedAt: !1155)
!1189 = distinct !{!1189, !1184, !1190, !867}
!1190 = !DILocation(line: 174, column: 33, scope: !1145, inlinedAt: !1155)
!1191 = !DILocation(line: 176, column: 18, scope: !1192, inlinedAt: !1155)
!1192 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 176, column: 7)
!1193 = !DILocation(line: 181, column: 10, scope: !1145, inlinedAt: !1155)
!1194 = !DILocation(line: 181, column: 21, scope: !1145, inlinedAt: !1155)
!1195 = !DILocation(line: 184, column: 3, scope: !1196, inlinedAt: !1155)
!1196 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 184, column: 3)
!1197 = !DILocation(line: 182, column: 5, scope: !1145, inlinedAt: !1155)
!1198 = !DILocation(line: 181, column: 3, scope: !1145, inlinedAt: !1155)
!1199 = distinct !{!1199, !1198, !1200, !867}
!1200 = !DILocation(line: 182, column: 7, scope: !1145, inlinedAt: !1155)
!1201 = !DILocation(line: 0, scope: !1196, inlinedAt: !1155)
!1202 = !DILocation(line: 184, column: 13, scope: !1203, inlinedAt: !1155)
!1203 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 184, column: 3)
!1204 = distinct !{!1204, !1195, !1205, !867}
!1205 = !DILocation(line: 185, column: 5, scope: !1196, inlinedAt: !1155)
!1206 = !DILocation(line: 188, column: 33, scope: !1145, inlinedAt: !1155)
!1207 = !DILocation(line: 188, column: 10, scope: !1145, inlinedAt: !1155)
!1208 = !DILocation(line: 189, column: 1, scope: !1145, inlinedAt: !1155)
!1209 = !DILocation(line: 0, scope: !93)
!1210 = !DILocation(line: 283, column: 17, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !93, file: !3, line: 283, column: 11)
!1212 = !DILocation(line: 283, column: 11, scope: !93)
!1213 = !DILocation(line: 286, column: 15, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !93, file: !3, line: 286, column: 11)
!1215 = !DILocation(line: 286, column: 11, scope: !93)
!1216 = !DILocation(line: 288, column: 24, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 287, column: 9)
!1218 = !DILocation(line: 289, column: 18, scope: !1217)
!1219 = !DILocation(line: 288, column: 11, scope: !1217)
!1220 = !DILocation(line: 291, column: 11, scope: !1217)
!1221 = !DILocation(line: 292, column: 11, scope: !1217)
!1222 = !DILocation(line: 296, column: 11, scope: !103)
!1223 = !DILocation(line: 296, column: 40, scope: !103)
!1224 = !DILocation(line: 296, column: 11, scope: !93)
!1225 = !DILocation(line: 298, column: 15, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 298, column: 15)
!1227 = distinct !DILexicalBlock(scope: !103, file: !3, line: 297, column: 9)
!1228 = !DILocation(line: 298, column: 38, scope: !1226)
!1229 = !DILocation(line: 298, column: 15, scope: !1227)
!1230 = !DILocation(line: 305, column: 21, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !102, file: !3, line: 305, column: 15)
!1232 = !DILocation(line: 305, column: 15, scope: !102)
!1233 = !DILocation(line: 308, column: 21, scope: !101)
!1234 = !DILocation(line: 308, column: 15, scope: !102)
!1235 = !DILocation(line: 310, column: 19, scope: !99)
!1236 = !DILocation(line: 310, column: 19, scope: !100)
!1237 = !DILocation(line: 0, scope: !97)
!1238 = !DILocation(line: 0, scope: !155)
!1239 = !DILocation(line: 312, column: 19, scope: !155)
!1240 = !DILocation(line: 312, column: 19, scope: !156)
!1241 = !DILocation(line: 312, column: 19, scope: !97)
!1242 = !DILocation(line: 313, column: 19, scope: !98)
!1243 = !DILocation(line: 0, scope: !160)
!1244 = !DILocation(line: 0, scope: !162)
!1245 = !DILocation(line: 314, column: 19, scope: !162)
!1246 = !DILocation(line: 314, column: 19, scope: !163)
!1247 = !DILocation(line: 314, column: 19, scope: !160)
!1248 = !DILocation(line: 315, column: 19, scope: !98)
!1249 = !DILocation(line: 0, scope: !165)
!1250 = !DILocation(line: 0, scope: !167)
!1251 = !DILocation(line: 316, column: 19, scope: !167)
!1252 = !DILocation(line: 316, column: 19, scope: !168)
!1253 = !DILocation(line: 316, column: 19, scope: !165)
!1254 = !DILocation(line: 317, column: 17, scope: !98)
!1255 = !DILocation(line: 320, column: 19, scope: !171)
!1256 = !DILocation(line: 0, scope: !170)
!1257 = !DILocation(line: 0, scope: !174)
!1258 = !DILocation(line: 321, column: 19, scope: !174)
!1259 = !DILocation(line: 321, column: 19, scope: !175)
!1260 = !DILocation(line: 321, column: 19, scope: !170)
!1261 = !DILocation(line: 322, column: 19, scope: !171)
!1262 = !DILocation(line: 0, scope: !177)
!1263 = !DILocation(line: 0, scope: !179)
!1264 = !DILocation(line: 323, column: 19, scope: !179)
!1265 = !DILocation(line: 323, column: 19, scope: !180)
!1266 = !DILocation(line: 323, column: 19, scope: !177)
!1267 = !DILocation(line: 324, column: 17, scope: !171)
!1268 = !DILocation(line: 325, column: 24, scope: !183)
!1269 = !DILocation(line: 325, column: 56, scope: !183)
!1270 = !DILocation(line: 326, column: 24, scope: !183)
!1271 = !DILocation(line: 326, column: 27, scope: !183)
!1272 = !DILocation(line: 326, column: 57, scope: !183)
!1273 = !DILocation(line: 327, column: 24, scope: !183)
!1274 = !DILocation(line: 327, column: 27, scope: !183)
!1275 = !DILocation(line: 327, column: 60, scope: !183)
!1276 = !DILocation(line: 325, column: 24, scope: !172)
!1277 = !DILocation(line: 0, scope: !182)
!1278 = !DILocation(line: 335, column: 46, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 335, column: 19)
!1280 = distinct !DILexicalBlock(scope: !182, file: !3, line: 335, column: 19)
!1281 = !DILocation(line: 335, column: 19, scope: !1280)
!1282 = distinct !{!1282, !1281, !1283, !867}
!1283 = !DILocation(line: 337, column: 23, scope: !1280)
!1284 = !DILocation(line: 335, column: 31, scope: !1279)
!1285 = !DILocation(line: 336, column: 25, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 336, column: 25)
!1287 = !DILocation(line: 336, column: 62, scope: !1286)
!1288 = !DILocation(line: 335, column: 55, scope: !1279)
!1289 = !DILocation(line: 336, column: 25, scope: !1279)
!1290 = !DILocation(line: 0, scope: !185)
!1291 = !DILocation(line: 0, scope: !190)
!1292 = !DILocation(line: 341, column: 23, scope: !190)
!1293 = !DILocation(line: 341, column: 23, scope: !191)
!1294 = !DILocation(line: 341, column: 23, scope: !185)
!1295 = !DILocation(line: 0, scope: !193)
!1296 = !DILocation(line: 0, scope: !195)
!1297 = !DILocation(line: 341, column: 23, scope: !195)
!1298 = !DILocation(line: 341, column: 23, scope: !196)
!1299 = !DILocation(line: 341, column: 23, scope: !193)
!1300 = !DILocation(line: 0, scope: !198)
!1301 = !DILocation(line: 0, scope: !200)
!1302 = !DILocation(line: 342, column: 23, scope: !200)
!1303 = !DILocation(line: 342, column: 23, scope: !201)
!1304 = !DILocation(line: 342, column: 23, scope: !198)
!1305 = !DILocation(line: 343, column: 23, scope: !187)
!1306 = !DILocation(line: 0, scope: !203)
!1307 = !DILocation(line: 0, scope: !205)
!1308 = !DILocation(line: 344, column: 23, scope: !205)
!1309 = !DILocation(line: 344, column: 23, scope: !206)
!1310 = !DILocation(line: 344, column: 23, scope: !203)
!1311 = !DILocation(line: 345, column: 21, scope: !187)
!1312 = !DILocation(line: 358, column: 24, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !93, file: !3, line: 358, column: 11)
!1314 = !DILocation(line: 360, column: 24, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 359, column: 9)
!1316 = !DILocation(line: 361, column: 19, scope: !1315)
!1317 = !DILocation(line: 361, column: 30, scope: !1315)
!1318 = !DILocation(line: 361, column: 50, scope: !1315)
!1319 = !DILocation(line: 360, column: 11, scope: !1315)
!1320 = !DILocation(line: 364, column: 9, scope: !1315)
!1321 = !DILocation(line: 366, column: 7, scope: !93)
!1322 = !DILocation(line: 367, column: 7, scope: !93)
!1323 = !DILocation(line: 370, column: 10, scope: !12)
!1324 = !DILocation(line: 371, column: 1, scope: !12)
!1325 = !DILocation(line: 370, column: 3, scope: !12)
!1326 = !DISubprogram(name: "fwrite_unlocked", scope: !892, file: !892, line: 680, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!73, !1329, !73, !73, !41}
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1331 = !DISubprogram(name: "fnmatch", scope: !1332, file: !1332, line: 56, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1332 = !DIFile(filename: "/usr/include/fnmatch.h", directory: "")
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!23, !79, !79, !23}
!1335 = distinct !DISubprogram(name: "append_quoted", scope: !3, file: !3, line: 195, type: !837, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1336 = !{!1337, !1338, !1339, !1343, !1346, !1348, !1351, !1353, !1356, !1359, !1362, !1364}
!1337 = !DILocalVariable(name: "str", arg: 1, scope: !1335, file: !3, line: 195, type: !79)
!1338 = !DILocalVariable(name: "need_backslash", scope: !1335, file: !3, line: 197, type: !15)
!1339 = !DILocalVariable(name: "__o", scope: !1340, file: !3, line: 204, type: !104)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 204, column: 11)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 202, column: 9)
!1342 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 200, column: 5)
!1343 = !DILocalVariable(name: "__o1", scope: !1344, file: !3, line: 204, type: !157)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 204, column: 11)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 204, column: 11)
!1346 = !DILocalVariable(name: "__o", scope: !1347, file: !3, line: 205, type: !104)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 205, column: 11)
!1348 = !DILocalVariable(name: "__o1", scope: !1349, file: !3, line: 205, type: !157)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 205, column: 11)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 205, column: 11)
!1351 = !DILocalVariable(name: "__o", scope: !1352, file: !3, line: 206, type: !104)
!1352 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 206, column: 11)
!1353 = !DILocalVariable(name: "__o1", scope: !1354, file: !3, line: 206, type: !157)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 206, column: 11)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 206, column: 11)
!1356 = !DILocalVariable(name: "__o", scope: !1357, file: !3, line: 218, type: !104)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 218, column: 13)
!1358 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 217, column: 15)
!1359 = !DILocalVariable(name: "__o1", scope: !1360, file: !3, line: 218, type: !157)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 218, column: 13)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 218, column: 13)
!1362 = !DILocalVariable(name: "__o", scope: !1363, file: !3, line: 226, type: !104)
!1363 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 226, column: 7)
!1364 = !DILocalVariable(name: "__o1", scope: !1365, file: !3, line: 226, type: !157)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 226, column: 7)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 226, column: 7)
!1367 = !DILocation(line: 0, scope: !1335)
!1368 = !DILocation(line: 199, column: 10, scope: !1335)
!1369 = !DILocation(line: 199, column: 15, scope: !1335)
!1370 = !DILocation(line: 199, column: 3, scope: !1335)
!1371 = !DILocation(line: 201, column: 7, scope: !1342)
!1372 = !DILocation(line: 0, scope: !1340)
!1373 = !DILocation(line: 0, scope: !1344)
!1374 = !DILocation(line: 204, column: 11, scope: !1344)
!1375 = !DILocation(line: 204, column: 11, scope: !1345)
!1376 = !DILocation(line: 204, column: 11, scope: !1340)
!1377 = !DILocation(line: 0, scope: !1347)
!1378 = !DILocation(line: 0, scope: !1349)
!1379 = !DILocation(line: 205, column: 11, scope: !1349)
!1380 = !DILocation(line: 205, column: 11, scope: !1350)
!1381 = !DILocation(line: 205, column: 11, scope: !1347)
!1382 = !DILocation(line: 0, scope: !1352)
!1383 = !DILocation(line: 0, scope: !1354)
!1384 = !DILocation(line: 206, column: 11, scope: !1354)
!1385 = !DILocation(line: 206, column: 11, scope: !1355)
!1386 = !DILocation(line: 206, column: 11, scope: !1352)
!1387 = !DILocation(line: 208, column: 11, scope: !1341)
!1388 = !DILocation(line: 212, column: 29, scope: !1341)
!1389 = !DILocation(line: 212, column: 26, scope: !1341)
!1390 = !DILocation(line: 213, column: 11, scope: !1341)
!1391 = !DILocation(line: 217, column: 15, scope: !1358)
!1392 = !DILocation(line: 217, column: 15, scope: !1341)
!1393 = !DILocation(line: 0, scope: !1357)
!1394 = !DILocation(line: 0, scope: !1360)
!1395 = !DILocation(line: 218, column: 13, scope: !1360)
!1396 = !DILocation(line: 218, column: 13, scope: !1361)
!1397 = !DILocation(line: 218, column: 13, scope: !1357)
!1398 = !DILocation(line: 218, column: 13, scope: !1358)
!1399 = !DILocation(line: 0, scope: !1341)
!1400 = !DILocation(line: 0, scope: !1363)
!1401 = !DILocation(line: 0, scope: !1365)
!1402 = !DILocation(line: 226, column: 7, scope: !1365)
!1403 = !DILocation(line: 226, column: 7, scope: !1366)
!1404 = !DILocation(line: 226, column: 7, scope: !1363)
!1405 = !DILocation(line: 227, column: 7, scope: !1342)
!1406 = distinct !{!1406, !1370, !1407, !867}
!1407 = !DILocation(line: 228, column: 5, scope: !1335)
!1408 = !DILocation(line: 229, column: 1, scope: !1335)
!1409 = distinct !DISubprogram(name: "c_strcasecmp", scope: !364, file: !364, line: 27, type: !1410, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !363, retainedNodes: !1412)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!23, !79, !79}
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418}
!1413 = !DILocalVariable(name: "s1", arg: 1, scope: !1409, file: !364, line: 27, type: !79)
!1414 = !DILocalVariable(name: "s2", arg: 2, scope: !1409, file: !364, line: 27, type: !79)
!1415 = !DILocalVariable(name: "p1", scope: !1409, file: !364, line: 29, type: !366)
!1416 = !DILocalVariable(name: "p2", scope: !1409, file: !364, line: 30, type: !366)
!1417 = !DILocalVariable(name: "c1", scope: !1409, file: !364, line: 31, type: !242)
!1418 = !DILocalVariable(name: "c2", scope: !1409, file: !364, line: 31, type: !242)
!1419 = !DILocation(line: 0, scope: !1409)
!1420 = !DILocation(line: 33, column: 10, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1409, file: !364, line: 33, column: 7)
!1422 = !DILocation(line: 33, column: 7, scope: !1409)
!1423 = !DILocation(line: 38, column: 23, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1409, file: !364, line: 37, column: 5)
!1425 = !DILocalVariable(name: "c", arg: 1, scope: !1426, file: !1427, line: 337, type: !23)
!1426 = distinct !DISubprogram(name: "c_tolower", scope: !1427, file: !1427, line: 337, type: !1428, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !363, retainedNodes: !1430)
!1427 = !DIFile(filename: "./lib/c-ctype.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!23, !23}
!1430 = !{!1425}
!1431 = !DILocation(line: 0, scope: !1426, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 38, column: 12, scope: !1424)
!1433 = !DILocation(line: 339, column: 3, scope: !1426, inlinedAt: !1432)
!1434 = !DILocation(line: 39, column: 23, scope: !1424)
!1435 = !DILocation(line: 0, scope: !1426, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 39, column: 12, scope: !1424)
!1437 = !DILocation(line: 339, column: 3, scope: !1426, inlinedAt: !1436)
!1438 = !DILocation(line: 41, column: 11, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1424, file: !364, line: 41, column: 11)
!1440 = !DILocation(line: 41, column: 14, scope: !1439)
!1441 = !DILocation(line: 41, column: 11, scope: !1424)
!1442 = !DILocation(line: 50, column: 17, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1409, file: !364, line: 49, column: 7)
!1444 = !DILocation(line: 44, column: 7, scope: !1424)
!1445 = !DILocation(line: 45, column: 7, scope: !1424)
!1446 = !DILocation(line: 47, column: 16, scope: !1409)
!1447 = !DILocation(line: 47, column: 13, scope: !1409)
!1448 = !DILocation(line: 46, column: 5, scope: !1424)
!1449 = distinct !{!1449, !1450, !1451, !867}
!1450 = !DILocation(line: 36, column: 3, scope: !1409)
!1451 = !DILocation(line: 47, column: 18, scope: !1409)
!1452 = !DILocation(line: 50, column: 15, scope: !1443)
!1453 = !DILocation(line: 50, column: 5, scope: !1443)
!1454 = !DILocation(line: 56, column: 1, scope: !1409)
!1455 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !281, file: !281, line: 51, type: !837, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !1456)
!1456 = !{!1457}
!1457 = !DILocalVariable(name: "file", arg: 1, scope: !1455, file: !281, line: 51, type: !79)
!1458 = !DILocation(line: 0, scope: !1455)
!1459 = !DILocation(line: 53, column: 13, scope: !1455)
!1460 = !DILocation(line: 54, column: 1, scope: !1455)
!1461 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !281, file: !281, line: 88, type: !1462, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !15}
!1464 = !{!1465}
!1465 = !DILocalVariable(name: "ignore", arg: 1, scope: !1461, file: !281, line: 88, type: !15)
!1466 = !DILocation(line: 0, scope: !1461)
!1467 = !DILocation(line: 90, column: 16, scope: !1461)
!1468 = !{!1469, !1469, i64 0}
!1469 = !{!"_Bool", !826, i64 0}
!1470 = !DILocation(line: 91, column: 1, scope: !1461)
!1471 = distinct !DISubprogram(name: "close_stdout", scope: !281, file: !281, line: 117, type: !361, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !280, retainedNodes: !1472)
!1472 = !{!1473}
!1473 = !DILocalVariable(name: "write_error", scope: !1474, file: !281, line: 122, type: !79)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !281, line: 121, column: 5)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !281, line: 119, column: 7)
!1476 = !DILocation(line: 119, column: 21, scope: !1475)
!1477 = !DILocation(line: 119, column: 7, scope: !1475)
!1478 = !DILocation(line: 119, column: 29, scope: !1475)
!1479 = !DILocation(line: 120, column: 7, scope: !1475)
!1480 = !DILocation(line: 120, column: 12, scope: !1475)
!1481 = !{i8 0, i8 2}
!1482 = !DILocation(line: 120, column: 25, scope: !1475)
!1483 = !DILocation(line: 120, column: 28, scope: !1475)
!1484 = !DILocation(line: 120, column: 34, scope: !1475)
!1485 = !DILocation(line: 119, column: 7, scope: !1471)
!1486 = !DILocation(line: 122, column: 33, scope: !1474)
!1487 = !DILocation(line: 0, scope: !1474)
!1488 = !DILocation(line: 123, column: 11, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1474, file: !281, line: 123, column: 11)
!1490 = !DILocation(line: 0, scope: !1489)
!1491 = !DILocation(line: 123, column: 11, scope: !1474)
!1492 = !DILocation(line: 124, column: 36, scope: !1489)
!1493 = !DILocation(line: 124, column: 9, scope: !1489)
!1494 = !DILocation(line: 127, column: 9, scope: !1489)
!1495 = !DILocation(line: 129, column: 14, scope: !1474)
!1496 = !DILocation(line: 129, column: 7, scope: !1474)
!1497 = !DILocation(line: 134, column: 42, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1471, file: !281, line: 134, column: 7)
!1499 = !DILocation(line: 134, column: 28, scope: !1498)
!1500 = !DILocation(line: 134, column: 50, scope: !1498)
!1501 = !DILocation(line: 134, column: 7, scope: !1471)
!1502 = !DILocation(line: 135, column: 12, scope: !1498)
!1503 = !DILocation(line: 135, column: 5, scope: !1498)
!1504 = !DILocation(line: 136, column: 1, scope: !1471)
!1505 = distinct !DISubprogram(name: "last_component", scope: !369, file: !369, line: 30, type: !1077, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !1506)
!1506 = !{!1507, !1508, !1509, !1510}
!1507 = !DILocalVariable(name: "name", arg: 1, scope: !1505, file: !369, line: 30, type: !79)
!1508 = !DILocalVariable(name: "base", scope: !1505, file: !369, line: 32, type: !79)
!1509 = !DILocalVariable(name: "p", scope: !1505, file: !369, line: 33, type: !79)
!1510 = !DILocalVariable(name: "saw_slash", scope: !1505, file: !369, line: 34, type: !15)
!1511 = !DILocation(line: 0, scope: !1505)
!1512 = !DILocation(line: 36, column: 3, scope: !1505)
!1513 = !DILocation(line: 36, column: 10, scope: !1505)
!1514 = !DILocation(line: 37, column: 9, scope: !1505)
!1515 = distinct !{!1515, !1512, !1514, !867}
!1516 = !DILocation(line: 39, column: 18, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !369, line: 39, column: 3)
!1518 = distinct !DILexicalBlock(scope: !1505, file: !369, line: 39, column: 3)
!1519 = !DILocation(line: 32, column: 15, scope: !1505)
!1520 = !DILocation(line: 0, scope: !1518)
!1521 = !DILocation(line: 39, column: 3, scope: !1518)
!1522 = !DILocation(line: 43, column: 16, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !369, line: 43, column: 16)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !369, line: 41, column: 11)
!1525 = distinct !DILexicalBlock(scope: !1517, file: !369, line: 40, column: 5)
!1526 = !DILocation(line: 43, column: 16, scope: !1524)
!1527 = !DILocation(line: 39, column: 23, scope: !1517)
!1528 = !DILocation(line: 39, column: 3, scope: !1517)
!1529 = distinct !{!1529, !1521, !1530, !867}
!1530 = !DILocation(line: 48, column: 5, scope: !1518)
!1531 = !DILocation(line: 50, column: 3, scope: !1505)
!1532 = distinct !DISubprogram(name: "base_len", scope: !369, file: !369, line: 58, type: !1533, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!71, !79}
!1535 = !{!1536, !1537, !1538}
!1536 = !DILocalVariable(name: "name", arg: 1, scope: !1532, file: !369, line: 58, type: !79)
!1537 = !DILocalVariable(name: "len", scope: !1532, file: !369, line: 60, type: !71)
!1538 = !DILocalVariable(name: "prefix_len", scope: !1532, file: !369, line: 61, type: !71)
!1539 = !DILocation(line: 0, scope: !1532)
!1540 = !DILocation(line: 63, column: 14, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1532, file: !369, line: 63, column: 3)
!1542 = !DILocation(line: 63, column: 8, scope: !1541)
!1543 = !DILocation(line: 0, scope: !1541)
!1544 = !DILocation(line: 63, column: 32, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1541, file: !369, line: 63, column: 3)
!1546 = !DILocation(line: 63, column: 38, scope: !1545)
!1547 = !DILocation(line: 63, column: 41, scope: !1545)
!1548 = !DILocation(line: 63, column: 3, scope: !1541)
!1549 = distinct !{!1549, !1548, !1550, !867}
!1550 = !DILocation(line: 64, column: 5, scope: !1541)
!1551 = !DILocation(line: 74, column: 3, scope: !1532)
!1552 = distinct !DISubprogram(name: "freopen_safer", scope: !372, file: !372, line: 62, type: !1553, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1589)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1555, !79, !79, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1557, file: !20, line: 51, baseType: !23, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1557, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1557, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1557, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1557, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1557, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1557, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1557, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1557, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1557, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1557, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1557, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1557, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1557, file: !20, line: 70, baseType: !1573, size: 64, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1557, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1557, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1557, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1557, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1557, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1557, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1557, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1557, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1557, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1557, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1557, file: !20, line: 93, baseType: !1573, size: 64, offset: 1344)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1557, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1557, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1557, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1557, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1590 = !DILocalVariable(name: "name", arg: 1, scope: !1552, file: !372, line: 62, type: !79)
!1591 = !DILocalVariable(name: "mode", arg: 2, scope: !1552, file: !372, line: 62, type: !79)
!1592 = !DILocalVariable(name: "f", arg: 3, scope: !1552, file: !372, line: 62, type: !1555)
!1593 = !DILocalVariable(name: "protect_in", scope: !1552, file: !372, line: 70, type: !15)
!1594 = !DILocalVariable(name: "protect_out", scope: !1552, file: !372, line: 71, type: !15)
!1595 = !DILocalVariable(name: "protect_err", scope: !1552, file: !372, line: 72, type: !15)
!1596 = !DILocalVariable(name: "saved_errno", scope: !1552, file: !372, line: 73, type: !23)
!1597 = !DILocation(line: 0, scope: !1552)
!1598 = !DILocation(line: 75, column: 11, scope: !1552)
!1599 = !DILocation(line: 75, column: 3, scope: !1552)
!1600 = !DILocation(line: 78, column: 11, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !372, line: 78, column: 11)
!1602 = distinct !DILexicalBlock(scope: !1552, file: !372, line: 76, column: 5)
!1603 = !DILocation(line: 78, column: 47, scope: !1601)
!1604 = !DILocation(line: 78, column: 11, scope: !1602)
!1605 = !DILocation(line: 82, column: 11, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1602, file: !372, line: 82, column: 11)
!1607 = !DILocation(line: 82, column: 47, scope: !1606)
!1608 = !DILocation(line: 82, column: 11, scope: !1602)
!1609 = !DILocation(line: 86, column: 11, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1602, file: !372, line: 86, column: 11)
!1611 = !DILocation(line: 86, column: 45, scope: !1610)
!1612 = !DILocation(line: 93, column: 18, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1552, file: !372, line: 93, column: 7)
!1614 = !DILocalVariable(name: "fd", arg: 1, scope: !1615, file: !372, line: 40, type: !23)
!1615 = distinct !DISubprogram(name: "protect_fd", scope: !372, file: !372, line: 40, type: !1616, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!15, !23}
!1618 = !{!1614, !1619}
!1619 = !DILocalVariable(name: "value", scope: !1615, file: !372, line: 42, type: !23)
!1620 = !DILocation(line: 0, scope: !1615, inlinedAt: !1621)
!1621 = distinct !DILocation(line: 93, column: 22, scope: !1613)
!1622 = !DILocation(line: 42, column: 15, scope: !1615, inlinedAt: !1621)
!1623 = !DILocation(line: 43, column: 13, scope: !1624, inlinedAt: !1621)
!1624 = distinct !DILexicalBlock(scope: !1615, file: !372, line: 43, column: 7)
!1625 = !DILocation(line: 43, column: 7, scope: !1615, inlinedAt: !1621)
!1626 = !DILocation(line: 47, column: 11, scope: !1627, inlinedAt: !1621)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !372, line: 46, column: 9)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !372, line: 45, column: 11)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !372, line: 44, column: 5)
!1630 = !DILocation(line: 48, column: 11, scope: !1627, inlinedAt: !1621)
!1631 = !DILocation(line: 48, column: 17, scope: !1627, inlinedAt: !1621)
!1632 = !DILocation(line: 49, column: 9, scope: !1627, inlinedAt: !1621)
!1633 = !DILocation(line: 93, column: 7, scope: !1552)
!1634 = !DILocation(line: 95, column: 12, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1613, file: !372, line: 95, column: 12)
!1636 = !DILocation(line: 95, column: 24, scope: !1635)
!1637 = !DILocation(line: 0, scope: !1615, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 95, column: 28, scope: !1635)
!1639 = !DILocation(line: 42, column: 15, scope: !1615, inlinedAt: !1638)
!1640 = !DILocation(line: 43, column: 13, scope: !1624, inlinedAt: !1638)
!1641 = !DILocation(line: 43, column: 7, scope: !1615, inlinedAt: !1638)
!1642 = !DILocation(line: 47, column: 11, scope: !1627, inlinedAt: !1638)
!1643 = !DILocation(line: 48, column: 11, scope: !1627, inlinedAt: !1638)
!1644 = !DILocation(line: 48, column: 17, scope: !1627, inlinedAt: !1638)
!1645 = !DILocation(line: 49, column: 9, scope: !1627, inlinedAt: !1638)
!1646 = !DILocation(line: 95, column: 12, scope: !1613)
!1647 = !DILocation(line: 97, column: 12, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1635, file: !372, line: 97, column: 12)
!1649 = !DILocation(line: 97, column: 24, scope: !1648)
!1650 = !DILocation(line: 0, scope: !1615, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 97, column: 28, scope: !1648)
!1652 = !DILocation(line: 42, column: 15, scope: !1615, inlinedAt: !1651)
!1653 = !DILocation(line: 43, column: 13, scope: !1624, inlinedAt: !1651)
!1654 = !DILocation(line: 43, column: 7, scope: !1615, inlinedAt: !1651)
!1655 = !DILocation(line: 47, column: 11, scope: !1627, inlinedAt: !1651)
!1656 = !DILocation(line: 48, column: 11, scope: !1627, inlinedAt: !1651)
!1657 = !DILocation(line: 48, column: 17, scope: !1627, inlinedAt: !1651)
!1658 = !DILocation(line: 49, column: 9, scope: !1627, inlinedAt: !1651)
!1659 = !DILocation(line: 97, column: 12, scope: !1635)
!1660 = !DILocation(line: 101, column: 17, scope: !1552)
!1661 = !DILocation(line: 102, column: 7, scope: !1552)
!1662 = !DILocation(line: 100, column: 9, scope: !1648)
!1663 = !DILocation(line: 0, scope: !1613)
!1664 = !DILocation(line: 102, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1552, file: !372, line: 102, column: 7)
!1666 = !DILocation(line: 103, column: 5, scope: !1665)
!1667 = !DILocation(line: 104, column: 7, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1552, file: !372, line: 104, column: 7)
!1669 = !DILocation(line: 104, column: 7, scope: !1552)
!1670 = !DILocation(line: 105, column: 5, scope: !1668)
!1671 = !DILocation(line: 106, column: 7, scope: !1552)
!1672 = !DILocation(line: 107, column: 5, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1552, file: !372, line: 106, column: 7)
!1674 = !DILocation(line: 108, column: 8, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1552, file: !372, line: 108, column: 7)
!1676 = !DILocation(line: 108, column: 7, scope: !1552)
!1677 = !DILocation(line: 109, column: 11, scope: !1675)
!1678 = !DILocation(line: 109, column: 5, scope: !1675)
!1679 = !DILocation(line: 110, column: 3, scope: !1552)
!1680 = !DISubprogram(name: "fileno", scope: !892, file: !892, line: 785, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!23, !1573}
!1683 = !DISubprogram(name: "dup2", scope: !1684, file: !1684, line: 545, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1684 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!23, !23, !23}
!1687 = !DISubprogram(name: "open", scope: !1688, file: !1688, line: 196, type: !1689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1688 = !DIFile(filename: "/usr/include/fcntl.h", directory: "")
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!23, !79, !23, null}
!1691 = !DISubprogram(name: "close", scope: !1684, file: !1684, line: 353, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1692 = !DISubprogram(name: "freopen", scope: !892, file: !892, line: 252, type: !1693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1573, !79, !79, !1573}
!1695 = distinct !DISubprogram(name: "set_program_name", scope: !294, file: !294, line: 39, type: !837, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !293, retainedNodes: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DILocalVariable(name: "argv0", arg: 1, scope: !1695, file: !294, line: 39, type: !79)
!1698 = !DILocalVariable(name: "slash", scope: !1695, file: !294, line: 46, type: !79)
!1699 = !DILocalVariable(name: "base", scope: !1695, file: !294, line: 47, type: !79)
!1700 = !DILocation(line: 0, scope: !1695)
!1701 = !DILocation(line: 51, column: 13, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1695, file: !294, line: 51, column: 7)
!1703 = !DILocation(line: 51, column: 7, scope: !1695)
!1704 = !DILocation(line: 55, column: 14, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1702, file: !294, line: 52, column: 5)
!1706 = !DILocation(line: 54, column: 7, scope: !1705)
!1707 = !DILocation(line: 56, column: 7, scope: !1705)
!1708 = !DILocation(line: 59, column: 11, scope: !1695)
!1709 = !DILocation(line: 60, column: 17, scope: !1695)
!1710 = !DILocation(line: 60, column: 11, scope: !1695)
!1711 = !DILocation(line: 61, column: 12, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1695, file: !294, line: 61, column: 7)
!1713 = !DILocation(line: 61, column: 20, scope: !1712)
!1714 = !DILocation(line: 61, column: 25, scope: !1712)
!1715 = !DILocation(line: 61, column: 42, scope: !1712)
!1716 = !DILocation(line: 61, column: 28, scope: !1712)
!1717 = !DILocation(line: 61, column: 61, scope: !1712)
!1718 = !DILocation(line: 61, column: 7, scope: !1695)
!1719 = !DILocation(line: 64, column: 11, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !294, line: 64, column: 11)
!1721 = distinct !DILexicalBlock(scope: !1712, file: !294, line: 62, column: 5)
!1722 = !DILocation(line: 64, column: 36, scope: !1720)
!1723 = !DILocation(line: 64, column: 11, scope: !1721)
!1724 = !DILocation(line: 66, column: 24, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !294, line: 65, column: 9)
!1726 = !DILocation(line: 70, column: 41, scope: !1725)
!1727 = !DILocation(line: 72, column: 9, scope: !1725)
!1728 = !DILocation(line: 84, column: 16, scope: !1695)
!1729 = !DILocation(line: 90, column: 27, scope: !1695)
!1730 = !DILocation(line: 92, column: 1, scope: !1695)
!1731 = distinct !DISubprogram(name: "clone_quoting_options", scope: !300, file: !300, line: 122, type: !1732, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1735)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!1734, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!1735 = !{!1736, !1737, !1738}
!1736 = !DILocalVariable(name: "o", arg: 1, scope: !1731, file: !300, line: 122, type: !1734)
!1737 = !DILocalVariable(name: "e", scope: !1731, file: !300, line: 124, type: !23)
!1738 = !DILocalVariable(name: "p", scope: !1731, file: !300, line: 125, type: !1734)
!1739 = !DILocation(line: 0, scope: !1731)
!1740 = !DILocation(line: 124, column: 11, scope: !1731)
!1741 = !DILocation(line: 125, column: 40, scope: !1731)
!1742 = !DILocation(line: 125, column: 31, scope: !1731)
!1743 = !DILocation(line: 127, column: 9, scope: !1731)
!1744 = !DILocation(line: 128, column: 3, scope: !1731)
!1745 = distinct !DISubprogram(name: "get_quoting_style", scope: !300, file: !300, line: 133, type: !1746, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1750)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!212, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!1750 = !{!1751}
!1751 = !DILocalVariable(name: "o", arg: 1, scope: !1745, file: !300, line: 133, type: !1748)
!1752 = !DILocation(line: 0, scope: !1745)
!1753 = !DILocation(line: 135, column: 11, scope: !1745)
!1754 = !DILocation(line: 135, column: 46, scope: !1745)
!1755 = !{!1756, !826, i64 0}
!1756 = !{!"quoting_options", !826, i64 0, !948, i64 4, !826, i64 8, !825, i64 40, !825, i64 48}
!1757 = !DILocation(line: 135, column: 3, scope: !1745)
!1758 = distinct !DISubprogram(name: "set_quoting_style", scope: !300, file: !300, line: 141, type: !1759, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1761)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1734, !212}
!1761 = !{!1762, !1763}
!1762 = !DILocalVariable(name: "o", arg: 1, scope: !1758, file: !300, line: 141, type: !1734)
!1763 = !DILocalVariable(name: "s", arg: 2, scope: !1758, file: !300, line: 141, type: !212)
!1764 = !DILocation(line: 0, scope: !1758)
!1765 = !DILocation(line: 143, column: 4, scope: !1758)
!1766 = !DILocation(line: 143, column: 39, scope: !1758)
!1767 = !DILocation(line: 143, column: 45, scope: !1758)
!1768 = !DILocation(line: 144, column: 1, scope: !1758)
!1769 = distinct !DISubprogram(name: "set_char_quoting", scope: !300, file: !300, line: 152, type: !1770, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!23, !1734, !26, !23}
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1779, !1780}
!1773 = !DILocalVariable(name: "o", arg: 1, scope: !1769, file: !300, line: 152, type: !1734)
!1774 = !DILocalVariable(name: "c", arg: 2, scope: !1769, file: !300, line: 152, type: !26)
!1775 = !DILocalVariable(name: "i", arg: 3, scope: !1769, file: !300, line: 152, type: !23)
!1776 = !DILocalVariable(name: "uc", scope: !1769, file: !300, line: 154, type: !242)
!1777 = !DILocalVariable(name: "p", scope: !1769, file: !300, line: 155, type: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1779 = !DILocalVariable(name: "shift", scope: !1769, file: !300, line: 157, type: !23)
!1780 = !DILocalVariable(name: "r", scope: !1769, file: !300, line: 158, type: !23)
!1781 = !DILocation(line: 0, scope: !1769)
!1782 = !DILocation(line: 156, column: 6, scope: !1769)
!1783 = !DILocation(line: 156, column: 62, scope: !1769)
!1784 = !DILocation(line: 156, column: 57, scope: !1769)
!1785 = !DILocation(line: 157, column: 15, scope: !1769)
!1786 = !DILocation(line: 158, column: 12, scope: !1769)
!1787 = !DILocation(line: 158, column: 15, scope: !1769)
!1788 = !DILocation(line: 158, column: 25, scope: !1769)
!1789 = !DILocation(line: 159, column: 13, scope: !1769)
!1790 = !DILocation(line: 159, column: 18, scope: !1769)
!1791 = !DILocation(line: 159, column: 23, scope: !1769)
!1792 = !DILocation(line: 159, column: 6, scope: !1769)
!1793 = !DILocation(line: 160, column: 3, scope: !1769)
!1794 = distinct !DISubprogram(name: "set_quoting_flags", scope: !300, file: !300, line: 168, type: !1795, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!23, !1734, !23}
!1797 = !{!1798, !1799, !1800}
!1798 = !DILocalVariable(name: "o", arg: 1, scope: !1794, file: !300, line: 168, type: !1734)
!1799 = !DILocalVariable(name: "i", arg: 2, scope: !1794, file: !300, line: 168, type: !23)
!1800 = !DILocalVariable(name: "r", scope: !1794, file: !300, line: 170, type: !23)
!1801 = !DILocation(line: 0, scope: !1794)
!1802 = !DILocation(line: 171, column: 8, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1794, file: !300, line: 171, column: 7)
!1804 = !DILocation(line: 171, column: 7, scope: !1794)
!1805 = !DILocation(line: 173, column: 10, scope: !1794)
!1806 = !{!1756, !948, i64 4}
!1807 = !DILocation(line: 174, column: 12, scope: !1794)
!1808 = !DILocation(line: 175, column: 3, scope: !1794)
!1809 = distinct !DISubprogram(name: "set_custom_quoting", scope: !300, file: !300, line: 179, type: !1810, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1812)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1734, !79, !79}
!1812 = !{!1813, !1814, !1815}
!1813 = !DILocalVariable(name: "o", arg: 1, scope: !1809, file: !300, line: 179, type: !1734)
!1814 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1809, file: !300, line: 180, type: !79)
!1815 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1809, file: !300, line: 180, type: !79)
!1816 = !DILocation(line: 0, scope: !1809)
!1817 = !DILocation(line: 182, column: 8, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1809, file: !300, line: 182, column: 7)
!1819 = !DILocation(line: 182, column: 7, scope: !1809)
!1820 = !DILocation(line: 184, column: 6, scope: !1809)
!1821 = !DILocation(line: 184, column: 12, scope: !1809)
!1822 = !DILocation(line: 185, column: 8, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1809, file: !300, line: 185, column: 7)
!1824 = !DILocation(line: 185, column: 19, scope: !1823)
!1825 = !DILocation(line: 186, column: 5, scope: !1823)
!1826 = !DILocation(line: 187, column: 6, scope: !1809)
!1827 = !DILocation(line: 187, column: 17, scope: !1809)
!1828 = !{!1756, !825, i64 40}
!1829 = !DILocation(line: 188, column: 6, scope: !1809)
!1830 = !DILocation(line: 188, column: 18, scope: !1809)
!1831 = !{!1756, !825, i64 48}
!1832 = !DILocation(line: 189, column: 1, scope: !1809)
!1833 = distinct !DISubprogram(name: "quotearg_buffer", scope: !300, file: !300, line: 784, type: !1834, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!71, !25, !71, !79, !71, !1748}
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1837 = !DILocalVariable(name: "buffer", arg: 1, scope: !1833, file: !300, line: 784, type: !25)
!1838 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1833, file: !300, line: 784, type: !71)
!1839 = !DILocalVariable(name: "arg", arg: 3, scope: !1833, file: !300, line: 785, type: !79)
!1840 = !DILocalVariable(name: "argsize", arg: 4, scope: !1833, file: !300, line: 785, type: !71)
!1841 = !DILocalVariable(name: "o", arg: 5, scope: !1833, file: !300, line: 786, type: !1748)
!1842 = !DILocalVariable(name: "p", scope: !1833, file: !300, line: 788, type: !1748)
!1843 = !DILocalVariable(name: "e", scope: !1833, file: !300, line: 789, type: !23)
!1844 = !DILocalVariable(name: "r", scope: !1833, file: !300, line: 790, type: !71)
!1845 = !DILocation(line: 0, scope: !1833)
!1846 = !DILocation(line: 788, column: 37, scope: !1833)
!1847 = !DILocation(line: 789, column: 11, scope: !1833)
!1848 = !DILocation(line: 791, column: 43, scope: !1833)
!1849 = !DILocation(line: 791, column: 53, scope: !1833)
!1850 = !DILocation(line: 791, column: 60, scope: !1833)
!1851 = !DILocation(line: 792, column: 43, scope: !1833)
!1852 = !DILocation(line: 792, column: 58, scope: !1833)
!1853 = !DILocation(line: 790, column: 14, scope: !1833)
!1854 = !DILocation(line: 793, column: 9, scope: !1833)
!1855 = !DILocation(line: 794, column: 3, scope: !1833)
!1856 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !300, file: !300, line: 256, type: !1857, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1861)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!71, !25, !71, !79, !71, !212, !23, !1859, !79, !79}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1886, !1887, !1888, !1889, !1890, !1893, !1894, !1912, !1915, !1916, !1923, !1926, !1927, !1928, !1929, !1930, !1931}
!1862 = !DILocalVariable(name: "buffer", arg: 1, scope: !1856, file: !300, line: 256, type: !25)
!1863 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1856, file: !300, line: 256, type: !71)
!1864 = !DILocalVariable(name: "arg", arg: 3, scope: !1856, file: !300, line: 257, type: !79)
!1865 = !DILocalVariable(name: "argsize", arg: 4, scope: !1856, file: !300, line: 257, type: !71)
!1866 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1856, file: !300, line: 258, type: !212)
!1867 = !DILocalVariable(name: "flags", arg: 6, scope: !1856, file: !300, line: 258, type: !23)
!1868 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1856, file: !300, line: 259, type: !1859)
!1869 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1856, file: !300, line: 260, type: !79)
!1870 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1856, file: !300, line: 261, type: !79)
!1871 = !DILocalVariable(name: "i", scope: !1856, file: !300, line: 263, type: !71)
!1872 = !DILocalVariable(name: "len", scope: !1856, file: !300, line: 264, type: !71)
!1873 = !DILocalVariable(name: "orig_buffersize", scope: !1856, file: !300, line: 265, type: !71)
!1874 = !DILocalVariable(name: "quote_string", scope: !1856, file: !300, line: 266, type: !79)
!1875 = !DILocalVariable(name: "quote_string_len", scope: !1856, file: !300, line: 267, type: !71)
!1876 = !DILocalVariable(name: "backslash_escapes", scope: !1856, file: !300, line: 268, type: !15)
!1877 = !DILocalVariable(name: "unibyte_locale", scope: !1856, file: !300, line: 269, type: !15)
!1878 = !DILocalVariable(name: "elide_outer_quotes", scope: !1856, file: !300, line: 270, type: !15)
!1879 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1856, file: !300, line: 271, type: !15)
!1880 = !DILocalVariable(name: "encountered_single_quote", scope: !1856, file: !300, line: 272, type: !15)
!1881 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1856, file: !300, line: 273, type: !15)
!1882 = !DILocalVariable(name: "c", scope: !1883, file: !300, line: 402, type: !242)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !300, line: 401, column: 5)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !300, line: 400, column: 3)
!1885 = distinct !DILexicalBlock(scope: !1856, file: !300, line: 400, column: 3)
!1886 = !DILocalVariable(name: "esc", scope: !1883, file: !300, line: 403, type: !242)
!1887 = !DILocalVariable(name: "is_right_quote", scope: !1883, file: !300, line: 404, type: !15)
!1888 = !DILocalVariable(name: "escaping", scope: !1883, file: !300, line: 405, type: !15)
!1889 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1883, file: !300, line: 406, type: !15)
!1890 = !DILocalVariable(name: "m", scope: !1891, file: !300, line: 610, type: !71)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 608, column: 11)
!1892 = distinct !DILexicalBlock(scope: !1883, file: !300, line: 426, column: 9)
!1893 = !DILocalVariable(name: "printable", scope: !1891, file: !300, line: 612, type: !15)
!1894 = !DILocalVariable(name: "mbstate", scope: !1895, file: !300, line: 621, type: !1897)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !300, line: 620, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !300, line: 614, column: 17)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1898, line: 6, baseType: !1899)
!1898 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "")
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1900, line: 21, baseType: !1901)
!1900 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "")
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1900, line: 13, size: 64, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1901, file: !1900, line: 15, baseType: !23, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1901, file: !1900, line: 20, baseType: !1905, size: 32, offset: 32)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1901, file: !1900, line: 16, size: 32, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1905, file: !1900, line: 18, baseType: !6, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1905, file: !1900, line: 19, baseType: !1909, size: 32)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !1910)
!1910 = !{!1911}
!1911 = !DISubrange(count: 4)
!1912 = !DILocalVariable(name: "w", scope: !1913, file: !300, line: 631, type: !1914)
!1913 = distinct !DILexicalBlock(scope: !1895, file: !300, line: 630, column: 19)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 74, baseType: !23)
!1915 = !DILocalVariable(name: "bytes", scope: !1913, file: !300, line: 632, type: !71)
!1916 = !DILocalVariable(name: "j", scope: !1917, file: !300, line: 657, type: !71)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !300, line: 656, column: 27)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !300, line: 654, column: 29)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !300, line: 649, column: 23)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !300, line: 641, column: 30)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !300, line: 636, column: 30)
!1922 = distinct !DILexicalBlock(scope: !1913, file: !300, line: 634, column: 25)
!1923 = !DILocalVariable(name: "ilim", scope: !1924, file: !300, line: 684, type: !71)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !300, line: 681, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1891, file: !300, line: 680, column: 17)
!1926 = !DILabel(scope: !1856, name: "process_input", file: !300, line: 314)
!1927 = !DILabel(scope: !1892, name: "c_and_shell_escape", file: !300, line: 512)
!1928 = !DILabel(scope: !1892, name: "c_escape", file: !300, line: 517)
!1929 = !DILabel(scope: !1883, name: "store_escape", file: !300, line: 719)
!1930 = !DILabel(scope: !1883, name: "store_c", file: !300, line: 722)
!1931 = !DILabel(scope: !1856, name: "force_outer_quoting_style", file: !300, line: 763)
!1932 = !DILocation(line: 0, scope: !1856)
!1933 = !DILocation(line: 269, column: 25, scope: !1856)
!1934 = !DILocation(line: 269, column: 36, scope: !1856)
!1935 = !DILocation(line: 270, column: 8, scope: !1856)
!1936 = !DILocation(line: 273, column: 3, scope: !1856)
!1937 = !DILocation(line: 265, column: 10, scope: !1856)
!1938 = !DILocation(line: 266, column: 15, scope: !1856)
!1939 = !DILocation(line: 267, column: 10, scope: !1856)
!1940 = !DILocation(line: 268, column: 8, scope: !1856)
!1941 = !DILocation(line: 271, column: 8, scope: !1856)
!1942 = !DILocation(line: 272, column: 8, scope: !1856)
!1943 = !DILocation(line: 273, column: 8, scope: !1856)
!1944 = !DILocation(line: 314, column: 2, scope: !1856)
!1945 = !DILocation(line: 316, column: 3, scope: !1856)
!1946 = !DILocation(line: 323, column: 11, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1856, file: !300, line: 317, column: 5)
!1948 = !DILocation(line: 323, column: 12, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1947, file: !300, line: 323, column: 11)
!1950 = !DILocation(line: 324, column: 9, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !300, line: 324, column: 9)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !300, line: 324, column: 9)
!1953 = !DILocation(line: 324, column: 9, scope: !1952)
!1954 = !DILocation(line: 362, column: 26, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !300, line: 340, column: 11)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !300, line: 339, column: 13)
!1957 = distinct !DILexicalBlock(scope: !1947, file: !300, line: 338, column: 7)
!1958 = !DILocation(line: 363, column: 27, scope: !1955)
!1959 = !DILocation(line: 364, column: 11, scope: !1955)
!1960 = !DILocation(line: 365, column: 14, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !300, line: 365, column: 13)
!1962 = !DILocation(line: 365, column: 13, scope: !1957)
!1963 = !DILocation(line: 366, column: 43, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !300, line: 366, column: 11)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !300, line: 366, column: 11)
!1966 = !DILocation(line: 366, column: 11, scope: !1965)
!1967 = !DILocation(line: 367, column: 13, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !300, line: 367, column: 13)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !300, line: 367, column: 13)
!1970 = !DILocation(line: 367, column: 13, scope: !1969)
!1971 = !DILocation(line: 366, column: 70, scope: !1964)
!1972 = distinct !{!1972, !1966, !1973, !867}
!1973 = !DILocation(line: 367, column: 13, scope: !1965)
!1974 = !DILocation(line: 264, column: 10, scope: !1856)
!1975 = !DILocation(line: 370, column: 28, scope: !1957)
!1976 = !DILocation(line: 372, column: 7, scope: !1947)
!1977 = !DILocation(line: 376, column: 7, scope: !1947)
!1978 = !DILocation(line: 379, column: 7, scope: !1947)
!1979 = !DILocation(line: 381, column: 12, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1947, file: !300, line: 381, column: 11)
!1981 = !DILocation(line: 381, column: 11, scope: !1947)
!1982 = !DILocation(line: 386, column: 12, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1947, file: !300, line: 386, column: 11)
!1984 = !DILocation(line: 386, column: 11, scope: !1947)
!1985 = !DILocation(line: 387, column: 9, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !300, line: 387, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !300, line: 387, column: 9)
!1988 = !DILocation(line: 387, column: 9, scope: !1987)
!1989 = !DILocation(line: 394, column: 7, scope: !1947)
!1990 = !DILocation(line: 397, column: 7, scope: !1947)
!1991 = !DILocation(line: 400, column: 8, scope: !1885)
!1992 = !DILocation(line: 0, scope: !1885)
!1993 = !DILocation(line: 400, column: 27, scope: !1884)
!1994 = !DILocation(line: 400, column: 19, scope: !1884)
!1995 = !DILocation(line: 400, column: 41, scope: !1884)
!1996 = !DILocation(line: 400, column: 48, scope: !1884)
!1997 = !DILocation(line: 400, column: 3, scope: !1885)
!1998 = !DILocation(line: 400, column: 60, scope: !1884)
!1999 = !DILocation(line: 0, scope: !1883)
!2000 = !DILocation(line: 409, column: 11, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1883, file: !300, line: 408, column: 11)
!2002 = !DILocation(line: 411, column: 17, scope: !2001)
!2003 = !DILocation(line: 412, column: 39, scope: !2001)
!2004 = !DILocation(line: 416, column: 32, scope: !2001)
!2005 = !DILocation(line: 412, column: 19, scope: !2001)
!2006 = !DILocation(line: 412, column: 15, scope: !2001)
!2007 = !DILocation(line: 417, column: 11, scope: !2001)
!2008 = !DILocation(line: 417, column: 26, scope: !2001)
!2009 = !DILocation(line: 417, column: 14, scope: !2001)
!2010 = !DILocation(line: 417, column: 63, scope: !2001)
!2011 = !DILocation(line: 408, column: 11, scope: !1883)
!2012 = !DILocation(line: 424, column: 11, scope: !1883)
!2013 = !DILocation(line: 425, column: 7, scope: !1883)
!2014 = !DILocation(line: 428, column: 15, scope: !1892)
!2015 = !DILocation(line: 430, column: 15, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !300, line: 430, column: 15)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !300, line: 429, column: 13)
!2018 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 428, column: 15)
!2019 = !DILocation(line: 430, column: 15, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2016, file: !300, line: 430, column: 15)
!2021 = !DILocation(line: 430, column: 15, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !300, line: 430, column: 15)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !300, line: 430, column: 15)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !300, line: 430, column: 15)
!2025 = !DILocation(line: 430, column: 15, scope: !2023)
!2026 = !DILocation(line: 430, column: 15, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !300, line: 430, column: 15)
!2028 = distinct !DILexicalBlock(scope: !2024, file: !300, line: 430, column: 15)
!2029 = !DILocation(line: 430, column: 15, scope: !2028)
!2030 = !DILocation(line: 430, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !300, line: 430, column: 15)
!2032 = distinct !DILexicalBlock(scope: !2024, file: !300, line: 430, column: 15)
!2033 = !DILocation(line: 430, column: 15, scope: !2032)
!2034 = !DILocation(line: 430, column: 15, scope: !2024)
!2035 = !DILocation(line: 430, column: 15, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !300, line: 430, column: 15)
!2037 = distinct !DILexicalBlock(scope: !2016, file: !300, line: 430, column: 15)
!2038 = !DILocation(line: 430, column: 15, scope: !2037)
!2039 = !DILocation(line: 438, column: 19, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2017, file: !300, line: 437, column: 19)
!2041 = !DILocation(line: 438, column: 48, scope: !2040)
!2042 = !DILocation(line: 438, column: 59, scope: !2040)
!2043 = !DILocation(line: 440, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !300, line: 440, column: 19)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !300, line: 440, column: 19)
!2046 = distinct !DILexicalBlock(scope: !2040, file: !300, line: 439, column: 17)
!2047 = !DILocation(line: 440, column: 19, scope: !2045)
!2048 = !DILocation(line: 441, column: 19, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !300, line: 441, column: 19)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !300, line: 441, column: 19)
!2051 = !DILocation(line: 441, column: 19, scope: !2050)
!2052 = !DILocation(line: 442, column: 17, scope: !2046)
!2053 = !DILocation(line: 449, column: 20, scope: !2018)
!2054 = !DILocation(line: 454, column: 11, scope: !1892)
!2055 = !DILocation(line: 457, column: 19, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 455, column: 13)
!2057 = !DILocation(line: 463, column: 19, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !300, line: 462, column: 19)
!2059 = !DILocation(line: 463, column: 47, scope: !2058)
!2060 = !DILocation(line: 463, column: 41, scope: !2058)
!2061 = !DILocation(line: 463, column: 52, scope: !2058)
!2062 = !DILocation(line: 462, column: 19, scope: !2056)
!2063 = !DILocation(line: 464, column: 25, scope: !2058)
!2064 = !DILocation(line: 464, column: 17, scope: !2058)
!2065 = !DILocation(line: 471, column: 25, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2058, file: !300, line: 465, column: 19)
!2067 = !DILocation(line: 475, column: 21, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !300, line: 475, column: 21)
!2069 = distinct !DILexicalBlock(scope: !2066, file: !300, line: 475, column: 21)
!2070 = !DILocation(line: 475, column: 21, scope: !2069)
!2071 = !DILocation(line: 476, column: 21, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !300, line: 476, column: 21)
!2073 = distinct !DILexicalBlock(scope: !2066, file: !300, line: 476, column: 21)
!2074 = !DILocation(line: 476, column: 21, scope: !2073)
!2075 = !DILocation(line: 477, column: 21, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !300, line: 477, column: 21)
!2077 = distinct !DILexicalBlock(scope: !2066, file: !300, line: 477, column: 21)
!2078 = !DILocation(line: 477, column: 21, scope: !2077)
!2079 = !DILocation(line: 478, column: 21, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !300, line: 478, column: 21)
!2081 = distinct !DILexicalBlock(scope: !2066, file: !300, line: 478, column: 21)
!2082 = !DILocation(line: 478, column: 21, scope: !2081)
!2083 = !DILocation(line: 479, column: 21, scope: !2066)
!2084 = !DILocation(line: 492, column: 31, scope: !1892)
!2085 = !DILocation(line: 493, column: 31, scope: !1892)
!2086 = !DILocation(line: 495, column: 31, scope: !1892)
!2087 = !DILocation(line: 496, column: 31, scope: !1892)
!2088 = !DILocation(line: 497, column: 31, scope: !1892)
!2089 = !DILocation(line: 500, column: 15, scope: !1892)
!2090 = !DILocation(line: 502, column: 19, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !300, line: 501, column: 13)
!2092 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 500, column: 15)
!2093 = !DILocation(line: 509, column: 33, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 509, column: 15)
!2095 = !DILocation(line: 0, scope: !1892)
!2096 = !DILocation(line: 512, column: 9, scope: !1892)
!2097 = !DILocation(line: 514, column: 15, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 513, column: 15)
!2099 = !DILocation(line: 517, column: 9, scope: !1892)
!2100 = !DILocation(line: 518, column: 15, scope: !1892)
!2101 = !DILocation(line: 526, column: 15, scope: !1892)
!2102 = !DILocation(line: 526, column: 40, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 526, column: 15)
!2104 = !DILocation(line: 526, column: 47, scope: !2103)
!2105 = !DILocation(line: 526, column: 18, scope: !2103)
!2106 = !DILocation(line: 530, column: 17, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 530, column: 15)
!2108 = !DILocation(line: 530, column: 15, scope: !1892)
!2109 = !DILocation(line: 535, column: 11, scope: !1892)
!2110 = !DILocation(line: 549, column: 15, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 548, column: 15)
!2112 = !DILocation(line: 556, column: 15, scope: !1892)
!2113 = !DILocation(line: 558, column: 19, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !300, line: 557, column: 13)
!2115 = distinct !DILexicalBlock(scope: !1892, file: !300, line: 556, column: 15)
!2116 = !DILocation(line: 561, column: 19, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !300, line: 561, column: 19)
!2118 = !DILocation(line: 561, column: 30, scope: !2117)
!2119 = !DILocation(line: 570, column: 15, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !300, line: 570, column: 15)
!2121 = distinct !DILexicalBlock(scope: !2114, file: !300, line: 570, column: 15)
!2122 = !DILocation(line: 570, column: 15, scope: !2121)
!2123 = !DILocation(line: 571, column: 15, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !300, line: 571, column: 15)
!2125 = distinct !DILexicalBlock(scope: !2114, file: !300, line: 571, column: 15)
!2126 = !DILocation(line: 571, column: 15, scope: !2125)
!2127 = !DILocation(line: 572, column: 15, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !300, line: 572, column: 15)
!2129 = distinct !DILexicalBlock(scope: !2114, file: !300, line: 572, column: 15)
!2130 = !DILocation(line: 572, column: 15, scope: !2129)
!2131 = !DILocation(line: 574, column: 13, scope: !2114)
!2132 = !DILocation(line: 614, column: 17, scope: !1891)
!2133 = !DILocation(line: 0, scope: !1891)
!2134 = !DILocation(line: 617, column: 29, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1896, file: !300, line: 615, column: 15)
!2136 = !DILocation(line: 617, column: 27, scope: !2135)
!2137 = !DILocation(line: 678, column: 40, scope: !1891)
!2138 = !DILocation(line: 680, column: 23, scope: !1925)
!2139 = !DILocation(line: 621, column: 17, scope: !1895)
!2140 = !DILocation(line: 621, column: 27, scope: !1895)
!2141 = !DILocalVariable(name: "__dest", arg: 1, scope: !2142, file: !2143, line: 57, type: !69)
!2142 = distinct !DISubprogram(name: "memset", scope: !2143, file: !2143, line: 57, type: !2144, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2146)
!2143 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "")
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!69, !69, !23, !71}
!2146 = !{!2141, !2147, !2148}
!2147 = !DILocalVariable(name: "__ch", arg: 2, scope: !2142, file: !2143, line: 57, type: !23)
!2148 = !DILocalVariable(name: "__len", arg: 3, scope: !2142, file: !2143, line: 57, type: !71)
!2149 = !DILocation(line: 0, scope: !2142, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 622, column: 17, scope: !1895)
!2151 = !DILocation(line: 59, column: 10, scope: !2142, inlinedAt: !2150)
!2152 = !DILocation(line: 626, column: 29, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1895, file: !300, line: 626, column: 21)
!2154 = !DILocation(line: 626, column: 21, scope: !1895)
!2155 = !DILocation(line: 627, column: 29, scope: !2153)
!2156 = !DILocation(line: 627, column: 19, scope: !2153)
!2157 = !DILocation(line: 629, column: 17, scope: !1895)
!2158 = !DILocation(line: 624, column: 19, scope: !1895)
!2159 = !DILocation(line: 625, column: 27, scope: !1895)
!2160 = !DILocation(line: 631, column: 21, scope: !1913)
!2161 = !DILocation(line: 632, column: 56, scope: !1913)
!2162 = !DILocation(line: 632, column: 50, scope: !1913)
!2163 = !DILocation(line: 633, column: 53, scope: !1913)
!2164 = !DILocation(line: 0, scope: !1913)
!2165 = !DILocation(line: 632, column: 36, scope: !1913)
!2166 = !DILocation(line: 634, column: 25, scope: !1913)
!2167 = !DILocation(line: 644, column: 38, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !1920, file: !300, line: 642, column: 23)
!2169 = !DILocation(line: 644, column: 48, scope: !2168)
!2170 = !DILocation(line: 644, column: 25, scope: !2168)
!2171 = !DILocation(line: 644, column: 51, scope: !2168)
!2172 = !DILocation(line: 645, column: 28, scope: !2168)
!2173 = !DILocation(line: 644, column: 34, scope: !2168)
!2174 = distinct !{!2174, !2170, !2172, !867}
!2175 = !DILocation(line: 655, column: 29, scope: !1918)
!2176 = !DILocation(line: 0, scope: !1917)
!2177 = !DILocation(line: 659, column: 49, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !300, line: 658, column: 29)
!2179 = distinct !DILexicalBlock(scope: !1917, file: !300, line: 658, column: 29)
!2180 = !DILocation(line: 659, column: 39, scope: !2178)
!2181 = !DILocation(line: 659, column: 31, scope: !2178)
!2182 = !DILocation(line: 658, column: 53, scope: !2178)
!2183 = !DILocation(line: 658, column: 43, scope: !2178)
!2184 = !DILocation(line: 658, column: 29, scope: !2179)
!2185 = distinct !{!2185, !2184, !2186, !867}
!2186 = !DILocation(line: 667, column: 33, scope: !2179)
!2187 = !DILocation(line: 674, column: 19, scope: !1895)
!2188 = !DILocation(line: 670, column: 41, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !1919, file: !300, line: 670, column: 29)
!2190 = !DILocation(line: 670, column: 31, scope: !2189)
!2191 = !DILocation(line: 670, column: 29, scope: !1919)
!2192 = !DILocation(line: 672, column: 27, scope: !1919)
!2193 = !DILocation(line: 675, column: 26, scope: !1895)
!2194 = !DILocation(line: 675, column: 24, scope: !1895)
!2195 = !DILocation(line: 674, column: 19, scope: !1913)
!2196 = distinct !{!2196, !2157, !2197, !867}
!2197 = !DILocation(line: 675, column: 44, scope: !1895)
!2198 = !DILocation(line: 676, column: 15, scope: !1896)
!2199 = !DILocation(line: 680, column: 19, scope: !1925)
!2200 = !DILocation(line: 680, column: 45, scope: !1925)
!2201 = !DILocation(line: 684, column: 33, scope: !1924)
!2202 = !DILocation(line: 0, scope: !1924)
!2203 = !DILocation(line: 686, column: 17, scope: !1924)
!2204 = !DILocation(line: 405, column: 12, scope: !1883)
!2205 = !DILocation(line: 688, column: 43, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !300, line: 688, column: 25)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !300, line: 687, column: 19)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !300, line: 686, column: 17)
!2209 = distinct !DILexicalBlock(scope: !1924, file: !300, line: 686, column: 17)
!2210 = !DILocation(line: 690, column: 25, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !300, line: 690, column: 25)
!2212 = distinct !DILexicalBlock(scope: !2206, file: !300, line: 689, column: 23)
!2213 = !DILocation(line: 690, column: 25, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2211, file: !300, line: 690, column: 25)
!2215 = !DILocation(line: 690, column: 25, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !300, line: 690, column: 25)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !300, line: 690, column: 25)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !300, line: 690, column: 25)
!2219 = !DILocation(line: 690, column: 25, scope: !2217)
!2220 = !DILocation(line: 690, column: 25, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !300, line: 690, column: 25)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !300, line: 690, column: 25)
!2223 = !DILocation(line: 690, column: 25, scope: !2222)
!2224 = !DILocation(line: 690, column: 25, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !300, line: 690, column: 25)
!2226 = distinct !DILexicalBlock(scope: !2218, file: !300, line: 690, column: 25)
!2227 = !DILocation(line: 690, column: 25, scope: !2226)
!2228 = !DILocation(line: 690, column: 25, scope: !2218)
!2229 = !DILocation(line: 690, column: 25, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !300, line: 690, column: 25)
!2231 = distinct !DILexicalBlock(scope: !2211, file: !300, line: 690, column: 25)
!2232 = !DILocation(line: 690, column: 25, scope: !2231)
!2233 = !DILocation(line: 691, column: 25, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !300, line: 691, column: 25)
!2235 = distinct !DILexicalBlock(scope: !2212, file: !300, line: 691, column: 25)
!2236 = !DILocation(line: 691, column: 25, scope: !2235)
!2237 = !DILocation(line: 692, column: 25, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !300, line: 692, column: 25)
!2239 = distinct !DILexicalBlock(scope: !2212, file: !300, line: 692, column: 25)
!2240 = !DILocation(line: 692, column: 25, scope: !2239)
!2241 = !DILocation(line: 693, column: 38, scope: !2212)
!2242 = !DILocation(line: 693, column: 33, scope: !2212)
!2243 = !DILocation(line: 694, column: 23, scope: !2212)
!2244 = !DILocation(line: 695, column: 30, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2206, file: !300, line: 695, column: 30)
!2246 = !DILocation(line: 695, column: 30, scope: !2206)
!2247 = !DILocation(line: 697, column: 25, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !300, line: 697, column: 25)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !300, line: 697, column: 25)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !300, line: 696, column: 23)
!2251 = !DILocation(line: 697, column: 25, scope: !2249)
!2252 = !DILocation(line: 699, column: 23, scope: !2250)
!2253 = !DILocation(line: 700, column: 35, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2207, file: !300, line: 700, column: 25)
!2255 = !DILocation(line: 700, column: 30, scope: !2254)
!2256 = !DILocation(line: 700, column: 25, scope: !2207)
!2257 = !DILocation(line: 702, column: 21, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !300, line: 702, column: 21)
!2259 = distinct !DILexicalBlock(scope: !2207, file: !300, line: 702, column: 21)
!2260 = !DILocation(line: 702, column: 21, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !300, line: 702, column: 21)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !300, line: 702, column: 21)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !300, line: 702, column: 21)
!2264 = !DILocation(line: 702, column: 21, scope: !2262)
!2265 = !DILocation(line: 702, column: 21, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !300, line: 702, column: 21)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !300, line: 702, column: 21)
!2268 = !DILocation(line: 702, column: 21, scope: !2267)
!2269 = !DILocation(line: 702, column: 21, scope: !2263)
!2270 = !DILocation(line: 0, scope: !2207)
!2271 = !DILocation(line: 703, column: 21, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !300, line: 703, column: 21)
!2273 = distinct !DILexicalBlock(scope: !2207, file: !300, line: 703, column: 21)
!2274 = !DILocation(line: 703, column: 21, scope: !2273)
!2275 = !DILocation(line: 704, column: 25, scope: !2207)
!2276 = !DILocation(line: 686, column: 17, scope: !2208)
!2277 = distinct !{!2277, !2278, !2279}
!2278 = !DILocation(line: 686, column: 17, scope: !2209)
!2279 = !DILocation(line: 705, column: 19, scope: !2209)
!2280 = !DILocation(line: 416, column: 30, scope: !2001)
!2281 = !DILocation(line: 712, column: 34, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1883, file: !300, line: 712, column: 11)
!2283 = !DILocation(line: 715, column: 35, scope: !2282)
!2284 = !DILocation(line: 715, column: 17, scope: !2282)
!2285 = !DILocation(line: 715, column: 47, scope: !2282)
!2286 = !DILocation(line: 715, column: 65, scope: !2282)
!2287 = !DILocation(line: 716, column: 11, scope: !2282)
!2288 = !DILocation(line: 712, column: 11, scope: !1883)
!2289 = !DILocation(line: 400, column: 10, scope: !1885)
!2290 = !DILocation(line: 719, column: 5, scope: !1883)
!2291 = !DILocation(line: 720, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !1883, file: !300, line: 720, column: 7)
!2293 = !DILocation(line: 720, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2292, file: !300, line: 720, column: 7)
!2295 = !DILocation(line: 720, column: 7, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !300, line: 720, column: 7)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !300, line: 720, column: 7)
!2298 = distinct !DILexicalBlock(scope: !2294, file: !300, line: 720, column: 7)
!2299 = !DILocation(line: 720, column: 7, scope: !2297)
!2300 = !DILocation(line: 720, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !300, line: 720, column: 7)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !300, line: 720, column: 7)
!2303 = !DILocation(line: 720, column: 7, scope: !2302)
!2304 = !DILocation(line: 720, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !300, line: 720, column: 7)
!2306 = distinct !DILexicalBlock(scope: !2298, file: !300, line: 720, column: 7)
!2307 = !DILocation(line: 720, column: 7, scope: !2306)
!2308 = !DILocation(line: 720, column: 7, scope: !2298)
!2309 = !DILocation(line: 720, column: 7, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !300, line: 720, column: 7)
!2311 = distinct !DILexicalBlock(scope: !2292, file: !300, line: 720, column: 7)
!2312 = !DILocation(line: 720, column: 7, scope: !2311)
!2313 = !DILocation(line: 722, column: 5, scope: !1883)
!2314 = !DILocation(line: 723, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !300, line: 723, column: 7)
!2316 = distinct !DILexicalBlock(scope: !1883, file: !300, line: 723, column: 7)
!2317 = !DILocation(line: 424, column: 9, scope: !1883)
!2318 = !DILocation(line: 723, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !300, line: 723, column: 7)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !300, line: 723, column: 7)
!2321 = distinct !DILexicalBlock(scope: !2315, file: !300, line: 723, column: 7)
!2322 = !DILocation(line: 723, column: 7, scope: !2320)
!2323 = !DILocation(line: 723, column: 7, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !300, line: 723, column: 7)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !300, line: 723, column: 7)
!2326 = !DILocation(line: 723, column: 7, scope: !2325)
!2327 = !DILocation(line: 723, column: 7, scope: !2321)
!2328 = !DILocation(line: 724, column: 7, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !300, line: 724, column: 7)
!2330 = distinct !DILexicalBlock(scope: !1883, file: !300, line: 724, column: 7)
!2331 = !DILocation(line: 724, column: 7, scope: !2330)
!2332 = !DILocation(line: 726, column: 13, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1883, file: !300, line: 726, column: 11)
!2334 = !DILocation(line: 726, column: 11, scope: !1883)
!2335 = !DILocation(line: 728, column: 5, scope: !1884)
!2336 = !DILocation(line: 400, column: 75, scope: !1884)
!2337 = !DILocation(line: 400, column: 3, scope: !1884)
!2338 = distinct !{!2338, !1997, !2339, !867}
!2339 = !DILocation(line: 728, column: 5, scope: !1885)
!2340 = !DILocation(line: 730, column: 11, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !1856, file: !300, line: 730, column: 7)
!2342 = !DILocation(line: 730, column: 16, scope: !2341)
!2343 = !DILocation(line: 738, column: 51, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !1856, file: !300, line: 738, column: 7)
!2345 = !DILocation(line: 741, column: 11, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !300, line: 741, column: 11)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !300, line: 740, column: 5)
!2348 = !DILocation(line: 741, column: 11, scope: !2347)
!2349 = !DILocation(line: 742, column: 16, scope: !2346)
!2350 = !DILocation(line: 742, column: 9, scope: !2346)
!2351 = !DILocation(line: 746, column: 18, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2346, file: !300, line: 746, column: 16)
!2353 = !DILocation(line: 746, column: 29, scope: !2352)
!2354 = !DILocation(line: 755, column: 7, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !1856, file: !300, line: 755, column: 7)
!2356 = !DILocation(line: 755, column: 20, scope: !2355)
!2357 = !DILocation(line: 756, column: 12, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !300, line: 756, column: 5)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !300, line: 756, column: 5)
!2360 = !DILocation(line: 756, column: 5, scope: !2359)
!2361 = !DILocation(line: 757, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !300, line: 757, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2358, file: !300, line: 757, column: 7)
!2364 = !DILocation(line: 757, column: 7, scope: !2363)
!2365 = !DILocation(line: 756, column: 39, scope: !2358)
!2366 = distinct !{!2366, !2360, !2367, !867}
!2367 = !DILocation(line: 757, column: 7, scope: !2359)
!2368 = !DILocation(line: 759, column: 11, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !1856, file: !300, line: 759, column: 7)
!2370 = !DILocation(line: 759, column: 7, scope: !1856)
!2371 = !DILocation(line: 760, column: 5, scope: !2369)
!2372 = !DILocation(line: 760, column: 17, scope: !2369)
!2373 = !DILocation(line: 763, column: 2, scope: !1856)
!2374 = !DILocation(line: 766, column: 51, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !1856, file: !300, line: 766, column: 7)
!2376 = !DILocation(line: 766, column: 21, scope: !2375)
!2377 = !DILocation(line: 770, column: 42, scope: !1856)
!2378 = !DILocation(line: 768, column: 10, scope: !1856)
!2379 = !DILocation(line: 768, column: 3, scope: !1856)
!2380 = !DILocation(line: 772, column: 1, scope: !1856)
!2381 = distinct !DISubprogram(name: "gettext_quote", scope: !300, file: !300, line: 207, type: !2382, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!79, !79, !212}
!2384 = !{!2385, !2386, !2387, !2388}
!2385 = !DILocalVariable(name: "msgid", arg: 1, scope: !2381, file: !300, line: 207, type: !79)
!2386 = !DILocalVariable(name: "s", arg: 2, scope: !2381, file: !300, line: 207, type: !212)
!2387 = !DILocalVariable(name: "translation", scope: !2381, file: !300, line: 209, type: !79)
!2388 = !DILocalVariable(name: "locale_code", scope: !2381, file: !300, line: 210, type: !79)
!2389 = !DILocation(line: 0, scope: !2381)
!2390 = !DILocation(line: 209, column: 29, scope: !2381)
!2391 = !DILocation(line: 212, column: 19, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2381, file: !300, line: 212, column: 7)
!2393 = !DILocation(line: 212, column: 7, scope: !2381)
!2394 = !DILocation(line: 233, column: 17, scope: !2381)
!2395 = !DILocalVariable(name: "s1", arg: 1, scope: !2396, file: !2397, line: 160, type: !79)
!2396 = distinct !DISubprogram(name: "strcaseeq0", scope: !2397, file: !2397, line: 160, type: !2398, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2400)
!2397 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/life/projects/github.com/llir/llvm/testdata/coreutils/coreutils-8.32")
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26, !26, !26}
!2400 = !{!2395, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410}
!2401 = !DILocalVariable(name: "s2", arg: 2, scope: !2396, file: !2397, line: 160, type: !79)
!2402 = !DILocalVariable(name: "s20", arg: 3, scope: !2396, file: !2397, line: 160, type: !26)
!2403 = !DILocalVariable(name: "s21", arg: 4, scope: !2396, file: !2397, line: 160, type: !26)
!2404 = !DILocalVariable(name: "s22", arg: 5, scope: !2396, file: !2397, line: 160, type: !26)
!2405 = !DILocalVariable(name: "s23", arg: 6, scope: !2396, file: !2397, line: 160, type: !26)
!2406 = !DILocalVariable(name: "s24", arg: 7, scope: !2396, file: !2397, line: 160, type: !26)
!2407 = !DILocalVariable(name: "s25", arg: 8, scope: !2396, file: !2397, line: 160, type: !26)
!2408 = !DILocalVariable(name: "s26", arg: 9, scope: !2396, file: !2397, line: 160, type: !26)
!2409 = !DILocalVariable(name: "s27", arg: 10, scope: !2396, file: !2397, line: 160, type: !26)
!2410 = !DILocalVariable(name: "s28", arg: 11, scope: !2396, file: !2397, line: 160, type: !26)
!2411 = !DILocation(line: 0, scope: !2396, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 234, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2381, file: !300, line: 234, column: 7)
!2414 = !DILocation(line: 162, column: 7, scope: !2415, inlinedAt: !2412)
!2415 = distinct !DILexicalBlock(scope: !2396, file: !2397, line: 162, column: 7)
!2416 = !DILocalVariable(name: "s1", arg: 1, scope: !2417, file: !2397, line: 146, type: !79)
!2417 = distinct !DISubprogram(name: "strcaseeq1", scope: !2397, file: !2397, line: 146, type: !2418, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26, !26}
!2420 = !{!2416, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429}
!2421 = !DILocalVariable(name: "s2", arg: 2, scope: !2417, file: !2397, line: 146, type: !79)
!2422 = !DILocalVariable(name: "s21", arg: 3, scope: !2417, file: !2397, line: 146, type: !26)
!2423 = !DILocalVariable(name: "s22", arg: 4, scope: !2417, file: !2397, line: 146, type: !26)
!2424 = !DILocalVariable(name: "s23", arg: 5, scope: !2417, file: !2397, line: 146, type: !26)
!2425 = !DILocalVariable(name: "s24", arg: 6, scope: !2417, file: !2397, line: 146, type: !26)
!2426 = !DILocalVariable(name: "s25", arg: 7, scope: !2417, file: !2397, line: 146, type: !26)
!2427 = !DILocalVariable(name: "s26", arg: 8, scope: !2417, file: !2397, line: 146, type: !26)
!2428 = !DILocalVariable(name: "s27", arg: 9, scope: !2417, file: !2397, line: 146, type: !26)
!2429 = !DILocalVariable(name: "s28", arg: 10, scope: !2417, file: !2397, line: 146, type: !26)
!2430 = !DILocation(line: 0, scope: !2417, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 167, column: 16, scope: !2432, inlinedAt: !2412)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !2397, line: 164, column: 11)
!2433 = distinct !DILexicalBlock(scope: !2415, file: !2397, line: 163, column: 5)
!2434 = !DILocation(line: 148, column: 7, scope: !2435, inlinedAt: !2431)
!2435 = distinct !DILexicalBlock(scope: !2417, file: !2397, line: 148, column: 7)
!2436 = !DILocalVariable(name: "s1", arg: 1, scope: !2437, file: !2397, line: 132, type: !79)
!2437 = distinct !DISubprogram(name: "strcaseeq2", scope: !2397, file: !2397, line: 132, type: !2438, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26, !26}
!2440 = !{!2436, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!2441 = !DILocalVariable(name: "s2", arg: 2, scope: !2437, file: !2397, line: 132, type: !79)
!2442 = !DILocalVariable(name: "s22", arg: 3, scope: !2437, file: !2397, line: 132, type: !26)
!2443 = !DILocalVariable(name: "s23", arg: 4, scope: !2437, file: !2397, line: 132, type: !26)
!2444 = !DILocalVariable(name: "s24", arg: 5, scope: !2437, file: !2397, line: 132, type: !26)
!2445 = !DILocalVariable(name: "s25", arg: 6, scope: !2437, file: !2397, line: 132, type: !26)
!2446 = !DILocalVariable(name: "s26", arg: 7, scope: !2437, file: !2397, line: 132, type: !26)
!2447 = !DILocalVariable(name: "s27", arg: 8, scope: !2437, file: !2397, line: 132, type: !26)
!2448 = !DILocalVariable(name: "s28", arg: 9, scope: !2437, file: !2397, line: 132, type: !26)
!2449 = !DILocation(line: 0, scope: !2437, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 153, column: 16, scope: !2451, inlinedAt: !2431)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !2397, line: 150, column: 11)
!2452 = distinct !DILexicalBlock(scope: !2435, file: !2397, line: 149, column: 5)
!2453 = !DILocation(line: 134, column: 7, scope: !2454, inlinedAt: !2450)
!2454 = distinct !DILexicalBlock(scope: !2437, file: !2397, line: 134, column: 7)
!2455 = !DILocalVariable(name: "s1", arg: 1, scope: !2456, file: !2397, line: 118, type: !79)
!2456 = distinct !DISubprogram(name: "strcaseeq3", scope: !2397, file: !2397, line: 118, type: !2457, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!23, !79, !79, !26, !26, !26, !26, !26, !26}
!2459 = !{!2455, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2460 = !DILocalVariable(name: "s2", arg: 2, scope: !2456, file: !2397, line: 118, type: !79)
!2461 = !DILocalVariable(name: "s23", arg: 3, scope: !2456, file: !2397, line: 118, type: !26)
!2462 = !DILocalVariable(name: "s24", arg: 4, scope: !2456, file: !2397, line: 118, type: !26)
!2463 = !DILocalVariable(name: "s25", arg: 5, scope: !2456, file: !2397, line: 118, type: !26)
!2464 = !DILocalVariable(name: "s26", arg: 6, scope: !2456, file: !2397, line: 118, type: !26)
!2465 = !DILocalVariable(name: "s27", arg: 7, scope: !2456, file: !2397, line: 118, type: !26)
!2466 = !DILocalVariable(name: "s28", arg: 8, scope: !2456, file: !2397, line: 118, type: !26)
!2467 = !DILocation(line: 0, scope: !2456, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 139, column: 16, scope: !2469, inlinedAt: !2450)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !2397, line: 136, column: 11)
!2470 = distinct !DILexicalBlock(scope: !2454, file: !2397, line: 135, column: 5)
!2471 = !DILocation(line: 120, column: 7, scope: !2472, inlinedAt: !2468)
!2472 = distinct !DILexicalBlock(scope: !2456, file: !2397, line: 120, column: 7)
!2473 = !DILocation(line: 120, column: 7, scope: !2456, inlinedAt: !2468)
!2474 = !DILocalVariable(name: "s1", arg: 1, scope: !2475, file: !2397, line: 104, type: !79)
!2475 = distinct !DISubprogram(name: "strcaseeq4", scope: !2397, file: !2397, line: 104, type: !2476, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!23, !79, !79, !26, !26, !26, !26, !26}
!2478 = !{!2474, !2479, !2480, !2481, !2482, !2483, !2484}
!2479 = !DILocalVariable(name: "s2", arg: 2, scope: !2475, file: !2397, line: 104, type: !79)
!2480 = !DILocalVariable(name: "s24", arg: 3, scope: !2475, file: !2397, line: 104, type: !26)
!2481 = !DILocalVariable(name: "s25", arg: 4, scope: !2475, file: !2397, line: 104, type: !26)
!2482 = !DILocalVariable(name: "s26", arg: 5, scope: !2475, file: !2397, line: 104, type: !26)
!2483 = !DILocalVariable(name: "s27", arg: 6, scope: !2475, file: !2397, line: 104, type: !26)
!2484 = !DILocalVariable(name: "s28", arg: 7, scope: !2475, file: !2397, line: 104, type: !26)
!2485 = !DILocation(line: 0, scope: !2475, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 125, column: 16, scope: !2487, inlinedAt: !2468)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !2397, line: 122, column: 11)
!2488 = distinct !DILexicalBlock(scope: !2472, file: !2397, line: 121, column: 5)
!2489 = !DILocation(line: 106, column: 7, scope: !2490, inlinedAt: !2486)
!2490 = distinct !DILexicalBlock(scope: !2475, file: !2397, line: 106, column: 7)
!2491 = !DILocation(line: 106, column: 7, scope: !2475, inlinedAt: !2486)
!2492 = !DILocalVariable(name: "s1", arg: 1, scope: !2493, file: !2397, line: 90, type: !79)
!2493 = distinct !DISubprogram(name: "strcaseeq5", scope: !2397, file: !2397, line: 90, type: !2494, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!23, !79, !79, !26, !26, !26, !26}
!2496 = !{!2492, !2497, !2498, !2499, !2500, !2501}
!2497 = !DILocalVariable(name: "s2", arg: 2, scope: !2493, file: !2397, line: 90, type: !79)
!2498 = !DILocalVariable(name: "s25", arg: 3, scope: !2493, file: !2397, line: 90, type: !26)
!2499 = !DILocalVariable(name: "s26", arg: 4, scope: !2493, file: !2397, line: 90, type: !26)
!2500 = !DILocalVariable(name: "s27", arg: 5, scope: !2493, file: !2397, line: 90, type: !26)
!2501 = !DILocalVariable(name: "s28", arg: 6, scope: !2493, file: !2397, line: 90, type: !26)
!2502 = !DILocation(line: 0, scope: !2493, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 111, column: 16, scope: !2504, inlinedAt: !2486)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !2397, line: 108, column: 11)
!2505 = distinct !DILexicalBlock(scope: !2490, file: !2397, line: 107, column: 5)
!2506 = !DILocation(line: 92, column: 7, scope: !2507, inlinedAt: !2503)
!2507 = distinct !DILexicalBlock(scope: !2493, file: !2397, line: 92, column: 7)
!2508 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !2503)
!2509 = !DILocation(line: 235, column: 12, scope: !2413)
!2510 = !DILocation(line: 235, column: 21, scope: !2413)
!2511 = !DILocation(line: 235, column: 5, scope: !2413)
!2512 = !DILocation(line: 0, scope: !2417, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 167, column: 16, scope: !2432, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 236, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2381, file: !300, line: 236, column: 7)
!2516 = !DILocation(line: 148, column: 7, scope: !2435, inlinedAt: !2513)
!2517 = !DILocation(line: 0, scope: !2437, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 153, column: 16, scope: !2451, inlinedAt: !2513)
!2519 = !DILocation(line: 134, column: 7, scope: !2454, inlinedAt: !2518)
!2520 = !DILocation(line: 134, column: 7, scope: !2437, inlinedAt: !2518)
!2521 = !DILocation(line: 0, scope: !2456, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 139, column: 16, scope: !2469, inlinedAt: !2518)
!2523 = !DILocation(line: 120, column: 7, scope: !2472, inlinedAt: !2522)
!2524 = !DILocation(line: 120, column: 7, scope: !2456, inlinedAt: !2522)
!2525 = !DILocation(line: 0, scope: !2475, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 125, column: 16, scope: !2487, inlinedAt: !2522)
!2527 = !DILocation(line: 106, column: 7, scope: !2490, inlinedAt: !2526)
!2528 = !DILocation(line: 106, column: 7, scope: !2475, inlinedAt: !2526)
!2529 = !DILocation(line: 0, scope: !2493, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 111, column: 16, scope: !2504, inlinedAt: !2526)
!2531 = !DILocation(line: 92, column: 7, scope: !2507, inlinedAt: !2530)
!2532 = !DILocation(line: 92, column: 7, scope: !2493, inlinedAt: !2530)
!2533 = !DILocalVariable(name: "s1", arg: 1, scope: !2534, file: !2397, line: 76, type: !79)
!2534 = distinct !DISubprogram(name: "strcaseeq6", scope: !2397, file: !2397, line: 76, type: !2535, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!23, !79, !79, !26, !26, !26}
!2537 = !{!2533, !2538, !2539, !2540, !2541}
!2538 = !DILocalVariable(name: "s2", arg: 2, scope: !2534, file: !2397, line: 76, type: !79)
!2539 = !DILocalVariable(name: "s26", arg: 3, scope: !2534, file: !2397, line: 76, type: !26)
!2540 = !DILocalVariable(name: "s27", arg: 4, scope: !2534, file: !2397, line: 76, type: !26)
!2541 = !DILocalVariable(name: "s28", arg: 5, scope: !2534, file: !2397, line: 76, type: !26)
!2542 = !DILocation(line: 0, scope: !2534, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 97, column: 16, scope: !2544, inlinedAt: !2530)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !2397, line: 94, column: 11)
!2545 = distinct !DILexicalBlock(scope: !2507, file: !2397, line: 93, column: 5)
!2546 = !DILocation(line: 78, column: 7, scope: !2547, inlinedAt: !2543)
!2547 = distinct !DILexicalBlock(scope: !2534, file: !2397, line: 78, column: 7)
!2548 = !DILocation(line: 78, column: 7, scope: !2534, inlinedAt: !2543)
!2549 = !DILocalVariable(name: "s1", arg: 1, scope: !2550, file: !2397, line: 62, type: !79)
!2550 = distinct !DISubprogram(name: "strcaseeq7", scope: !2397, file: !2397, line: 62, type: !2551, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!23, !79, !79, !26, !26}
!2553 = !{!2549, !2554, !2555, !2556}
!2554 = !DILocalVariable(name: "s2", arg: 2, scope: !2550, file: !2397, line: 62, type: !79)
!2555 = !DILocalVariable(name: "s27", arg: 3, scope: !2550, file: !2397, line: 62, type: !26)
!2556 = !DILocalVariable(name: "s28", arg: 4, scope: !2550, file: !2397, line: 62, type: !26)
!2557 = !DILocation(line: 0, scope: !2550, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 83, column: 16, scope: !2559, inlinedAt: !2543)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !2397, line: 80, column: 11)
!2560 = distinct !DILexicalBlock(scope: !2547, file: !2397, line: 79, column: 5)
!2561 = !DILocation(line: 64, column: 7, scope: !2562, inlinedAt: !2558)
!2562 = distinct !DILexicalBlock(scope: !2550, file: !2397, line: 64, column: 7)
!2563 = !DILocation(line: 236, column: 7, scope: !2381)
!2564 = !DILocation(line: 237, column: 12, scope: !2515)
!2565 = !DILocation(line: 237, column: 21, scope: !2515)
!2566 = !DILocation(line: 237, column: 5, scope: !2515)
!2567 = !DILocation(line: 239, column: 13, scope: !2381)
!2568 = !DILocation(line: 239, column: 11, scope: !2381)
!2569 = !DILocation(line: 239, column: 3, scope: !2381)
!2570 = !DILocation(line: 240, column: 1, scope: !2381)
!2571 = !DISubprogram(name: "iswprint", scope: !2572, file: !2572, line: 120, type: !2573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!2572 = !DIFile(filename: "/usr/include/bits/wctype-wchar.h", directory: "")
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!23, !6}
!2575 = !DISubprogram(name: "mbsinit", scope: !2576, file: !2576, line: 292, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!2576 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!23, !2579}
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1901)
!2581 = distinct !DISubprogram(name: "quotearg_alloc", scope: !300, file: !300, line: 799, type: !2582, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!25, !79, !71, !1748}
!2584 = !{!2585, !2586, !2587}
!2585 = !DILocalVariable(name: "arg", arg: 1, scope: !2581, file: !300, line: 799, type: !79)
!2586 = !DILocalVariable(name: "argsize", arg: 2, scope: !2581, file: !300, line: 799, type: !71)
!2587 = !DILocalVariable(name: "o", arg: 3, scope: !2581, file: !300, line: 800, type: !1748)
!2588 = !DILocation(line: 0, scope: !2581)
!2589 = !DILocalVariable(name: "arg", arg: 1, scope: !2590, file: !300, line: 812, type: !79)
!2590 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !300, file: !300, line: 812, type: !2591, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!25, !79, !71, !388, !1748}
!2593 = !{!2589, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601}
!2594 = !DILocalVariable(name: "argsize", arg: 2, scope: !2590, file: !300, line: 812, type: !71)
!2595 = !DILocalVariable(name: "size", arg: 3, scope: !2590, file: !300, line: 812, type: !388)
!2596 = !DILocalVariable(name: "o", arg: 4, scope: !2590, file: !300, line: 813, type: !1748)
!2597 = !DILocalVariable(name: "p", scope: !2590, file: !300, line: 815, type: !1748)
!2598 = !DILocalVariable(name: "e", scope: !2590, file: !300, line: 816, type: !23)
!2599 = !DILocalVariable(name: "flags", scope: !2590, file: !300, line: 818, type: !23)
!2600 = !DILocalVariable(name: "bufsize", scope: !2590, file: !300, line: 819, type: !71)
!2601 = !DILocalVariable(name: "buf", scope: !2590, file: !300, line: 823, type: !25)
!2602 = !DILocation(line: 0, scope: !2590, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 802, column: 10, scope: !2581)
!2604 = !DILocation(line: 815, column: 37, scope: !2590, inlinedAt: !2603)
!2605 = !DILocation(line: 816, column: 11, scope: !2590, inlinedAt: !2603)
!2606 = !DILocation(line: 818, column: 18, scope: !2590, inlinedAt: !2603)
!2607 = !DILocation(line: 818, column: 24, scope: !2590, inlinedAt: !2603)
!2608 = !DILocation(line: 819, column: 69, scope: !2590, inlinedAt: !2603)
!2609 = !DILocation(line: 820, column: 53, scope: !2590, inlinedAt: !2603)
!2610 = !DILocation(line: 821, column: 49, scope: !2590, inlinedAt: !2603)
!2611 = !DILocation(line: 822, column: 49, scope: !2590, inlinedAt: !2603)
!2612 = !DILocation(line: 819, column: 20, scope: !2590, inlinedAt: !2603)
!2613 = !DILocation(line: 822, column: 62, scope: !2590, inlinedAt: !2603)
!2614 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !384, line: 216, type: !71)
!2615 = distinct !DISubprogram(name: "xcharalloc", scope: !384, file: !384, line: 216, type: !2616, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2618)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!25, !71}
!2618 = !{!2614}
!2619 = !DILocation(line: 0, scope: !2615, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 823, column: 15, scope: !2590, inlinedAt: !2603)
!2621 = !DILocation(line: 218, column: 10, scope: !2615, inlinedAt: !2620)
!2622 = !DILocation(line: 824, column: 60, scope: !2590, inlinedAt: !2603)
!2623 = !DILocation(line: 826, column: 32, scope: !2590, inlinedAt: !2603)
!2624 = !DILocation(line: 826, column: 47, scope: !2590, inlinedAt: !2603)
!2625 = !DILocation(line: 824, column: 3, scope: !2590, inlinedAt: !2603)
!2626 = !DILocation(line: 827, column: 9, scope: !2590, inlinedAt: !2603)
!2627 = !DILocation(line: 802, column: 3, scope: !2581)
!2628 = !DILocation(line: 0, scope: !2590)
!2629 = !DILocation(line: 815, column: 37, scope: !2590)
!2630 = !DILocation(line: 816, column: 11, scope: !2590)
!2631 = !DILocation(line: 818, column: 18, scope: !2590)
!2632 = !DILocation(line: 818, column: 27, scope: !2590)
!2633 = !DILocation(line: 818, column: 24, scope: !2590)
!2634 = !DILocation(line: 819, column: 69, scope: !2590)
!2635 = !DILocation(line: 820, column: 53, scope: !2590)
!2636 = !DILocation(line: 821, column: 49, scope: !2590)
!2637 = !DILocation(line: 822, column: 49, scope: !2590)
!2638 = !DILocation(line: 819, column: 20, scope: !2590)
!2639 = !DILocation(line: 822, column: 62, scope: !2590)
!2640 = !DILocation(line: 0, scope: !2615, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 823, column: 15, scope: !2590)
!2642 = !DILocation(line: 218, column: 10, scope: !2615, inlinedAt: !2641)
!2643 = !DILocation(line: 824, column: 60, scope: !2590)
!2644 = !DILocation(line: 826, column: 32, scope: !2590)
!2645 = !DILocation(line: 826, column: 47, scope: !2590)
!2646 = !DILocation(line: 824, column: 3, scope: !2590)
!2647 = !DILocation(line: 827, column: 9, scope: !2590)
!2648 = !DILocation(line: 828, column: 7, scope: !2590)
!2649 = !DILocation(line: 829, column: 11, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2590, file: !300, line: 828, column: 7)
!2651 = !DILocation(line: 829, column: 5, scope: !2650)
!2652 = !DILocation(line: 830, column: 3, scope: !2590)
!2653 = distinct !DISubprogram(name: "quotearg_free", scope: !300, file: !300, line: 848, type: !361, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2654)
!2654 = !{!2655, !2656}
!2655 = !DILocalVariable(name: "sv", scope: !2653, file: !300, line: 850, type: !334)
!2656 = !DILocalVariable(name: "i", scope: !2653, file: !300, line: 851, type: !23)
!2657 = !DILocation(line: 850, column: 24, scope: !2653)
!2658 = !DILocation(line: 0, scope: !2653)
!2659 = !DILocation(line: 852, column: 19, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !300, line: 852, column: 3)
!2661 = distinct !DILexicalBlock(scope: !2653, file: !300, line: 852, column: 3)
!2662 = !DILocation(line: 852, column: 17, scope: !2660)
!2663 = !DILocation(line: 852, column: 3, scope: !2661)
!2664 = !DILocation(line: 853, column: 17, scope: !2660)
!2665 = !{!2666, !825, i64 8}
!2666 = !{!"slotvec", !1053, i64 0, !825, i64 8}
!2667 = !DILocation(line: 853, column: 5, scope: !2660)
!2668 = !DILocation(line: 852, column: 28, scope: !2660)
!2669 = distinct !{!2669, !2663, !2670, !867}
!2670 = !DILocation(line: 853, column: 20, scope: !2661)
!2671 = !DILocation(line: 854, column: 13, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2653, file: !300, line: 854, column: 7)
!2673 = !DILocation(line: 854, column: 17, scope: !2672)
!2674 = !DILocation(line: 854, column: 7, scope: !2653)
!2675 = !DILocation(line: 856, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2672, file: !300, line: 855, column: 5)
!2677 = !DILocation(line: 857, column: 21, scope: !2676)
!2678 = !{!2666, !1053, i64 0}
!2679 = !DILocation(line: 858, column: 20, scope: !2676)
!2680 = !DILocation(line: 859, column: 5, scope: !2676)
!2681 = !DILocation(line: 860, column: 10, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2653, file: !300, line: 860, column: 7)
!2683 = !DILocation(line: 860, column: 7, scope: !2653)
!2684 = !DILocation(line: 862, column: 13, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2682, file: !300, line: 861, column: 5)
!2686 = !DILocation(line: 862, column: 7, scope: !2685)
!2687 = !DILocation(line: 863, column: 15, scope: !2685)
!2688 = !DILocation(line: 864, column: 5, scope: !2685)
!2689 = !DILocation(line: 865, column: 10, scope: !2653)
!2690 = !DILocation(line: 866, column: 1, scope: !2653)
!2691 = distinct !DISubprogram(name: "quotearg_n", scope: !300, file: !300, line: 931, type: !897, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2692)
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "n", arg: 1, scope: !2691, file: !300, line: 931, type: !23)
!2694 = !DILocalVariable(name: "arg", arg: 2, scope: !2691, file: !300, line: 931, type: !79)
!2695 = !DILocation(line: 0, scope: !2691)
!2696 = !DILocation(line: 933, column: 10, scope: !2691)
!2697 = !DILocation(line: 933, column: 3, scope: !2691)
!2698 = distinct !DISubprogram(name: "quotearg_n_options", scope: !300, file: !300, line: 877, type: !2699, scopeLine: 879, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2701)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!25, !23, !79, !71, !1748}
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2711, !2712, !2714, !2715, !2716}
!2702 = !DILocalVariable(name: "n", arg: 1, scope: !2698, file: !300, line: 877, type: !23)
!2703 = !DILocalVariable(name: "arg", arg: 2, scope: !2698, file: !300, line: 877, type: !79)
!2704 = !DILocalVariable(name: "argsize", arg: 3, scope: !2698, file: !300, line: 877, type: !71)
!2705 = !DILocalVariable(name: "options", arg: 4, scope: !2698, file: !300, line: 878, type: !1748)
!2706 = !DILocalVariable(name: "e", scope: !2698, file: !300, line: 880, type: !23)
!2707 = !DILocalVariable(name: "sv", scope: !2698, file: !300, line: 882, type: !334)
!2708 = !DILocalVariable(name: "preallocated", scope: !2709, file: !300, line: 889, type: !15)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !300, line: 888, column: 5)
!2710 = distinct !DILexicalBlock(scope: !2698, file: !300, line: 887, column: 7)
!2711 = !DILocalVariable(name: "nmax", scope: !2709, file: !300, line: 890, type: !23)
!2712 = !DILocalVariable(name: "size", scope: !2713, file: !300, line: 903, type: !71)
!2713 = distinct !DILexicalBlock(scope: !2698, file: !300, line: 902, column: 3)
!2714 = !DILocalVariable(name: "val", scope: !2713, file: !300, line: 904, type: !25)
!2715 = !DILocalVariable(name: "flags", scope: !2713, file: !300, line: 906, type: !23)
!2716 = !DILocalVariable(name: "qsize", scope: !2713, file: !300, line: 907, type: !71)
!2717 = !DILocation(line: 0, scope: !2698)
!2718 = !DILocation(line: 880, column: 11, scope: !2698)
!2719 = !DILocation(line: 882, column: 24, scope: !2698)
!2720 = !DILocation(line: 884, column: 9, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2698, file: !300, line: 884, column: 7)
!2722 = !DILocation(line: 884, column: 7, scope: !2698)
!2723 = !DILocation(line: 885, column: 5, scope: !2721)
!2724 = !DILocation(line: 887, column: 7, scope: !2710)
!2725 = !DILocation(line: 887, column: 14, scope: !2710)
!2726 = !DILocation(line: 887, column: 7, scope: !2698)
!2727 = !DILocation(line: 889, column: 31, scope: !2709)
!2728 = !DILocation(line: 0, scope: !2709)
!2729 = !DILocation(line: 892, column: 16, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2709, file: !300, line: 892, column: 11)
!2731 = !DILocation(line: 892, column: 11, scope: !2709)
!2732 = !DILocation(line: 893, column: 9, scope: !2730)
!2733 = !DILocation(line: 895, column: 32, scope: !2709)
!2734 = !DILocation(line: 895, column: 61, scope: !2709)
!2735 = !DILocation(line: 895, column: 66, scope: !2709)
!2736 = !DILocation(line: 895, column: 22, scope: !2709)
!2737 = !DILocation(line: 895, column: 15, scope: !2709)
!2738 = !DILocation(line: 896, column: 11, scope: !2709)
!2739 = !DILocation(line: 897, column: 15, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2709, file: !300, line: 896, column: 11)
!2741 = !{i64 0, i64 8, !1102, i64 8, i64 8, !824}
!2742 = !DILocation(line: 897, column: 9, scope: !2740)
!2743 = !DILocation(line: 898, column: 20, scope: !2709)
!2744 = !DILocation(line: 898, column: 18, scope: !2709)
!2745 = !DILocation(line: 898, column: 15, scope: !2709)
!2746 = !DILocation(line: 898, column: 38, scope: !2709)
!2747 = !DILocation(line: 898, column: 31, scope: !2709)
!2748 = !DILocation(line: 898, column: 48, scope: !2709)
!2749 = !DILocation(line: 0, scope: !2142, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 898, column: 7, scope: !2709)
!2751 = !DILocation(line: 59, column: 10, scope: !2142, inlinedAt: !2750)
!2752 = !DILocation(line: 899, column: 14, scope: !2709)
!2753 = !DILocation(line: 900, column: 5, scope: !2709)
!2754 = !DILocation(line: 903, column: 19, scope: !2713)
!2755 = !DILocation(line: 903, column: 25, scope: !2713)
!2756 = !DILocation(line: 0, scope: !2713)
!2757 = !DILocation(line: 904, column: 23, scope: !2713)
!2758 = !DILocation(line: 906, column: 26, scope: !2713)
!2759 = !DILocation(line: 906, column: 32, scope: !2713)
!2760 = !DILocation(line: 908, column: 55, scope: !2713)
!2761 = !DILocation(line: 909, column: 46, scope: !2713)
!2762 = !DILocation(line: 910, column: 55, scope: !2713)
!2763 = !DILocation(line: 911, column: 55, scope: !2713)
!2764 = !DILocation(line: 907, column: 20, scope: !2713)
!2765 = !DILocation(line: 913, column: 14, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2713, file: !300, line: 913, column: 9)
!2767 = !DILocation(line: 913, column: 9, scope: !2713)
!2768 = !DILocation(line: 915, column: 35, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2766, file: !300, line: 914, column: 7)
!2770 = !DILocation(line: 915, column: 20, scope: !2769)
!2771 = !DILocation(line: 916, column: 17, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !300, line: 916, column: 13)
!2773 = !DILocation(line: 916, column: 13, scope: !2769)
!2774 = !DILocation(line: 917, column: 11, scope: !2772)
!2775 = !DILocation(line: 0, scope: !2615, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 918, column: 27, scope: !2769)
!2777 = !DILocation(line: 218, column: 10, scope: !2615, inlinedAt: !2776)
!2778 = !DILocation(line: 918, column: 19, scope: !2769)
!2779 = !DILocation(line: 919, column: 69, scope: !2769)
!2780 = !DILocation(line: 921, column: 44, scope: !2769)
!2781 = !DILocation(line: 922, column: 44, scope: !2769)
!2782 = !DILocation(line: 919, column: 9, scope: !2769)
!2783 = !DILocation(line: 923, column: 7, scope: !2769)
!2784 = !DILocation(line: 925, column: 11, scope: !2713)
!2785 = !DILocation(line: 926, column: 5, scope: !2713)
!2786 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !300, file: !300, line: 937, type: !2787, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!25, !23, !79, !71}
!2789 = !{!2790, !2791, !2792}
!2790 = !DILocalVariable(name: "n", arg: 1, scope: !2786, file: !300, line: 937, type: !23)
!2791 = !DILocalVariable(name: "arg", arg: 2, scope: !2786, file: !300, line: 937, type: !79)
!2792 = !DILocalVariable(name: "argsize", arg: 3, scope: !2786, file: !300, line: 937, type: !71)
!2793 = !DILocation(line: 0, scope: !2786)
!2794 = !DILocation(line: 939, column: 10, scope: !2786)
!2795 = !DILocation(line: 939, column: 3, scope: !2786)
!2796 = distinct !DISubprogram(name: "quotearg", scope: !300, file: !300, line: 943, type: !1077, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2797)
!2797 = !{!2798}
!2798 = !DILocalVariable(name: "arg", arg: 1, scope: !2796, file: !300, line: 943, type: !79)
!2799 = !DILocation(line: 0, scope: !2796)
!2800 = !DILocation(line: 0, scope: !2691, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 945, column: 10, scope: !2796)
!2802 = !DILocation(line: 933, column: 10, scope: !2691, inlinedAt: !2801)
!2803 = !DILocation(line: 945, column: 3, scope: !2796)
!2804 = distinct !DISubprogram(name: "quotearg_mem", scope: !300, file: !300, line: 949, type: !2805, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!25, !79, !71}
!2807 = !{!2808, !2809}
!2808 = !DILocalVariable(name: "arg", arg: 1, scope: !2804, file: !300, line: 949, type: !79)
!2809 = !DILocalVariable(name: "argsize", arg: 2, scope: !2804, file: !300, line: 949, type: !71)
!2810 = !DILocation(line: 0, scope: !2804)
!2811 = !DILocation(line: 0, scope: !2786, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 951, column: 10, scope: !2804)
!2813 = !DILocation(line: 939, column: 10, scope: !2786, inlinedAt: !2812)
!2814 = !DILocation(line: 951, column: 3, scope: !2804)
!2815 = distinct !DISubprogram(name: "quotearg_n_style", scope: !300, file: !300, line: 955, type: !2816, scopeLine: 956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!25, !23, !212, !79}
!2818 = !{!2819, !2820, !2821, !2822}
!2819 = !DILocalVariable(name: "n", arg: 1, scope: !2815, file: !300, line: 955, type: !23)
!2820 = !DILocalVariable(name: "s", arg: 2, scope: !2815, file: !300, line: 955, type: !212)
!2821 = !DILocalVariable(name: "arg", arg: 3, scope: !2815, file: !300, line: 955, type: !79)
!2822 = !DILocalVariable(name: "o", scope: !2815, file: !300, line: 957, type: !1749)
!2823 = !DILocation(line: 0, scope: !2815)
!2824 = !DILocation(line: 957, column: 3, scope: !2815)
!2825 = !DILocation(line: 957, column: 32, scope: !2815)
!2826 = !{!2827}
!2827 = distinct !{!2827, !2828, !"quoting_options_from_style: argument 0"}
!2828 = distinct !{!2828, !"quoting_options_from_style"}
!2829 = !DILocation(line: 957, column: 36, scope: !2815)
!2830 = !DILocalVariable(name: "style", arg: 1, scope: !2831, file: !300, line: 193, type: !212)
!2831 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !300, file: !300, line: 193, type: !2832, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!317, !212}
!2834 = !{!2830, !2835}
!2835 = !DILocalVariable(name: "o", scope: !2831, file: !300, line: 195, type: !317)
!2836 = !DILocation(line: 0, scope: !2831, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 957, column: 36, scope: !2815)
!2838 = !DILocation(line: 195, column: 26, scope: !2831, inlinedAt: !2837)
!2839 = !DILocation(line: 196, column: 13, scope: !2840, inlinedAt: !2837)
!2840 = distinct !DILexicalBlock(scope: !2831, file: !300, line: 196, column: 7)
!2841 = !DILocation(line: 196, column: 7, scope: !2831, inlinedAt: !2837)
!2842 = !DILocation(line: 197, column: 5, scope: !2840, inlinedAt: !2837)
!2843 = !DILocation(line: 198, column: 5, scope: !2831, inlinedAt: !2837)
!2844 = !DILocation(line: 198, column: 11, scope: !2831, inlinedAt: !2837)
!2845 = !DILocation(line: 958, column: 10, scope: !2815)
!2846 = !DILocation(line: 959, column: 1, scope: !2815)
!2847 = !DILocation(line: 958, column: 3, scope: !2815)
!2848 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !300, file: !300, line: 962, type: !2849, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!25, !23, !212, !79, !71}
!2851 = !{!2852, !2853, !2854, !2855, !2856}
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2848, file: !300, line: 962, type: !23)
!2853 = !DILocalVariable(name: "s", arg: 2, scope: !2848, file: !300, line: 962, type: !212)
!2854 = !DILocalVariable(name: "arg", arg: 3, scope: !2848, file: !300, line: 963, type: !79)
!2855 = !DILocalVariable(name: "argsize", arg: 4, scope: !2848, file: !300, line: 963, type: !71)
!2856 = !DILocalVariable(name: "o", scope: !2848, file: !300, line: 965, type: !1749)
!2857 = !DILocation(line: 0, scope: !2848)
!2858 = !DILocation(line: 965, column: 3, scope: !2848)
!2859 = !DILocation(line: 965, column: 32, scope: !2848)
!2860 = !{!2861}
!2861 = distinct !{!2861, !2862, !"quoting_options_from_style: argument 0"}
!2862 = distinct !{!2862, !"quoting_options_from_style"}
!2863 = !DILocation(line: 965, column: 36, scope: !2848)
!2864 = !DILocation(line: 0, scope: !2831, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 965, column: 36, scope: !2848)
!2866 = !DILocation(line: 195, column: 26, scope: !2831, inlinedAt: !2865)
!2867 = !DILocation(line: 196, column: 13, scope: !2840, inlinedAt: !2865)
!2868 = !DILocation(line: 196, column: 7, scope: !2831, inlinedAt: !2865)
!2869 = !DILocation(line: 197, column: 5, scope: !2840, inlinedAt: !2865)
!2870 = !DILocation(line: 198, column: 5, scope: !2831, inlinedAt: !2865)
!2871 = !DILocation(line: 198, column: 11, scope: !2831, inlinedAt: !2865)
!2872 = !DILocation(line: 966, column: 10, scope: !2848)
!2873 = !DILocation(line: 967, column: 1, scope: !2848)
!2874 = !DILocation(line: 966, column: 3, scope: !2848)
!2875 = distinct !DISubprogram(name: "quotearg_style", scope: !300, file: !300, line: 970, type: !2876, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!25, !212, !79}
!2878 = !{!2879, !2880}
!2879 = !DILocalVariable(name: "s", arg: 1, scope: !2875, file: !300, line: 970, type: !212)
!2880 = !DILocalVariable(name: "arg", arg: 2, scope: !2875, file: !300, line: 970, type: !79)
!2881 = !DILocation(line: 0, scope: !2875)
!2882 = !DILocation(line: 0, scope: !2815, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 972, column: 10, scope: !2875)
!2884 = !DILocation(line: 957, column: 3, scope: !2815, inlinedAt: !2883)
!2885 = !DILocation(line: 957, column: 32, scope: !2815, inlinedAt: !2883)
!2886 = !{!2887}
!2887 = distinct !{!2887, !2888, !"quoting_options_from_style: argument 0"}
!2888 = distinct !{!2888, !"quoting_options_from_style"}
!2889 = !DILocation(line: 957, column: 36, scope: !2815, inlinedAt: !2883)
!2890 = !DILocation(line: 0, scope: !2831, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 957, column: 36, scope: !2815, inlinedAt: !2883)
!2892 = !DILocation(line: 195, column: 26, scope: !2831, inlinedAt: !2891)
!2893 = !DILocation(line: 196, column: 13, scope: !2840, inlinedAt: !2891)
!2894 = !DILocation(line: 196, column: 7, scope: !2831, inlinedAt: !2891)
!2895 = !DILocation(line: 197, column: 5, scope: !2840, inlinedAt: !2891)
!2896 = !DILocation(line: 198, column: 5, scope: !2831, inlinedAt: !2891)
!2897 = !DILocation(line: 198, column: 11, scope: !2831, inlinedAt: !2891)
!2898 = !DILocation(line: 958, column: 10, scope: !2815, inlinedAt: !2883)
!2899 = !DILocation(line: 959, column: 1, scope: !2815, inlinedAt: !2883)
!2900 = !DILocation(line: 972, column: 3, scope: !2875)
!2901 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !300, file: !300, line: 976, type: !2902, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!25, !212, !79, !71}
!2904 = !{!2905, !2906, !2907}
!2905 = !DILocalVariable(name: "s", arg: 1, scope: !2901, file: !300, line: 976, type: !212)
!2906 = !DILocalVariable(name: "arg", arg: 2, scope: !2901, file: !300, line: 976, type: !79)
!2907 = !DILocalVariable(name: "argsize", arg: 3, scope: !2901, file: !300, line: 976, type: !71)
!2908 = !DILocation(line: 0, scope: !2901)
!2909 = !DILocation(line: 0, scope: !2848, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 978, column: 10, scope: !2901)
!2911 = !DILocation(line: 965, column: 3, scope: !2848, inlinedAt: !2910)
!2912 = !DILocation(line: 965, column: 32, scope: !2848, inlinedAt: !2910)
!2913 = !{!2914}
!2914 = distinct !{!2914, !2915, !"quoting_options_from_style: argument 0"}
!2915 = distinct !{!2915, !"quoting_options_from_style"}
!2916 = !DILocation(line: 965, column: 36, scope: !2848, inlinedAt: !2910)
!2917 = !DILocation(line: 0, scope: !2831, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 965, column: 36, scope: !2848, inlinedAt: !2910)
!2919 = !DILocation(line: 195, column: 26, scope: !2831, inlinedAt: !2918)
!2920 = !DILocation(line: 196, column: 13, scope: !2840, inlinedAt: !2918)
!2921 = !DILocation(line: 196, column: 7, scope: !2831, inlinedAt: !2918)
!2922 = !DILocation(line: 197, column: 5, scope: !2840, inlinedAt: !2918)
!2923 = !DILocation(line: 198, column: 5, scope: !2831, inlinedAt: !2918)
!2924 = !DILocation(line: 198, column: 11, scope: !2831, inlinedAt: !2918)
!2925 = !DILocation(line: 966, column: 10, scope: !2848, inlinedAt: !2910)
!2926 = !DILocation(line: 967, column: 1, scope: !2848, inlinedAt: !2910)
!2927 = !DILocation(line: 978, column: 3, scope: !2901)
!2928 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !300, file: !300, line: 982, type: !2929, scopeLine: 983, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!25, !79, !71, !26}
!2931 = !{!2932, !2933, !2934, !2935}
!2932 = !DILocalVariable(name: "arg", arg: 1, scope: !2928, file: !300, line: 982, type: !79)
!2933 = !DILocalVariable(name: "argsize", arg: 2, scope: !2928, file: !300, line: 982, type: !71)
!2934 = !DILocalVariable(name: "ch", arg: 3, scope: !2928, file: !300, line: 982, type: !26)
!2935 = !DILocalVariable(name: "options", scope: !2928, file: !300, line: 984, type: !317)
!2936 = !DILocation(line: 0, scope: !2928)
!2937 = !DILocation(line: 984, column: 3, scope: !2928)
!2938 = !DILocation(line: 984, column: 26, scope: !2928)
!2939 = !DILocation(line: 985, column: 13, scope: !2928)
!2940 = !{i64 0, i64 4, !998, i64 4, i64 4, !947, i64 8, i64 32, !998, i64 40, i64 8, !824, i64 48, i64 8, !824}
!2941 = !DILocation(line: 0, scope: !1769, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 986, column: 3, scope: !2928)
!2943 = !DILocation(line: 156, column: 62, scope: !1769, inlinedAt: !2942)
!2944 = !DILocation(line: 156, column: 57, scope: !1769, inlinedAt: !2942)
!2945 = !DILocation(line: 157, column: 15, scope: !1769, inlinedAt: !2942)
!2946 = !DILocation(line: 158, column: 12, scope: !1769, inlinedAt: !2942)
!2947 = !DILocation(line: 158, column: 15, scope: !1769, inlinedAt: !2942)
!2948 = !DILocation(line: 158, column: 25, scope: !1769, inlinedAt: !2942)
!2949 = !DILocation(line: 159, column: 18, scope: !1769, inlinedAt: !2942)
!2950 = !DILocation(line: 159, column: 23, scope: !1769, inlinedAt: !2942)
!2951 = !DILocation(line: 159, column: 6, scope: !1769, inlinedAt: !2942)
!2952 = !DILocation(line: 987, column: 10, scope: !2928)
!2953 = !DILocation(line: 988, column: 1, scope: !2928)
!2954 = !DILocation(line: 987, column: 3, scope: !2928)
!2955 = distinct !DISubprogram(name: "quotearg_char", scope: !300, file: !300, line: 991, type: !2956, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!25, !79, !26}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "arg", arg: 1, scope: !2955, file: !300, line: 991, type: !79)
!2960 = !DILocalVariable(name: "ch", arg: 2, scope: !2955, file: !300, line: 991, type: !26)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 0, scope: !2928, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 993, column: 10, scope: !2955)
!2964 = !DILocation(line: 984, column: 3, scope: !2928, inlinedAt: !2963)
!2965 = !DILocation(line: 984, column: 26, scope: !2928, inlinedAt: !2963)
!2966 = !DILocation(line: 985, column: 13, scope: !2928, inlinedAt: !2963)
!2967 = !DILocation(line: 0, scope: !1769, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 986, column: 3, scope: !2928, inlinedAt: !2963)
!2969 = !DILocation(line: 156, column: 62, scope: !1769, inlinedAt: !2968)
!2970 = !DILocation(line: 156, column: 57, scope: !1769, inlinedAt: !2968)
!2971 = !DILocation(line: 157, column: 15, scope: !1769, inlinedAt: !2968)
!2972 = !DILocation(line: 158, column: 12, scope: !1769, inlinedAt: !2968)
!2973 = !DILocation(line: 158, column: 15, scope: !1769, inlinedAt: !2968)
!2974 = !DILocation(line: 158, column: 25, scope: !1769, inlinedAt: !2968)
!2975 = !DILocation(line: 159, column: 18, scope: !1769, inlinedAt: !2968)
!2976 = !DILocation(line: 159, column: 23, scope: !1769, inlinedAt: !2968)
!2977 = !DILocation(line: 159, column: 6, scope: !1769, inlinedAt: !2968)
!2978 = !DILocation(line: 987, column: 10, scope: !2928, inlinedAt: !2963)
!2979 = !DILocation(line: 988, column: 1, scope: !2928, inlinedAt: !2963)
!2980 = !DILocation(line: 993, column: 3, scope: !2955)
!2981 = distinct !DISubprogram(name: "quotearg_colon", scope: !300, file: !300, line: 997, type: !1077, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !2982)
!2982 = !{!2983}
!2983 = !DILocalVariable(name: "arg", arg: 1, scope: !2981, file: !300, line: 997, type: !79)
!2984 = !DILocation(line: 0, scope: !2981)
!2985 = !DILocation(line: 0, scope: !2955, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 999, column: 10, scope: !2981)
!2987 = !DILocation(line: 0, scope: !2928, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 993, column: 10, scope: !2955, inlinedAt: !2986)
!2989 = !DILocation(line: 984, column: 3, scope: !2928, inlinedAt: !2988)
!2990 = !DILocation(line: 984, column: 26, scope: !2928, inlinedAt: !2988)
!2991 = !DILocation(line: 985, column: 13, scope: !2928, inlinedAt: !2988)
!2992 = !DILocation(line: 0, scope: !1769, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 986, column: 3, scope: !2928, inlinedAt: !2988)
!2994 = !DILocation(line: 156, column: 57, scope: !1769, inlinedAt: !2993)
!2995 = !DILocation(line: 158, column: 12, scope: !1769, inlinedAt: !2993)
!2996 = !DILocation(line: 159, column: 6, scope: !1769, inlinedAt: !2993)
!2997 = !DILocation(line: 987, column: 10, scope: !2928, inlinedAt: !2988)
!2998 = !DILocation(line: 988, column: 1, scope: !2928, inlinedAt: !2988)
!2999 = !DILocation(line: 999, column: 3, scope: !2981)
!3000 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !300, file: !300, line: 1003, type: !2805, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3001)
!3001 = !{!3002, !3003}
!3002 = !DILocalVariable(name: "arg", arg: 1, scope: !3000, file: !300, line: 1003, type: !79)
!3003 = !DILocalVariable(name: "argsize", arg: 2, scope: !3000, file: !300, line: 1003, type: !71)
!3004 = !DILocation(line: 0, scope: !3000)
!3005 = !DILocation(line: 0, scope: !2928, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 1005, column: 10, scope: !3000)
!3007 = !DILocation(line: 984, column: 3, scope: !2928, inlinedAt: !3006)
!3008 = !DILocation(line: 984, column: 26, scope: !2928, inlinedAt: !3006)
!3009 = !DILocation(line: 985, column: 13, scope: !2928, inlinedAt: !3006)
!3010 = !DILocation(line: 0, scope: !1769, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 986, column: 3, scope: !2928, inlinedAt: !3006)
!3012 = !DILocation(line: 156, column: 57, scope: !1769, inlinedAt: !3011)
!3013 = !DILocation(line: 158, column: 12, scope: !1769, inlinedAt: !3011)
!3014 = !DILocation(line: 159, column: 6, scope: !1769, inlinedAt: !3011)
!3015 = !DILocation(line: 987, column: 10, scope: !2928, inlinedAt: !3006)
!3016 = !DILocation(line: 988, column: 1, scope: !2928, inlinedAt: !3006)
!3017 = !DILocation(line: 1005, column: 3, scope: !3000)
!3018 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !300, file: !300, line: 1009, type: !2816, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3019)
!3019 = !{!3020, !3021, !3022, !3023}
!3020 = !DILocalVariable(name: "n", arg: 1, scope: !3018, file: !300, line: 1009, type: !23)
!3021 = !DILocalVariable(name: "s", arg: 2, scope: !3018, file: !300, line: 1009, type: !212)
!3022 = !DILocalVariable(name: "arg", arg: 3, scope: !3018, file: !300, line: 1009, type: !79)
!3023 = !DILocalVariable(name: "options", scope: !3018, file: !300, line: 1011, type: !317)
!3024 = !DILocation(line: 195, column: 26, scope: !2831, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 1012, column: 13, scope: !3018)
!3026 = !DILocation(line: 0, scope: !3018)
!3027 = !DILocation(line: 1011, column: 3, scope: !3018)
!3028 = !DILocation(line: 1011, column: 26, scope: !3018)
!3029 = !DILocation(line: 1012, column: 13, scope: !3018)
!3030 = !{!3031}
!3031 = distinct !{!3031, !3032, !"quoting_options_from_style: argument 0"}
!3032 = distinct !{!3032, !"quoting_options_from_style"}
!3033 = !DILocation(line: 0, scope: !2831, inlinedAt: !3025)
!3034 = !DILocation(line: 196, column: 13, scope: !2840, inlinedAt: !3025)
!3035 = !DILocation(line: 196, column: 7, scope: !2831, inlinedAt: !3025)
!3036 = !DILocation(line: 197, column: 5, scope: !2840, inlinedAt: !3025)
!3037 = !{i64 0, i64 4, !947, i64 4, i64 32, !998, i64 36, i64 8, !824, i64 44, i64 8, !824}
!3038 = !DILocation(line: 0, scope: !1769, inlinedAt: !3039)
!3039 = distinct !DILocation(line: 1013, column: 3, scope: !3018)
!3040 = !DILocation(line: 156, column: 57, scope: !1769, inlinedAt: !3039)
!3041 = !DILocation(line: 158, column: 12, scope: !1769, inlinedAt: !3039)
!3042 = !DILocation(line: 159, column: 6, scope: !1769, inlinedAt: !3039)
!3043 = !DILocation(line: 1014, column: 10, scope: !3018)
!3044 = !DILocation(line: 1015, column: 1, scope: !3018)
!3045 = !DILocation(line: 1014, column: 3, scope: !3018)
!3046 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !300, file: !300, line: 1018, type: !3047, scopeLine: 1020, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!25, !23, !79, !79, !79}
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DILocalVariable(name: "n", arg: 1, scope: !3046, file: !300, line: 1018, type: !23)
!3051 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3046, file: !300, line: 1018, type: !79)
!3052 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3046, file: !300, line: 1019, type: !79)
!3053 = !DILocalVariable(name: "arg", arg: 4, scope: !3046, file: !300, line: 1019, type: !79)
!3054 = !DILocation(line: 0, scope: !3046)
!3055 = !DILocalVariable(name: "n", arg: 1, scope: !3056, file: !300, line: 1026, type: !23)
!3056 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !300, file: !300, line: 1026, type: !3057, scopeLine: 1029, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!25, !23, !79, !79, !79, !71}
!3059 = !{!3055, !3060, !3061, !3062, !3063, !3064}
!3060 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3056, file: !300, line: 1026, type: !79)
!3061 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3056, file: !300, line: 1027, type: !79)
!3062 = !DILocalVariable(name: "arg", arg: 4, scope: !3056, file: !300, line: 1028, type: !79)
!3063 = !DILocalVariable(name: "argsize", arg: 5, scope: !3056, file: !300, line: 1028, type: !71)
!3064 = !DILocalVariable(name: "o", scope: !3056, file: !300, line: 1030, type: !317)
!3065 = !DILocation(line: 0, scope: !3056, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 1021, column: 10, scope: !3046)
!3067 = !DILocation(line: 1030, column: 3, scope: !3056, inlinedAt: !3066)
!3068 = !DILocation(line: 1030, column: 26, scope: !3056, inlinedAt: !3066)
!3069 = !DILocation(line: 1030, column: 30, scope: !3056, inlinedAt: !3066)
!3070 = !DILocation(line: 0, scope: !1809, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 1031, column: 3, scope: !3056, inlinedAt: !3066)
!3072 = !DILocation(line: 184, column: 6, scope: !1809, inlinedAt: !3071)
!3073 = !DILocation(line: 184, column: 12, scope: !1809, inlinedAt: !3071)
!3074 = !DILocation(line: 185, column: 8, scope: !1823, inlinedAt: !3071)
!3075 = !DILocation(line: 185, column: 19, scope: !1823, inlinedAt: !3071)
!3076 = !DILocation(line: 186, column: 5, scope: !1823, inlinedAt: !3071)
!3077 = !DILocation(line: 187, column: 6, scope: !1809, inlinedAt: !3071)
!3078 = !DILocation(line: 187, column: 17, scope: !1809, inlinedAt: !3071)
!3079 = !DILocation(line: 188, column: 6, scope: !1809, inlinedAt: !3071)
!3080 = !DILocation(line: 188, column: 18, scope: !1809, inlinedAt: !3071)
!3081 = !DILocation(line: 1032, column: 10, scope: !3056, inlinedAt: !3066)
!3082 = !DILocation(line: 1033, column: 1, scope: !3056, inlinedAt: !3066)
!3083 = !DILocation(line: 1021, column: 3, scope: !3046)
!3084 = !DILocation(line: 0, scope: !3056)
!3085 = !DILocation(line: 1030, column: 3, scope: !3056)
!3086 = !DILocation(line: 1030, column: 26, scope: !3056)
!3087 = !DILocation(line: 1030, column: 30, scope: !3056)
!3088 = !DILocation(line: 0, scope: !1809, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 1031, column: 3, scope: !3056)
!3090 = !DILocation(line: 184, column: 6, scope: !1809, inlinedAt: !3089)
!3091 = !DILocation(line: 184, column: 12, scope: !1809, inlinedAt: !3089)
!3092 = !DILocation(line: 185, column: 8, scope: !1823, inlinedAt: !3089)
!3093 = !DILocation(line: 185, column: 19, scope: !1823, inlinedAt: !3089)
!3094 = !DILocation(line: 186, column: 5, scope: !1823, inlinedAt: !3089)
!3095 = !DILocation(line: 187, column: 6, scope: !1809, inlinedAt: !3089)
!3096 = !DILocation(line: 187, column: 17, scope: !1809, inlinedAt: !3089)
!3097 = !DILocation(line: 188, column: 6, scope: !1809, inlinedAt: !3089)
!3098 = !DILocation(line: 188, column: 18, scope: !1809, inlinedAt: !3089)
!3099 = !DILocation(line: 1032, column: 10, scope: !3056)
!3100 = !DILocation(line: 1033, column: 1, scope: !3056)
!3101 = !DILocation(line: 1032, column: 3, scope: !3056)
!3102 = distinct !DISubprogram(name: "quotearg_custom", scope: !300, file: !300, line: 1036, type: !3103, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!25, !79, !79, !79}
!3105 = !{!3106, !3107, !3108}
!3106 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3102, file: !300, line: 1036, type: !79)
!3107 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3102, file: !300, line: 1036, type: !79)
!3108 = !DILocalVariable(name: "arg", arg: 3, scope: !3102, file: !300, line: 1037, type: !79)
!3109 = !DILocation(line: 0, scope: !3102)
!3110 = !DILocation(line: 0, scope: !3046, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 1039, column: 10, scope: !3102)
!3112 = !DILocation(line: 0, scope: !3056, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 1021, column: 10, scope: !3046, inlinedAt: !3111)
!3114 = !DILocation(line: 1030, column: 3, scope: !3056, inlinedAt: !3113)
!3115 = !DILocation(line: 1030, column: 26, scope: !3056, inlinedAt: !3113)
!3116 = !DILocation(line: 1030, column: 30, scope: !3056, inlinedAt: !3113)
!3117 = !DILocation(line: 0, scope: !1809, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 1031, column: 3, scope: !3056, inlinedAt: !3113)
!3119 = !DILocation(line: 184, column: 6, scope: !1809, inlinedAt: !3118)
!3120 = !DILocation(line: 184, column: 12, scope: !1809, inlinedAt: !3118)
!3121 = !DILocation(line: 185, column: 8, scope: !1823, inlinedAt: !3118)
!3122 = !DILocation(line: 185, column: 19, scope: !1823, inlinedAt: !3118)
!3123 = !DILocation(line: 186, column: 5, scope: !1823, inlinedAt: !3118)
!3124 = !DILocation(line: 187, column: 6, scope: !1809, inlinedAt: !3118)
!3125 = !DILocation(line: 187, column: 17, scope: !1809, inlinedAt: !3118)
!3126 = !DILocation(line: 188, column: 6, scope: !1809, inlinedAt: !3118)
!3127 = !DILocation(line: 188, column: 18, scope: !1809, inlinedAt: !3118)
!3128 = !DILocation(line: 1032, column: 10, scope: !3056, inlinedAt: !3113)
!3129 = !DILocation(line: 1033, column: 1, scope: !3056, inlinedAt: !3113)
!3130 = !DILocation(line: 1039, column: 3, scope: !3102)
!3131 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !300, file: !300, line: 1043, type: !3132, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!25, !79, !79, !79, !71}
!3134 = !{!3135, !3136, !3137, !3138}
!3135 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3131, file: !300, line: 1043, type: !79)
!3136 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3131, file: !300, line: 1043, type: !79)
!3137 = !DILocalVariable(name: "arg", arg: 3, scope: !3131, file: !300, line: 1044, type: !79)
!3138 = !DILocalVariable(name: "argsize", arg: 4, scope: !3131, file: !300, line: 1044, type: !71)
!3139 = !DILocation(line: 0, scope: !3131)
!3140 = !DILocation(line: 0, scope: !3056, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 1046, column: 10, scope: !3131)
!3142 = !DILocation(line: 1030, column: 3, scope: !3056, inlinedAt: !3141)
!3143 = !DILocation(line: 1030, column: 26, scope: !3056, inlinedAt: !3141)
!3144 = !DILocation(line: 1030, column: 30, scope: !3056, inlinedAt: !3141)
!3145 = !DILocation(line: 0, scope: !1809, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 1031, column: 3, scope: !3056, inlinedAt: !3141)
!3147 = !DILocation(line: 184, column: 6, scope: !1809, inlinedAt: !3146)
!3148 = !DILocation(line: 184, column: 12, scope: !1809, inlinedAt: !3146)
!3149 = !DILocation(line: 185, column: 8, scope: !1823, inlinedAt: !3146)
!3150 = !DILocation(line: 185, column: 19, scope: !1823, inlinedAt: !3146)
!3151 = !DILocation(line: 186, column: 5, scope: !1823, inlinedAt: !3146)
!3152 = !DILocation(line: 187, column: 6, scope: !1809, inlinedAt: !3146)
!3153 = !DILocation(line: 187, column: 17, scope: !1809, inlinedAt: !3146)
!3154 = !DILocation(line: 188, column: 6, scope: !1809, inlinedAt: !3146)
!3155 = !DILocation(line: 188, column: 18, scope: !1809, inlinedAt: !3146)
!3156 = !DILocation(line: 1032, column: 10, scope: !3056, inlinedAt: !3141)
!3157 = !DILocation(line: 1033, column: 1, scope: !3056, inlinedAt: !3141)
!3158 = !DILocation(line: 1046, column: 3, scope: !3131)
!3159 = distinct !DISubprogram(name: "quote_n_mem", scope: !300, file: !300, line: 1061, type: !3160, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3162)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!79, !23, !79, !71}
!3162 = !{!3163, !3164, !3165}
!3163 = !DILocalVariable(name: "n", arg: 1, scope: !3159, file: !300, line: 1061, type: !23)
!3164 = !DILocalVariable(name: "arg", arg: 2, scope: !3159, file: !300, line: 1061, type: !79)
!3165 = !DILocalVariable(name: "argsize", arg: 3, scope: !3159, file: !300, line: 1061, type: !71)
!3166 = !DILocation(line: 0, scope: !3159)
!3167 = !DILocation(line: 1063, column: 10, scope: !3159)
!3168 = !DILocation(line: 1063, column: 3, scope: !3159)
!3169 = distinct !DISubprogram(name: "quote_mem", scope: !300, file: !300, line: 1067, type: !3170, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!79, !79, !71}
!3172 = !{!3173, !3174}
!3173 = !DILocalVariable(name: "arg", arg: 1, scope: !3169, file: !300, line: 1067, type: !79)
!3174 = !DILocalVariable(name: "argsize", arg: 2, scope: !3169, file: !300, line: 1067, type: !71)
!3175 = !DILocation(line: 0, scope: !3169)
!3176 = !DILocation(line: 0, scope: !3159, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 1069, column: 10, scope: !3169)
!3178 = !DILocation(line: 1063, column: 10, scope: !3159, inlinedAt: !3177)
!3179 = !DILocation(line: 1069, column: 3, scope: !3169)
!3180 = distinct !DISubprogram(name: "quote_n", scope: !300, file: !300, line: 1073, type: !3181, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!79, !23, !79}
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "n", arg: 1, scope: !3180, file: !300, line: 1073, type: !23)
!3185 = !DILocalVariable(name: "arg", arg: 2, scope: !3180, file: !300, line: 1073, type: !79)
!3186 = !DILocation(line: 0, scope: !3180)
!3187 = !DILocation(line: 0, scope: !3159, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1075, column: 10, scope: !3180)
!3189 = !DILocation(line: 1063, column: 10, scope: !3159, inlinedAt: !3188)
!3190 = !DILocation(line: 1075, column: 3, scope: !3180)
!3191 = distinct !DISubprogram(name: "quote", scope: !300, file: !300, line: 1079, type: !3192, scopeLine: 1080, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!79, !79}
!3194 = !{!3195}
!3195 = !DILocalVariable(name: "arg", arg: 1, scope: !3191, file: !300, line: 1079, type: !79)
!3196 = !DILocation(line: 0, scope: !3191)
!3197 = !DILocation(line: 0, scope: !3180, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 1081, column: 10, scope: !3191)
!3199 = !DILocation(line: 0, scope: !3159, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1075, column: 10, scope: !3180, inlinedAt: !3198)
!3201 = !DILocation(line: 1063, column: 10, scope: !3159, inlinedAt: !3200)
!3202 = !DILocation(line: 1081, column: 3, scope: !3191)
!3203 = distinct !DISubprogram(name: "version_etc_arn", scope: !374, file: !374, line: 61, type: !3204, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !3241)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !3206, !79, !79, !79, !3240, !71}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !3208)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3208, file: !20, line: 51, baseType: !23, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3208, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3208, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3208, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3208, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3208, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3208, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3208, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3208, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3208, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3208, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3208, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3208, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3208, file: !20, line: 70, baseType: !3224, size: 64, offset: 832)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3208, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3208, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3208, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3208, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3208, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3208, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3208, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3208, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3208, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3208, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3208, file: !20, line: 93, baseType: !3224, size: 64, offset: 1344)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3208, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3208, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3208, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3208, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3241 = !{!3242, !3243, !3244, !3245, !3246, !3247}
!3242 = !DILocalVariable(name: "stream", arg: 1, scope: !3203, file: !374, line: 61, type: !3206)
!3243 = !DILocalVariable(name: "command_name", arg: 2, scope: !3203, file: !374, line: 62, type: !79)
!3244 = !DILocalVariable(name: "package", arg: 3, scope: !3203, file: !374, line: 62, type: !79)
!3245 = !DILocalVariable(name: "version", arg: 4, scope: !3203, file: !374, line: 63, type: !79)
!3246 = !DILocalVariable(name: "authors", arg: 5, scope: !3203, file: !374, line: 64, type: !3240)
!3247 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3203, file: !374, line: 64, type: !71)
!3248 = !DILocation(line: 0, scope: !3203)
!3249 = !DILocation(line: 66, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3203, file: !374, line: 66, column: 7)
!3251 = !DILocation(line: 66, column: 7, scope: !3203)
!3252 = !DILocation(line: 67, column: 5, scope: !3250)
!3253 = !DILocation(line: 69, column: 5, scope: !3250)
!3254 = !DILocation(line: 83, column: 3, scope: !3203)
!3255 = !DILocation(line: 85, column: 3, scope: !3203)
!3256 = !DILocation(line: 88, column: 3, scope: !3203)
!3257 = !DILocation(line: 95, column: 3, scope: !3203)
!3258 = !DILocation(line: 97, column: 3, scope: !3203)
!3259 = !DILocation(line: 105, column: 7, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3203, file: !374, line: 98, column: 5)
!3261 = !DILocation(line: 106, column: 7, scope: !3260)
!3262 = !DILocation(line: 109, column: 7, scope: !3260)
!3263 = !DILocation(line: 110, column: 7, scope: !3260)
!3264 = !DILocation(line: 113, column: 7, scope: !3260)
!3265 = !DILocation(line: 115, column: 7, scope: !3260)
!3266 = !DILocation(line: 120, column: 7, scope: !3260)
!3267 = !DILocation(line: 122, column: 7, scope: !3260)
!3268 = !DILocation(line: 127, column: 7, scope: !3260)
!3269 = !DILocation(line: 129, column: 7, scope: !3260)
!3270 = !DILocation(line: 134, column: 7, scope: !3260)
!3271 = !DILocation(line: 137, column: 7, scope: !3260)
!3272 = !DILocation(line: 142, column: 7, scope: !3260)
!3273 = !DILocation(line: 145, column: 7, scope: !3260)
!3274 = !DILocation(line: 150, column: 7, scope: !3260)
!3275 = !DILocation(line: 154, column: 7, scope: !3260)
!3276 = !DILocation(line: 159, column: 7, scope: !3260)
!3277 = !DILocation(line: 163, column: 7, scope: !3260)
!3278 = !DILocation(line: 170, column: 7, scope: !3260)
!3279 = !DILocation(line: 174, column: 7, scope: !3260)
!3280 = !DILocation(line: 176, column: 1, scope: !3203)
!3281 = distinct !DISubprogram(name: "version_etc_ar", scope: !374, file: !374, line: 183, type: !3282, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !3206, !79, !79, !79, !3240}
!3284 = !{!3285, !3286, !3287, !3288, !3289, !3290}
!3285 = !DILocalVariable(name: "stream", arg: 1, scope: !3281, file: !374, line: 183, type: !3206)
!3286 = !DILocalVariable(name: "command_name", arg: 2, scope: !3281, file: !374, line: 184, type: !79)
!3287 = !DILocalVariable(name: "package", arg: 3, scope: !3281, file: !374, line: 184, type: !79)
!3288 = !DILocalVariable(name: "version", arg: 4, scope: !3281, file: !374, line: 185, type: !79)
!3289 = !DILocalVariable(name: "authors", arg: 5, scope: !3281, file: !374, line: 185, type: !3240)
!3290 = !DILocalVariable(name: "n_authors", scope: !3281, file: !374, line: 187, type: !71)
!3291 = !DILocation(line: 0, scope: !3281)
!3292 = !DILocation(line: 189, column: 8, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3281, file: !374, line: 189, column: 3)
!3294 = !DILocation(line: 0, scope: !3293)
!3295 = !DILocation(line: 189, column: 23, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3293, file: !374, line: 189, column: 3)
!3297 = !DILocation(line: 189, column: 3, scope: !3293)
!3298 = !DILocation(line: 189, column: 52, scope: !3296)
!3299 = distinct !{!3299, !3297, !3300, !867}
!3300 = !DILocation(line: 190, column: 5, scope: !3293)
!3301 = !DILocation(line: 191, column: 3, scope: !3281)
!3302 = !DILocation(line: 192, column: 1, scope: !3281)
!3303 = distinct !DISubprogram(name: "version_etc_va", scope: !374, file: !374, line: 199, type: !3304, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !3313)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !3206, !79, !79, !79, !3306}
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3307, file: !374, line: 192, baseType: !6, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3307, file: !374, line: 192, baseType: !6, size: 32, offset: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3307, file: !374, line: 192, baseType: !69, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3307, file: !374, line: 192, baseType: !69, size: 64, offset: 128)
!3313 = !{!3314, !3315, !3316, !3317, !3318, !3319, !3320}
!3314 = !DILocalVariable(name: "stream", arg: 1, scope: !3303, file: !374, line: 199, type: !3206)
!3315 = !DILocalVariable(name: "command_name", arg: 2, scope: !3303, file: !374, line: 200, type: !79)
!3316 = !DILocalVariable(name: "package", arg: 3, scope: !3303, file: !374, line: 200, type: !79)
!3317 = !DILocalVariable(name: "version", arg: 4, scope: !3303, file: !374, line: 201, type: !79)
!3318 = !DILocalVariable(name: "authors", arg: 5, scope: !3303, file: !374, line: 201, type: !3306)
!3319 = !DILocalVariable(name: "n_authors", scope: !3303, file: !374, line: 203, type: !71)
!3320 = !DILocalVariable(name: "authtab", scope: !3303, file: !374, line: 204, type: !3321)
!3321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 640, elements: !313)
!3322 = !DILocation(line: 0, scope: !3303)
!3323 = !DILocation(line: 204, column: 3, scope: !3303)
!3324 = !DILocation(line: 204, column: 15, scope: !3303)
!3325 = !DILocation(line: 208, column: 35, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !374, line: 206, column: 3)
!3327 = distinct !DILexicalBlock(scope: !3303, file: !374, line: 206, column: 3)
!3328 = !DILocation(line: 208, column: 14, scope: !3326)
!3329 = !DILocation(line: 208, column: 33, scope: !3326)
!3330 = !DILocation(line: 208, column: 67, scope: !3326)
!3331 = !DILocation(line: 206, column: 3, scope: !3327)
!3332 = !DILocation(line: 0, scope: !3327)
!3333 = !DILocation(line: 211, column: 3, scope: !3303)
!3334 = !DILocation(line: 213, column: 1, scope: !3303)
!3335 = distinct !DISubprogram(name: "version_etc", scope: !374, file: !374, line: 230, type: !3336, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{null, !3206, !79, !79, !79, null}
!3338 = !{!3339, !3340, !3341, !3342, !3343}
!3339 = !DILocalVariable(name: "stream", arg: 1, scope: !3335, file: !374, line: 230, type: !3206)
!3340 = !DILocalVariable(name: "command_name", arg: 2, scope: !3335, file: !374, line: 231, type: !79)
!3341 = !DILocalVariable(name: "package", arg: 3, scope: !3335, file: !374, line: 231, type: !79)
!3342 = !DILocalVariable(name: "version", arg: 4, scope: !3335, file: !374, line: 232, type: !79)
!3343 = !DILocalVariable(name: "authors", scope: !3335, file: !374, line: 234, type: !3344)
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !892, line: 52, baseType: !3345)
!3345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3346, line: 32, baseType: !3347)
!3346 = !DIFile(filename: "/usr/lib/clang/12.0.1/include/stdarg.h", directory: "")
!3347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !374, baseType: !3348)
!3348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3307, size: 192, elements: !54)
!3349 = !DILocation(line: 0, scope: !3335)
!3350 = !DILocation(line: 234, column: 3, scope: !3335)
!3351 = !DILocation(line: 234, column: 11, scope: !3335)
!3352 = !DILocation(line: 236, column: 3, scope: !3335)
!3353 = !DILocation(line: 237, column: 3, scope: !3335)
!3354 = !DILocation(line: 238, column: 3, scope: !3335)
!3355 = !DILocation(line: 239, column: 1, scope: !3335)
!3356 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !374, file: !374, line: 242, type: !361, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !276)
!3357 = !DILocation(line: 244, column: 3, scope: !3356)
!3358 = !DILocation(line: 249, column: 3, scope: !3356)
!3359 = !DILocation(line: 255, column: 3, scope: !3356)
!3360 = !DILocation(line: 260, column: 3, scope: !3356)
!3361 = !DILocation(line: 262, column: 1, scope: !3356)
!3362 = distinct !DISubprogram(name: "xnmalloc", scope: !384, file: !384, line: 99, type: !3363, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3365)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!69, !71, !71}
!3365 = !{!3366, !3367}
!3366 = !DILocalVariable(name: "n", arg: 1, scope: !3362, file: !384, line: 99, type: !71)
!3367 = !DILocalVariable(name: "s", arg: 2, scope: !3362, file: !384, line: 99, type: !71)
!3368 = !DILocation(line: 0, scope: !3362)
!3369 = !DILocation(line: 101, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3362, file: !384, line: 101, column: 7)
!3371 = !DILocation(line: 101, column: 7, scope: !3362)
!3372 = !DILocation(line: 102, column: 5, scope: !3370)
!3373 = !DILocation(line: 103, column: 21, scope: !3362)
!3374 = !DILocalVariable(name: "n", arg: 1, scope: !3375, file: !381, line: 39, type: !71)
!3375 = distinct !DISubprogram(name: "xmalloc", scope: !381, file: !381, line: 39, type: !133, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3376)
!3376 = !{!3374, !3377}
!3377 = !DILocalVariable(name: "p", scope: !3375, file: !381, line: 41, type: !69)
!3378 = !DILocation(line: 0, scope: !3375, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 103, column: 10, scope: !3362)
!3380 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3379)
!3381 = !DILocation(line: 42, column: 8, scope: !3382, inlinedAt: !3379)
!3382 = distinct !DILexicalBlock(scope: !3375, file: !381, line: 42, column: 7)
!3383 = !DILocation(line: 42, column: 10, scope: !3382, inlinedAt: !3379)
!3384 = !DILocation(line: 43, column: 5, scope: !3382, inlinedAt: !3379)
!3385 = !DILocation(line: 103, column: 3, scope: !3362)
!3386 = !DILocation(line: 0, scope: !3375)
!3387 = !DILocation(line: 41, column: 13, scope: !3375)
!3388 = !DILocation(line: 42, column: 8, scope: !3382)
!3389 = !DILocation(line: 42, column: 10, scope: !3382)
!3390 = !DILocation(line: 43, column: 5, scope: !3382)
!3391 = !DILocation(line: 44, column: 3, scope: !3375)
!3392 = distinct !DISubprogram(name: "xnrealloc", scope: !384, file: !384, line: 112, type: !3393, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3395)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!69, !69, !71, !71}
!3395 = !{!3396, !3397, !3398}
!3396 = !DILocalVariable(name: "p", arg: 1, scope: !3392, file: !384, line: 112, type: !69)
!3397 = !DILocalVariable(name: "n", arg: 2, scope: !3392, file: !384, line: 112, type: !71)
!3398 = !DILocalVariable(name: "s", arg: 3, scope: !3392, file: !384, line: 112, type: !71)
!3399 = !DILocation(line: 0, scope: !3392)
!3400 = !DILocation(line: 114, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3392, file: !384, line: 114, column: 7)
!3402 = !DILocation(line: 114, column: 7, scope: !3392)
!3403 = !DILocation(line: 115, column: 5, scope: !3401)
!3404 = !DILocation(line: 116, column: 25, scope: !3392)
!3405 = !DILocalVariable(name: "p", arg: 1, scope: !3406, file: !381, line: 51, type: !69)
!3406 = distinct !DISubprogram(name: "xrealloc", scope: !381, file: !381, line: 51, type: !137, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3407)
!3407 = !{!3405, !3408}
!3408 = !DILocalVariable(name: "n", arg: 2, scope: !3406, file: !381, line: 51, type: !71)
!3409 = !DILocation(line: 0, scope: !3406, inlinedAt: !3410)
!3410 = distinct !DILocation(line: 116, column: 10, scope: !3392)
!3411 = !DILocation(line: 53, column: 8, scope: !3412, inlinedAt: !3410)
!3412 = distinct !DILexicalBlock(scope: !3406, file: !381, line: 53, column: 7)
!3413 = !DILocation(line: 53, column: 10, scope: !3412, inlinedAt: !3410)
!3414 = !DILocation(line: 57, column: 7, scope: !3415, inlinedAt: !3410)
!3415 = distinct !DILexicalBlock(scope: !3412, file: !381, line: 54, column: 5)
!3416 = !DILocation(line: 58, column: 7, scope: !3415, inlinedAt: !3410)
!3417 = !DILocation(line: 61, column: 7, scope: !3406, inlinedAt: !3410)
!3418 = !DILocation(line: 62, column: 8, scope: !3419, inlinedAt: !3410)
!3419 = distinct !DILexicalBlock(scope: !3406, file: !381, line: 62, column: 7)
!3420 = !DILocation(line: 62, column: 10, scope: !3419, inlinedAt: !3410)
!3421 = !DILocation(line: 63, column: 5, scope: !3419, inlinedAt: !3410)
!3422 = !DILocation(line: 116, column: 3, scope: !3392)
!3423 = !DILocation(line: 0, scope: !3406)
!3424 = !DILocation(line: 53, column: 8, scope: !3412)
!3425 = !DILocation(line: 53, column: 10, scope: !3412)
!3426 = !DILocation(line: 57, column: 7, scope: !3415)
!3427 = !DILocation(line: 58, column: 7, scope: !3415)
!3428 = !DILocation(line: 61, column: 7, scope: !3406)
!3429 = !DILocation(line: 62, column: 8, scope: !3419)
!3430 = !DILocation(line: 62, column: 10, scope: !3419)
!3431 = !DILocation(line: 63, column: 5, scope: !3419)
!3432 = !DILocation(line: 65, column: 1, scope: !3406)
!3433 = !DILocation(line: 0, scope: !385)
!3434 = !DILocation(line: 176, column: 14, scope: !385)
!3435 = !DILocation(line: 178, column: 9, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !385, file: !384, line: 178, column: 7)
!3437 = !DILocation(line: 178, column: 7, scope: !385)
!3438 = !DILocation(line: 180, column: 13, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !384, line: 180, column: 11)
!3440 = distinct !DILexicalBlock(scope: !3436, file: !384, line: 179, column: 5)
!3441 = !DILocation(line: 180, column: 11, scope: !3440)
!3442 = !DILocation(line: 188, column: 30, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3439, file: !384, line: 181, column: 9)
!3444 = !DILocation(line: 189, column: 16, scope: !3443)
!3445 = !DILocation(line: 189, column: 13, scope: !3443)
!3446 = !DILocation(line: 190, column: 9, scope: !3443)
!3447 = !DILocation(line: 191, column: 11, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3440, file: !384, line: 191, column: 11)
!3449 = !DILocation(line: 191, column: 11, scope: !3440)
!3450 = !DILocation(line: 206, column: 7, scope: !385)
!3451 = !DILocation(line: 207, column: 25, scope: !385)
!3452 = !DILocation(line: 0, scope: !3406, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 207, column: 10, scope: !385)
!3454 = !DILocation(line: 53, column: 10, scope: !3412, inlinedAt: !3453)
!3455 = !DILocation(line: 192, column: 9, scope: !3448)
!3456 = !DILocation(line: 200, column: 69, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !384, line: 200, column: 11)
!3458 = distinct !DILexicalBlock(scope: !3436, file: !384, line: 195, column: 5)
!3459 = !DILocation(line: 201, column: 11, scope: !3457)
!3460 = !DILocation(line: 200, column: 11, scope: !3458)
!3461 = !DILocation(line: 202, column: 9, scope: !3457)
!3462 = !DILocation(line: 203, column: 14, scope: !3458)
!3463 = !DILocation(line: 203, column: 18, scope: !3458)
!3464 = !DILocation(line: 203, column: 9, scope: !3458)
!3465 = !DILocation(line: 53, column: 8, scope: !3412, inlinedAt: !3453)
!3466 = !DILocation(line: 57, column: 7, scope: !3415, inlinedAt: !3453)
!3467 = !DILocation(line: 58, column: 7, scope: !3415, inlinedAt: !3453)
!3468 = !DILocation(line: 61, column: 7, scope: !3406, inlinedAt: !3453)
!3469 = !DILocation(line: 62, column: 8, scope: !3419, inlinedAt: !3453)
!3470 = !DILocation(line: 62, column: 10, scope: !3419, inlinedAt: !3453)
!3471 = !DILocation(line: 63, column: 5, scope: !3419, inlinedAt: !3453)
!3472 = !DILocation(line: 207, column: 3, scope: !385)
!3473 = distinct !DISubprogram(name: "xcharalloc", scope: !384, file: !384, line: 216, type: !2616, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3474)
!3474 = !{!3475}
!3475 = !DILocalVariable(name: "n", arg: 1, scope: !3473, file: !384, line: 216, type: !71)
!3476 = !DILocation(line: 0, scope: !3473)
!3477 = !DILocation(line: 0, scope: !3375, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 218, column: 10, scope: !3473)
!3479 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3478)
!3480 = !DILocation(line: 42, column: 8, scope: !3382, inlinedAt: !3478)
!3481 = !DILocation(line: 42, column: 10, scope: !3382, inlinedAt: !3478)
!3482 = !DILocation(line: 43, column: 5, scope: !3382, inlinedAt: !3478)
!3483 = !DILocation(line: 218, column: 3, scope: !3473)
!3484 = distinct !DISubprogram(name: "x2realloc", scope: !381, file: !381, line: 74, type: !3485, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!69, !69, !388}
!3487 = !{!3488, !3489}
!3488 = !DILocalVariable(name: "p", arg: 1, scope: !3484, file: !381, line: 74, type: !69)
!3489 = !DILocalVariable(name: "pn", arg: 2, scope: !3484, file: !381, line: 74, type: !388)
!3490 = !DILocation(line: 0, scope: !3484)
!3491 = !DILocation(line: 0, scope: !385, inlinedAt: !3492)
!3492 = distinct !DILocation(line: 76, column: 10, scope: !3484)
!3493 = !DILocation(line: 176, column: 14, scope: !385, inlinedAt: !3492)
!3494 = !DILocation(line: 178, column: 9, scope: !3436, inlinedAt: !3492)
!3495 = !DILocation(line: 178, column: 7, scope: !385, inlinedAt: !3492)
!3496 = !DILocation(line: 180, column: 13, scope: !3439, inlinedAt: !3492)
!3497 = !DILocation(line: 180, column: 11, scope: !3440, inlinedAt: !3492)
!3498 = !DILocation(line: 191, column: 11, scope: !3448, inlinedAt: !3492)
!3499 = !DILocation(line: 191, column: 11, scope: !3440, inlinedAt: !3492)
!3500 = !DILocation(line: 192, column: 9, scope: !3448, inlinedAt: !3492)
!3501 = !DILocation(line: 201, column: 11, scope: !3457, inlinedAt: !3492)
!3502 = !DILocation(line: 200, column: 11, scope: !3458, inlinedAt: !3492)
!3503 = !DILocation(line: 202, column: 9, scope: !3457, inlinedAt: !3492)
!3504 = !DILocation(line: 203, column: 14, scope: !3458, inlinedAt: !3492)
!3505 = !DILocation(line: 203, column: 18, scope: !3458, inlinedAt: !3492)
!3506 = !DILocation(line: 203, column: 9, scope: !3458, inlinedAt: !3492)
!3507 = !DILocation(line: 0, scope: !3406, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 207, column: 10, scope: !385, inlinedAt: !3492)
!3509 = !DILocation(line: 53, column: 10, scope: !3412, inlinedAt: !3508)
!3510 = !DILocation(line: 206, column: 7, scope: !385, inlinedAt: !3492)
!3511 = !DILocation(line: 61, column: 7, scope: !3406, inlinedAt: !3508)
!3512 = !DILocation(line: 62, column: 8, scope: !3419, inlinedAt: !3508)
!3513 = !DILocation(line: 62, column: 10, scope: !3419, inlinedAt: !3508)
!3514 = !DILocation(line: 63, column: 5, scope: !3419, inlinedAt: !3508)
!3515 = !DILocation(line: 76, column: 3, scope: !3484)
!3516 = distinct !DISubprogram(name: "xzalloc", scope: !381, file: !381, line: 84, type: !133, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3517)
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "n", arg: 1, scope: !3516, file: !381, line: 84, type: !71)
!3519 = !DILocation(line: 0, scope: !3516)
!3520 = !DILocalVariable(name: "n", arg: 1, scope: !3521, file: !381, line: 93, type: !71)
!3521 = distinct !DISubprogram(name: "xcalloc", scope: !381, file: !381, line: 93, type: !3363, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3522)
!3522 = !{!3520, !3523, !3524}
!3523 = !DILocalVariable(name: "s", arg: 2, scope: !3521, file: !381, line: 93, type: !71)
!3524 = !DILocalVariable(name: "p", scope: !3521, file: !381, line: 95, type: !69)
!3525 = !DILocation(line: 0, scope: !3521, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 86, column: 10, scope: !3516)
!3527 = !DILocation(line: 100, column: 7, scope: !3528, inlinedAt: !3526)
!3528 = distinct !DILexicalBlock(scope: !3521, file: !381, line: 100, column: 7)
!3529 = !DILocation(line: 101, column: 7, scope: !3528, inlinedAt: !3526)
!3530 = !DILocation(line: 101, column: 18, scope: !3528, inlinedAt: !3526)
!3531 = !DILocation(line: 101, column: 16, scope: !3528, inlinedAt: !3526)
!3532 = !DILocation(line: 100, column: 7, scope: !3521, inlinedAt: !3526)
!3533 = !DILocation(line: 102, column: 5, scope: !3528, inlinedAt: !3526)
!3534 = !DILocation(line: 86, column: 3, scope: !3516)
!3535 = !DILocation(line: 0, scope: !3521)
!3536 = !DILocation(line: 100, column: 7, scope: !3528)
!3537 = !DILocation(line: 101, column: 7, scope: !3528)
!3538 = !DILocation(line: 101, column: 18, scope: !3528)
!3539 = !DILocation(line: 101, column: 16, scope: !3528)
!3540 = !DILocation(line: 100, column: 7, scope: !3521)
!3541 = !DILocation(line: 102, column: 5, scope: !3528)
!3542 = !DILocation(line: 103, column: 3, scope: !3521)
!3543 = distinct !DISubprogram(name: "xmemdup", scope: !381, file: !381, line: 111, type: !3544, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!69, !1329, !71}
!3546 = !{!3547, !3548}
!3547 = !DILocalVariable(name: "p", arg: 1, scope: !3543, file: !381, line: 111, type: !1329)
!3548 = !DILocalVariable(name: "s", arg: 2, scope: !3543, file: !381, line: 111, type: !71)
!3549 = !DILocation(line: 0, scope: !3543)
!3550 = !DILocation(line: 0, scope: !3375, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 113, column: 18, scope: !3543)
!3552 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3551)
!3553 = !DILocation(line: 42, column: 8, scope: !3382, inlinedAt: !3551)
!3554 = !DILocation(line: 42, column: 10, scope: !3382, inlinedAt: !3551)
!3555 = !DILocation(line: 43, column: 5, scope: !3382, inlinedAt: !3551)
!3556 = !DILocalVariable(name: "__dest", arg: 1, scope: !3557, file: !2143, line: 26, type: !3560)
!3557 = distinct !DISubprogram(name: "memcpy", scope: !2143, file: !2143, line: 26, type: !3558, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3562)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!69, !3560, !3561, !71}
!3560 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!3561 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1329)
!3562 = !{!3556, !3563, !3564}
!3563 = !DILocalVariable(name: "__src", arg: 2, scope: !3557, file: !2143, line: 26, type: !3561)
!3564 = !DILocalVariable(name: "__len", arg: 3, scope: !3557, file: !2143, line: 26, type: !71)
!3565 = !DILocation(line: 0, scope: !3557, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 113, column: 10, scope: !3543)
!3567 = !DILocation(line: 29, column: 10, scope: !3557, inlinedAt: !3566)
!3568 = !DILocation(line: 113, column: 3, scope: !3543)
!3569 = distinct !DISubprogram(name: "xstrdup", scope: !381, file: !381, line: 119, type: !1077, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3570)
!3570 = !{!3571}
!3571 = !DILocalVariable(name: "string", arg: 1, scope: !3569, file: !381, line: 119, type: !79)
!3572 = !DILocation(line: 0, scope: !3569)
!3573 = !DILocation(line: 121, column: 27, scope: !3569)
!3574 = !DILocation(line: 121, column: 43, scope: !3569)
!3575 = !DILocation(line: 0, scope: !3543, inlinedAt: !3576)
!3576 = distinct !DILocation(line: 121, column: 10, scope: !3569)
!3577 = !DILocation(line: 0, scope: !3375, inlinedAt: !3578)
!3578 = distinct !DILocation(line: 113, column: 18, scope: !3543, inlinedAt: !3576)
!3579 = !DILocation(line: 41, column: 13, scope: !3375, inlinedAt: !3578)
!3580 = !DILocation(line: 42, column: 8, scope: !3382, inlinedAt: !3578)
!3581 = !DILocation(line: 42, column: 10, scope: !3382, inlinedAt: !3578)
!3582 = !DILocation(line: 43, column: 5, scope: !3382, inlinedAt: !3578)
!3583 = !DILocation(line: 0, scope: !3557, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 113, column: 10, scope: !3543, inlinedAt: !3576)
!3585 = !DILocation(line: 29, column: 10, scope: !3557, inlinedAt: !3584)
!3586 = !DILocation(line: 121, column: 3, scope: !3569)
!3587 = distinct !DISubprogram(name: "xalloc_die", scope: !398, file: !398, line: 32, type: !361, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !276)
!3588 = !DILocation(line: 34, column: 10, scope: !3587)
!3589 = !DILocation(line: 34, column: 33, scope: !3587)
!3590 = !DILocation(line: 34, column: 3, scope: !3587)
!3591 = !DILocation(line: 40, column: 3, scope: !3587)
!3592 = distinct !DISubprogram(name: "xstrndup", scope: !400, file: !400, line: 30, type: !2805, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3593)
!3593 = !{!3594, !3595, !3596}
!3594 = !DILocalVariable(name: "string", arg: 1, scope: !3592, file: !400, line: 30, type: !79)
!3595 = !DILocalVariable(name: "n", arg: 2, scope: !3592, file: !400, line: 30, type: !71)
!3596 = !DILocalVariable(name: "s", scope: !3592, file: !400, line: 32, type: !25)
!3597 = !DILocation(line: 0, scope: !3592)
!3598 = !DILocation(line: 32, column: 13, scope: !3592)
!3599 = !DILocation(line: 33, column: 9, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3592, file: !400, line: 33, column: 7)
!3601 = !DILocation(line: 33, column: 7, scope: !3592)
!3602 = !DILocation(line: 34, column: 5, scope: !3600)
!3603 = !DILocation(line: 35, column: 3, scope: !3592)
!3604 = distinct !DISubprogram(name: "rpl_calloc", scope: !402, file: !402, line: 42, type: !3363, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3605)
!3605 = !{!3606, !3607, !3608, !3609}
!3606 = !DILocalVariable(name: "n", arg: 1, scope: !3604, file: !402, line: 42, type: !71)
!3607 = !DILocalVariable(name: "s", arg: 2, scope: !3604, file: !402, line: 42, type: !71)
!3608 = !DILocalVariable(name: "result", scope: !3604, file: !402, line: 44, type: !69)
!3609 = !DILocalVariable(name: "bytes", scope: !3610, file: !402, line: 56, type: !71)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !402, line: 53, column: 5)
!3611 = distinct !DILexicalBlock(scope: !3604, file: !402, line: 47, column: 7)
!3612 = !DILocation(line: 0, scope: !3604)
!3613 = !DILocation(line: 47, column: 9, scope: !3611)
!3614 = !DILocation(line: 47, column: 14, scope: !3611)
!3615 = !DILocation(line: 0, scope: !3610)
!3616 = !DILocation(line: 57, column: 21, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3610, file: !402, line: 57, column: 11)
!3618 = !DILocation(line: 57, column: 11, scope: !3610)
!3619 = !DILocation(line: 59, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3617, file: !402, line: 58, column: 9)
!3621 = !DILocation(line: 59, column: 17, scope: !3620)
!3622 = !DILocation(line: 65, column: 12, scope: !3604)
!3623 = !DILocation(line: 72, column: 3, scope: !3604)
!3624 = !DILocation(line: 73, column: 1, scope: !3604)
!3625 = distinct !DISubprogram(name: "rpl_fclose", scope: !404, file: !404, line: 58, type: !3626, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3662)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!23, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !3630)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3630, file: !20, line: 51, baseType: !23, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3630, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3630, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3630, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3630, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3630, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3630, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3630, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3630, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3630, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3630, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3630, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3630, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3630, file: !20, line: 70, baseType: !3646, size: 64, offset: 832)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3630, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3630, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3630, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3630, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3630, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3630, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3630, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3630, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3630, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3630, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3630, file: !20, line: 93, baseType: !3646, size: 64, offset: 1344)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3630, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3630, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3630, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3630, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!3662 = !{!3663, !3664, !3665, !3666}
!3663 = !DILocalVariable(name: "fp", arg: 1, scope: !3625, file: !404, line: 58, type: !3628)
!3664 = !DILocalVariable(name: "saved_errno", scope: !3625, file: !404, line: 60, type: !23)
!3665 = !DILocalVariable(name: "fd", scope: !3625, file: !404, line: 61, type: !23)
!3666 = !DILocalVariable(name: "result", scope: !3625, file: !404, line: 62, type: !23)
!3667 = !DILocation(line: 0, scope: !3625)
!3668 = !DILocation(line: 65, column: 8, scope: !3625)
!3669 = !DILocation(line: 66, column: 10, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3625, file: !404, line: 66, column: 7)
!3671 = !DILocation(line: 66, column: 7, scope: !3625)
!3672 = !DILocation(line: 67, column: 12, scope: !3670)
!3673 = !DILocation(line: 67, column: 5, scope: !3670)
!3674 = !DILocation(line: 72, column: 9, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3625, file: !404, line: 72, column: 7)
!3676 = !DILocation(line: 72, column: 23, scope: !3675)
!3677 = !DILocation(line: 72, column: 33, scope: !3675)
!3678 = !DILocation(line: 72, column: 26, scope: !3675)
!3679 = !DILocation(line: 72, column: 59, scope: !3675)
!3680 = !DILocation(line: 73, column: 7, scope: !3675)
!3681 = !DILocation(line: 73, column: 10, scope: !3675)
!3682 = !DILocation(line: 72, column: 7, scope: !3625)
!3683 = !DILocation(line: 100, column: 12, scope: !3625)
!3684 = !DILocation(line: 105, column: 7, scope: !3625)
!3685 = !DILocation(line: 74, column: 19, scope: !3675)
!3686 = !DILocation(line: 105, column: 19, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3625, file: !404, line: 105, column: 7)
!3688 = !DILocation(line: 107, column: 13, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3687, file: !404, line: 106, column: 5)
!3690 = !DILocation(line: 109, column: 5, scope: !3689)
!3691 = !DILocation(line: 112, column: 1, scope: !3625)
!3692 = !DISubprogram(name: "fclose", scope: !892, file: !892, line: 213, type: !3693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!23, !3646}
!3695 = !DISubprogram(name: "lseek", scope: !1684, file: !1684, line: 334, type: !3696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!47, !23, !47, !23}
!3698 = distinct !DISubprogram(name: "rpl_fflush", scope: !406, file: !406, line: 129, type: !3699, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !3735)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!23, !3701}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !3703)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3703, file: !20, line: 51, baseType: !23, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3703, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3703, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3703, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3703, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3703, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3703, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3703, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3703, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3703, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3703, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3703, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3703, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3703, file: !20, line: 70, baseType: !3719, size: 64, offset: 832)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3703, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3703, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3703, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3703, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3703, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3703, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3703, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3703, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3703, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3703, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3703, file: !20, line: 93, baseType: !3719, size: 64, offset: 1344)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3703, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3703, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3703, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3703, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!3735 = !{!3736}
!3736 = !DILocalVariable(name: "stream", arg: 1, scope: !3698, file: !406, line: 129, type: !3701)
!3737 = !DILocation(line: 0, scope: !3698)
!3738 = !DILocation(line: 150, column: 14, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3698, file: !406, line: 150, column: 7)
!3740 = !DILocation(line: 150, column: 22, scope: !3739)
!3741 = !DILocation(line: 150, column: 27, scope: !3739)
!3742 = !DILocation(line: 150, column: 7, scope: !3698)
!3743 = !DILocation(line: 151, column: 12, scope: !3739)
!3744 = !DILocation(line: 151, column: 5, scope: !3739)
!3745 = !DILocalVariable(name: "fp", arg: 1, scope: !3746, file: !406, line: 41, type: !3701)
!3746 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !406, file: !406, line: 41, type: !3747, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{null, !3701}
!3749 = !{!3745}
!3750 = !DILocation(line: 0, scope: !3746, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 156, column: 3, scope: !3698)
!3752 = !DILocation(line: 43, column: 11, scope: !3753, inlinedAt: !3751)
!3753 = distinct !DILexicalBlock(scope: !3746, file: !406, line: 43, column: 7)
!3754 = !{!3755, !948, i64 0}
!3755 = !{!"_IO_FILE", !948, i64 0, !825, i64 8, !825, i64 16, !825, i64 24, !825, i64 32, !825, i64 40, !825, i64 48, !825, i64 56, !825, i64 64, !825, i64 72, !825, i64 80, !825, i64 88, !825, i64 96, !825, i64 104, !948, i64 112, !948, i64 116, !1053, i64 120, !1162, i64 128, !826, i64 130, !826, i64 131, !825, i64 136, !1053, i64 144, !825, i64 152, !825, i64 160, !825, i64 168, !825, i64 176, !1053, i64 184, !948, i64 192, !826, i64 196}
!3756 = !DILocation(line: 43, column: 18, scope: !3753, inlinedAt: !3751)
!3757 = !DILocation(line: 43, column: 7, scope: !3746, inlinedAt: !3751)
!3758 = !DILocation(line: 45, column: 5, scope: !3753, inlinedAt: !3751)
!3759 = !DILocation(line: 158, column: 10, scope: !3698)
!3760 = !DILocation(line: 158, column: 3, scope: !3698)
!3761 = !DILocation(line: 235, column: 1, scope: !3698)
!3762 = !DISubprogram(name: "fflush", scope: !892, file: !892, line: 218, type: !3763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!23, !3719}
!3765 = distinct !DISubprogram(name: "rpl_fseeko", scope: !408, file: !408, line: 28, type: !3766, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3803)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!23, !3768, !3802, !23}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !3770)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !3771)
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3770, file: !20, line: 51, baseType: !23, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3770, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3770, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3770, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3770, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3770, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3770, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3770, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3770, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3770, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3770, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3770, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3770, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3770, file: !20, line: 70, baseType: !3786, size: 64, offset: 832)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3770, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3770, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3770, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3770, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3770, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3770, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3770, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3770, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3770, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3770, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3770, file: !20, line: 93, baseType: !3786, size: 64, offset: 1344)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3770, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3770, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3770, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3770, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !892, line: 63, baseType: !45)
!3803 = !{!3804, !3805, !3806, !3807}
!3804 = !DILocalVariable(name: "fp", arg: 1, scope: !3765, file: !408, line: 28, type: !3768)
!3805 = !DILocalVariable(name: "offset", arg: 2, scope: !3765, file: !408, line: 28, type: !3802)
!3806 = !DILocalVariable(name: "whence", arg: 3, scope: !3765, file: !408, line: 28, type: !23)
!3807 = !DILocalVariable(name: "pos", scope: !3808, file: !408, line: 117, type: !3802)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !408, line: 113, column: 5)
!3809 = distinct !DILexicalBlock(scope: !3765, file: !408, line: 52, column: 7)
!3810 = !DILocation(line: 0, scope: !3765)
!3811 = !DILocation(line: 52, column: 11, scope: !3809)
!3812 = !{!3755, !825, i64 16}
!3813 = !DILocation(line: 52, column: 31, scope: !3809)
!3814 = !{!3755, !825, i64 8}
!3815 = !DILocation(line: 52, column: 24, scope: !3809)
!3816 = !DILocation(line: 53, column: 7, scope: !3809)
!3817 = !DILocation(line: 53, column: 14, scope: !3809)
!3818 = !{!3755, !825, i64 40}
!3819 = !DILocation(line: 53, column: 35, scope: !3809)
!3820 = !{!3755, !825, i64 32}
!3821 = !DILocation(line: 53, column: 28, scope: !3809)
!3822 = !DILocation(line: 54, column: 7, scope: !3809)
!3823 = !DILocation(line: 54, column: 14, scope: !3809)
!3824 = !{!3755, !825, i64 72}
!3825 = !DILocation(line: 54, column: 28, scope: !3809)
!3826 = !DILocation(line: 52, column: 7, scope: !3765)
!3827 = !DILocation(line: 117, column: 26, scope: !3808)
!3828 = !DILocation(line: 117, column: 19, scope: !3808)
!3829 = !DILocation(line: 0, scope: !3808)
!3830 = !DILocation(line: 118, column: 15, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3808, file: !408, line: 118, column: 11)
!3832 = !DILocation(line: 118, column: 11, scope: !3808)
!3833 = !DILocation(line: 129, column: 11, scope: !3808)
!3834 = !DILocation(line: 129, column: 18, scope: !3808)
!3835 = !DILocation(line: 130, column: 11, scope: !3808)
!3836 = !DILocation(line: 130, column: 19, scope: !3808)
!3837 = !{!3755, !1053, i64 144}
!3838 = !DILocation(line: 161, column: 7, scope: !3808)
!3839 = !DILocation(line: 163, column: 10, scope: !3765)
!3840 = !DILocation(line: 163, column: 3, scope: !3765)
!3841 = !DILocation(line: 164, column: 1, scope: !3765)
!3842 = !DISubprogram(name: "fseeko", scope: !892, file: !892, line: 712, type: !3843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!23, !3786, !47, !23}
!3845 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !410, file: !410, line: 86, type: !3846, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3860)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!71, !3848, !79, !71, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1898, line: 6, baseType: !3851)
!3851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1900, line: 21, baseType: !3852)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1900, line: 13, size: 64, elements: !3853)
!3853 = !{!3854, !3855}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3852, file: !1900, line: 15, baseType: !23, size: 32)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3852, file: !1900, line: 20, baseType: !3856, size: 32, offset: 32)
!3856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3852, file: !1900, line: 16, size: 32, elements: !3857)
!3857 = !{!3858, !3859}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3856, file: !1900, line: 18, baseType: !6, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3856, file: !1900, line: 19, baseType: !1909, size: 32)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867}
!3861 = !DILocalVariable(name: "pwc", arg: 1, scope: !3845, file: !410, line: 86, type: !3848)
!3862 = !DILocalVariable(name: "s", arg: 2, scope: !3845, file: !410, line: 86, type: !79)
!3863 = !DILocalVariable(name: "n", arg: 3, scope: !3845, file: !410, line: 86, type: !71)
!3864 = !DILocalVariable(name: "ps", arg: 4, scope: !3845, file: !410, line: 86, type: !3849)
!3865 = !DILocalVariable(name: "ret", scope: !3845, file: !410, line: 88, type: !71)
!3866 = !DILocalVariable(name: "wc", scope: !3845, file: !410, line: 89, type: !1914)
!3867 = !DILocalVariable(name: "uc", scope: !3868, file: !410, line: 156, type: !242)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !410, line: 155, column: 5)
!3869 = distinct !DILexicalBlock(scope: !3845, file: !410, line: 154, column: 7)
!3870 = !DILocation(line: 0, scope: !3845)
!3871 = !DILocation(line: 89, column: 3, scope: !3845)
!3872 = !DILocation(line: 105, column: 9, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3845, file: !410, line: 105, column: 7)
!3874 = !DILocation(line: 105, column: 7, scope: !3845)
!3875 = !DILocation(line: 145, column: 9, scope: !3845)
!3876 = !DILocation(line: 154, column: 19, scope: !3869)
!3877 = !DILocation(line: 154, column: 26, scope: !3869)
!3878 = !DILocation(line: 154, column: 41, scope: !3869)
!3879 = !DILocation(line: 154, column: 7, scope: !3845)
!3880 = !DILocation(line: 156, column: 26, scope: !3868)
!3881 = !DILocation(line: 0, scope: !3868)
!3882 = !DILocation(line: 157, column: 14, scope: !3868)
!3883 = !DILocation(line: 157, column: 12, scope: !3868)
!3884 = !DILocation(line: 163, column: 1, scope: !3845)
!3885 = !DISubprogram(name: "mbrtowc", scope: !2576, file: !2576, line: 296, type: !3886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!73, !268, !79, !73, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3889 = distinct !DISubprogram(name: "print_and_abort", scope: !357, file: !357, line: 330, type: !361, scopeLine: 331, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !276)
!3890 = !DILocation(line: 340, column: 3, scope: !3889)
!3891 = !DILocation(line: 342, column: 9, scope: !3889)
!3892 = !DILocation(line: 342, column: 3, scope: !3889)
!3893 = distinct !DISubprogram(name: "_obstack_begin", scope: !357, file: !357, line: 150, type: !3894, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !3930)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!23, !3896, !71, !71, !132, !143}
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !106, line: 174, size: 704, elements: !3898)
!3898 = !{!3899, !3900, !3907, !3908, !3909, !3910, !3915, !3916, !3921, !3926, !3927, !3928, !3929}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !3897, file: !106, line: 176, baseType: !71, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !3897, file: !106, line: 177, baseType: !3901, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !106, line: 167, size: 128, elements: !3903)
!3903 = !{!3904, !3905, !3906}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !3902, file: !106, line: 169, baseType: !25, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !3902, file: !106, line: 170, baseType: !3901, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !3902, file: !106, line: 171, baseType: !116, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !3897, file: !106, line: 178, baseType: !25, size: 64, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !3897, file: !106, line: 179, baseType: !25, size: 64, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !3897, file: !106, line: 180, baseType: !25, size: 64, offset: 256)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !3897, file: !106, line: 185, baseType: !3911, size: 64, offset: 320)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3897, file: !106, line: 181, size: 64, elements: !3912)
!3912 = !{!3913, !3914}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !3911, file: !106, line: 183, baseType: !71, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3911, file: !106, line: 184, baseType: !69, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !3897, file: !106, line: 186, baseType: !71, size: 64, offset: 384)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !3897, file: !106, line: 193, baseType: !3917, size: 64, offset: 448)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3897, file: !106, line: 189, size: 64, elements: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !3917, file: !106, line: 191, baseType: !132, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3917, file: !106, line: 192, baseType: !136, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !3897, file: !106, line: 198, baseType: !3922, size: 64, offset: 512)
!3922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3897, file: !106, line: 194, size: 64, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !3922, file: !106, line: 196, baseType: !143, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3922, file: !106, line: 197, baseType: !147, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !3897, file: !106, line: 200, baseType: !69, size: 64, offset: 576)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !3897, file: !106, line: 201, baseType: !6, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !3897, file: !106, line: 202, baseType: !6, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !3897, file: !106, line: 206, baseType: !6, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!3930 = !{!3931, !3932, !3933, !3934, !3935}
!3931 = !DILocalVariable(name: "h", arg: 1, scope: !3893, file: !357, line: 150, type: !3896)
!3932 = !DILocalVariable(name: "size", arg: 2, scope: !3893, file: !357, line: 151, type: !71)
!3933 = !DILocalVariable(name: "alignment", arg: 3, scope: !3893, file: !357, line: 151, type: !71)
!3934 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !3893, file: !357, line: 152, type: !132)
!3935 = !DILocalVariable(name: "freefun", arg: 5, scope: !3893, file: !357, line: 153, type: !143)
!3936 = !DILocation(line: 0, scope: !3893)
!3937 = !DILocation(line: 155, column: 15, scope: !3893)
!3938 = !DILocation(line: 155, column: 21, scope: !3893)
!3939 = !DILocation(line: 156, column: 14, scope: !3893)
!3940 = !DILocation(line: 156, column: 20, scope: !3893)
!3941 = !DILocation(line: 157, column: 6, scope: !3893)
!3942 = !DILocation(line: 157, column: 20, scope: !3893)
!3943 = !DILocalVariable(name: "h", arg: 1, scope: !3944, file: !357, line: 109, type: !3896)
!3944 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !357, file: !357, line: 109, type: !3945, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!23, !3896, !71, !71}
!3947 = !{!3943, !3948, !3949, !3950, !3951}
!3948 = !DILocalVariable(name: "size", arg: 2, scope: !3944, file: !357, line: 110, type: !71)
!3949 = !DILocalVariable(name: "alignment", arg: 3, scope: !3944, file: !357, line: 110, type: !71)
!3950 = !DILocalVariable(name: "chunk", scope: !3944, file: !357, line: 112, type: !3901)
!3951 = !DILocalVariable(name: "extra", scope: !3952, file: !357, line: 127, type: !23)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !357, line: 118, column: 5)
!3953 = distinct !DILexicalBlock(scope: !3944, file: !357, line: 116, column: 7)
!3954 = !DILocation(line: 0, scope: !3944, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 158, column: 10, scope: !3893)
!3956 = !DILocation(line: 114, column: 17, scope: !3957, inlinedAt: !3955)
!3957 = distinct !DILexicalBlock(scope: !3944, file: !357, line: 114, column: 7)
!3958 = !DILocation(line: 114, column: 7, scope: !3944, inlinedAt: !3955)
!3959 = !DILocation(line: 116, column: 12, scope: !3953, inlinedAt: !3955)
!3960 = !DILocation(line: 116, column: 7, scope: !3944, inlinedAt: !3955)
!3961 = !DILocation(line: 133, column: 6, scope: !3944, inlinedAt: !3955)
!3962 = !DILocation(line: 133, column: 17, scope: !3944, inlinedAt: !3955)
!3963 = !{!1052, !1053, i64 0}
!3964 = !DILocation(line: 134, column: 33, scope: !3944, inlinedAt: !3955)
!3965 = !DILocation(line: 134, column: 6, scope: !3944, inlinedAt: !3955)
!3966 = !DILocation(line: 134, column: 21, scope: !3944, inlinedAt: !3955)
!3967 = !DILocalVariable(name: "h", arg: 1, scope: !3968, file: !357, line: 84, type: !3896)
!3968 = distinct !DISubprogram(name: "call_chunkfun", scope: !357, file: !357, line: 84, type: !3969, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!69, !3896, !71}
!3971 = !{!3967, !3972}
!3972 = !DILocalVariable(name: "size", arg: 2, scope: !3968, file: !357, line: 84, type: !71)
!3973 = !DILocation(line: 0, scope: !3968, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 136, column: 22, scope: !3944, inlinedAt: !3955)
!3975 = !DILocation(line: 89, column: 12, scope: !3976, inlinedAt: !3974)
!3976 = distinct !DILexicalBlock(scope: !3968, file: !357, line: 86, column: 7)
!3977 = !DILocation(line: 136, column: 14, scope: !3944, inlinedAt: !3955)
!3978 = !DILocation(line: 136, column: 20, scope: !3944, inlinedAt: !3955)
!3979 = !DILocation(line: 137, column: 8, scope: !3980, inlinedAt: !3955)
!3980 = distinct !DILexicalBlock(scope: !3944, file: !357, line: 137, column: 7)
!3981 = !DILocation(line: 137, column: 7, scope: !3944, inlinedAt: !3955)
!3982 = !DILocation(line: 138, column: 7, scope: !3980, inlinedAt: !3955)
!3983 = !DILocation(line: 138, column: 5, scope: !3980, inlinedAt: !3955)
!3984 = !DILocation(line: 139, column: 35, scope: !3944, inlinedAt: !3955)
!3985 = !DILocation(line: 139, column: 21, scope: !3944, inlinedAt: !3955)
!3986 = !DILocation(line: 139, column: 33, scope: !3944, inlinedAt: !3955)
!3987 = !DILocation(line: 139, column: 6, scope: !3944, inlinedAt: !3955)
!3988 = !DILocation(line: 139, column: 16, scope: !3944, inlinedAt: !3955)
!3989 = !DILocation(line: 141, column: 55, scope: !3944, inlinedAt: !3955)
!3990 = !DILocation(line: 141, column: 50, scope: !3944, inlinedAt: !3955)
!3991 = !DILocation(line: 141, column: 27, scope: !3944, inlinedAt: !3955)
!3992 = !DILocation(line: 141, column: 33, scope: !3944, inlinedAt: !3955)
!3993 = !DILocation(line: 141, column: 6, scope: !3944, inlinedAt: !3955)
!3994 = !DILocation(line: 141, column: 18, scope: !3944, inlinedAt: !3955)
!3995 = !DILocation(line: 142, column: 10, scope: !3944, inlinedAt: !3955)
!3996 = !DILocation(line: 142, column: 15, scope: !3944, inlinedAt: !3955)
!3997 = !DILocation(line: 144, column: 25, scope: !3944, inlinedAt: !3955)
!3998 = !DILocation(line: 145, column: 19, scope: !3944, inlinedAt: !3955)
!3999 = !DILocation(line: 158, column: 3, scope: !3893)
!4000 = distinct !DISubprogram(name: "_obstack_begin_1", scope: !357, file: !357, line: 162, type: !4001, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !4003)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!23, !3896, !71, !71, !136, !147, !69}
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009}
!4004 = !DILocalVariable(name: "h", arg: 1, scope: !4000, file: !357, line: 162, type: !3896)
!4005 = !DILocalVariable(name: "size", arg: 2, scope: !4000, file: !357, line: 163, type: !71)
!4006 = !DILocalVariable(name: "alignment", arg: 3, scope: !4000, file: !357, line: 163, type: !71)
!4007 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !4000, file: !357, line: 164, type: !136)
!4008 = !DILocalVariable(name: "freefun", arg: 5, scope: !4000, file: !357, line: 165, type: !147)
!4009 = !DILocalVariable(name: "arg", arg: 6, scope: !4000, file: !357, line: 166, type: !69)
!4010 = !DILocation(line: 0, scope: !4000)
!4011 = !DILocation(line: 168, column: 6, scope: !4000)
!4012 = !DILocation(line: 168, column: 15, scope: !4000)
!4013 = !DILocation(line: 168, column: 21, scope: !4000)
!4014 = !DILocation(line: 169, column: 6, scope: !4000)
!4015 = !DILocation(line: 169, column: 14, scope: !4000)
!4016 = !DILocation(line: 169, column: 20, scope: !4000)
!4017 = !DILocation(line: 170, column: 6, scope: !4000)
!4018 = !DILocation(line: 170, column: 16, scope: !4000)
!4019 = !{!1052, !825, i64 72}
!4020 = !DILocation(line: 171, column: 6, scope: !4000)
!4021 = !DILocation(line: 171, column: 20, scope: !4000)
!4022 = !DILocation(line: 0, scope: !3944, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 172, column: 10, scope: !4000)
!4024 = !DILocation(line: 114, column: 17, scope: !3957, inlinedAt: !4023)
!4025 = !DILocation(line: 114, column: 7, scope: !3944, inlinedAt: !4023)
!4026 = !DILocation(line: 116, column: 12, scope: !3953, inlinedAt: !4023)
!4027 = !DILocation(line: 116, column: 7, scope: !3944, inlinedAt: !4023)
!4028 = !DILocation(line: 133, column: 6, scope: !3944, inlinedAt: !4023)
!4029 = !DILocation(line: 133, column: 17, scope: !3944, inlinedAt: !4023)
!4030 = !DILocation(line: 134, column: 33, scope: !3944, inlinedAt: !4023)
!4031 = !DILocation(line: 134, column: 6, scope: !3944, inlinedAt: !4023)
!4032 = !DILocation(line: 134, column: 21, scope: !3944, inlinedAt: !4023)
!4033 = !DILocation(line: 0, scope: !3968, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 136, column: 22, scope: !3944, inlinedAt: !4023)
!4035 = !DILocation(line: 87, column: 12, scope: !3976, inlinedAt: !4034)
!4036 = !DILocation(line: 136, column: 14, scope: !3944, inlinedAt: !4023)
!4037 = !DILocation(line: 136, column: 20, scope: !3944, inlinedAt: !4023)
!4038 = !DILocation(line: 137, column: 8, scope: !3980, inlinedAt: !4023)
!4039 = !DILocation(line: 137, column: 7, scope: !3944, inlinedAt: !4023)
!4040 = !DILocation(line: 138, column: 7, scope: !3980, inlinedAt: !4023)
!4041 = !DILocation(line: 138, column: 5, scope: !3980, inlinedAt: !4023)
!4042 = !DILocation(line: 139, column: 35, scope: !3944, inlinedAt: !4023)
!4043 = !DILocation(line: 139, column: 21, scope: !3944, inlinedAt: !4023)
!4044 = !DILocation(line: 139, column: 33, scope: !3944, inlinedAt: !4023)
!4045 = !DILocation(line: 139, column: 6, scope: !3944, inlinedAt: !4023)
!4046 = !DILocation(line: 139, column: 16, scope: !3944, inlinedAt: !4023)
!4047 = !DILocation(line: 141, column: 55, scope: !3944, inlinedAt: !4023)
!4048 = !DILocation(line: 141, column: 50, scope: !3944, inlinedAt: !4023)
!4049 = !DILocation(line: 141, column: 27, scope: !3944, inlinedAt: !4023)
!4050 = !DILocation(line: 141, column: 33, scope: !3944, inlinedAt: !4023)
!4051 = !DILocation(line: 141, column: 6, scope: !3944, inlinedAt: !4023)
!4052 = !DILocation(line: 141, column: 18, scope: !3944, inlinedAt: !4023)
!4053 = !DILocation(line: 142, column: 10, scope: !3944, inlinedAt: !4023)
!4054 = !DILocation(line: 142, column: 15, scope: !3944, inlinedAt: !4023)
!4055 = !DILocation(line: 144, column: 25, scope: !3944, inlinedAt: !4023)
!4056 = !DILocation(line: 145, column: 19, scope: !3944, inlinedAt: !4023)
!4057 = !DILocation(line: 172, column: 3, scope: !4000)
!4058 = distinct !DISubprogram(name: "_obstack_newchunk", scope: !357, file: !357, line: 182, type: !4059, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !3896, !71}
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070}
!4062 = !DILocalVariable(name: "h", arg: 1, scope: !4058, file: !357, line: 182, type: !3896)
!4063 = !DILocalVariable(name: "length", arg: 2, scope: !4058, file: !357, line: 182, type: !71)
!4064 = !DILocalVariable(name: "old_chunk", scope: !4058, file: !357, line: 184, type: !3901)
!4065 = !DILocalVariable(name: "new_chunk", scope: !4058, file: !357, line: 185, type: !3901)
!4066 = !DILocalVariable(name: "obj_size", scope: !4058, file: !357, line: 186, type: !71)
!4067 = !DILocalVariable(name: "object_base", scope: !4058, file: !357, line: 187, type: !25)
!4068 = !DILocalVariable(name: "sum1", scope: !4058, file: !357, line: 190, type: !71)
!4069 = !DILocalVariable(name: "sum2", scope: !4058, file: !357, line: 191, type: !71)
!4070 = !DILocalVariable(name: "new_size", scope: !4058, file: !357, line: 192, type: !71)
!4071 = !DILocation(line: 0, scope: !4058)
!4072 = !DILocation(line: 184, column: 41, scope: !4058)
!4073 = !DILocation(line: 186, column: 24, scope: !4058)
!4074 = !DILocation(line: 186, column: 39, scope: !4058)
!4075 = !DILocation(line: 186, column: 34, scope: !4058)
!4076 = !DILocation(line: 190, column: 26, scope: !4058)
!4077 = !DILocation(line: 191, column: 27, scope: !4058)
!4078 = !DILocation(line: 191, column: 22, scope: !4058)
!4079 = !DILocation(line: 192, column: 38, scope: !4058)
!4080 = !DILocation(line: 192, column: 26, scope: !4058)
!4081 = !DILocation(line: 192, column: 44, scope: !4058)
!4082 = !DILocation(line: 193, column: 16, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4058, file: !357, line: 193, column: 7)
!4084 = !DILocation(line: 193, column: 7, scope: !4058)
!4085 = !DILocation(line: 195, column: 21, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4058, file: !357, line: 195, column: 7)
!4087 = !DILocation(line: 195, column: 16, scope: !4086)
!4088 = !DILocation(line: 195, column: 7, scope: !4058)
!4089 = !DILocation(line: 199, column: 16, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4058, file: !357, line: 199, column: 7)
!4091 = !DILocation(line: 199, column: 24, scope: !4090)
!4092 = !DILocation(line: 0, scope: !3968, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 200, column: 17, scope: !4090)
!4094 = !DILocation(line: 86, column: 10, scope: !3976, inlinedAt: !4093)
!4095 = !DILocation(line: 86, column: 7, scope: !3976, inlinedAt: !4093)
!4096 = !DILocation(line: 86, column: 7, scope: !3968, inlinedAt: !4093)
!4097 = !DILocation(line: 87, column: 15, scope: !3976, inlinedAt: !4093)
!4098 = !DILocation(line: 87, column: 24, scope: !3976, inlinedAt: !4093)
!4099 = !DILocation(line: 87, column: 34, scope: !3976, inlinedAt: !4093)
!4100 = !DILocation(line: 87, column: 12, scope: !3976, inlinedAt: !4093)
!4101 = !DILocation(line: 87, column: 5, scope: !3976, inlinedAt: !4093)
!4102 = !DILocation(line: 89, column: 24, scope: !3976, inlinedAt: !4093)
!4103 = !DILocation(line: 89, column: 12, scope: !3976, inlinedAt: !4093)
!4104 = !DILocation(line: 89, column: 5, scope: !3976, inlinedAt: !4093)
!4105 = !DILocation(line: 0, scope: !3976, inlinedAt: !4093)
!4106 = !DILocation(line: 201, column: 8, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4058, file: !357, line: 201, column: 7)
!4108 = !DILocation(line: 201, column: 7, scope: !4058)
!4109 = !DILocation(line: 202, column: 7, scope: !4107)
!4110 = !DILocation(line: 202, column: 5, scope: !4107)
!4111 = !DILocation(line: 203, column: 12, scope: !4058)
!4112 = !DILocation(line: 204, column: 14, scope: !4058)
!4113 = !DILocation(line: 204, column: 19, scope: !4058)
!4114 = !DILocation(line: 205, column: 58, scope: !4058)
!4115 = !DILocation(line: 205, column: 25, scope: !4058)
!4116 = !DILocation(line: 205, column: 37, scope: !4058)
!4117 = !DILocation(line: 205, column: 14, scope: !4058)
!4118 = !DILocation(line: 205, column: 20, scope: !4058)
!4119 = !DILocation(line: 209, column: 5, scope: !4058)
!4120 = !DILocation(line: 212, column: 27, scope: !4058)
!4121 = !DILocalVariable(name: "__dest", arg: 1, scope: !4122, file: !2143, line: 26, type: !3560)
!4122 = distinct !DISubprogram(name: "memcpy", scope: !2143, file: !2143, line: 26, type: !3558, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !4123)
!4123 = !{!4121, !4124, !4125}
!4124 = !DILocalVariable(name: "__src", arg: 2, scope: !4122, file: !2143, line: 26, type: !3561)
!4125 = !DILocalVariable(name: "__len", arg: 3, scope: !4122, file: !2143, line: 26, type: !71)
!4126 = !DILocation(line: 0, scope: !4122, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 212, column: 3, scope: !4058)
!4128 = !DILocation(line: 29, column: 10, scope: !4122, inlinedAt: !4127)
!4129 = !DILocation(line: 217, column: 11, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4058, file: !357, line: 217, column: 7)
!4131 = !DILocation(line: 217, column: 8, scope: !4130)
!4132 = !DILocation(line: 218, column: 7, scope: !4130)
!4133 = !DILocation(line: 218, column: 14, scope: !4130)
!4134 = !DILocation(line: 219, column: 14, scope: !4130)
!4135 = !DILocation(line: 219, column: 11, scope: !4130)
!4136 = !DILocation(line: 217, column: 7, scope: !4058)
!4137 = !DILocation(line: 222, column: 36, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4130, file: !357, line: 221, column: 5)
!4139 = !DILocation(line: 222, column: 23, scope: !4138)
!4140 = !DILocation(line: 223, column: 24, scope: !4138)
!4141 = !DILocalVariable(name: "h", arg: 1, scope: !4142, file: !357, line: 93, type: !3896)
!4142 = distinct !DISubprogram(name: "call_freefun", scope: !357, file: !357, line: 93, type: !4143, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !3896, !69}
!4145 = !{!4141, !4146}
!4146 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !4142, file: !357, line: 93, type: !69)
!4147 = !DILocation(line: 0, scope: !4142, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 223, column: 7, scope: !4138)
!4149 = !DILocation(line: 95, column: 10, scope: !4150, inlinedAt: !4148)
!4150 = distinct !DILexicalBlock(scope: !4142, file: !357, line: 95, column: 7)
!4151 = !DILocation(line: 95, column: 7, scope: !4150, inlinedAt: !4148)
!4152 = !DILocation(line: 95, column: 7, scope: !4142, inlinedAt: !4148)
!4153 = !DILocation(line: 96, column: 8, scope: !4150, inlinedAt: !4148)
!4154 = !DILocation(line: 96, column: 16, scope: !4150, inlinedAt: !4148)
!4155 = !DILocation(line: 96, column: 26, scope: !4150, inlinedAt: !4148)
!4156 = !DILocation(line: 96, column: 5, scope: !4150, inlinedAt: !4148)
!4157 = !DILocation(line: 98, column: 16, scope: !4150, inlinedAt: !4148)
!4158 = !DILocation(line: 98, column: 5, scope: !4150, inlinedAt: !4148)
!4159 = !DILocation(line: 226, column: 18, scope: !4058)
!4160 = !DILocation(line: 227, column: 33, scope: !4058)
!4161 = !DILocation(line: 227, column: 16, scope: !4058)
!4162 = !DILocation(line: 229, column: 25, scope: !4058)
!4163 = !DILocation(line: 230, column: 1, scope: !4058)
!4164 = distinct !DISubprogram(name: "_obstack_allocated_p", scope: !357, file: !357, line: 241, type: !4165, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !4167)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!23, !3896, !69}
!4167 = !{!4168, !4169, !4170, !4171}
!4168 = !DILocalVariable(name: "h", arg: 1, scope: !4164, file: !357, line: 241, type: !3896)
!4169 = !DILocalVariable(name: "obj", arg: 2, scope: !4164, file: !357, line: 241, type: !69)
!4170 = !DILocalVariable(name: "lp", scope: !4164, file: !357, line: 243, type: !3901)
!4171 = !DILocalVariable(name: "plp", scope: !4164, file: !357, line: 244, type: !3901)
!4172 = !DILocation(line: 0, scope: !4164)
!4173 = !DILocation(line: 246, column: 13, scope: !4164)
!4174 = !DILocation(line: 250, column: 13, scope: !4164)
!4175 = !DILocation(line: 250, column: 18, scope: !4164)
!4176 = !DILocation(line: 250, column: 22, scope: !4164)
!4177 = !DILocation(line: 250, column: 34, scope: !4164)
!4178 = !DILocation(line: 250, column: 41, scope: !4164)
!4179 = !DILocation(line: 250, column: 59, scope: !4164)
!4180 = !DILocation(line: 250, column: 65, scope: !4164)
!4181 = !DILocation(line: 250, column: 3, scope: !4164)
!4182 = !DILocation(line: 252, column: 17, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4164, file: !357, line: 251, column: 5)
!4184 = distinct !{!4184, !4181, !4185, !867}
!4185 = !DILocation(line: 254, column: 5, scope: !4164)
!4186 = !DILocation(line: 255, column: 3, scope: !4164)
!4187 = distinct !DISubprogram(name: "_obstack_free", scope: !357, file: !357, line: 262, type: !4143, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !4188)
!4188 = !{!4189, !4190, !4191, !4192}
!4189 = !DILocalVariable(name: "h", arg: 1, scope: !4187, file: !357, line: 262, type: !3896)
!4190 = !DILocalVariable(name: "obj", arg: 2, scope: !4187, file: !357, line: 262, type: !69)
!4191 = !DILocalVariable(name: "lp", scope: !4187, file: !357, line: 264, type: !3901)
!4192 = !DILocalVariable(name: "plp", scope: !4187, file: !357, line: 265, type: !3901)
!4193 = !DILocation(line: 0, scope: !4187)
!4194 = !DILocation(line: 267, column: 11, scope: !4187)
!4195 = !DILocation(line: 271, column: 13, scope: !4187)
!4196 = !DILocation(line: 271, column: 18, scope: !4187)
!4197 = !DILocation(line: 271, column: 22, scope: !4187)
!4198 = !DILocation(line: 271, column: 34, scope: !4187)
!4199 = !DILocation(line: 271, column: 41, scope: !4187)
!4200 = !DILocation(line: 271, column: 59, scope: !4187)
!4201 = !DILocation(line: 271, column: 65, scope: !4187)
!4202 = !DILocation(line: 271, column: 3, scope: !4187)
!4203 = !DILocation(line: 273, column: 17, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4187, file: !357, line: 272, column: 5)
!4205 = !DILocation(line: 0, scope: !4142, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 274, column: 7, scope: !4204)
!4207 = !DILocation(line: 95, column: 10, scope: !4150, inlinedAt: !4206)
!4208 = !DILocation(line: 95, column: 7, scope: !4150, inlinedAt: !4206)
!4209 = !DILocation(line: 95, column: 7, scope: !4142, inlinedAt: !4206)
!4210 = !DILocation(line: 96, column: 16, scope: !4150, inlinedAt: !4206)
!4211 = !DILocation(line: 96, column: 26, scope: !4150, inlinedAt: !4206)
!4212 = !DILocation(line: 96, column: 5, scope: !4150, inlinedAt: !4206)
!4213 = !DILocation(line: 98, column: 16, scope: !4150, inlinedAt: !4206)
!4214 = !DILocation(line: 98, column: 5, scope: !4150, inlinedAt: !4206)
!4215 = !DILocation(line: 278, column: 29, scope: !4204)
!4216 = distinct !{!4216, !4202, !4217, !867}
!4217 = !DILocation(line: 279, column: 5, scope: !4187)
!4218 = !DILocation(line: 282, column: 27, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !357, line: 281, column: 5)
!4220 = distinct !DILexicalBlock(scope: !4187, file: !357, line: 280, column: 7)
!4221 = !DILocation(line: 282, column: 37, scope: !4219)
!4222 = !DILocation(line: 282, column: 10, scope: !4219)
!4223 = !DILocation(line: 282, column: 22, scope: !4219)
!4224 = !DILocation(line: 283, column: 28, scope: !4219)
!4225 = !DILocation(line: 283, column: 10, scope: !4219)
!4226 = !DILocation(line: 283, column: 22, scope: !4219)
!4227 = !DILocation(line: 284, column: 16, scope: !4219)
!4228 = !DILocation(line: 285, column: 5, scope: !4219)
!4229 = !DILocation(line: 286, column: 16, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4220, file: !357, line: 286, column: 12)
!4231 = !DILocation(line: 286, column: 12, scope: !4220)
!4232 = !DILocation(line: 288, column: 5, scope: !4230)
!4233 = !DILocation(line: 289, column: 1, scope: !4187)
!4234 = distinct !DISubprogram(name: "_obstack_memory_used", scope: !357, file: !357, line: 292, type: !4235, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !356, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!71, !3896}
!4237 = !{!4238, !4239, !4240}
!4238 = !DILocalVariable(name: "h", arg: 1, scope: !4234, file: !357, line: 292, type: !3896)
!4239 = !DILocalVariable(name: "lp", scope: !4234, file: !357, line: 294, type: !3901)
!4240 = !DILocalVariable(name: "nbytes", scope: !4234, file: !357, line: 295, type: !71)
!4241 = !DILocation(line: 0, scope: !4234)
!4242 = !DILocation(line: 297, column: 16, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4234, file: !357, line: 297, column: 3)
!4244 = !DILocation(line: 0, scope: !4243)
!4245 = !DILocation(line: 297, column: 26, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4243, file: !357, line: 297, column: 3)
!4247 = !DILocation(line: 297, column: 3, scope: !4243)
!4248 = !DILocation(line: 299, column: 21, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4246, file: !357, line: 298, column: 5)
!4250 = !DILocation(line: 299, column: 27, scope: !4249)
!4251 = !DILocation(line: 299, column: 14, scope: !4249)
!4252 = !DILocation(line: 297, column: 41, scope: !4246)
!4253 = distinct !{!4253, !4247, !4254, !867}
!4254 = !DILocation(line: 300, column: 5, scope: !4243)
!4255 = !DILocation(line: 301, column: 3, scope: !4234)
!4256 = distinct !DISubprogram(name: "close_stream", scope: !413, file: !413, line: 56, type: !4257, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !4293)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!23, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 7, baseType: !4261)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 49, size: 1728, elements: !4262)
!4262 = !{!4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4261, file: !20, line: 51, baseType: !23, size: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4261, file: !20, line: 54, baseType: !25, size: 64, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4261, file: !20, line: 55, baseType: !25, size: 64, offset: 128)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4261, file: !20, line: 56, baseType: !25, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4261, file: !20, line: 57, baseType: !25, size: 64, offset: 256)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4261, file: !20, line: 58, baseType: !25, size: 64, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4261, file: !20, line: 59, baseType: !25, size: 64, offset: 384)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4261, file: !20, line: 60, baseType: !25, size: 64, offset: 448)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4261, file: !20, line: 61, baseType: !25, size: 64, offset: 512)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4261, file: !20, line: 64, baseType: !25, size: 64, offset: 576)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4261, file: !20, line: 65, baseType: !25, size: 64, offset: 640)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4261, file: !20, line: 66, baseType: !25, size: 64, offset: 704)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4261, file: !20, line: 68, baseType: !38, size: 64, offset: 768)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4261, file: !20, line: 70, baseType: !4277, size: 64, offset: 832)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4261, file: !20, line: 72, baseType: !23, size: 32, offset: 896)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4261, file: !20, line: 73, baseType: !23, size: 32, offset: 928)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4261, file: !20, line: 74, baseType: !45, size: 64, offset: 960)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4261, file: !20, line: 77, baseType: !49, size: 16, offset: 1024)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4261, file: !20, line: 78, baseType: !51, size: 8, offset: 1040)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4261, file: !20, line: 79, baseType: !53, size: 8, offset: 1048)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4261, file: !20, line: 81, baseType: !57, size: 64, offset: 1088)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4261, file: !20, line: 89, baseType: !60, size: 64, offset: 1152)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4261, file: !20, line: 91, baseType: !62, size: 64, offset: 1216)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4261, file: !20, line: 92, baseType: !65, size: 64, offset: 1280)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4261, file: !20, line: 93, baseType: !4277, size: 64, offset: 1344)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4261, file: !20, line: 94, baseType: !69, size: 64, offset: 1408)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4261, file: !20, line: 95, baseType: !71, size: 64, offset: 1472)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4261, file: !20, line: 96, baseType: !23, size: 32, offset: 1536)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4261, file: !20, line: 98, baseType: !76, size: 160, offset: 1568)
!4293 = !{!4294, !4295, !4297, !4298}
!4294 = !DILocalVariable(name: "stream", arg: 1, scope: !4256, file: !413, line: 56, type: !4259)
!4295 = !DILocalVariable(name: "some_pending", scope: !4256, file: !413, line: 58, type: !4296)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!4297 = !DILocalVariable(name: "prev_fail", scope: !4256, file: !413, line: 59, type: !4296)
!4298 = !DILocalVariable(name: "fclose_fail", scope: !4256, file: !413, line: 60, type: !4296)
!4299 = !DILocation(line: 0, scope: !4256)
!4300 = !DILocation(line: 58, column: 30, scope: !4256)
!4301 = !DILocalVariable(name: "__stream", arg: 1, scope: !4302, file: !1117, line: 135, type: !4259)
!4302 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1117, file: !1117, line: 135, type: !4257, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !4303)
!4303 = !{!4301}
!4304 = !DILocation(line: 0, scope: !4302, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 59, column: 27, scope: !4256)
!4306 = !DILocation(line: 137, column: 10, scope: !4302, inlinedAt: !4305)
!4307 = !DILocation(line: 59, column: 43, scope: !4256)
!4308 = !DILocation(line: 60, column: 29, scope: !4256)
!4309 = !DILocation(line: 60, column: 45, scope: !4256)
!4310 = !DILocation(line: 70, column: 17, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4256, file: !413, line: 70, column: 7)
!4312 = !DILocation(line: 58, column: 50, scope: !4256)
!4313 = !DILocation(line: 70, column: 33, scope: !4311)
!4314 = !DILocation(line: 70, column: 53, scope: !4311)
!4315 = !DILocation(line: 70, column: 59, scope: !4311)
!4316 = !DILocation(line: 70, column: 7, scope: !4256)
!4317 = !DILocation(line: 72, column: 11, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4311, file: !413, line: 71, column: 5)
!4319 = !DILocation(line: 73, column: 9, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4318, file: !413, line: 72, column: 11)
!4321 = !DILocation(line: 73, column: 15, scope: !4320)
!4322 = !DILocation(line: 78, column: 1, scope: !4256)
!4323 = distinct !DISubprogram(name: "hard_locale", scope: !415, file: !415, line: 27, type: !1616, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !4324)
!4324 = !{!4325, !4326}
!4325 = !DILocalVariable(name: "category", arg: 1, scope: !4323, file: !415, line: 27, type: !23)
!4326 = !DILocalVariable(name: "locale", scope: !4323, file: !415, line: 29, type: !4327)
!4327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2056, elements: !4328)
!4328 = !{!4329}
!4329 = !DISubrange(count: 257)
!4330 = !DILocation(line: 0, scope: !4323)
!4331 = !DILocation(line: 29, column: 3, scope: !4323)
!4332 = !DILocation(line: 29, column: 8, scope: !4323)
!4333 = !DILocation(line: 31, column: 7, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4323, file: !415, line: 31, column: 7)
!4335 = !DILocation(line: 31, column: 7, scope: !4323)
!4336 = !DILocation(line: 34, column: 12, scope: !4323)
!4337 = !DILocation(line: 34, column: 38, scope: !4323)
!4338 = !DILocation(line: 34, column: 41, scope: !4323)
!4339 = !DILocation(line: 34, column: 66, scope: !4323)
!4340 = !DILocation(line: 35, column: 1, scope: !4323)
!4341 = distinct !DISubprogram(name: "locale_charset", scope: !417, file: !417, line: 831, type: !4342, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !4344)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!79}
!4344 = !{!4345}
!4345 = !DILocalVariable(name: "codeset", scope: !4341, file: !417, line: 833, type: !79)
!4346 = !DILocation(line: 847, column: 13, scope: !4341)
!4347 = !DILocation(line: 0, scope: !4341)
!4348 = !DILocation(line: 911, column: 15, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4341, file: !417, line: 911, column: 7)
!4350 = !DILocation(line: 911, column: 7, scope: !4341)
!4351 = !DILocation(line: 1070, column: 13, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !417, line: 1070, column: 13)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !417, line: 1060, column: 7)
!4354 = distinct !DILexicalBlock(scope: !4341, file: !417, line: 1019, column: 3)
!4355 = !DILocation(line: 1070, column: 24, scope: !4352)
!4356 = !DILocation(line: 1070, column: 13, scope: !4353)
!4357 = !DILocation(line: 1158, column: 3, scope: !4341)
!4358 = !DISubprogram(name: "nl_langinfo", scope: !420, file: !420, line: 661, type: !4359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !276)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!25, !23}
!4361 = distinct !DISubprogram(name: "setlocale_null_r", scope: !806, file: !806, line: 269, type: !4362, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4364)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!23, !23, !25, !71}
!4364 = !{!4365, !4366, !4367}
!4365 = !DILocalVariable(name: "category", arg: 1, scope: !4361, file: !806, line: 269, type: !23)
!4366 = !DILocalVariable(name: "buf", arg: 2, scope: !4361, file: !806, line: 269, type: !25)
!4367 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4361, file: !806, line: 269, type: !71)
!4368 = !DILocation(line: 0, scope: !4361)
!4369 = !DILocalVariable(name: "category", arg: 1, scope: !4370, file: !806, line: 91, type: !23)
!4370 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !806, file: !806, line: 91, type: !4362, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4371)
!4371 = !{!4369, !4372, !4373, !4374, !4375}
!4372 = !DILocalVariable(name: "buf", arg: 2, scope: !4370, file: !806, line: 91, type: !25)
!4373 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4370, file: !806, line: 91, type: !71)
!4374 = !DILocalVariable(name: "result", scope: !4370, file: !806, line: 140, type: !79)
!4375 = !DILocalVariable(name: "length", scope: !4376, file: !806, line: 154, type: !71)
!4376 = distinct !DILexicalBlock(scope: !4377, file: !806, line: 153, column: 5)
!4377 = distinct !DILexicalBlock(scope: !4370, file: !806, line: 142, column: 7)
!4378 = !DILocation(line: 0, scope: !4370, inlinedAt: !4379)
!4379 = distinct !DILocation(line: 274, column: 10, scope: !4361)
!4380 = !DILocalVariable(name: "category", arg: 1, scope: !4381, file: !806, line: 60, type: !23)
!4381 = distinct !DISubprogram(name: "setlocale_null_androidfix", scope: !806, file: !806, line: 60, type: !4382, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4384)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!79, !23}
!4384 = !{!4380, !4385}
!4385 = !DILocalVariable(name: "result", scope: !4381, file: !806, line: 62, type: !79)
!4386 = !DILocation(line: 0, scope: !4381, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 140, column: 24, scope: !4370, inlinedAt: !4379)
!4388 = !DILocation(line: 62, column: 24, scope: !4381, inlinedAt: !4387)
!4389 = !DILocation(line: 142, column: 14, scope: !4377, inlinedAt: !4379)
!4390 = !DILocation(line: 142, column: 7, scope: !4370, inlinedAt: !4379)
!4391 = !DILocation(line: 145, column: 19, scope: !4392, inlinedAt: !4379)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !806, line: 145, column: 11)
!4393 = distinct !DILexicalBlock(scope: !4377, file: !806, line: 143, column: 5)
!4394 = !DILocation(line: 145, column: 11, scope: !4393, inlinedAt: !4379)
!4395 = !DILocation(line: 149, column: 16, scope: !4392, inlinedAt: !4379)
!4396 = !DILocation(line: 149, column: 9, scope: !4392, inlinedAt: !4379)
!4397 = !DILocation(line: 154, column: 23, scope: !4376, inlinedAt: !4379)
!4398 = !DILocation(line: 0, scope: !4376, inlinedAt: !4379)
!4399 = !DILocation(line: 155, column: 18, scope: !4400, inlinedAt: !4379)
!4400 = distinct !DILexicalBlock(scope: !4376, file: !806, line: 155, column: 11)
!4401 = !DILocation(line: 155, column: 11, scope: !4376, inlinedAt: !4379)
!4402 = !DILocation(line: 157, column: 39, scope: !4403, inlinedAt: !4379)
!4403 = distinct !DILexicalBlock(scope: !4400, file: !806, line: 156, column: 9)
!4404 = !DILocalVariable(name: "__dest", arg: 1, scope: !4405, file: !2143, line: 26, type: !3560)
!4405 = distinct !DISubprogram(name: "memcpy", scope: !2143, file: !2143, line: 26, type: !3558, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4406)
!4406 = !{!4404, !4407, !4408}
!4407 = !DILocalVariable(name: "__src", arg: 2, scope: !4405, file: !2143, line: 26, type: !3561)
!4408 = !DILocalVariable(name: "__len", arg: 3, scope: !4405, file: !2143, line: 26, type: !71)
!4409 = !DILocation(line: 0, scope: !4405, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 157, column: 11, scope: !4403, inlinedAt: !4379)
!4411 = !DILocation(line: 29, column: 10, scope: !4405, inlinedAt: !4410)
!4412 = !DILocation(line: 158, column: 11, scope: !4403, inlinedAt: !4379)
!4413 = !DILocation(line: 162, column: 23, scope: !4414, inlinedAt: !4379)
!4414 = distinct !DILexicalBlock(scope: !4415, file: !806, line: 162, column: 15)
!4415 = distinct !DILexicalBlock(scope: !4400, file: !806, line: 161, column: 9)
!4416 = !DILocation(line: 162, column: 15, scope: !4415, inlinedAt: !4379)
!4417 = !DILocation(line: 167, column: 44, scope: !4418, inlinedAt: !4379)
!4418 = distinct !DILexicalBlock(scope: !4414, file: !806, line: 163, column: 13)
!4419 = !DILocation(line: 0, scope: !4405, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 167, column: 15, scope: !4418, inlinedAt: !4379)
!4421 = !DILocation(line: 29, column: 10, scope: !4405, inlinedAt: !4420)
!4422 = !DILocation(line: 168, column: 15, scope: !4418, inlinedAt: !4379)
!4423 = !DILocation(line: 168, column: 32, scope: !4418, inlinedAt: !4379)
!4424 = !DILocation(line: 169, column: 13, scope: !4418, inlinedAt: !4379)
!4425 = !DILocation(line: 0, scope: !4377, inlinedAt: !4379)
!4426 = !DILocation(line: 274, column: 3, scope: !4361)
!4427 = distinct !DISubprogram(name: "setlocale_null", scope: !806, file: !806, line: 301, type: !4382, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !805, retainedNodes: !4428)
!4428 = !{!4429}
!4429 = !DILocalVariable(name: "category", arg: 1, scope: !4427, file: !806, line: 301, type: !23)
!4430 = !DILocation(line: 0, scope: !4427)
!4431 = !DILocation(line: 0, scope: !4381, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 304, column: 10, scope: !4427)
!4433 = !DILocation(line: 62, column: 24, scope: !4381, inlinedAt: !4432)
!4434 = !DILocation(line: 304, column: 3, scope: !4427)
