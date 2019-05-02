.PHONY: all

all: docs/static/software/qtl2pleio/index.html
	Rscript -e 'blogdown::build_site()'

docs/static/software/qtl2pleio/index.html: ~/Box\ Sync/Rpkgs/qtl2pleio/R/*.R 
	cd ~/Box\ Sync/Rpkgs/qtl2pleio; Rscript -e 'pkgdown::clean_site(pkg = ".")'; Rscript -e 'pkgdown::build_site(pkg = ".", new_process = TRUE)'

