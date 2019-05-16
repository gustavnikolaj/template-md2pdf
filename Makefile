SHELL=/bin/bash

################################################################################
# Configuration

A4SIZE ?= true
TABLE_OF_CONTENTS ?= true

################################################################################
# Computed values from configuration

ifeq ($(A4SIZE),true)
_A4SIZE_ARG=--variable=geometry:a4paper 
endif

ifeq ($(TABLE_OF_CONTENTS),true)
_TOC_ARG=--toc
endif

################################################################################
# Generate the pdf file

FILES=$(shell cd content && find . -type f -name "*.md" | sort)

output.pdf: content/*.md
	cd content && pandoc \
		-t latex \
		-o ../output.pdf \
		$(_TOC_ARG) \
		$(_A4SIZE_ARG) \
		$(FILES)

################################################################################
# Remove temporary files

clean:
	rm -f output.pdf

################################################################################
# Print a make variable.
#
# http://blog.jgc.org/2015/04/the-one-line-you-should-add-to-every.html
#
# Usage:
#   Given the following variable in the makefile:
#   FOOBAR=foobar
#
#   $ make print-FOOBAR
#   FOOBAR=foobar

print-%: ; @echo $*=$($*)

