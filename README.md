# Teleprompter

A teleprompter that follows your voice. Open it in Google Chrome on a Mac, or Safari on an iPad:
**https://singhprabhjot.github.io/teleprompter/**

1. Put each question on a line starting with `#` (a space after it is optional) and write your answer under it.
2. Click **Start prompter** and allow the microphone.
3. Read out loud: the current word turns yellow and the text scrolls with you.
   Words you make **bold** in the Google Doc show bold in the prompter (or type `**word**` in the text box).
   Hide it in ⚙︎ → Bold from your doc.
   Text in angle brackets, like `<Pause>` or `<Wait>`, shows in red as a cue; you don't say it.

**Learning mode** (the Interview / Learning switch, or `L`): while you practise out loud, words you pause on
mid-sentence, hesitate on (1.3–2.5 s), restart a phrase before, say wrong and then correct, skip, or that come out
unclear get an orange wavy underline with a count. Double-click a word to mark
it yourself (on iPad: press and hold; again to clear it). **Tricky words** lists them with the reason, plus your practice runs. It is all
saved in this browser, so it is kept when you reload.

Keys: `Space` listen / pause · `1`–`9` pick an answer · `←` `→` previous / next answer ·
`↑` `↓` back / forward a line · `R` restart · `+` `−` text size · `F` full screen · `E` edit.

**Answers from a Google Doc:** paste the doc's link in the box above the text and press Load
(the doc must be shared as "Anyone with the link → Viewer"). The page checks the doc every 15 seconds
and picks up your edits. It never changes the text while you are reading: an edit shows up when you pause.
A link ending in `#doc=<doc id>` links the doc in one click.

By default the page loads the Google Doc set as `DEFAULT_DOC` in `index.html`. Click **Unlink** to type your own text
instead; that browser then stays unlinked.
Voice follow uses Chrome's built-in speech recognition, which needs the internet.

To run it locally instead, double-click `Start Teleprompter.command` (serves it on http://localhost:8777).

**Mock interview** (sidebar → + Ask a question): ask a question out loud; after a short silence it goes to
ChatGPT, and the answer opens as cheat notes (middle: labelled sections of short bullets) beside the full answer to read (right). The switch in the top
bar decides what the microphone is for: **Question**, **Answer** (the reading) or **Auto** (question → reading →
next question). **Notes only** hides the full text so he speaks from the notes. Answers come from **ChatGPT, Claude, Grok or Gemini** (⚙︎ Settings → Mock interview → Answers come from); each keeps its
own API key in that browser. Claude runs on Claude Opus 5.5 through Anthropic's SDK. **Scan QR** fills a key from a QR
code: on a computer, paste the key and tap **Show as QR code**, then scan it with the iPad. The context box is sent with
every question.

**Stream the answer** (⚙︎ Settings → Mock interview, off by default): the answer shows up while the AI is still
writing it, so he can start reading in about a second instead of waiting 2–5 seconds. The full answer comes first and
the cheat notes fill in after it (in **Notes only**, the notes come first). "Still writing…" at the bottom means more
is on the way; Auto waits for it before going back to the next question. A key that isn't allowed to stream gets the
answer the normal way.

ChatGPT note: OpenAI streams gpt-5 and gpt-5-mini only for an organization it has verified
(platform.openai.com → Settings → Organization → Verify). On any other key, streamed answers come from gpt-4.1-mini,
which streams without it; the app tries gpt-5-mini again every 12 hours, or when you tap Test. Under the setting,
Settings shows which model wrote the last answer and how soon its first words were on screen.

**Gemini** uses the newest Gemini Flash on your key (get one at aistudio.google.com → Get API key; new Gemini keys
start with AQ., older ones with AIza, and both are recognised: pasting one switches to Gemini by itself). Flash is quick when it hardly thinks first, so the app asks for the least
thinking each model accepts and remembers it. It streams on any key, verified or not. Free keys allow only a few
questions a minute.
