#!/usr/bin/env bash
# Install the Titan deck skill into the user's global Claude Code skills directory,
# so it is available from any repo rather than only inside titan-branding.
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${HOME}/.claude/skills/deck"

mkdir -p "${DEST}/assets"
cp "${SRC}/SKILL.md" "${DEST}/SKILL.md"
cp "${SRC}/assets/deck-styles.css" "${DEST}/assets/deck-styles.css"
cp "${SRC}/assets/deck-stage.js" "${DEST}/assets/deck-stage.js"
cp "${SRC}/assets/titan-icon-symbol.html" "${DEST}/assets/titan-icon-symbol.html"
cp "${SRC}/assets/template.html" "${DEST}/assets/template.html"

echo "Installed the deck skill to ${DEST}"
echo
echo "  Restart Claude Code for it to be picked up."
echo "  Ask for a deck, a presentation, or slides — or invoke it with /deck."
echo "  Re-run this script whenever the copy in titan-branding changes."
echo "  Uninstall by deleting ${DEST}"
