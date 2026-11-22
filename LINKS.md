# Links and references

Research trail for this advisor: the local checkouts, provider catalogs, admitted references, and research leads that shaped its design guidance and recommendation catalog. Compiled 2026-11-22 from `docs/research/`, `src/html_design_advisor/server.py`, the sibling checkouts under `../`, and the research desk notes in `C:\Users\steph\Documents\research`.

Linked material is reference data, not an endorsement and not a license grant. Provider-level terms are not asset clearance: an individual template, image, font, icon, or bundled library may carry different terms. "Unknown license" means do not copy or redistribute.

Status labels:

- **Adopted** — used by this repository (local clone, catalog source, or guidance pack).
- **Reference record** — metadata/link only; the MCP never fetches, serves, or redistributes it.
- **Lead** — reviewed for research, not admitted to the catalog.
- **Declined** — reviewed and deliberately kept out of the catalog.
- **Unknown rights** — no license identified; do not reuse.

## 1. Local sibling checkouts

Cloned under the workspace root `../` (the `ui-design` directory). These are what `list_design_references` reports. Discovery is read-only; the advisor never edits them.

| Project | Remote | License | Role in advisor |
|---|---|---|---|
| beautiful-html-templates | https://github.com/zarazhangrui/beautiful-html-templates | MIT | **Adopted.** Indexed slide-deck template corpus (`index.json`, 34 records); the template seed. Slide-deck scope, not a website catalog. |
| frontend-slides | https://github.com/zarazhangrui/frontend-slides | MIT | **Adopted.** HTML slide/presentation patterns; visual mood reference. |
| ui | https://github.com/shadcn-ui/ui | MIT | **Adopted.** shadcn/ui components and app templates; framework-oriented component reference. |
| uilayouts | https://github.com/ui-layouts/uilayouts | MIT | **Adopted.** Section/block layout examples. |
| Kami | https://github.com/tw93/Kami | MIT | **Adopted.** Design-oriented layout and template reference. |
| liquid-dom | https://github.com/AndrewPrifer/liquid-dom | MIT | **Adopted.** Layout/rendering experiments for advanced visual effects. |
| astro-spatial | https://github.com/SPhillips1337/astro-spatial | MIT | **Adopted.** Owner's Astro spatial/web experience project; read-only. |
| nothing-design-skill | https://github.com/dominikmartn/nothing-design-skill | MIT | **Adopted, opt-in.** Nothing-inspired tokens/components guidance pack; explicit brief trigger only. |
| oil-ui | https://github.com/oil-oil/oil-ui | MIT | **Adopted, opt-in.** Multi-direction exploration and comparison guidance pack. |
| flawless-ui-ux | https://github.com/smokeeaasd/flawless-ui-ux | MIT | **Adopted, opt-in.** Create/redesign/refine/review skill and Playwright inspect CLI. The advisor does not run the CLI. |
| impeccable | https://github.com/pbakaus/impeccable | Apache-2.0 | **Adopted, opt-in.** Design-craft vocabulary, critique rubric, polish/audit playbooks. Sparse clone; scripts/hooks/browser detector are never run by the MCP. |
| astryx | https://github.com/meta/astryx | MIT | **Adopted, opt-in.** Meta React 19 + StyleX design system; theme moods are look-don't-copy cues, no React vendoring. |
| doop | https://github.com/kgoedecke/doop | AGPL-3.0 | **Discovery only.** Multiplayer HTML design canvas; AGPL, not code to vendor and no remote inspiration search inside the MCP. |
| openui | https://github.com/thesysdev/openui | MIT | **Discovery only.** Generative-UI framework; not a website layout catalog. |
| open-intelligent-ui | https://github.com/thesysdev/open-intelligent-ui | MIT | **Discovery only.** OpenUI-based Intelligent UI demo; product/framework reference. |
| best-system-design-resources | https://github.com/javabuddy/best-system-design-resources | Unknown rights (no license file in checkout) | **Study list only.** System-design interview resources, not an HTML/UI catalog. |

Workspace-level design docs read by the advisor (not git clones):

- `../SKILL.md` — distinctive-frontend design guidance. Its frontmatter points to a `LICENSE.txt` that is not present in the workspace; treat the license as unverified.
- `../spec.md` — DESIGN.md / design-token specification. See [standards](#7-standards-and-platform-docs).

Opt-in guidance priority when several packs are requested: `brand-refresh` > `oil-ui` > `flawless-ui-ux` > `impeccable` > `astryx` > `nothing-design`.

## 2. Provider catalogs whose terms were checked

Recorded in `docs/research/2026-10-06-template-source-terms.md`; mirrored in the `design-advisor://sources` resource.

| Source | URL | Terms | Status | Note |
|---|---|---|---|---|
| html.design | https://html.design/ | https://html.design/license/ | Terms page checked 2026-10-06; asset rights unverified | Provider states CC BY 3.0 with attribution, including commercial use; per-asset review required. |
| Colorlib | https://colorlib.com/wp/templates/ | https://colorlib.com/wp/licence/ | Terms page checked; asset rights unverified | Paid templates licensed separately; free snippets are CC BY 3.0 and not resellable as template packs. |
| TemplateMo | https://templatemo.com/ | https://templatemo.com/about | Usage pages checked; asset rights unverified | Modification and client work allowed; official FAQ prohibits redistributing templates elsewhere. No OSI/CC license identified. |
| uiCookies | https://uicookies.com/ | https://uicookies.com/license/ | Terms snippet checked; asset rights unverified | Reported CC BY 3.0 plus attribution, no redistribution; verify each listing. |
| W3.CSS templates | https://www.w3schools.com/w3css/w3css_templates.asp | Same gallery page | Gallery page checked; asset rights unverified | Gallery permits modify/save/share/use for its templates; not blanket permission for other W3Schools content. |
| Website-Templates (dawidolko) | https://github.com/dawidolko/Website-Templates | https://github.com/dawidolko/Website-Templates/blob/master/LICENSE | Repository license indicated MIT; per-template rights unverified | ~170 HTML5 templates; repository-level MIT does not clear imported assets. |

## 3. Admitted reference records

Metadata and links only. No HTML, CSS, scripts, fonts, or images are downloaded or served by the advisor.

| Reference | URL | Type | Status | Limit |
|---|---|---|---|---|
| W3.CSS Architect | https://www.w3schools.com/w3css/tryweb_architect_full.htm | Website layout | **Reference record** (2026-10-08) | Architecture imagery and demo people are placeholders. |
| W3.CSS Dark Portfolio | https://www.w3schools.com/w3css/tryw3css_templates_dark_portfolio.htm | Website layout | **Reference record** | Photo-heavy proof needs adaptation for text-first portfolios. |
| W3.CSS Startup | https://www.w3schools.com/w3css/tryw3css_templates_startup.htm | Website layout | **Reference record** | Demo metrics, prices, team and copy are placeholders. |
| W3.CSS Blog | https://www.w3schools.com/w3css/tryw3css_templates_blog.htm | Website layout | **Reference record** | Demo images, article text, sidebar categories are placeholders. |
| W3.CSS Start Page | https://www.w3schools.com/w3css/tryw3css_templates_start_page.htm | Website layout | **Reference record** | Too sparse for complex product catalogs without additions. |
| ThreeUI Community | https://github.com/MengTo/threeui | Interactive component | **Reference record**; [MIT license](https://github.com/MengTo/threeui/blob/main/LICENSE), [asset terms](https://github.com/MengTo/threeui/blob/main/ASSET-LICENSES.md) | Community code is MIT; fonts, runtime files, remote catalog media, Pro/Beta content have separate terms. Poor fit for lightweight/static/reduced-motion briefs. |
| Footer Design | https://www.footer.design/ | Section inspiration | **Reference record** (2026-11-08) | Curated live-site footers; no reuse license found. Look-don't-copy; never treat captures as templates. |
| CTA Gallery | https://cta.gallery/ | Section inspiration | **Reference record** (2026-11-08); [about](https://cta.gallery/about) | Inspiration/conversion study; linked and sponsored templates need separate review. |

Ranking rule: whole-page W3.CSS layouts sort ahead of section inspiration; section galleries surface only on footer/CTA/conversion/newsletter/pricing overlap.

## 4. Reviewed then declined or kept as guidance-only

Recorded in `docs/research/2026-10-08-bookmark-reference-review.md` and `docs/research/2026-11-08-section-inspiration-leads.md`.

| Lead | URL | Decision |
|---|---|---|
| Rewamp UI | https://github.com/palakonweb/Rewamp-UI | **Declined.** React/Framer Motion component library; no license located. Motion-heavy, poor default for lightweight static HTML. |
| Refero Styles / DESIGN.md | https://styles.refero.design/ | **Guidance only.** [DESIGN.md template](https://styles.refero.design/design-md/design-md-template); no template or page asset indexed. |
| Scrolltide | https://www.scrolltide.co/ | **Declined.** Prompt/component library for cinematic scroll/3D sites; same class as Rewamp UI. |
| Scroll Shaders | https://scrollshaders.com/ | **Declined.** Paid WebGL shader library; commercial license forbids reselling/redistributing the set. |
| VibeIndex | https://vibeindex.dev/ | **Declined.** Directory of AI app builders, not layout references. |
| Aceternity UI | https://ui.aceternity.com/ | **Declined.** Bookmark research disposition: reject adopt; moodboard lead only. |

The account of these decisions, including `.215` bookmark dispositions, is in `docs/research/2026-11-08-section-inspiration-leads.md`.

## 5. Research-desk and bookmark leads

Design-relevant leads from `C:\Users\steph\Documents\research` (bookmark exports, X sweeps, GitHub following sweeps, and the 2026-11-20 stack evaluation). Unless marked adopted, these are **leads**: not in the catalog, no quality or license verification by this project.

| Lead | URL | Status | Why it was noted |
|---|---|---|---|
| sjb-stack | https://github.com/SamanthaJeanneb/sjb-stack | **Lead; no license file** | Curated AI skills list; `skills/react-composition.md` is React guidance, not HTML design. Attribute only. |
| Impeccable | https://github.com/pbakaus/impeccable | **Adopted** (local clone) | Chosen over emilkowalski/skills for framework-agnostic critique/polish vocabulary. |
| emilkowalski/skills | https://github.com/emilkowalski/skills | **Lead; MIT** | Animation/React/Swift taste; not adopted because Impeccable covered the lane. |
| awesome-design-md | https://github.com/VoltAgent/awesome-design-md | **Lead; MIT** | Brand DESIGN.md template collection; open candidate, not requested. |
| vercel-labs/agent-skills | https://github.com/vercel-labs/agent-skills | **Lead; no license detected** | React best-practices; do not vendor until licensed. |
| shadcn-ui/lint | https://github.com/shadcn-ui/lint | **Lead** | Agent-first Tailwind design-system linter. |
| ui-layouts/mcp | https://github.com/ui-layouts/mcp | **Lead** | MCP server for UI component discovery; same maintainers as the local `uilayouts` clone. |
| dominikmartn/hue | https://github.com/dominikmartn/hue | **Lead** | Brand → design-system skill by the `nothing-design-skill` author. |
| oil-oil/beautify-github-readme | https://github.com/oil-oil/beautify-github-readme | **Lead** | README design skill by the `oil-ui` author. |
| oil-oil/oil-cover | https://github.com/oil-oil/oil-cover | **Lead** | Cover/video design skill; outside HTML scope. |
| brijr/gui | https://github.com/brijr/gui | **Lead** | "Design real interfaces with your own AI agents." |
| brijr/ds | https://github.com/brijr/ds | **Lead** | One CSS file for typography/spacing/layout. |
| brijr/craft | https://github.com/brijr/craft | **Lead** | AI-first React design system. |
| brijr/skills | https://github.com/brijr/skills | **Lead** | Website-design skills. |
| storyTold/designcraft | https://github.com/storytold/designcraft | **Lead** | Rust page/layout design editor. |
| storyTold/figcraft | https://github.com/storytold/figcraft | **Lead** | Rust interface design/prototyping. |
| 0xNyk/unmachined | https://github.com/0xNyk/unmachined | **Lead** | Anti-AI-slop UI/text skill. |
| Moh4696/open-3d-skills | https://github.com/Moh4696/open-3d-skills | **Lead** | Animated-website skills. |
| CopilotKit/OpenDuet | https://github.com/CopilotKit/OpenDuet | **Lead** | Template with live assets/UI. |
| Airship | https://github.com/0xnyn/airship | **Tool-only lead; MIT** | Visual editor for coding agents, evaluated as a motion/UI tool. |
| anime.js | https://animejs.com/ | **Optional lane** | DOM motion for UI chrome; pin recommended, respect `prefers-reduced-motion`. |
| Cube Motion | https://www.cube-motion.dev/ | **Bookmark lead** | Animation library with automatic timings. |

Also reviewed in the same sweep and judged non-design or out of scope: `whiskerrs/whisker` (Rust mobile GUI kit), `kepano/kepano-obsidian` (vault template), `mrdoob/three.js` (3D runtime), and the video/audio/agent tooling in the bookmark exports.

## 6. Social and thread sources

| Source | URL | Used for |
|---|---|---|
| amananimates X roundup | https://x.com/amananimates/status/2119127905666314632 | Section-inspiration leads (Footer Design, CTA Gallery, and declined leads). |
| doodie_dev X post | https://x.com/doodi_dev/status/2119312712954204171 | Introduced `flawless-ui-ux`; used in the 2026-11-09 astryx/doop/flawless review. |

Both are discovery sources, not evidence of quality or reuse rights.

## 7. Standards and platform docs

Referenced by `../spec.md` and the design guidance.

| Resource | URL |
|---|---|
| Design Token JSON spec (W3C Community Group draft) | https://www.designtokens.org/tr/2025.10/format/ |
| MDN `font-feature-settings` | https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/font-feature-settings |
| MDN `font-variation-settings` | https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/font-variation-settings |

## 8. Local research notes

In-repository evidence for the entries above:

- [Template-source terms review, 2026-10-06](docs/research/2026-10-06-template-source-terms.md)
- [Bookmark leads and website-reference review, 2026-10-08](docs/research/2026-10-08-bookmark-reference-review.md)
- [Recommendation relevance baseline, 2026-10-08](docs/research/2026-10-08-recommendation-baseline.md)
- [Section inspiration leads, 2026-11-08](docs/research/2026-11-08-section-inspiration-leads.md)
- [Astryx / Doop / flawless-ui-ux review, 2026-11-09](docs/research/2026-11-09-astryx-doop-flawless-review.md)

External research desk notes (outside this repository, same machine):

- `C:\Users\steph\Documents\research\ui-design-sjb-stack-fit-2026-11-20.md` — where each design skill lands in the advisor catalog and demo feed.
- `C:\Users\steph\Documents\research\sjb-stack-evaluation-2026-11-20.md` — license/activity checks for Impeccable, emilkowalski/skills, awesome-design-md, and others.
- `C:\Users\steph\Documents\research\happymonkeyai_twitter_bookmarks_2026-09-23.csv` — original bookmark export (leads only).
- `C:\Users\steph\Documents\research\from-215\RESEARCH.md` — rolling research index with UI motion and ThreeUI dispositions.
- `C:\Users\steph\Documents\research\github-following-sweep*\`, `github-atlas-gap-2026-11*\`, `x-bookmark-sweep-2026-11-*\` — sweep data behind section 5.

## Adding a link

Record the canonical URL, license or terms pointer, the date checked, what it is used for, and whether it is adopted or a lead. Keep unknown rights unknown; a provider gallery's permission is not asset clearance. Do not download, execute, or redistribute linked templates or assets without checking the individual package and its bundled media.
