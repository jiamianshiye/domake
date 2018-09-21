include rules.mk
include header.mk

srcs:=\
	main.c


LIBS +=\
	./lib/add.a\
	./lib/divide.a\
	./lib/mul.a\
	./lib/minus.a

all:add_mod divide_mod minus_mod mul_mod domake
	@echo "-----get files : $(FILES)"

add_mod:
	@echo  "get add doing, obj[$(OBJ_BASE_DIR)]\n"
	$(MAKE) -fMAKE.mk -C$(ADD_PATH) all

divide_mod:
	@echo  "get divide doing, obj[$(OBJ_BASE_DIR)]\n"
	$(MAKE) -fMAKE.mk -C$(DIV_PATH) all

minus_mod:
	@echo  "get minus doing, obj[$(OBJ_BASE_DIR)]\n"
	$(MAKE) -fMAKE.mk -C$(MIN_PATH) all

mul_mod:
	@echo  "get mul doing, obj[$(OBJ_BASE_DIR)]\n"
	$(MAKE) -fMAKE.mk -C$(MUL_PATH) all

domake:
	@echo "do make----------$(LIBS)"	
	$(CC) $(FILES) $(LIBS) $(INCLUDE) -o $@

clean:
	$(MAKE) -fMAKE.mk -C$(ADD_PATH) clean
	$(MAKE) -fMAKE.mk -C$(DIV_PATH) clean
	$(MAKE) -fMAKE.mk -C$(DIV_PATH) clean
	$(MAKE) -fMAKE.mk -C$(MUL_PATH) clean

