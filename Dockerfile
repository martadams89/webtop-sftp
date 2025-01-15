# syntax=docker/dockerfile:1

# Renovate: datasource=docker versioning=docker
FROM lscr.io/linuxserver/webtop:latest

# Renovate: datasource=repology depName=alpine_edge/filezilla versioning=loose
ENV FILEZILLA_VERSION="3.68.1-r0"
# Renovate: datasource=repology depName=alpine_edge/curl versioning=loose
ENV CURL_VERSION="8.11.1-r0"
# Renovate: datasource=repology depName=alpine_edge/vim versioning=loose
ENV VIM_VERSION="9.1.1012-r0"

RUN apk update && \
  apk add --no-cache \
  filezilla="${FILEZILLA_VERSION}" \
  curl="${CURL_VERSION}" \
  vim="${VIM_VERSION}"
