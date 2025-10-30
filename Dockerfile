# Use the official pre-built Remark42 image
FROM umputun/remark42:latest

# Metadata
ARG GITHUB_SHA
LABEL org.opencontainers.image.authors="Umputun <umputun@gmail.com>" \
      org.opencontainers.image.description="Remark42 comment engine" \
      org.opencontainers.image.documentation="https://remark42.com/docs/getting-started/" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/umputun/remark42" \
      org.opencontainers.image.title="Remark42" \
      org.opencontainers.image.url="https://remark42.com/" \
      org.opencontainers.image.revision="${GITHUB_SHA}"

# Working directory
WORKDIR /srv

# Optional: copy custom init or scripts (if needed)
# COPY docker-init.sh /srv/init.sh
# COPY backend/scripts/backup.sh /usr/local/bin/backup
# COPY backend/scripts/restore.sh /usr/local/bin/restore
# COPY backend/scripts/import.sh /usr/local/bin/import
# RUN chmod +x /srv/init.sh /usr/local/bin/backup /usr/local/bin/restore /usr/local/bin/import

# Expose default port
EXPOSE 8080

# Healthcheck
HEALTHCHECK --interval=30s --timeout=3s CMD curl --fail http://localhost:8080/ping || exit 1

# Default command
CMD ["remark42", "server"]
