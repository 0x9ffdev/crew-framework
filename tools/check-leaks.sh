#!/bin/sh
# Before every push: nothing personal or from a customer may end up in the template.
# The word list lives outside the repo (it would itself leak): $CREW_LEAK_WORDS or ~/.config/crew-framework/leak-words.txt
cd "$(dirname "$0")/.." || exit 1
WORDS="${CREW_LEAK_WORDS:-$HOME/.config/crew-framework/leak-words.txt}"
[ -f "$WORDS" ] || { echo "missing word list: $WORDS" >&2; exit 2; }
PATTERN=$(grep -v '^\s*$' "$WORDS" | paste -sd'|' -)
if grep -rniE "$PATTERN" --exclude-dir=.git --exclude=check-leaks.sh .; then
  echo "LEAK: fix the lines above" >&2
  exit 1
fi
echo "clean"
