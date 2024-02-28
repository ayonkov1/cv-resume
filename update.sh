#!/bin/bash

# Convert the PDF to PNG
convert -density 600 main.pdf -alpha extract -alpha copy -channel rgb -negate +channel main.png

