#!/bin/bash
echo "please run heroku login prior"
heroku dh:compose --app microcks up -d
heroku dh:docker --app microcks ps
heroku dh:compose --app microcks logs -f

