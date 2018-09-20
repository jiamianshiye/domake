include rules.mk


#TARGET = calc
#OBJECT := main.o add.o divide.o minus.o mul.o
DIR:=./add\
	./divide\
	./minus\
	./mul

all: add divide minus mul


add:
	(MAKE) -f -CMakefile 	./add

$(TARGET): $(obj)
	CCX -o $(TARGET) $(obj)



.PHONY : clean

clean:
	-rm $(TARGET) 
