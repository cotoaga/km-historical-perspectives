# Cognitive Devolution Paper - Obsidian Vault

**Academic paper examining how educational standardization prepared humans for AI replacement**

## Quick Start
1. Open this folder as an Obsidian vault
2. Edit sections in `00-manuscript/`
3. Run `./05-scripts/build-paper.sh` to generate PDF
4. Find output in `03-output/`

## Structure
- **00-manuscript/**: Paper sections in order
- **01-assets/**: Figures and images
- **02-templates/**: Markdown templates
- **03-output/**: Generated PDFs (gitignored)
- **04-pandoc/**: Pandoc configuration
- **05-scripts/**: Build automation

## Building the Paper

### Linux/Mac
```bash
cd 05-scripts
./build-paper.sh
```

### Windows
```cmd
cd 05-scripts
build-paper.bat
```

## Dependencies
- **Pandoc 2.19+**: Document conversion
- **XeLaTeX**: From TeX Live or MiKTeX distribution
- **Python 3.8+**: For merge script
- **Libertinus fonts**: Optional but recommended for best typography

## Installing Dependencies

### Ubuntu/Debian
```bash
sudo apt install pandoc texlive-xetex python3
wget https://github.com/jgm/pandoc/releases/download/2.19.2/pandoc-2.19.2-1-amd64.deb
sudo dpkg -i pandoc-2.19.2-1-amd64.deb
```

### macOS
```bash
brew install pandoc python3
brew install --cask mactex
```

### Windows
1. Install [Pandoc](https://pandoc.org/installing.html)
2. Install [MiKTeX](https://miktex.org/download)
3. Install [Python](https://python.org/downloads/)

## Paper Structure

The paper is split into logical sections:

1. **00-frontmatter.md**: Title, abstract, keywords
2. **01-preface.md**: Author positionality and approach
3. **02-introduction.md**: Visual metaphors and core thesis
4. **03-greek-inheritance.md**: Historical knowledge taxonomies
5. **04-architecture-extraction.md**: Three phases of cognitive extraction
6. **05-confession-literature.md**: Academic self-documentation
7. **06-llm-architecture.md**: Technical mirror of human training
8. **07-cynefin-diagnosis.md**: Framework for understanding failures
9. **08-guild-precedent.md**: Historical pattern of knowledge extraction
10. **09-reconstruction-protocols.md**: Strategies for cognitive sovereignty
11. **10-conclusion.md**: Revolutionary precision required
12. **99-references.md**: Academic citations

## Key Features

- **Obsidian Integration**: Full wiki-style linking and graph view
- **One-Command Build**: Single script generates polished PDF
- **Academic Standards**: Proper citations, formatting, and structure
- **Version Control**: Git-friendly with separate section files
- **Cross-Platform**: Works on Windows, Mac, and Linux

## Thesis

We spent a century training humans to think like machines before building machines that could think. This paper documents the systematic transformation of human cognitive architecture through educational standardization, revealing how we created ideal conditions for AI to harvest patterns humans had been trained to produce.

The revolution is not coming—it has already occurred.

## Contributing

This is a living document. Sections can be edited independently and the PDF rebuilt instantly. The modular structure allows for:

- Collaborative editing
- Version tracking of individual sections
- Easy content reorganization
- Independent fact-checking and citation verification

---

*"The revolution requires precision, not padding. It needs architects, not observers."*