# Architecture

## Current MVP
Static Progressive Web App:
- `public/index.html`: UI, styles, application logic
- `public/manifest.webmanifest`: install metadata
- `public/sw.js`: offline asset cache
- `public/icon-192.png`, `public/icon-512.png`: app icons
- Browser `localStorage`: local transaction storage

## Hosting
Netlify serves the `public/` directory over HTTPS. GitHub `main` is the production source branch once continuous deployment is connected.

## Data flow
User input → validation → transaction object → localStorage (`money`) → monthly aggregation → UI render.

## Constraints
- localStorage is per browser origin and device; no automatic cloud sync
- Service worker requires secure context (HTTPS, except localhost)
- iOS PWA behavior should be verified on real iPhone/Safari
- Offline support only applies to cached app shell and may need explicit cache version updates

## Future evolution
Keep business rules isolated from UI before introducing a backend. If cloud sync is later required, design authentication, database schema, conflict handling, export/delete flows, and security review before implementation.
