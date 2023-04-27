#!/bin/bash
#pdfunite first_pages/*.pdf all_first_pages.pdf

estimate_grid() {
    python3 <<HEREDOC
import glob
import math
l = len(list(glob.glob("$1/*")))
# a / b = sqrt(2)  # aX paper equation, see https://en.wikipedia.org/wiki/Paper_size#International_standard_paper_sizes
# a*b = l   # l = number of papers
# a = sqrt(l * sqrt(2))
a = math.ceil(math.sqrt(l * math.sqrt(2)))
b = math.ceil(l/a)
print(f"{max(a,b)}x{min(a,b)}")
HEREDOC
}


grid=$(estimate_grid "first_pages")
echo "use a grid of $grid"

pdfjam first_pages/*.pdf -o output.pdf --nup "$grid" --landscape
