#!/bin/bash

mkdir output
echo Converting Noto Sans CJK KR Regular font to WOFF...
pyftsubset "NotoSansKR-Regular.otf" --flavor="woff" --with-zopfli --output-file="output/NotoSansKR-subset-Regular.woff" --text-file="glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.
echo Converting Noto Sans CJK KR Bold font to WOFF...
pyftsubset "NotoSansKR-Bold.otf" --flavor="woff" --with-zopfli --output-file="output/NotoSansKR-subset-Bold.woff" --text-file="glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.
echo Converting Noto Sans CJK KR Regular font to WOFF2...
pyftsubset "NotoSansKR-Regular.otf" --flavor="woff2" --output-file="output/NotoSansKR-subset-Regular.woff2" --text-file="glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.
echo Converting Noto Sans CJK KR Bold font to WOFF2...
pyftsubset "NotoSansKR-Bold.otf" --flavor="woff2" --output-file="output/NotoSansKR-subset-Bold.woff2" --text-file="glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.
