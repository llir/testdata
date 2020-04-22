# GNU Coreutils version.
VER=8.30

# List of programs retrieved with:
#
#    find . -type f -executable | grep -v dcgen | grep -v "\.so" | sort
EXE=[ b2sum base32 base64 basename cat chcon chgrp chmod chown chroot cksum comm cp csplit cut date dd df dir dircolors dirname du echo env expand expr factor false fmt fold getlimits ginstall groups head hostid id join kill link ln logname ls make-prime-list md5sum mkdir mkfifo mknod mktemp mv nice nl nohup nproc numfmt od paste pathchk pinky pr printenv printf ptx pwd readlink realpath rm rmdir runcon seq sha1sum sha224sum sha256sum sha384sum sha512sum shred shuf sleep sort split stat stdbuf stty sum sync tac tail tee test timeout touch tr true truncate tsort tty uname unexpand uniq unlink uptime users vdir wc who whoami yes
SRC_BC=$(addsuffix .bc,$(EXE))
SRC_LL=$(SRC_BC:.bc=.ll)
KEEP=$(addprefix coreutils-$(VER)/src/,$(EXE) $(SRC_BC))
TESTDATA=$(addprefix test/,$(SRC_LL))

all: $(KEEP) $(TESTDATA)

# Produce LLVM IR assembly files from LLVM IR bitcode.
test/%.ll: coreutils-$(VER)/src/%.bc
	mkdir -p test
	llvm-dis -o $@ $<

# Extract LLVM IR bitcode from executables.
coreutils-$(VER)/src/%.bc: coreutils-$(VER)/src/%
	get-bc $<

# Compile executables using WLLVM.
.ONESHELL:
coreutils-$(VER)/src/$(EXE): | coreutils-$(VER)
	cd coreutils-$(VER)
	export LLVM_COMPILER=clang
	CC=gclang ./configure
	make

# Fetch source code.
fetch: coreutils-$(VER)

coreutils-$(VER): | coreutils-$(VER).tar.xz
	tar -xJf coreutils-$(VER).tar.xz

coreutils-$(VER).tar.xz:
	wget -O $@ http://ftp.gnu.org/gnu/coreutils/coreutils-$(VER).tar.xz
	touch $@

clean:
	find test -type f -name '*.ll' | xargs -I '{}' $(RM) '{}'
	find test -type d | xargs -I '{}' rmdir -p --ignore-fail-on-non-empty '{}'
	$(RM) -R coreutils-$(VER)
	$(RM) coreutils-$(VER).tar.xz

.PHONY: all fetch clean
