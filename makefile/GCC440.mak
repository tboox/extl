#主文件名
NAME=ExtlTest

#搜索路径
PATH=../../IDE\GCC440\Bin

LIB_PATH=../../IDE\GCC440\Lib
INCLUDE_PATH_1=../../IDE\GCC440\Include
INCLUDE_PATH_2=../../IDE\GCC440\Lib\gcc\i386-pc-mingw32\4.4.0\include
INCLUDE_PATH_3=../../IDE\GCC440\Include\c++\4.4.0\backward
INCLUDE_PATH_4=../../IDE\GCC440\i386-pc-mingw32\include
BIN_PATH=../../Bin

#对象文件
OBJS=$(NAME).o

#链接标志
LINK_FLAG= -L"$(LIB_PATH)"

#编译标志
CL_FLAG= -c -I"$(INCLUDE_PATH_1)" -I"$(INCLUDE_PATH_2)" -I"$(INCLUDE_PATH_3)" -I"$(INCLUDE_PATH_4)" -std=c++0x -Wall

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
