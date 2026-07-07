# API Routes — ai-learning-platform-case-study

## Route Summary

| Route | Purpose |
|---|---|
| `GET /api/profile` | Returns the authenticated user's profile. |
| `GET /api/learning-paths` | Lists available learning paths. |
| `POST /api/lesson-progress` | Records progress for a lesson. |
| `POST /api/quiz/submit` | Submits a quiz attempt and returns scoring result. |
| `POST /api/certificates/generate` | Generates a certificate when eligibility criteria are met. |
| `GET /api/admin/learning-analytics` | Returns aggregate learning analytics for admins. |

## Design Notes

- Routes are grouped by resource (`/api/<resource>/<action>`), not by page, to keep the API stable as the frontend evolves.
- Admin routes are namespaced under `/api/admin/*` and are treated as a separate authorization tier.
- Mutating routes validate payload shape before touching the data layer; read routes support pagination and filtering by query parameters.

## Disclaimer

> This schema is a sanitized learning version based on independent development work. It does not contain production data, private credentials, proprietary logic, or real customer records.
