#!/usr/bin/bash

pandoc --mathjax -t revealjs -s --filter pandoc-citeproc -o index.html src/slides.md \
       -V revealjs-url=src/reveal.js \
       -V theme=black --slide-level=2 \
       --bibliography=refs.bib --csl=elsevier-vancouver.csl
