#!/usr/bin/env bash
# Regenerates resume.pdf from resume.html using headless Chrome.
# Run this AFTER editing resume.html (resume content, spacing, theme, etc.)
# so the downloadable PDF stays in sync with the resume design.
#
# Usage:  bash make-resume-pdf.sh
set -euo pipefail
cd "$(dirname "$0")"

CHROME="${CHROME:-$(command -v google-chrome || command -v google-chrome-stable || command -v chromium || true)}"
if [ -z "$CHROME" ]; then
  echo "ERROR: Chrome not found. Set CHROME=/path/to/chrome and retry." >&2
  exit 1
fi

"$CHROME" --headless=new --disable-gpu --no-sandbox \
  --print-to-pdf=resume.pdf --no-pdf-header-footer \
  "file://$PWD/resume.html" 2>/dev/null

# Quick sanity check: expect exactly one A4 page.
if command -v pdfinfo >/dev/null 2>&1; then
  PAGES=$(pdfinfo resume.pdf | awk '/^Pages/{print $2}')
  SIZE=$(pdfinfo resume.pdf | awk -F'[ (]+' '/^Page size/{print $2"x"$3}')
  echo "OK: resume.pdf = $PAGES page(s), $SIZE"
  [ "$PAGES" = "1" ] || echo "NOTE: resume spans $PAGES pages — tighten resume.html if one page is required."
else
  echo "OK: resume.pdf regenerated (pdfinfo not available for verification)."
fi
