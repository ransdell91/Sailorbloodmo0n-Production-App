-- Who can use the app. Use the exact email address each person signs in with.
insert into public.members (email, name) values
  ('contact@ramediapro.co', 'Rian'),
  ('anna.pongratz55@gmail.com', 'Anna')
on conflict (email) do nothing;

-- Sign-in accounts are created with a temporary password and the flag
-- user_metadata.must_change_password = true. The app asks for a new password
-- on first sign-in and clears the flag. Temporary passwords are never stored in this repo.
