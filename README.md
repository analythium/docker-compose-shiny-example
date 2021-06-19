# Docker Compose Example with Shiny and Caddy Server

This repository is a companion to the following blog posts:

- [Shiny Apps with Docker Compose, Part 1: Development](https://hosting.analythium.io/shiny-apps-with-docker-compose-part-1-development/)
- [Shiny Apps with Docker Compose, Part 2: Production](https://hosting.analythium.io/shiny-apps-with-docker-compose-part-2-production/)

## Development

Change the `EMAIL` environment variable in the `docker-compose.yml` file.

```bash
docker-compose up -d
```

## Production

Change the `EMAIL` environment variable in the `docker-compose.yml` file.
Change the `HOST` environment variable in the `docker-compose-prod.yml` file.

```bash
docker-compose -f docker-compose.yml -f docker-compose-prod.yml up -d
```
