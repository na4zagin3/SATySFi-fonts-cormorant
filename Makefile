PACKAGE_NAME=fonts-cormorant

.PHONY: all
.PHONY: doc

all:
	:

doc: specimen.pdf

specimen.pdf: specimen.saty satysfi-$(PACKAGE_NAME).opam satysfi-$(PACKAGE_NAME)-doc.opam fonts.satysfi-hash Satyristes
	opam pin add "file://$(PWD)" -y --verbose
	satyrographos opam build --name $(PACKAGE_NAME)-doc
