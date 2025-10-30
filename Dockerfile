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

# Expose default port
EXPOSE 8080

# Healthcheck
HEALTHCHECK --interval=30s --timeout=3s CMD curl --fail http://localhost:8080/ping || exit 1

# Default command
CMD ["remark42", "server"]
