#主文件名
NAME=ExtlTest

#搜索路径
PATH=../../IDE\VECTORC217\Bin

LIB_PATH=../../IDE\VC60\Lib
INCLUDE_PATH=../../IDE\VC60\Include
VECTORC_INCLUDE_PATH=../../IDE\VECTORC217\Include
BIN_PATH=../../Bin

#对象文件
OBJS=$(NAME).obj

#链接器
LINK32=Link.exe
#链接标志
LINK_FLAG=/libpath:$(LIB_PATH) /libpath:$(BIN_PATH) kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib\
advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib \
odbccp32.lib /nologo /subsystem:console /incremental:no /machine:I386 /out:"$(BIN_PATH)/$(NAME).exe"

#编译器
CPP=vectorc86.exe
#编译标志
CL_FLAG=/nodefaultinclude /include $(INCLUDE_PATH) /include $(VECTORC_INCLUDE_PATH) /noprogress \
	/optimize 10 /autoinline 15 /uncached 128 /define "WIN32" /define "NDEBUG" /define "_MBCS" \
	/define "_LIB" /target pentiummmx /schars /cdecl /mslibs /alignment 1

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
