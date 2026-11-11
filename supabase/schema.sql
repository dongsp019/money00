create table if not exists public.transactions (
  user_id uuid not null references auth.users(id) on delete cascade,
  id bigint not null,
  t text not null check (t in ('in','ex')),
  a numeric(14,2) not null check (a > 0),
  c text not null,
  n text not null default '',
  d date not null,
  primary key (user_id, id)
);

alter table public.transactions enable row level security;

drop policy if exists "Users can read their own transactions" on public.transactions;
drop policy if exists "Users can insert their own transactions" on public.transactions;
drop policy if exists "Users can update their own transactions" on public.transactions;
drop policy if exists "Users can delete their own transactions" on public.transactions;

create policy "Users can read their own transactions"
on public.transactions for select to authenticated
using (auth.uid() = user_id);

create policy "Users can insert their own transactions"
on public.transactions for insert to authenticated
with check (auth.uid() = user_id);

create policy "Users can update their own transactions"
on public.transactions for update to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Users can delete their own transactions"
on public.transactions for delete to authenticated
using (auth.uid() = user_id);

do $$
begin
  if not exists (
    select 1 from pg_publication_tables
    where pubname = 'supabase_realtime'
      and schemaname = 'public'
      and tablename = 'transactions'
  ) then
    alter publication supabase_realtime add table public.transactions;
  end if;
end $$;
