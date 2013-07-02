#主文件名
NAME=ExtlTest

#搜索路径
PATH=../../IDE\DMC84\Bin

LIB_PATH=../../IDE\DMC84\Lib
INCLUDE_PATH=../../IDE\DMC84\Include
WIN32_INCLUDE_PATH=../../IDE\DMC84\Include\win32
BIN_PATH=../../Bin

#对象文件
OBJS=$(NAME).obj

#链接标志
LINK_FLAG=

#编译标志(-Ae:启用异常,-Aa:启用new[]..,-Ab:启用bool)
CL_FLAG= -c -I$(INCLUDE_PATH) -I$(WIN32_INCLUDE_PATH) -Ae -Aa -Ab

#链接
$(NAME).exe:$(OBJS)
	Link $(LINK_FLAG) $(OBJS)

#编译
$(NAME).obj:$(NAME).cpp

#隐含规则
.cpp.obj:
	DMC $(CL_FLAG) $<

#清除文件
clean:
