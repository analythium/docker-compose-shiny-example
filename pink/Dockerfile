FROM registry.gitlab.com/analythium/shinyproxy-hello/hello:latest
WORKDIR /home/app
RUN rm -rf *
COPY app .
CMD ["R", "-e", "shiny::runApp('/home/app')"]
