include rules.mk
include header.mk

srcs:=\
	main.c


#LIBS +=\
	./lib/add.a\
	./lib/divide.a\
	./lib/mul.a\
	./lib/minus.a

LIBS += ./lib/*.a
APP = domake
#MODULES= $(shell ls ./)
#MODULES= $(ADD_PATH) $(MIN_PATH) $(DIV_PATH) $(MUL_PATH)
#MODULES=add divide minus mul
#MOD_DIR=add divide minus mul

#$(MODULES):
#	$(MAKE) -fMAKE.mk -C $(ADD_PATH) all

#all:$(MODULES) $(APP)
all:add_mod divide_mod minus_mod mul_mod $(APP)
	@echo "-----get files : $(MODULES)"
	@echo "-----get files : $(FILES)"

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

domake:
	@echo "do make----------$(LIBS)"	
	$(CC) $(FILES) $(LIBS) $(INCLUDE) -o $@

clean:
	$(MAKE) -fMAKE.mk -C$(ADD_PATH) clean
	$(MAKE) -fMAKE.mk -C$(DIV_PATH) clean
	$(MAKE) -fMAKE.mk -C$(MIN_PATH) clean
	$(MAKE) -fMAKE.mk -C$(MUL_PATH) clean
	-rm $(APP)
	-rm $(DO_MAKE_BASE)/lib/ -r
	-rm $(DO_MAKE_BASE)/obj/ -r

