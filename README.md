# Apache Superset on Render with Supabase

## Deployment Steps

1. Create a new GitHub repository and add this Dockerfile.

2. Connect the repo to Render as a new Web Service:
   - Environment: Docker
   - Port: 8088
   - Start command: leave empty

3. Set the following environment variables in Render:

| Key                | Value                               |
|--------------------|-----------------------------------|
| SUPERSET_SECRET_KEY | (random secret string)             |
| DATABASE_URL        | postgresql+psycopg2://user:pass@host:5432/dbname?sslmode=require |
| ADMIN_USERNAME      | admin                             |
| ADMIN_PASSWORD      | admin                             |
| ADMIN_FIRST_NAME    | Superset                          |
| ADMIN_LAST_NAME     | Admin                            |
| ADMIN_EMAIL         | admin@superset.com                |

4. Deploy and wait for Render to build and start the service.

5. Open the URL Render provides and login with your admin credentials.

