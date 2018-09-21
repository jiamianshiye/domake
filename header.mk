#############################################
## header mk file defines base path rules.
CC = gcc
AR = ar
LD = gcc

LIB_BASE_DIR = $(DO_MAKE_BASE)/lib
OBJ_BASE_DIR = $(DO_MAKE_BASE)/obj
EXE_BASE_DIR = $(DO_MAKE_BASE)/bin

CC_OPTS = -c -g -Wall

AR_OPTS = -rc
#LD_OPTS =
FILES = $(subst ./, , $(foreach dir,.,$(wildcard $(dir)/*.c)) )
#@echo -e "$(FILES)\n"

LIB_DIR = $(LIB_BASE_DIR)

vpath %.a $(LIB_DIR)

INCLUDE =
INCLUDE += -I$(ADD_PATH)/include
INCLUDE += -I$(DIV_PATH)/include
INCLUDE += -I$(MUL_PATH)/include
INCLUDE += -I$(MIN_PATH)/include