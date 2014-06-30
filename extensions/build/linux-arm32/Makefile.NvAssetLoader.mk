# Makefile generated by XPJ for linux-arm32
-include Makefile.custom
ProjectName = NvAssetLoader
NvAssetLoader_cppfiles   += ./../../src/NvAssetLoader/NvAssetLoader.cpp

NvAssetLoader_debug_hpaths    := 
NvAssetLoader_debug_hpaths    += ./../../src/NvAssetLoader
NvAssetLoader_debug_hpaths    += ./../../include
NvAssetLoader_debug_hpaths    += ./../../externals/include
NvAssetLoader_debug_hpaths    += ./../../externals/include/GLFW
NvAssetLoader_debug_lpaths    := 
NvAssetLoader_debug_defines   := $(NvAssetLoader_custom_defines)
NvAssetLoader_debug_defines   += LINUX=1
NvAssetLoader_debug_defines   += _LIB
NvAssetLoader_debug_defines   += GLEW_NO_GLU=1
NvAssetLoader_debug_defines   += _DEBUG
NvAssetLoader_debug_libraries := 
NvAssetLoader_debug_libraries += pthread
NvAssetLoader_debug_libraries += glfw3
NvAssetLoader_debug_cflags    := $(NvAssetLoader_custom_cflags)
NvAssetLoader_debug_cflags    += $(addprefix -D, $(NvAssetLoader_debug_defines))
NvAssetLoader_debug_cflags    += $(addprefix -I, $(NvAssetLoader_debug_hpaths))
NvAssetLoader_debug_cflags  += -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvAssetLoader_debug_cflags  += -g
NvAssetLoader_debug_lflags    := $(NvAssetLoader_custom_lflags)
NvAssetLoader_debug_lflags    += $(addprefix -L, $(NvAssetLoader_debug_lpaths))
NvAssetLoader_debug_lflags    += -Wl,--start-group $(addprefix -l, $(NvAssetLoader_debug_libraries)) -Wl,--end-group
NvAssetLoader_debug_objsdir  := $(OBJS_DIR)/NvAssetLoader_debug
NvAssetLoader_debug_obj      := 
NvAssetLoader_debug_cpp_o    = $(addprefix $(NvAssetLoader_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvAssetLoader_cppfiles)))))
NvAssetLoader_debug_obj      += $(NvAssetLoader_debug_cpp_o) 
NvAssetLoader_debug_bin      := ./../../lib/linux-arm32/libNvAssetLoaderD.a

clean_NvAssetLoader_debug: 
	@$(ECHO) clean NvAssetLoader debug
	@$(RMDIR) $(NvAssetLoader_debug_objsdir)
	@$(RMDIR) $(NvAssetLoader_debug_bin)

build_NvAssetLoader_debug: postbuild_NvAssetLoader_debug
postbuild_NvAssetLoader_debug: mainbuild_NvAssetLoader_debug
mainbuild_NvAssetLoader_debug: prebuild_NvAssetLoader_debug $(NvAssetLoader_debug_bin)
prebuild_NvAssetLoader_debug:

-include $(NvAssetLoader_debug_cpp_o:%o=%d)

$(NvAssetLoader_debug_bin): $(NvAssetLoader_debug_obj) 
	@mkdir -p `dirname ./../../lib/linux-arm32/libNvAssetLoaderD.a`
	@$(AR) r $(NvAssetLoader_debug_bin) $^
	@$(RANLIB) $(NvAssetLoader_debug_bin)
	@$(ECHO) building $@ complete!

$(NvAssetLoader_debug_cpp_o): $(NvAssetLoader_debug_objsdir)/%.o: 
	@$(ECHO) NvAssetLoader: compiling debug $(filter %$*,$(NvAssetLoader_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(NvAssetLoader_debug_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(NvAssetLoader_cppfiles)) -o $@
NvAssetLoader_release_hpaths    := 
NvAssetLoader_release_hpaths    += ./../../src/NvAssetLoader
NvAssetLoader_release_hpaths    += ./../../include
NvAssetLoader_release_hpaths    += ./../../externals/include
NvAssetLoader_release_hpaths    += ./../../externals/include/GLFW
NvAssetLoader_release_lpaths    := 
NvAssetLoader_release_defines   := $(NvAssetLoader_custom_defines)
NvAssetLoader_release_defines   += LINUX=1
NvAssetLoader_release_defines   += _LIB
NvAssetLoader_release_defines   += GLEW_NO_GLU=1
NvAssetLoader_release_defines   += NDEBUG
NvAssetLoader_release_libraries := 
NvAssetLoader_release_libraries += pthread
NvAssetLoader_release_libraries += glfw3
NvAssetLoader_release_cflags    := $(NvAssetLoader_custom_cflags)
NvAssetLoader_release_cflags    += $(addprefix -D, $(NvAssetLoader_release_defines))
NvAssetLoader_release_cflags    += $(addprefix -I, $(NvAssetLoader_release_hpaths))
NvAssetLoader_release_cflags  += -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvAssetLoader_release_cflags  += -O2
NvAssetLoader_release_lflags    := $(NvAssetLoader_custom_lflags)
NvAssetLoader_release_lflags    += $(addprefix -L, $(NvAssetLoader_release_lpaths))
NvAssetLoader_release_lflags    += -Wl,--start-group $(addprefix -l, $(NvAssetLoader_release_libraries)) -Wl,--end-group
NvAssetLoader_release_objsdir  := $(OBJS_DIR)/NvAssetLoader_release
NvAssetLoader_release_obj      := 
NvAssetLoader_release_cpp_o    = $(addprefix $(NvAssetLoader_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvAssetLoader_cppfiles)))))
NvAssetLoader_release_obj      += $(NvAssetLoader_release_cpp_o) 
NvAssetLoader_release_bin      := ./../../lib/linux-arm32/libNvAssetLoader.a

clean_NvAssetLoader_release: 
	@$(ECHO) clean NvAssetLoader release
	@$(RMDIR) $(NvAssetLoader_release_objsdir)
	@$(RMDIR) $(NvAssetLoader_release_bin)

build_NvAssetLoader_release: postbuild_NvAssetLoader_release
postbuild_NvAssetLoader_release: mainbuild_NvAssetLoader_release
mainbuild_NvAssetLoader_release: prebuild_NvAssetLoader_release $(NvAssetLoader_release_bin)
prebuild_NvAssetLoader_release:

-include $(NvAssetLoader_release_cpp_o:%o=%d)

$(NvAssetLoader_release_bin): $(NvAssetLoader_release_obj) 
	@mkdir -p `dirname ./../../lib/linux-arm32/libNvAssetLoader.a`
	@$(AR) r $(NvAssetLoader_release_bin) $^
	@$(RANLIB) $(NvAssetLoader_release_bin)
	@$(ECHO) building $@ complete!

$(NvAssetLoader_release_cpp_o): $(NvAssetLoader_release_objsdir)/%.o: 
	@$(ECHO) NvAssetLoader: compiling release $(filter %$*,$(NvAssetLoader_cppfiles))...
	@mkdir -p $(dir $(@))
	$(CXX) $(NvAssetLoader_release_cflags) -MMD -MP -MF $(subst .cpp.o,.cpp.d,$@) -c $(filter %$*,$(NvAssetLoader_cppfiles)) -o $@