#!/bin/bash
# Convert SVG graphics to PNG for social media posting
# Requires: librsvg2-bin (sudo apt install librsvg2-bin)

GRAPHICS_DIR="$(dirname "$0")/graphics"
OUTPUT_DIR="$(dirname "$0")/png"

mkdir -p "$OUTPUT_DIR"

for svg in "$GRAPHICS_DIR"/*.svg; do
    filename=$(basename "$svg" .svg)
    echo "Converting $filename..."
    rsvg-convert -w 1080 -h 1080 "$svg" -o "$OUTPUT_DIR/${filename}.png"
done

echo "Done! PNGs saved to $OUTPUT_DIR/"
