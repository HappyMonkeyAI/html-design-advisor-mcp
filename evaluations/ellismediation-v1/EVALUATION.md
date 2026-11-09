# Ellis Mediation — local design-advisor evaluation

Date: 2026-10-23
Status: local experiment only; neither deployed nor an approved replacement

## Test question

Does the HTML Design Advisor help shape a calm, high-trust services homepage for a UK mediation practice (commercial, consumer, community, workplace — explicitly not family), with a clear free-consultation path?

## Source basis

The public homepage presents Ellis Mediation as independent mediation for businesses, charities and individuals, led by Martin Ellis (CEDR-trained mediator, Chartered Accountant). Visible content covers mediation advantages (cost, speed, confidentiality, control, without prejudice), four service categories, partner relationships, remote/face-to-face options, and contact details.[1]

Inspected in BrowserOS Neo as factual reference only. No live page, production asset, or sibling project was modified. Partner logos and site photography were not copied into this concept.

## Actual advisor output

`recommend_design` against the derived brief (see `advisor-output.json`) returned:

| Rank | Reference | Score | Assessment for this brief |
|---|---|---:|---|
| 1 | Blue Professional | 15 | Slide-deck visual reference. Mood tags (professional / calm / trustworthy) fit, but it is not a website structure. Useful only as a cool, restrained palette seed. |
| 2 | W3.CSS Startup | 12 | Whole-page layout reference with offer / features / contact cues. Stronger structural fit despite a lower numeric score. |
| 3 | W3.CSS Architect | 10 | Structured services/projects/contact pattern; workable skeleton for a professional practice site. |

The scorer promoted a slide deck above website layouts even though Startup matched more brief fields (purpose, audience, mood, constraints, interactions). That mirrors earlier evaluations: mood-token weight can outrank page-structure fitness. Guidance principles were sound (audience grounding, accessibility, untrusted content) but not page-specific. No catalog assets were copied.

## Human-authored concept

### Pass 1 (superseded)
An invented “Quiet Settlement” teal/amber direction with a decorative CSS hero motif. Useful as a contrast test, but it drifted from the live brand and replaced the header video with an irrelevant graphic.

### Pass 2 (current)
Reworked `index.html` to stay on-brand with the live site while improving hierarchy and spacing:

- Brand magenta `#d73881`, white/soft paper, Poppins (matching the live theme family)
- Live logo hotlinked in the header
- Existing homepage YouTube video (`Em3YwUuXEXs`, “Everything you need to know about mediation”) as the hero visual — decorative motif removed
- Martin’s site photograph and partner logos (RETRA, Central Bedfordshire Council, Rated People) hotlinked with captions/attribution
- Primary nav labels and destinations preserved (Home, Mediation + children, Case Studies + children, Other Services, Blog, Contact Us)
- Homepage wording kept closely (purpose, listening principle, family-mediation exclusion, advantages list, about bio, remote/face-to-face, contact details)

Layout polish only: sticky header, clearer section rhythm, structured advantages list, about photo grid, no form submission (points to live contact). Assets remain hotlinked from the public site for this local mockup; they are not copied into the repo.

## First-pass rubric (author assessment, not user testing)

| Measure | Score | Reason |
|---|---:|---|
| Audience and purpose clarity | 4/5 | Mediation-without-court proposition and service scope are explicit. |
| Hierarchy and calls to action | 4/5 | Free consultation is primary; why-mediation is secondary. |
| Factual fit | 4/5 | Public claims summarised; feedback and service depth deferred to live links. |
| Visual specificity | 3/5 (pass 2) | Clearer than the live theme chrome while staying on his magenta/logo/video identity; less “new brand”, more “refreshed site”. |
| Responsive/keyboard foundations | 4/5 | Skip link, landmarks, focus styles, reduced-motion handling, mobile menu toggle; not a full WCAG audit. |
| Advisor relevance | 3/5 | Startup/Architect structure helped; top slide-deck rank was only mildly useful. Brand fidelity came from the live site, not the catalog. |

## Verification

- Pass 2 `audit_local_html` reviewed ~25 KB with no heuristic findings (viewport, responsive CSS, focus/reduced-motion hints; landmarks include header/nav/main/aside/footer after a nav wrap fix). Linked CSS/fonts/remote images are not inspected.
- BrowserOS Neo reloaded the local `file://` concept: magenta brand, live logo, homepage wording, and YouTube thumbnail hero confirmed. YouTube iframes error on `file://`, so the mockup uses the official video thumbnail + play link to `youtu.be/Em3YwUuXEXs` (same video as live).
- Contrast intent: magenta on white for headings/CTAs, dark grey body — selected CSS pairs only, not an exhaustive WCAG audit.

## Result and limits

The concept shows a coherent client-services homepage can be authored from public content. The MCP helped frame the brief and surfaced usable website layout cues, but still ranked a slide deck first. Ranking purpose/structure above mood-only deck matches remains the useful product follow-up.

This prototype is local only and has not been approved by the client.

## Sources

[1] https://www.ellismediation.co.uk/ — Ellis Mediation homepage (also reached via https://ellismediation.co.uk)
