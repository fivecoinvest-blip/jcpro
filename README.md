# JC — Full-Stack Developer Resume Site

Single-page personal resume website for **Jc**, built for maximum speed:
one self-contained `index.html` — inline CSS, JS, and SVG icons, no frameworks,
no external fonts, no build step. Opens offline from disk.

**Live repo target:** https://github.com/fivecoinvest-blip/jcpro

## Files

| File            | Purpose                                                        |
| --------------- | -------------------------------------------------------------- |
| `index.html`    | The entire website (single file)                               |
| `resume.html`   | Résumé page — A4, styled like the site (toggle dark/light)     |
| `resume.pdf`    | Downloadable PDF of the résumé (generated from `resume.html`)  |
| `make-resume-pdf.sh` | Regenerates `resume.pdf` after editing `resume.html`      |
| `robots.txt`    | Allows all search engines & social crawlers to index the site  |
| `sitemap.xml`    | XML sitemap (one page now — **add an entry every time a page is added**) |
| `google97b4534637462aa1.html` | Google Search Console ownership verification (keep at root) |
| `README.md`     | This overview                                                  |
| `MEMORY.md`     | Project memory — facts, decisions, conventions (read first)    |
| `HANDOFF.md`    | Task tracker & handoff state — what's done / what's next       |
| `preview/`      | Generated full-page screenshots (review only — delete before deploy) |

## Quick start

- **View locally:** open `index.html` directly in a browser, or serve it with any
  static server (`python3 -m http.server 8080`). Note: if you're working through
  a remote assistant workspace, `localhost` there is *not* your machine — use a
  public preview (ngrok) or deploy instead.
- **Edit:** all personal details are already filled in (name "Jc", email, GitHub).
  Remaining placeholders are marked with `✏️` comments in `index.html`.

## Current status

Dark-theme-by-default resume site, fully responsive, with light/dark toggle,
SEO metadata + JSON-LD, and a concrete tech-stack skills section.

**Still open:** LinkedIn URL, domain (canonical/OG/JSON-LD are commented out
until then), live preview, and deployment. See `HANDOFF.md` for the full task list.

## Docs for handoff

- **`MEMORY.md`** — the durable record of who this site is for and every design
  decision made so far.
- **`HANDOFF.md`** — the state tracker: completed tasks, pending tasks, gotchas,
  and where the next session should start. **Update it whenever anything changes.**
