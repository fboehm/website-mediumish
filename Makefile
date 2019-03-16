.PHONY: all

all: docs/static/software/qtl2pleio/logo.png qtl2pleio-pkgdown
	Rscript -e 'blogdown::hugo_build()'

docs/static/software/qtl2pleio/logo.png: ~/Documents/hex-sticker-qtl2pleio/qtl2pleio.png
	cp ~/Documents/hex-sticker-qtl2pleio/qtl2pleio.png docs/static/software/qtl2pleio/logo.png
	cp ~/Documents/hex-sticker-qtl2pleio/qtl2pleio.png ~/Box\ Sync/Rpkgs/qtl2pleio/man/figures/logo.png
	
qtl2pleio-pkgdown: docs/static/software/qtl2pleio/index.html
	cd ~/Box\ Sync/Rpkgs/qtl2pleio; Rscript -e 'pkgdown::clean_site()'; Rscript -e 'pkgdown::build_site(new_process = TRUE)'

