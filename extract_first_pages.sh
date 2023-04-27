#!/bin/bash
mkdir -p first_pages
for x in pdfs/*; do
    echo $x
    bn=$(basename "$x"| sed "s| |-|g")
    pdftk "$x" cat 1 output first_pages/"$bn"
done