FROM umputun/baseimage:app-v1.14.0

# Disable BoltDB completely in init
ENV STORE_TYPE=postgres
ENV STORE_BOLT_PATH=
ENV AVATAR_FS_PATH=/tmp/avatars
ENV POSTGRES_HOST=b0f99c1t25zuh9trand0-postgresql.services.clever-cloud.com
ENV POSTGRES_PORT=50013
ENV POSTGRES_USER=u3jguucb2cfxvcsjxne9
ENV POSTGRES_PASSWORD=PILkY6CjcI6HaS0vs8qCJUhRTWKNrs
ENV POSTGRES_DB=b0f99c1t25zuh9trand0
ENV SITE=astro-blog
ENV SECRET=eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiIsImtpZCI6IjAzMzU3MDY2YjdkYTIxNGQyNWUxMTJmYTNkNTAxY2ExIn0.e30.WyvJnHzlZB622-4GyeDQqxm0ogGsBd_XIzeKZKK_V11YrvQ5EDImiYg0-3O4FJgSbTRxOuj2dVgvC6AWjR5ucA
ENV REMARK_URL=https://comments.terres-sucrees.fr
ENV AUTH_ANON=true

EXPOSE 8080

CMD ["remark42", "server"]
