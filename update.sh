#!/bin/bash

# Run pdflatex to generate the PDF
docker run --rm -i -v "$PWD":/data latex pdflatex main.tex

# Convert the PDF to PNG
convert -density 600 main.pdf -alpha extract -alpha copy -channel rgb -negate +channel main.png

