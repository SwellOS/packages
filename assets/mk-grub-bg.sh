#!/bin/sh
# Generate GRUB background image from SwellOS logo
# Requires: ImageMagick
# Usage: ./mk-grub-bg.sh [input.png] [output.png]

INPUT="${1:-logo.png}"
OUTPUT="${2:-grub-background.png}"

# GRUB supports PNG, JPG, TGA — 1024x768 is safe for most resolutions
# Deep ocean blue gradient background + logo centered, semi-transparent
convert \
  -size 1024x768 \
  gradient:'#0a1628'-'#0d2137' \
  \( "$INPUT" -resize 400x400 -alpha on -channel A -evaluate set 20% \) \
  -gravity center -composite \
  "$OUTPUT"
echo "Generated: $OUTPUT"
