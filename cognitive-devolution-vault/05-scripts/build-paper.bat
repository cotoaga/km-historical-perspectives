@echo off
REM Build complete academic PDF from markdown sections

set OUTPUT_DIR=../03-output
set MANUSCRIPT_DIR=../00-manuscript
set PANDOC_DIR=../04-pandoc

REM Merge all sections in order
echo Merging sections...
python merge-sections.py

REM Generate PDF with pandoc
echo Generating PDF...
pandoc merged-paper.md ^
  -o "%OUTPUT_DIR%/cognitive-devolution-%date:~0,4%%date:~5,2%%date:~8,2%.pdf" ^
  --template="%PANDOC_DIR%/templates/academic.latex" ^
  --pdf-engine=xelatex ^
  --toc ^
  --toc-depth=2 ^
  --bibliography="%PANDOC_DIR%/bibliography.bib" ^
  --csl="%PANDOC_DIR%/chicago-author-date.csl" ^
  --metadata-file="%PANDOC_DIR%/metadata.yaml" ^
  --highlight-style=pygments ^
  --top-level-division=section

echo PDF generated: %OUTPUT_DIR%/cognitive-devolution-%date:~0,4%%date:~5,2%%date:~8,2%.pdf