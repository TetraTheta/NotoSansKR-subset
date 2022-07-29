#!/bin/bash

FONT1="Noto Sans CJK KR Regular"
FONT1_FILE="NotoSansCJKkr-Regular.otf"
FONT1_NEW_FILE="NotoSansKR-Regular-subset"
FONT2="Noto Sans CJK KR Bold"
FONT2_FILE="NotoSansCJKkr-Bold.otf"
FONT2_NEW_FILE="NotoSansKR-Bold-subset"
DEST="dist/webfont"

# Create dist dir
mkdir -p $DEST 2> /dev/null

# WOFF
echo Converting $FONT1 font to WOFF...
pyftsubset "$FONT1_FILE" --flavor="woff" --with-zopfli --output-file="$DEST/$FONT1_NEW_FILE.woff" --text-file="glyphs/glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.

echo Converting $FONT2 font to WOFF...
pyftsubset "$FONT2_FILE" --flavor="woff" --with-zopfli --output-file="$DEST/$FONT2_NEW_FILE.woff" --text-file="glyphs/glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.

echo Converting $FONT1 font to WOFF2...
pyftsubset "$FONT1_FILE" --flavor="woff2" --output-file="$DEST/$FONT1_NEW_FILE.woff2" --text-file="glyphs/glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.

echo Converting $FONT2 font to WOFF2...
pyftsubset "$FONT2_FILE" --flavor="woff2" --output-file="$DEST/$FONT2_NEW_FILE.woff2" --text-file="glyphs/glyphs.txt" --layout-features='*' --glyph-names --symbol-cmap --legacy-cmap --notdef-glyph --notdef-outline --recommended-glyphs --name-legacy --name-IDs='*' --name-languages='*'
echo Done.
