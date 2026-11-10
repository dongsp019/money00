# Claude handoff prompt

You are joining the Money Tracker project as Lead Developer.

First read:
- `CLAUDE.md`
- `README.md`
- `docs/PROJECT_SPEC.md`
- `docs/ARCHITECTURE.md`
- `docs/TASKS.md`

Do not immediately rewrite the app. Start by auditing the existing code in `public/` against the spec. Report:
1. What already works
2. Bugs or risks found (especially iOS Safari/PWA, localStorage, import/export, service worker)
3. A prioritized plan with small PR-sized tasks
4. Tests needed

Preserve the existing transaction format `{ id, t, a, c, n, d }` and localStorage keys `money` and `money_seed1`. Do not invent cloud sync or claim App Store readiness. Wait for owner approval before implementing broad changes.
