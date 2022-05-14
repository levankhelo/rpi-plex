#!/bin/bash 

if [[ ! -d ~/plex ]]; then
    mkdir -p ~/plex
    mkdir -p ~/plex/library
    mkdir -p ~/plex/tvshow
    mkdir -p ~/plex/movies
fi

docker compose --env-file .env config
docker compose --env-file .env build
docker compose up -d