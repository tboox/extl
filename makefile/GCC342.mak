#主文件名
NAME=ExtlTest

#搜索路径
PATH=../../IDE\GCC342\Bin

LIB_PATH=../../IDE\GCC342\Lib
INCLUDE_PATH_1=../../IDE\GCC342\Include
INCLUDE_PATH_2=../../IDE\GCC342\Lib\gcc\mingw32\3.4.2\include
INCLUDE_PATH_3=../../IDE\GCC342\Include\c++\3.4.2\backward
INCLUDE_PATH_4=../../IDE\GCC342\Include\c++\3.4.2\mingw32
BIN_PATH=../../Bin

#对象文件
OBJS=$(NAME).o

#链接标志
LINK_FLAG= -L"$(LIB_PATH)"

#编译标志
CL_FLAG= -c -I"$(INCLUDE_PATH_1)" -I"$(INCLUDE_PATH_2)" -I"$(INCLUDE_PATH_3)" -I"$(INCLUDE_PATH_4)" -Wall

#链接
$(NAME).exe:$(OBJS)
	g++ $(OBJS) -o $(NAME).exe $(LINK_FLAG) 

#编译
$(NAME).o:$(NAME).cpp

#隐含规则
.cpp.o:
	g++ $(CL_FLAG) $<

#清除文件
clean:
