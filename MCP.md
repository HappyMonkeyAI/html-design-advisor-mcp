# MCP intent map

Transport: stdio. Server runs locally from this project; it does not bind a network port.

Tools:
- `search_templates`: search indexed local template metadata and return descriptive fields and license pointer.
- `recommend_design`: map page purpose, audience, mood, constraints, accessibility needs, and interactions to curated linked website/component references. A purpose or audience fit is required. Website layouts and interactive components fill `recommendations` (preferred for page structure); matching slide decks are listed separately as `visual_mood_seeds`. Status is `matched`, `mood_only` (seeds only), or `no_fit`. Includes provenance, caveats, up to five `excluded_references`, and `recommended_direction` cues from the lead layout/interactive reference. No remote content is fetched.
- `list_design_references`: summarize curated local design projects without recursive dependency traversal. Includes HTML/slide references plus opt-in `nothing-design-skill` and gen-UI siblings `openui` / `open-intelligent-ui` (framework demos, not page-template catalogs).
- `get_design_guidance`: return accessibility-aware principles and links to workspace design guidance. Lists optional directions; activates `brand-refresh` or Nothing-inspired packs only on explicit brief phrases (`brand-refresh` wins if both are requested).
- `audit_local_html`: review one explicitly selected local HTML file as inert text; allowed root and size are enforced.

Resources:
- `design-advisor://sources`: candidate source registry and curated website-reference metadata with verification states.
- `design-advisor://local-assets`: actual local slide-template count, curated website/component reference counts, source, and collection scope.

No credentials or remote integrations are needed. Any later web-fetch capability requires an explicit domain allowlist, provenance records, and tests against untrusted instructions.
