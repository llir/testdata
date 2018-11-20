# SQLite version.
VER=3250200

EXE=shell
C=shell.c sqlite3.c
BC=$(addsuffix .bc,$(EXE))
LL=$(BC:.bc=.ll)
KEEP=$(addprefix sqlite-amalgamation-$(VER)/,$(EXE) $(BC))
TESTDATA=$(LL)

all: $(KEEP) $(TESTDATA)

# Produce LLVM IR assembly files from LLVM IR bitcode.
%.ll: sqlite-amalgamation-$(VER)/%.bc
	llvm-dis -o $@ $<

# Extract LLVM IR bitcode from executables.
sqlite-amalgamation-$(VER)/%.bc: sqlite-amalgamation-$(VER)/%
	extract-bc $<

# Compile executables using WLLVM.
.ONESHELL:
sqlite-amalgamation-$(VER)/$(EXE): | sqlite-amalgamation-$(VER)
	cd sqlite-amalgamation-$(VER)
	export LLVM_COMPILER=clang
	wllvm -g -o $(EXE) $(C) -lpthread -ldl

# Fetch source code.
fetch: sqlite-amalgamation-$(VER)

sqlite-amalgamation-$(VER): | sqlite-amalgamation-$(VER).zip
	unzip sqlite-amalgamation-$(VER).zip

sqlite-amalgamation-$(VER).zip:
	wget -O $@ https://www.sqlite.org/2018/sqlite-amalgamation-$(VER).zip
	touch $@

clean:
	$(RM) *.ll
	$(RM) -R sqlite-amalgamation-$(VER)
	$(RM) sqlite-amalgamation-$(VER).zip

.PHONY: all fetch clean
