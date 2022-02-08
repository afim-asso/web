
MAKE 	?= make

MKDIR    := mkdocs

####################################################################
help:
	@echo "=============================================================="
	@echo "       Association Francophone d'Informatique Musicale"
	@echo "Ce Makefile est destiné au développement du site web de l'AFIM"
	@echo "=============================================================="
	@echo "Available targets are:"
	@echo "  install  : install the required components"
	@echo "  build    : build the web site"
	@echo "  serve    : launch the mkdoc server"


####################################################################
build:
	cd $(MKDIR) && mkdocs build

serve:
	cd $(MKDIR) && mkdocs serve
		
####################################################################
install:
	pip install mkdocs
	pip install mkdocs-pdf-export-plugin
	pip install markdown-include

uninstall:
	pip uninstall -y mkdocs-material
	pip uninstall -y pymdown-extensions
	pip uninstall -y markdown-blockdiag
	pip uninstall -y mkdocs-pdf-export-plugin
