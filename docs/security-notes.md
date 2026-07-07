# Security Notes — ai-learning-platform-case-study

## Access Control

- Session-based authentication gates all non-public routes.
- Admin routes require an elevated role check in addition to a valid session.
- Row-level security concepts are documented in the schema layer; the learning version enforces equivalent checks in the API layer.

## Data Handling

- No real credentials, tokens, wallet addresses, or customer data are present anywhere in this repository.
- Environment variables are referenced by name only (e.g., `SUPABASE_URL`, `SUPABASE_ANON_KEY`); no values are committed.
- All example payloads use placeholder values (`rEXAMPLE...`, `user_demo`, etc.).

- Quiz submission routes validate that the requesting user owns the attempt before writing a score.
- Certificate generation is server-side gated on `user_progress` and `quiz_attempts` state, never trusted from client input.

## Disclaimer

> This schema is a sanitized learning version based on independent development work. It does not contain production data, private credentials, proprietary logic, or real customer records.
