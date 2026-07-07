# Dashboard Features — ai-learning-platform-case-study

## Feature Set

- Learning paths
- Lessons
- Quiz attempts
- Progress tracking
- User profile
- Certificate eligibility
- Admin analytics
- Protected access logic

## UX / State Notes

- Dashboard state is derived from server responses rather than duplicated client-side, to avoid drift between what the admin sees and what the database holds.
- Search and pagination are implemented as query-string driven state so views are shareable and refresh-safe.
- CSV export streams from the same query used for the paginated view, so exports match what the admin is currently filtering on.

## Disclaimer

> This schema is a sanitized learning version based on independent development work. It does not contain production data, private credentials, proprietary logic, or real customer records.
