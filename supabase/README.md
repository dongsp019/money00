# Supabase setup for Money Tracker

This project currently stores transactions in each browser's localStorage. The SQL in `supabase/schema.sql` creates the shared cloud table with per-user Row Level Security.

## One-time setup

1. Create a project at https://supabase.com/dashboard.
2. Open **SQL Editor**, paste the contents of `supabase/schema.sql`, and run it.
3. In **Project Settings → API**, copy the Project URL and the anon/publishable key. Never use the service_role/secret key in a browser app.
4. The app's cloud-sync interface will use these values and an email/password account. Sign in with the same account on each device.

## Important

- Keep a backup of the existing `money-backup.json` from each device before enabling cloud sync.
- The existing app is local-only until the frontend integration and project credentials are configured.
- Do not share your Supabase password or service_role key.
