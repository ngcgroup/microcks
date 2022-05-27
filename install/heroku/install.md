# Deploy Microcks to Heroku

This repository deploys the [Microcks]([https://microcks.io]) API Mock Solution 
to Heroku.  It is based of Microcks's official docker image with some slight modifications to use the
Heroku variable for `PORT` and `DATABASE_URL` properly.

The deployment will be made with a single Performance-M dyno (it won't run very well in smaller dynos
due to Java's memory hunger) with a free Postgres database attached.

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

```
heroku login
heroku dh:compose --app microcks up -d
heroku dh:docker --app microcks ps
heroku dh:compose --app microcks logs -f

````