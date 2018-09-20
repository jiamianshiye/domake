#####################################
DO_MAKE_BASE = $(shell pwd)
ADD_PATH = $(DO_MAKE_BASE)/add
DIV_PATH = $(DO_MAKE_BASE)/divide
MIN_PATH = $(DO_MAKE_BASE)/minus
MUL_PATH = $(DO_MAKE_BASE)/mul




OBJS = $(subst .c,.o,$(FILES))

OBJ_PATH = 




#####################################

export DO_MAKE_BASE
export ADD_PATH
export DIV_PATH
export MIN_PATH
export MUL_PATH

#####################################

