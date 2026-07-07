# Database Schema — ai-learning-platform-case-study

## Tables

| Table | Purpose |
|---|---|
| `users` | Core user profile and account metadata. |
| `learning_paths` | Structured curricula grouping related lessons. |
| `lessons` | Individual lesson content units belonging to a learning path. |
| `user_progress` | Tracks completion state per user per lesson. |
| `quiz_attempts` | Records quiz submissions, scores, and pass/fail state. |
| `certificates` | Certificate eligibility and issuance records. |
| `admin_audit_logs` | Admin action history for compliance and traceability. |

## Modeling Notes

- Every table intended for admin visibility includes `created_at` for chronological reporting.
- Audit-relevant actions are captured in `admin_audit_logs` rather than inferred from application logs, so history survives code changes.
- Foreign keys point toward the natural owning entity (e.g., logs reference the resource they describe) to keep joins predictable for reporting queries.
- Status/lifecycle fields use plain text enums in the learning version; a production version would likely use a Postgres enum type or a lookup table.

## Disclaimer

> This schema is a sanitized learning version based on independent development work. It does not contain production data, private credentials, proprietary logic, or real customer records.
