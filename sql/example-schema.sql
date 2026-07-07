-- Sanitized example schema: ai-learning-platform-case-study
-- This schema is a sanitized learning version based on independent development work. It does not contain production data, private credentials, proprietary logic, or real customer records.

create table users (
  id uuid primary key default gen_random_uuid(),
  display_name text,
  email text unique,
  created_at timestamptz default now()
);

create table learning_paths (
  id uuid primary key default gen_random_uuid(),
  title text not null,
  description text,
  created_at timestamptz default now()
);

create table lessons (
  id uuid primary key default gen_random_uuid(),
  learning_path_id uuid references learning_paths(id),
  title text not null,
  sequence_order integer,
  created_at timestamptz default now()
);

create table user_progress (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id),
  lesson_id uuid references lessons(id),
  status text default 'not_started',
  completed_at timestamptz
);

create table quiz_attempts (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id),
  lesson_id uuid references lessons(id),
  score integer,
  passed boolean default false,
  created_at timestamptz default now()
);

create table certificates (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id),
  learning_path_id uuid references learning_paths(id),
  issued_at timestamptz default now()
);

create table admin_audit_logs (
  id uuid primary key default gen_random_uuid(),
  actor text,
  action text,
  target text,
  created_at timestamptz default now()
);
