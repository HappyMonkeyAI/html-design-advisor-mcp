# Rewlea Swimming — local design-advisor evaluation

Date: 2026-10-24
Status: local experiment only; neither deployed nor an approved replacement

## Test question

Does the HTML Design Advisor help shape a friendlier, clearer homepage for a South Devon swimming school while staying on the live brand (cyan / orange / lime, Montserrat, existing photos and wording)?

## Source basis

The public homepage presents Rewlea Swimming & Little Ducklings with lessons for all ages, aqua/fitness classes, membership/general swimming and private pool hire, venues in Ashburton, Kingsteignton and Torquay, and contact details at Rewlea House.[1]

Inspected in BrowserOS Neo as factual reference only. No live page or sibling project was modified. Hero and content photographs plus the Worldpay mark are hotlinked from the public site for this mockup.

**Security note:** the live homepage HTML also contained a spam-looking internal link (`…/we-sell-the-best-lab-reports…`) in a content box. That destination was **not** included in this concept. Worth a WordPress malware/content audit on the live site separately from the redesign.

## Actual advisor output

`recommend_design` against the derived brief (see `advisor-output.json`) returned only low-scoring **slide-deck** visual references:

| Rank | Reference | Score | Assessment |
|---|---|---:|---|
| 1 (tie) | Capsule | 5 | Pastel slide deck; mood-adjacent only. |
| 1 (tie) | Pink Script — After Hours | 5 | Playful deck; poor fit for a swimming school homepage. |
| 3 | Coral | 2 | Weak overlap. |

No curated website layout references ranked. The brief’s swimming/family purpose tokens do not align with the current W3.CSS website seed set, so the advisor could not propose a structural homepage pattern. Guidance principles remained generally useful; brand fidelity and page structure came from the live site and human authoring.

## Human-authored concept

Created `index.html` as a brand-faithful refresh:

- Live palette `#0dd8fd` / `#ff5502` / `#90d30f`, Montserrat
- Text wordmark matching “Rewlea Swimming & Little Ducklings”
- Full-bleed hero using the live swimmer slider image
- Preserved three path CTAs (classes / venues / book) with clearer stacking under the hero
- Welcome copy, importance-of-swimming copy, September term notice, contacts, payments policy link
- Lesson submenu destinations preserved
- Centered experiment disclaimer under footer links

Not MCP-generated. Assets remain hotlinked; nothing is redistributed into the repo.

## First-pass rubric (author assessment)

| Measure | Score | Reason |
|---|---:|---|
| Audience and purpose clarity | 4/5 | Lessons, venues and booking paths are immediate. |
| Hierarchy and calls to action | 4/5 | Hero CTA + three brand-colour paths retained and clarified. |
| Factual fit | 4/5 | Live wording and locations kept; spam link omitted. |
| Visual specificity | 4/5 | Same energetic brand, less dated Metro tile chrome. |
| Responsive/keyboard foundations | 4/5 | Skip link, nav toggle, focus/reduced-motion; not a full WCAG audit. |
| Advisor relevance | 2/5 | Only slide decks; no website structure seed for this brief. |

## Verification

- `audit_local_html` reviewed 23,628 bytes with no heuristic findings (viewport, responsive CSS, focus/reduced-motion, header/nav/main/aside/footer landmarks).
- BrowserOS Neo opened the local `file://` concept: hero image loaded (2050px wide), three path CTAs present, no horizontal overflow at desktop width.
- Contrast: lime/cyan CTAs use dark text on bright brand fills; body ink on white/soft — selected pairs only.

## Result and limits

A coherent on-brand refresh is possible from public content. The MCP did not supply a useful website layout for this swimming-school brief, which highlights a catalog gap for family/education/leisure services beyond the current W3 seeds.

Local experiment only; not client-approved.

## Sources

[1] https://www.rewleaswimming.online/ — Rewlea Swimming & Little Ducklings homepage
