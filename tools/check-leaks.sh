#!/bin/sh
# Before every push: nothing personal or from a customer may end up in the template.
# The word list lives outside the repo (it would itself leak): $CREW_LEAK_WORDS or ~/.config/crew-framework/leak-words.txt
# One extended regex per line; an invalid line fails the check instead of passing it.
cd "$(dirname "$0")/.." || exit 1
WORDS="${CREW_LEAK_WORDS:-$HOME/.config/crew-framework/leak-words.txt}"
[ -f "$WORDS" ] || { echo "missing word list: $WORDS" >&2; exit 2; }
CLEAN=$(mktemp) || exit 2
trap 'rm -f "$CLEAN"' EXIT
tr -d '\r' < "$WORDS" | grep -v '^[[:space:]]*$' > "$CLEAN"
[ -s "$CLEAN" ] || { echo "empty word list: $WORDS" >&2; exit 2; }
grep -rniE -f "$CLEAN" --exclude-dir=.git --exclude=check-leaks.sh .
case $? in
  0) echo "LEAK: fix the lines above" >&2; exit 1 ;;
  1) echo "clean" ;;
  *) echo "check failed (bad pattern in $WORDS?)" >&2; exit 2 ;;
esac
