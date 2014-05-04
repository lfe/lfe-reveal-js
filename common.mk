PROJECT = lfe-reveal-js
LIB = lfe-reveal-js
DEPS = ./deps
BIN_DIR = ./bin
EXPM = $(BIN_DIR)/expm
LFE_DIR = $(DEPS)/lfe
LFE_EBIN = $(LFE_DIR)/ebin
LFE = $(LFE_DIR)/bin/lfe
LFEC = $(LFE_DIR)/bin/lfec
LFE_UTILS_DIR = $(DEPS)/lfe-utils
LFEUNIT_DIR = $(DEPS)/lfeunit
LFETOOL=/usr/local/bin/lfetool
SOURCE_DIR = ./src
OUT_DIR = ./ebin
TEST_DIR = ./test
TEST_OUT_DIR = ./.eunit
FINISH = -run init stop -noshell
# Note that ERL_LIBS is for running this project in development and that
# ERL_LIB is for installation.
ERL_LIBS = $(shell find $(DEPS) -maxdepth 1 -exec echo -n '{}:' \;|sed 's/:$$/:./'):$(TEST_OUT_DIR)
SCRIPT_PATH=.:./bin:$(PATH)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(LFETOOL): $(BIN_DIR)
	curl -o ./lfetool https://raw.github.com/lfe/lfetool/master/lfetool
	chmod 755 ./lfetool
	mv ./lfetool ./bin/

get-version:
	@PATH=$(SCRIPT_PATH) lfetool info version

$(EXPM): $(BIN_DIR)
	@PATH=$(SCRIPT_PATH) lfetool install expm

get-deps:
	@echo "Getting dependencies ..."
	@rebar get-deps
	@PATH=$(SCRIPT_PATH) lfetool update deps

clean-ebin:
	@echo "Cleaning ebin dir ..."
	@rm -f $(OUT_DIR)/*.beam

clean-eunit:
	@PATH=$(SCRIPT_PATH) lfetool tests clean

compile: get-deps clean-ebin
	@echo "Compiling project code and dependencies ..."
	@rebar compile

compile-no-deps: clean-ebin
	@echo "Compiling only project code ..."
	@rebar compile skip_deps=true

compile-tests:
	@PATH=$(SCRIPT_PATH) lfetool tests build

shell: compile
	@clear
	@echo "Starting shell ..."
	@PATH=$(SCRIPT_PATH) lfetool repl

shell-no-deps: compile-no-deps
	@clear
	@echo "Starting shell ..."
	@PATH=$(SCRIPT_PATH) lfetool repl

clean: clean-ebin clean-eunit
	@rebar clean

check-unit-only:
	@PATH=$(SCRIPT_PATH) lfetool tests unit

check-integration-only:
	@PATH=$(SCRIPT_PATH) lfetool tests integration

check-system-only:
	@PATH=$(SCRIPT_PATH) lfetool tests system

check-unit-with-deps: get-deps compile compile-tests check-unit-only
check-unit: compile-no-deps check-unit-only
check-integration: compile check-integration-only
check-system: compile check-system-only
check-all-with-deps: compile check-unit-only check-integration-only \
	check-system-only
check-all: get-deps compile-no-deps
	@PATH=$(SCRIPT_PATH) lfetool tests all

check: check-unit-with-deps

check-travis: $(LFETOOL) check

push-all:
	@echo "Pusing code to github ..."
	git push --all
	git push upstream --all
	git push --tags
	git push upstream --tags

install: compile
	@echo "Installing lfe-reveal-js ..."
	@PATH=$(SCRIPT_PATH) lfetool install lfe

upload: $(EXPM) get-version
	@echo "Preparing to upload lfe-reveal-js ..."
	@echo
	@echo "Package file:"
	@echo
	@cat package.exs
	@echo
	@echo "Continue with upload? "
	@read
	$(EXPM) publish
