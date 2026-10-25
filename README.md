# Teleprompter

A teleprompter that follows your voice. Open it in Google Chrome:
**https://singhprabhjot.github.io/teleprompter/**

1. Put each question on a line starting with `# ` and write your answer under it.
2. Click **Start prompter** and allow the microphone.
3. Read out loud: the current word turns yellow and the text scrolls with you.

Keys: `Space` listen / pause · `1`–`9` pick an answer · `←` `→` previous / next answer ·
`↑` `↓` back / forward a line · `R` restart · `+` `−` text size · `F` full screen · `E` edit.

**Answers from a Google Doc:** paste the doc's link in the box above the text and press Load
(the doc must be shared as "Anyone with the link → Viewer"). The page checks the doc every 15 seconds
and picks up your edits. It never changes the text while you are reading: an edit shows up when you pause.
A link ending in `#doc=<doc id>` links the doc in one click.

Your answers are saved only in your own browser (localStorage), never in this repo.
Voice follow uses Chrome's built-in speech recognition, which needs the internet.

To run it locally instead, double-click `Start Teleprompter.command` (serves it on http://localhost:8777).
