# System Overview Diagram — ai-learning-platform-case-study

```mermaid
flowchart TD
    User[User] --> Frontend[Next.js Frontend]
    Frontend --> API[API Routes]
    API --> Auth[Authentication / Access Logic]
    API --> DB[(Supabase PostgreSQL)]
    API --> Admin[Admin Dashboard]
    Admin --> Reports[Search / Pagination / Export]
    API --> Learning[Learning Path / Lesson Service]
    Learning --> Progress[User Progress Tracking]
    Progress --> Quiz[Quiz Engine]
    Quiz --> Cert[Certificate Eligibility]
```

## Disclaimer

> This schema is a sanitized learning version based on independent development work. It does not contain production data, private credentials, proprietary logic, or real customer records.
