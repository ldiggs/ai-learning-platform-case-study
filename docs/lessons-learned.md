# Lessons Learned — ai-learning-platform-case-study

- Modeling progress as its own table (rather than a boolean flag on lessons) made partial-completion and resume-where-you-left-off logic much simpler.
- Certificate eligibility is a derived, server-computed state, not a stored boolean the client can influence.
- Admin analytics queries are expensive if run against raw progress rows at scale; a summarized/aggregated view would be the next iteration.

## Disclaimer

> This schema is a sanitized learning version based on independent development work. It does not contain production data, private credentials, proprietary logic, or real customer records.
