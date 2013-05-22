PREFIX=$(HOME)

LIBNAME = UNIC

HEADERS = $(wildcard *.h)

install:
	@echo "PREFIX=$(PREFIX)"
	@echo -n "checking if $(PREFIX) exists..."
	@if [ -d $(PREFIX) ]; then \
	  echo "yes."; \
	else \
	  echo "no."; \
	  echo "mkdir $(PREFIX)..."; \
	  mkdir $(PREFIX); \
	fi
	@echo -n "copying *.h to $(PREFIX)/include/$(LIBNAME)..."
	@if [ -d $(PREFIX)/include ]; then \
	  if [ -d $(PREFIX)/include/$(LIBNAME) ]; then \
	    cp *.h $(PREFIX)/include/$(LIBNAME); \
	  else \
	    mkdir $(PREFIX)/include/$(LIBNAME); \
	    cp *.h $(PREFIX)/include/$(LIBNAME); \
	  fi; \
	else \
	  mkdir $(PREFIX)/include; \
	  mkdir -p $(PREFIX)/include/$(LIBNAME); \
	  cp *.h $(PREFIX)/include/$(LIBNAME); \
	fi
	@echo "done."

uninstall:
	$(RM) -r $(PREFIX)/include/$(LIBNAME)

tags:
	ctags --c-kinds=+p $(HEADERS)

.PHONY: tags install uninstall
