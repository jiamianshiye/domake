include rules.mk
include header.mk

srcs:=\
	main.c

DIRS=./add  ./divide  ./minus  ./mul

MODULE_DIR=add divide minus mul
MODULES=add_mod divide_mod minus_mod mul_mod

#LIBS +=\
	./lib/add.a\
	./lib/divide.a\
	./lib/mul.a\
	./lib/minus.a

LIBS += ./lib/*.a
APP = domake
#MODULES= $(shell ls ./)
#MODULES= $(ADD_PATH) $(MIN_PATH) $(DIV_PATH) $(MUL_PATH)

#all:$(MODULES) $(APP)
#all:add_mod divide_mod minus_mod mul_mod $(APP)
all:
	@echo  "get add doing, dirs[$(DIRS)]\n"
	@for dir in $(DIRS);\
	do\
		$(MAKE) -fMAKE.mk -C$$dir all MODULE=$$dir;\
	done
	@$(CC) $(FILES) $(LIBS) $(INCLUDE) -o $(APP)

clean:
	$(MAKE) -fMAKE.mk -C$(ADD_PATH) clean
	$(MAKE) -fMAKE.mk -C$(DIV_PATH) clean
	$(MAKE) -fMAKE.mk -C$(MIN_PATH) clean
	$(MAKE) -fMAKE.mk -C$(MUL_PATH) clean
	-rm $(APP)
	-rm $(DO_MAKE_BASE)/lib/ -r
	-rm $(DO_MAKE_BASE)/obj/ -r



############################NOT USED#####################################
add_mod:
	@echo  "get add doing, obj[$(OBJ_BASE_DIR)]\n"
	$(MAKE) -fMAKE.mk -C$(ADD_PATH) all MODULE=add

divide_mod:
	@echo  "get divide doing, obj[$(OBJ_BASE_DIR)]\n"
	$(MAKE) -fMAKE.mk -C$(DIV_PATH) all MODULE=divide

minus_mod:
	@echo  "get minus doing, obj[$(OBJ_BASE_DIR)]\n"
	$(MAKE) -fMAKE.mk -C$(MIN_PATH) all MODULE=minus

mul_mod:
	@echo  "get mul doing, obj[$(OBJ_BASE_DIR)]\n"
	$(MAKE) -fMAKE.mk -C$(MUL_PATH) all MODULE=mul

$(APP):
	@echo "do make----------$(LIBS)"	
	$(CC) $(FILES) $(LIBS) $(INCLUDE) -o $@
############################NOT USED END#################################

