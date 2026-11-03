> **Moved.** This app now lives inside the R&A app: https://ransdell91.github.io/RA-Media-App/ (repo `ransdell91/RA-Media-App`). This repo only redirects there.

# SailorBloodMo0n Production

The production planner for the [SailorBloodMo0n](https://www.youtube.com/@sailorbloodmo0n) channel, as an installable web app: the monthly Anime News Roundup, the monthly video essay, and 16 shorts a month.

- **App:** https://ransdell91.github.io/Sailorbloodmo0n-Production-App/
- **Data:** Supabase project `vxlgvfkrfjjjtfhtwsny` (SailorBloodMo0n Production) in the R&A Media Productions LLC organization (table `public.items`, members in `public.members`)
- **Sign-in:** email link, 6-digit code, or password. Only addresses in `public.members` can read or change anything.

## What it does
- **Today:** the day's work, worked out from the production plan, plus one-off tasks, deadlines that are behind, and open decisions.
- **Month:** release calendar with film nights, deadlines and short slots.
- **Videos:** every news roundup and essay with its schedule, news desk, cut-down shorts, script link and shot list.
- **Shorts:** the next six weeks of slots (Tue, Thu, Sat, Sun), each short's hook, status, platforms and checklist.
- **Ideas:** the backlog; greenlight an essay idea into a release slot or a short idea into the next open slot.
- **Sunday review:** the plan's 30-minute checklist.

Every deadline comes from the release month: the news roundup goes live on the 1st Friday and the essay on the week-3 Saturday, and each step is a fixed weekday before that. A video's `over` field moves or skips one step (holidays).

## Files
- `index.html`: the whole app
- `manifest.webmanifest`, `icons/`: what phones need to install it
- `sw.js`: offline support (caches the app, not the data)
- `vendor/`: the Supabase client library, bundled so the app works offline
- `supabase/`: database setup (`01_setup.sql`), starting data (`02_data.sql`), members (`03_members.sql`)

## Updating
Edit and push to `main`. GitHub Pages republishes in about a minute. The app picks up the new version the next time it opens with a connection. When you change the cached files, bump `VERSION` in `sw.js`.
