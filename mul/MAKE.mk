
demo:
	@echo \# Got obj base dir 
	mkdir $(DO_MAKE_BASE)/obj/mul -p
	$(MAKE) -fMAKE.mk libs
	#$(MAKE) -fMAKE.mk apps TARGET=exe

apps:
	$(MAKE) -f Makefile -C./src MODULE=mul $(TARGET)
	@echo \# Got  module[$(MODULE)]...

libs:
	$(MAKE) -f Makefile -C./src/ MODULE=mul $(TARGET) 
	@echo \# Got  module[$(MODULE)]...

clean:
	$(MAKE) -fMAKE.mk libs TARGET=clean
	

all:clean demo
