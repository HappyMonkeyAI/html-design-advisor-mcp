# Edwards Gibson — local design-advisor evaluation

Date: 2026-10-24
Status: local experiment only; neither deployed nor an approved replacement

## Test question

Does a brand-refresh homepage concept, informed by the improved MCP ranking and `brand-refresh` guidance, improve clarity for a London legal recruitment consultancy while keeping live colours, logo, wording and navigation?

## Source basis

The public homepage presents Edwards Gibson as a City of London legal recruitment consultancy focused on private practice partner hires, team moves and in-house recruitment, with Partner Moves reports, news citations, articles, featured roles and team profiles.[1]

Inspected in BrowserOS Neo as factual reference only. No live page or sibling project was modified. Logo, publication cover, skyline, building and team photographs are hotlinked from the public site for this mockup.

## Actual advisor output

`recommend_design` (see `advisor-output.json`) returned:

| Rank | Reference | Score | Notes |
|---|---|---:|---|
| 1 | W3.CSS Architect | 17 | Website layout — structured services/projects/contact pattern; good fit for a professional practice homepage. |
| Seeds | Signal, Daisy Days, Editorial Forest | — | Slide decks correctly listed under `visual_mood_seeds`, not as structural leads. |

`get_design_guidance` with an explicit brand-refresh brief activated the `brand-refresh` pack (keep colours/logo/wording/nav; prefer real site media; improve hierarchy without inventing a new identity).

## Human-authored concept

Created `index.html` as an on-brand refresh:

- Teal/aqua brand (`#347b84` / `#33b3b9`), Source Sans 3 (live Source Sans Pro family)
- Live logo, skyline, building image, Issue 94 Partner Moves cover, team photos
- Preserved primary nav labels/destinations and topline “Informed Connections” + phone
- Clearer hero with report CTA; welcome, news/articles, featured roles (curated subset), team, contact
- Centered experiment disclaimer under footer links

Not MCP-generated. Assets remain hotlinked; nothing is redistributed into the repo.

## First-pass rubric (author assessment)

| Measure | Score | Reason |
|---|---:|---|
| Audience and purpose clarity | 4/5 | Partner/in-house recruitment positioning is immediate. |
| Hierarchy and calls to action | 4/5 | Live roles and Partner Moves report are primary next steps. |
| Factual fit | 4/5 | Live wording and publication/role samples retained; full role list not duplicated. |
| Visual specificity | 4/5 | Same teal identity with cleaner structure than the denser live homepage. |
| Responsive/keyboard foundations | 4/5 | Skip link, sticky nav, mobile menu, focus/reduced-motion; not a full WCAG audit. |
| Advisor relevance | 4/5 | Architect layout lead + brand-refresh pack matched the working method from Ellis/Rewlea. |

## Verification

- `audit_local_html` reviewed 28,660 bytes with no heuristic findings (viewport, responsive CSS, focus/reduced-motion, header/nav/main/aside/footer).
- BrowserOS Neo opened the local `file://` concept: logo and Issue 94 cover loaded, six featured roles present, no horizontal overflow; brand teal `#347b84` confirmed.
- Contrast intent: white/aqua on teal hero, teal ink on white/soft content — selected pairs only.

## Result and limits

Post-M9 ranking and brand-refresh guidance aligned with the approach that worked for prior client concepts: structure from a website reference, identity from the live brand. Local experiment only; not client-approved.

## Sources

[1] https://edwardsgibson.com/ — Edwards Gibson homepage
