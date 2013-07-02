#主文件名
NAME=ExtlTest

#搜索路径
PATH=../../IDE\INTEL11_0_061\Bin;../../IDE\VC90\Bin

LIB_PATH=../../IDE\VC90\Lib
INTEL_LIB_PATH=../../IDE\INTEL11_0_061\Lib
INCLUDE_PATH=../../IDE\VC90\Include
INTEL_INCLUDE_PATH=../../IDE\INTEL11_0_061\Include
BIN_PATH=../../Bin

#对象文件
OBJS=$(NAME).obj

#链接器
LINK32=xilink.exe

#链接标志
LINK_FLAG=/libpath:$(LIB_PATH) /libpath:$(BIN_PATH) /libpath:$(INTEL_LIB_PATH) kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib \
odbccp32.lib /nologo /subsystem:console /incremental:no /machine:I386 /out:"$(BIN_PATH)/$(NAME).exe"

#编译器
CPP=icl.exe
#编译标志
CL_FLAG=/X /I $(INCLUDE_PATH) /I $(INTEL_INCLUDE_PATH) /nologo /W3 /GX /O3 \
/D "WIN32" /D "NDEBUG" /D "_CONSOLE" /Fo"$(BIN_PATH)/" $(FLAG_TC) /c 

#链接
$(NAME).exe:$(OBJS)
	$(LINK32) $(LINK_FLAG) $(OBJS)

#编译
$(OBJS):$(NAME).cpp

#隐含规则
.cpp.obj:
	$(CPP) $(CL_FLAG) $<

#清除文件
clean:
