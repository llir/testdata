# LLVM version.
VER=7.0.0

all:

fetch: llvm-${VER}.src

llvm-${VER}.src: | llvm-${VER}.src.tar.xz
	tar -xJf llvm-${VER}.src.tar.xz

llvm-${VER}.src.tar.xz:
	wget -O $@ "https://releases.llvm.org/${VER}/llvm-${VER}.src.tar.xz"
	touch $@

.PHONY: all fetch
