#!/bin/bash
# Build complete academic PDF from markdown sections

OUTPUT_DIR="../03-output"
MANUSCRIPT_DIR="../00-manuscript"
PANDOC_DIR="../04-pandoc"

# Merge all sections in order
echo "Merging sections..."
python3 merge-sections.py

# Generate PDF with pandoc
echo "Generating PDF..."
pandoc merged-paper.md \
  -o "$OUTPUT_DIR/cognitive-devolution-$(date +%Y%m%d).pdf" \
  --template="$PANDOC_DIR/templates/academic.latex" \
  --pdf-engine=xelatex \
  --toc \
  --toc-depth=2 \
  --bibliography="$PANDOC_DIR/bibliography.bib" \
  --csl="$PANDOC_DIR/chicago-author-date.csl" \
  --metadata-file="$PANDOC_DIR/metadata.yaml" \
  --highlight-style=pygments \
  --top-level-division=section

echo "PDF generated: $OUTPUT_DIR/cognitive-devolution-$(date +%Y%m%d).pdf"