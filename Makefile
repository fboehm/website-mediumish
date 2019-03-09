.PHONY: all
all: docs
	Rscript -e 'blogdown::hugo_build()'

docs/static/software/qtl2pleio/logo.png: ~/Documents/hex-sticker-qtl2pleio/qtl2pleio.png
	cp ~/Documents/hex-sticker-qtl2pleio/qtl2pleio.png docs/static/software/qtl2pleio/logo.png
	
~/Box\ Sync/Rpkgs/qtl2pleio/man/figures/logo.png: docs/static/software/qtl2pleio/logo.png
	cp docs/static/software/qtl2pleio/logo.png ~/Box\ Sync/Rpkgs/qtl2pleio/man/figures/logo.png
	
~/Box\ Sync/Rpkgs/qtl2pleio: ~/Box\ Sync/Rpkgs/qtl2pleio/man/figures/logo.png
	Rscript -e 'pkgdown::build_site("~/Box\ Sync/Rpkgs/qtl2pleio")'

README.md: ~/Box\ Sync/Rpkgs/qtl2pleio/README.Rmd
	Rscript -e 'rmarkdown::render("~/Box\ Sync/Rpkgs/qtl2pleio/README.Rmd", outfile = "README.md")'

docs: 
