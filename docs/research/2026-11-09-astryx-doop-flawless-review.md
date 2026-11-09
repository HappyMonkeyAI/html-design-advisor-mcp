# 2026-11-09 — Astryx, Doop, and flawless-ui-ux review

Owner pointed at [X post 2119312712954204171](https://x.com/doodi_dev/status/2119312712954204171) and local clones of `meta/astryx` and `kgoedecke/doop` under `../`. The post is about **flawless-ui-ux**, not those two repos. All three were reviewed as untrusted sibling references for `html-design-advisor-mcp`.

## Sources

| Sibling | License | Role |
|---|---|---|
| `flawless-ui-ux` | MIT | Agent skill + Playwright inspect CLI for create/redesign/refine/review |
| `astryx` | MIT | Meta React 19 + StyleX design system; agent CLI and theme packages |
| `doop` | AGPL-3.0 | Multiplayer HTML canvas with MCP frame tools and optional One Page Love inspiration |

## Compare to this advisor

| Capability | Advisor today | Closest sibling | Action |
|---|---|---|---|
| Distinctive / anti-generic guidance | Workspace `SKILL.md` + `spec.md`; opt-in oil-ui / Nothing packs | flawless skill (`anti-slop`, craft, direction) | Opt-in guidance pack; do not replace workspace skill |
| Live visual / a11y sampling | Deferred (browser-based audits) | flawless `inspect` / `verify` (1440×900, 390×844) | Keep deferred; skill CLI is complementary outside MCP |
| Inert HTML heuristics | `audit_local_html` (title, h1, alt, CSS hints) | Source half of flawless inspect | Keep advisor path; no Playwright inside MCP |
| Template / layout recommendations | Local catalog + linked metadata | Doop `search_inspiration` (One Page Love API) | Out of scope until network allowlist approved |
| Design-system build surface | Not in scope | Astryx components/CLI/themes | Inventory + opt-in theme-mood pack; no React vendoring |
| Live co-design canvas | Not in scope | Doop MCP frames | Discovery-only sibling; AGPL — do not vendor |

## Admit / decline for advisor code

- **Admit:** inventory entries for `flawless-ui-ux`, `astryx`, and `doop`.
- **Admit:** opt-in `get_design_guidance` packs for `flawless-ui-ux` and `astryx` (explicit brief phrases only).
- **Decline:** merging flawless Playwright into `audit_local_html` without owner approval of deferred browser audits.
- **Decline:** using Doop server code or OPL remote search inside this MCP (AGPL + network).
- **Decline:** recommendation seeds from Astryx Storybook/templates (wrong stack; look-don't-copy themes only via guidance pack).

## Priority when multiple packs are requested

`brand-refresh` > `oil-ui` > `flawless-ui-ux` > `astryx` > `nothing-design`. Keep-brand refresh still beats exploration and craft packs.
