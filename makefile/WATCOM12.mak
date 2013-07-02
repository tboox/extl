#主文件名
NAME=ExtlTest
#搜索路径
PATH=../../IDE\WATCOM12\Bin

LIB_PATH=../../IDE\WATCOM12\Lib
INCLUDE_PATH=../../IDE\WATCOM12\Include
BIN_PATH=../../Bin

#对象文件
OBJS=$(NAME).obj

#链接标志
LINK_FLAG= d all op inc op m op maxe=25 op q op symf

#编译标志(-xs:启用异常)
CL_FLAG= -i=$(INCLUDE_PATH);$(INCLUDE_PATH)\nt -w4 -e25 -zq -od -d2 -5r -bt=nt -mf -xs

#链接
$(NAME).exe:$(OBJS)
	wlink $(LINK_FLAG) $(OBJS)
#编译
$(NAME).obj:$(NAME).cpp

#隐含规则
.cpp.obj:
	wpp386 $(CL_FLAG) $<

#清除文件
clean:
