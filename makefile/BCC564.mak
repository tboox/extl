#主文件名
NAME=ExtlTest

#搜索路径
PATH=../../IDE\BCC564\Bin\

LIB_PATH=../../IDE\BCC564\Lib
PSDK_LIB_PATH=../../IDE\BCC564\Lib\PSDK
INCLUDE_PATH=../../IDE\BCC564\Include
RW_INCLUDE_PATH=../../IDE\BCC564\Include\Rw
STLPORT_INCLUDE_PATH=../../IDE\BCC564\Include\Stlport
BIN_PATH=../../Bin

#对象文件
OBJS=$(NAME).obj

#链接标志
#LINK_FLAG= /L"$(LIB_PATH)" /L"$(PSDK_LIB_PATH)" /j"$(BIN_PATH)" /I"$(BIN_PATH)" /Gn /ap

#编译标志
#CL_FLAG= -c -I$(INCLUDE_PATH) -I$(INCLUDE_PATH) -n$(BIN_PATH) /L"$(LIB_PATH)"
CL_FLAG= -I$(INCLUDE_PATH) -I$(RW_INCLUDE_PATH) -I$(STLPORT_INCLUDE_PATH) -n$(BIN_PATH) /L"$(LIB_PATH)"

#链接
#$(NAME).exe:$(OBJS)
#	ILINK32 $(LINK_FLAG) $(OBJS)

#编译
$(NAME).obj:$(NAME).cpp

#隐含规则
.cpp.obj:
	BCC32 $(CL_FLAG) $<

#清除文件
clean:
