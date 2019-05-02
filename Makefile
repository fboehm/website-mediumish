.PHONY: all

PATH=~/Box\ Sync/Rpkgs/qtl2pleio

all: docs/static/software/qtl2pleio/index.html
	Rscript -e 'blogdown::build_site()'

docs/static/software/qtl2pleio/index.html: $(PATH)/R/*.R $(PATH)/README.Rmd $(PATH)/vignettes/*.Rmd $(PATH)/man/*.Rd 
	cd $(PATH); Rscript -e 'pkgdown::clean_site(pkg = ".")'; Rscript -e 'pkgdown::build_site(pkg = ".", new_process = TRUE)'

