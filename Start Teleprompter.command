#!/bin/bash
# Double-click to start the teleprompter in Google Chrome.
cd "$(dirname "$0")"
PORT=8777
URL="http://localhost:$PORT/"
if ! curl -s -o /dev/null "$URL"; then
  python3 -m http.server "$PORT" --bind 127.0.0.1 >/dev/null 2>&1 &
  for i in 1 2 3 4 5 6 7 8 9 10; do curl -s -o /dev/null "$URL" && break; sleep 0.3; done
fi
if [ -d "/Applications/Google Chrome.app" ]; then open -a "Google Chrome" "$URL"; else open "$URL"; fi
echo ""
echo "Teleprompter is running at $URL"
echo "Leave this window open while you use it. Close it when you're done."
wait
