#!/usr/bin/bash

pandoc --mathjax -t revealjs -s -o index.html src/slides.txt \
       -V revealjs-url=src/reveal.js \
       -V theme=black --slide-level=2 
