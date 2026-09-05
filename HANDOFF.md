# HANDOFF — Task Tracker & Session State

> How to use: at the start of a session read `MEMORY.md` (facts/decisions) then this file.
> Update the **Status** table and **Last updated** date whenever work changes.
> Last updated: 2026-09-05

## Where the project stands

A fast single-page resume site for **Jc** lives in `index.html` and is complete and
verified in its current scope. Nothing is deployed yet; nothing has been pushed to
GitHub yet (folder is **not** a git repo).

## Status

| # | Task | Status | Notes |
|---|------|--------|-------|
| 1 | Single-file fast site (inline CSS/JS/icons, no deps) | ✅ Done | `index.html` ~47 KB |
| 2 | Dark-by-default theme + light/dark toggle | ✅ Done | localStorage, no flash |
| 3 | Fully responsive (mobile menu, fluid grids) | ✅ Done | Verified at 390 / 760 / 1280 px |
| 4 | SEO: meta, OG, JSON-LD, semantic HTML | ✅ Done | Domain-gated parts commented |
| 5 | Personalize: name "Jc", email, GitHub link | ✅ Done | Hero, header, footer, JSON-LD |
| 6 | Concrete tech-stack skills section | ✅ Done | 6 groups, per Jc's questionnaire |
| 7 | README / MEMORY / HANDOFF tracking docs | ✅ Done | This set of files |
| 8 | Screenshots of the real page | ✅ Done | In `preview/` (4 PNGs, dark/light × desktop/mobile) |
| 9 | LinkedIn URL wired into contact button | ⏳ Pending | Awaiting URL from Jc |
| 10 | Domain added (canonical/`og:url`/JSON-LD `url`) | ⏳ Pending | Jc: "domain later" |
| 11 | Live preview in browser before deploy | ⏳ Pending | **Workspace ≠ Jc's machine** → must use ngrok public link or deploy; localhost never worked |
| 12 | Deploy to a free static host (permanent URL) | ⏳ Pending | Needs host choice + account/auth; candidate: GitHub Pages (fits existing repo) |
| 13 | Push code to `fivecoinvest-blip/jcpro` | ⏳ Pending | Needs explicit user authorization to `git push`; also decide `preview/` inclusion |
| 14 | Optional: delete `preview/` before deploy | ⏳ Pending | ~4 MB review-only PNGs |
| 15 | Optional: projects section / real work samples | ⏳ Future | Backs up the claimed stack; Jc has none listed yet |

## Next session — suggested starting point

1. Pick up pending #9/#10 if Jc supplied a LinkedIn URL or domain.
2. Else do #11: give Jc a live look via **ngrok** public link (ngrok is installed at
   `/usr/local/bin/ngrok`), then #12 deploy on approval.
3. Before deploy, ask Jc about `preview/` (#14) and confirm the repo push plan (#13).

## Gotchas learned (do not repeat)

- **Remote workspace:** servers/files here are invisible to Jc's browser. `localhost`
  or LAN IPs will never work for Jc. Use public URLs (ngrok, deploy) for anything Jc must see.
- **Processes die between turns:** background `nohup … &` servers were dead by the next
  turn. Don't rely on them persisting; treat long-running things as per-session.
- **`pkill -f` self-kill:** a pattern that appears verbatim in your own command line
  matches (and kills) your own shell. Use the bracket trick (`"[h]ttp.server"`) or match
  PIDs. (Bitten once: `pkill -f "http.server 8899"` killed the command itself.)
- **Headless-Chrome screenshots** (Chrome installed at `/usr/bin/google-chrome`):
  ```bash
  google-chrome --headless=new --disable-gpu --no-sandbox --hide-scrollbars \
    --window-size=1280,7600 --screenshot=preview/preview-dark-desktop.png "file://$PWD/index.html"
  ```
  Widths: 1280 = desktop, 390 = phone; make height very tall for full-page captures.
  Light theme requires bootstrapping `localStorage.theme = "light"` first (small redirect
  page trick) because the site defaults to dark.
- **Verification:** validate inline `<script>` blocks (JSON-LD block is JSON, not JS —
  parse it with `JSON.parse`, not `new Function`) and keep HTML comments balanced
  (a `*/` typo in an HTML comment once swallowed the rest of `<head>`).
