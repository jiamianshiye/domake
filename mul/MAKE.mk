
demo:
	@echo \# Got obj base dir 
	mkdir $(DO_MAKE_BASE)/obj/mul -p
	$(MAKE) -fMAKE.mk libs
	#$(MAKE) -fMAKE.mk apps TARGET=exe

apps:
	$(MAKE) -f Makefile -C./src $(TARGET)
	@echo \# Got  module[$(MODULE)]...

libs:
	mkdir $(DO_MAKE_BASE)/lib/ -p
	$(MAKE) -f Makefile -C./src/ $(TARGET) 
	@echo \# Got  module[$(MODULE)]...

clean:
	$(MAKE) -fMAKE.mk libs TARGET=clean
	

all:demo
