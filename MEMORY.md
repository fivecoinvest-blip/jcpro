# MEMORY — Project Memory

> Read this first at the start of every session, then read `HANDOFF.md` for task state.
> Update this file whenever a decision or fact changes. Last updated: 2026-09-05.

## Who & contact

- Owner prefers to be called **"Jc"** (resume site name: "Jc").
- Email: **jcbloggerjc@gmail.com**
- GitHub: **https://github.com/fivecoinvest-blip**
- Repo for this project: **https://github.com/fivecoinvest-blip/jcpro**
- **LinkedIn:** not provided yet — button is a `#` placeholder, marked with a `✏️` comment.
- **Domain:** "later" — all canonical / `og:url` / JSON-LD `url` references are
  commented out with `✏️` markers until a domain exists.

## The person (resume positioning)

- Full-stack developer: web + iOS/Android apps, backend, databases, REST APIs,
  servers/deployment, and professional SEO experience.
- Strong selling point: works effectively **with AI coding agents** — knows how to
  code, guides AI, reviews/corrects output. Positioning line used on the site:
  *"AI is not a powerful replacement for programming knowledge — it's a tool that
  makes a knowledgeable developer more productive."*
- Covers the whole pipeline: Development → Database → Backend/API → Server →
  Deployment → Maintenance.
- Comfortable learning/adapting to any stack; breadth is enabled partly by AI-assisted
  workflows (recorded honestly in the site's skills lead line).

## Tech stack (confirmed by Jc via questionnaire, 2026-09-05)

- **Languages:** JavaScript, TypeScript, Python, PHP, Java, Go, Swift, Kotlin, SQL, HTML5, CSS3
- **Frontend & mobile:** React, Next.js, Vue, Angular, Tailwind CSS, iOS (Swift), Android (Kotlin)
- **Backend & APIs:** Node.js, Express, Laravel, Django, Flask, REST APIs, auth, third-party integrations
- **Databases:** MySQL, PostgreSQL, MongoDB, Firebase, SQLite, Redis
- **Infrastructure/tools:** Git & GitHub, Docker, Linux servers, WordPress, DNS, SSL, deployment
- **AI & SEO:** Cursor, GitHub Copilot, AI coding agents, on-page/technical SEO, Search Console

⚠️ **Credibility caveat (flagged to Jc):** GitHub profile should eventually show code
in these languages — a resume listing a stack with an empty/private GitHub weakens it.

## Site design decisions

- **Single file** `index.html` (~47 KB) — inline CSS + JS, system font stack, inline SVG
  icons + favicon. No external requests. This is deliberate (speed-first).
  (The résumé is a second page `resume.html`, linked from `index.html` — the main site
  itself stays a single page; resume.html is marked `noindex`.)
- **Theme:** dark by default; light/dark toggle in header; saved to `localStorage`;
  applied via a tiny `<head>` script **before first paint** (no flash).
- **Colors:** accent gradient cyan→indigo. Dark: `--accent #22d3ee`, `--accent-2 #818cf8`,
  bg `#070b14`. Light: `#0891b2` / `#6366f1`, bg `#f4f7fb`. All via CSS custom properties.
- **Aesthetic:** "modern technical" — mono-font labels/numbers, faint grid background,
  numbered section tags (01–06), chip clouds, gradient text on the hero name,
  sticky blurred header, scroll progress bar, typewriter line in hero,
  `prefers-reduced-motion` respected.
- **Sections & anchors:** `home` (hero), `about`, `services` (6 cards), `process`
  (6-step pipeline + AI workflow), `ai`, `skills` (6 groups: languages / frontend+mobile /
  backend+APIs / databases / infrastructure+tools / AI+SEO), `contact`, footer.
- Skills section was reworked (2026-09-05) from generic capability chips to the concrete
  stack above; capability details already live in the Services cards (no duplication).

## SEO

- Meta description, Open Graph + Twitter tags, `theme-color`, inline SVG favicon,
  JSON-LD `Person` schema, semantic HTML (`header/main/section/nav/footer`, aria labels).
- Meta `robots`: `index, follow, max-image-preview:large` (2026-09-05).
- `robots.txt` at project root allows all crawlers — search engines (Googlebot, Bingbot,
  DuckDuckBot, Yandex, Baiduspider, Applebot) plus social/messaging bots (Facebook,
  Twitterbot, LinkedInBot, WhatsApp, Pinterest, Slack, Discord, Telegram, Instagram).
- **Google Search Console:** verification file `google97b4534637462aa1.html` sits at the
  project root (2026-09-05). Property is NOT verified yet — GSC needs the site deployed
  to a live URL first; then verify via the HTML-file method and submit the page.
  Keep this file at the root permanently (removing it loses verification).
- **Sitemap rule (Jc, 2026-09-05):** `sitemap.xml` exists with ONE page for now — that's
  fine/valid. **Every time a page is added, add a `<url>` entry to `sitemap.xml` and
  update these docs.** The `<loc>` is a placeholder; set the real Vercel/custom-domain
  URL at deploy time (also uncomment the `Sitemap:` line in `robots.txt` then).
- **Résumé download (2026-09-05):** `resume.html` is an A4 résumé that mirrors the site's
  design (same dark/light tokens, gradients, chips; own theme toggle using
  `localStorage["resume-theme"]`). `resume.pdf` is generated from it via
  `bash make-resume-pdf.sh` (headless Chrome `--print-to-pdf`, one A4 page, no
  header/footer). `index.html` links to `resume.pdf` in the hero and contact sections.
  **Rule: whenever resume content/design changes, rerun the script so the PDF stays in
  sync.** PDF verified: 1 A4 page, margins top ~9mm / bottom ~23mm / sides ~11.6mm.
- Canonical, `og:url`, and JSON-LD `url` are commented placeholders until Jc has a domain;
  `robots.txt` has a commented `Sitemap:` line for the same moment.

## Working agreement (2026-09-05)

- **Every change to the site must also be reflected in the docs** (README.md, MEMORY.md,
  HANDOFF.md) so any session is always up to date.
- **Never push to GitHub automatically.** Push only when Jc explicitly says
  "push to github". Docs record what is committed vs. pending in HANDOFF.

## Engineering conventions

- Vanilla JS only, wrapped in an IIFE, `"use strict"`, no dependencies.
- Comments inside `index.html` use `✏️` to mark every remaining personalization spot.
- Verification workflow used so far: `node --check`-style syntax validation of inline
  scripts, `JSON.parse` on the JSON-LD block, tag-balance scan, and headless-Chrome
  screenshots (see `HANDOFF.md` for the exact command).
