.PHONY: all

PPATH=~/Box\ Sync/Rpkgs/qtl2pleio

all: docs/static/software/qtl2pleio/index.html
	Rscript -e 'blogdown::build_site()'

docs/static/software/qtl2pleio/index.html: $(PPATH)/R/*.R $(PPATH)/README.Rmd $(PPATH)/vignettes/*.Rmd $(PPATH)/man/*.Rd 
	cd $(PPATH); Rscript -e 'pkgdown::clean_site(pkg = ".")'; Rscript -e 'pkgdown::build_site(pkg = ".", new_process = TRUE)'

