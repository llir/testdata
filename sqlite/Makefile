# SQLite version.
VER=3250200

EXE=shell
SRC_C=shell.c sqlite3.c
SRC_BC=$(addsuffix .bc,$(EXE))
SRC_LL=$(addprefix test/,$(SRC_BC:.bc=.ll))
KEEP=$(addprefix sqlite-amalgamation-$(VER)/,$(EXE) $(SRC_BC))
TESTDATA=$(SRC_LL)

all: $(KEEP) $(TESTDATA)

# Produce LLVM IR assembly files from LLVM IR bitcode.
test/%.ll: sqlite-amalgamation-$(VER)/%.bc
	mkdir -p test
	llvm-dis -o $@ $<

# Extract LLVM IR bitcode from executables.
sqlite-amalgamation-$(VER)/%.bc: sqlite-amalgamation-$(VER)/%
	extract-bc $<

# Compile executables using WLLVM.
.ONESHELL:
sqlite-amalgamation-$(VER)/$(EXE): | sqlite-amalgamation-$(VER)
	cd sqlite-amalgamation-$(VER)
	export LLVM_COMPILER=clang
	wllvm -g -o $(EXE) $(SRC_C) -lpthread -ldl

# Fetch source code.
fetch: sqlite-amalgamation-$(VER)

sqlite-amalgamation-$(VER): | sqlite-amalgamation-$(VER).zip
	unzip sqlite-amalgamation-$(VER).zip

sqlite-amalgamation-$(VER).zip:
	wget -O $@ https://www.sqlite.org/2018/sqlite-amalgamation-$(VER).zip
	touch $@

clean:
	find test -type f -name '*.ll' | xargs -I '{}' $(RM) '{}'
	find test -type d | xargs -I '{}' rmdir -p --ignore-fail-on-non-empty '{}'
	$(RM) -R sqlite-amalgamation-$(VER)
	$(RM) sqlite-amalgamation-$(VER).zip

.PHONY: all fetch clean
