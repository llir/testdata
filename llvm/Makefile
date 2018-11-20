# LLVM version.
VER=7.0.0

ROOT_DIR=$(shell pwd)

all: prepare

# Copy *.ll test cases.
.ONESHELL:
prepare: llvm-${VER}.src
	cd llvm-${VER}.src/test/
	find . -type d | xargs -I '{}' mkdir -p '${ROOT_DIR}/test/{}'
	find . -type f -name '*.ll' | xargs -I '{}' cp '{}' '${ROOT_DIR}/test/{}'
	cd ${ROOT_DIR}
	find test -type d | xargs -I '{}' rmdir -p --ignore-fail-on-non-empty '{}'

# Fetch source code.
fetch: llvm-${VER}.src

llvm-${VER}.src: | llvm-${VER}.src.tar.xz
	tar -xJf llvm-${VER}.src.tar.xz

llvm-${VER}.src.tar.xz:
	wget -O $@ "https://releases.llvm.org/${VER}/llvm-${VER}.src.tar.xz"
	touch $@

clean:
	$(RM) -R -v test
	$(RM) -R -v llvm-${VER}.src
	$(RM) -v llvm-${VER}.src.tar.xz

.PHONY: all fetch clean
