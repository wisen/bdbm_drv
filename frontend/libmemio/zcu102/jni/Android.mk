
include $(CLEAR_VARS)
DTOP?=/home/cwchung/workspace/nohost2/projects/zcu_amf_8192/zcu102
CONNECTALDIR?=/home/cwchung/workspace/nohost2/tools/connectal
LOCAL_ARM_MODE := arm
include $(CONNECTALDIR)/scripts/Makefile.connectal.application
LOCAL_SRC_FILES := /home/cwchung/workspace/nohost2/projects/zcu_amf_8192/main_example.cpp /home/cwchung/workspace/nohost2/tools/connectal/cpp/dmaManager.c /home/cwchung/workspace/nohost2/tools/connectal/cpp/platformMemory.cpp $(PORTAL_SRC_FILES)

LOCAL_PATH :=
LOCAL_MODULE := android.exe
LOCAL_MODULE_TAGS := optional
LOCAL_LDLIBS := -llog   
LOCAL_CPPFLAGS := "-march=armv7-a"
LOCAL_CFLAGS := -I$(DTOP)/jni -I$(CONNECTALDIR) -I$(CONNECTALDIR)/cpp -I$(CONNECTALDIR)/lib/cpp   -Werror
LOCAL_CXXFLAGS := -I$(DTOP)/jni -I$(CONNECTALDIR) -I$(CONNECTALDIR)/cpp -I$(CONNECTALDIR)/lib/cpp   -Werror
LOCAL_CFLAGS2 := $(cdefines2)s

include $(BUILD_EXECUTABLE)
