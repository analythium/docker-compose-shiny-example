# Try Caddy + Shiny

https://techroads.org/building-a-caddy-container-stack-for-easy-https-with-docker-and-ghost/
https://hub.docker.com/_/caddy
https://www.rplumber.io/articles/hosting.html#docker-advanced-
https://docker-handbook.farhan.dev/composing-projects-using-docker-compose

Create network: `docker network create web`
You can check for it with: `docker network ls`

`docker-compose up -d` (see `docker-compose ps`)

Explain:

- network
- alias and container port: Networked service-to-service communication uses the CONTAINER_PORT. When HOST_PORT is defined, the service is accessible outside the swarm as well, https://docs.docker.com/compose/networking/
- ports vs expose difference
- build vs image
- anonymous volume vs bind mount

Network: https://docs.docker.com/compose/compose-file/compose-file-v3/#network-configuration-reference
https://docs.docker.com/compose/compose-file/compose-file-v3/#external-1

If changes are made in the images:

- use `docker-compose pull && docker-compose up -d` to pull new images

https://12factor.net/dev-prod-parity

Tear down: `docker-compose down` and `docker network rm web`
