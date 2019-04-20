.PHONY: all

all: docs/static/software/qtl2pleio/logo.png docs/static/software/qtl2pleio
	Rscript -e 'blogdown::hugo_build()'

docs/static/software/qtl2pleio/logo.png: ~/Documents/hex-sticker-qtl2pleio/qtl2pleio.png
	cp ~/Documents/hex-sticker-qtl2pleio/qtl2pleio.png docs/static/software/qtl2pleio/logo.png
	cp ~/Documents/hex-sticker-qtl2pleio/qtl2pleio.png ~/Box\ Sync/Rpkgs/qtl2pleio/man/figures/logo.png
	
docs/static/software/qtl2pleio: ~/Box\ Sync/Rpkgs/qtl2pleio
	Rscript -e 'pkgdown::clean_site(pkg = "$^")'; Rscript -e 'pkgdown::build_site(pkg = "$^", new_process = TRUE)'

