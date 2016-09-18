#!/bin/sh

#defining in and out files
infiles="title.txt 01-license.md 02-introduction.md 03-method.md 04-getting-started.md 05-schedule.md 06-cheating-grammar.md 07-movation.md 08-conclusion.md"
echo "using files ["$infiles"] as input"

#building the .epub file
epubout="swedish_fluent_in_90_days.epub"
echo "building "$epubout
pandoc -S --toc --toc-depth=2 -o $epubout $infiles
echo "...done"

#building the .pdf file
pdfout="swedish_fluent_in_90_days.pdf"
echo "building "$pdfout
#--variable= options manipulate variables inside the mytemplate.latex file
pandoc --latex-engine=xelatex -S --toc --template="mytemplate.latex" --variable=fontsize:12pt --variable=mainfont:Verdana --toc-depth=2 --chapters -o $pdfout $infiles
pdftk images/swedish_cover_a4.pdf swedish_fluent_in_90_days.pdf cat output merged.pdf
rm swedish_fluent_in_90_days.pdf
mv merged.pdf swedish_fluent_in_90_days.pdf
echo "...done"

#packing .epub, .pdf and the .apkg sentences in a 7zip container
sentences="sentences/swedish.apkg"
container="swedish_fluent_in_90_days.7z"
echo "packing ["$epubout" "$pdfout" "$sentences"] into "$container 
7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on $container $epubout $pdfout $sentences
