HOST <- "159.203.22.73"
system2("scp",
  c(
    sprintf(
      "root@%s:/root/docker-compose-shiny-example/log/access.log",
      HOST
    ),
    "access.log"
  )
)
#scp root@$HOST:/root/docker-compose-shiny-example/log/access.log $PWD/log/access.log

x <- lapply(
  readLines("access.log"),
  jsonlite::fromJSON)

ts <- as.POSIXct(sapply(x, "[[", "ts"), origin = "1970-01-01")
req_uri <- sapply(x, function(z) z$request$uri)
s <- endsWith(req_uri, "/") & !endsWith(req_uri, "/websocket/")

table(req_uri[s], as.Date(ts[s]))
#              2021-06-15
#  /                    7
#  /covidapp/           1
#  /hello/              3
#  /pink/               4
