.PHONY: all

PPATH=~/Box\ Sync/Rpkgs/qtl2pleio

all: docs/static/software/qtl2pleio/index.html docs/index.html
	
docs/index.html: config.toml index.Rmd
	hugo --cleanDestinationDir; Rscript -e 'blogdown::serve_site()'

docs/static/software/qtl2pleio/index.html: $(PPATH)/R/*.R $(PPATH)/README.Rmd $(PPATH)/vignettes/*.Rmd $(PPATH)/man/*.Rd 
	cd $(PPATH); Rscript -e 'pkgdown::clean_site(pkg = ".")'; Rscript -e 'pkgdown::build_site(pkg = ".", new_process = TRUE)'

