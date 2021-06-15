# Docker Compose Example with Shiny and Caddy Server

Use `docker-compose up -d` to start services, use `docker-compose down` to stop them.

Scale `docker-compose up -d --scale covidapp=2`


```R
x <- lapply(
    readLines("log/access.log"),
    jsonlite::fromJSON)

sapply(x, function(z) z$request$uri)
```
