# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := netstring
DEFS_Debug := \
	'-DDEBUG' \
	'-DMS_LOG_TRACE' \
	'-DMS_LOG_FILE_LINE'

# Flags passed to all source files.
CFLAGS_Debug := \
	-m64 \
	-Wall \
	-Wno-sign-compare \
	-g \
	-O0 \
	-Wno-parentheses-equality \
	-Wno-unknown-warning-option \
	-fPIC

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug :=

INCS_Debug :=

DEFS_Release :=

# Flags passed to all source files.
CFLAGS_Release := \
	-m64 \
	-Wall \
	-Wno-sign-compare \
	-g \
	-Wno-unknown-warning-option \
	-fPIC

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release :=

INCS_Release :=

OBJS := \
	$(obj).target/$(TARGET)/deps/netstring/netstring-c/netstring.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.c FORCE_DO_CMD
	@$(call do_cmd,cc,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-m64

LDFLAGS_Release := \
	-m64

LIBS :=

$(obj).target/deps/netstring/libnetstring.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/deps/netstring/libnetstring.a: LIBS := $(LIBS)
$(obj).target/deps/netstring/libnetstring.a: TOOLSET := $(TOOLSET)
$(obj).target/deps/netstring/libnetstring.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/deps/netstring/libnetstring.a
# Add target alias
.PHONY: netstring
netstring: $(obj).target/deps/netstring/libnetstring.a

# Add target alias to "all" target.
.PHONY: all
all: netstring

# Add target alias
.PHONY: netstring
netstring: $(builddir)/libnetstring.a

# Copy this to the static library output path.
$(builddir)/libnetstring.a: TOOLSET := $(TOOLSET)
$(builddir)/libnetstring.a: $(obj).target/deps/netstring/libnetstring.a FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/libnetstring.a
# Short alias for building this static library.
.PHONY: libnetstring.a
libnetstring.a: $(obj).target/deps/netstring/libnetstring.a $(builddir)/libnetstring.a

# Add static library to "all" target.
.PHONY: all
all: $(builddir)/libnetstring.a

