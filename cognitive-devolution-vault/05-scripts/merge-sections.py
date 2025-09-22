#!/usr/bin/env python3
import os
import re
from pathlib import Path

manuscript_dir = Path("../00-manuscript")
output_file = Path("merged-paper.md")

# Get all section files in order
sections = sorted([f for f in manuscript_dir.glob("*.md") if f.name != "99-references.md"])
references = manuscript_dir / "99-references.md"

with open(output_file, 'w') as output:
    # Write main metadata header
    output.write("""---
title: "Cognitive Devolution: From Sphere to Vector"
subtitle: "How We Trained Humans to Think Like Machines Before the Machines Arrived"
author: [Author Name]
date: \\today
abstract: |
  We trained humans to think like machines for a century before building
  machines that could think. This paper documents the systematic transformation
  of human cognitive architecture from multidimensional wholeness to
  unidimensional utility, revealing how educational standardization created
  ideal conditions for artificial intelligence to harvest patterns humans
  had been trained to produce.
keywords: [cognitive extraction, educational standardization, AI, knowledge systems]
---

""")

    # Process each section
    for section_path in sections:
        with open(section_path, 'r') as f:
            content = f.read()
            # Remove individual section frontmatter
            content = re.sub(r'^---\n.*?\n---\n', '', content, flags=re.DOTALL)
            output.write(content)
            output.write("\n\n")

    # Add references
    if references.exists():
        with open(references, 'r') as f:
            content = f.read()
            content = re.sub(r'^---\n.*?\n---\n', '', content, flags=re.DOTALL)
            output.write(content)

print(f"Merged {len(sections)} sections into {output_file}")