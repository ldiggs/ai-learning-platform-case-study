# ai-learning-platform-case-study
A cloud-hosted learning platform concept focused on user onboarding, wallet-based access concepts, learning paths, lesson progress, quizzes, certificates, and admin visibility.

## What This Application Does

- Provides educational learning paths
- Tracks lesson progress
- Supports quiz completion
- Displays user profile progress
- Includes admin reporting concepts
- Uses database-backed progress tracking
- Supports protected-page access logic
- Includes future certificate generation concepts

## Database Tables

### users
Stores user profile and access information.

Fields:
- id
- wallet_address
- display_name
- email
- access_tier
- created_at
- updated_at

### learning_paths
Stores available education paths.

Fields:
- id
- title
- description
- difficulty_level
- status
- created_at

### lessons
Stores individual lessons inside each path.

Fields:
- id
- path_id
- title
- content
- order_index
- estimated_minutes

### user_progress
Tracks learner progress.

Fields:
- id
- user_id
- lesson_id
- status
- completed_at
- progress_percent

### quiz_attempts
Tracks quiz attempts and scores.

Fields:
- id
- user_id
- path_id
- score
- passed
- attempted_at

### certificates
Stores certificate eligibility and completion records.

Fields:
- id
- user_id
- path_id
- certificate_url
- issued_at

## API Route Concepts

/api/profile
- Gets user profile and learning progress

/api/learning-paths
- Lists available learning paths

/api/lesson-progress
- Updates lesson progress

/api/quiz/submit
- Submits quiz answers and calculates result

/api/certificates/generate
- Generates certificate record after completion

/api/admin/learning-analytics
- Provides admin reporting data
