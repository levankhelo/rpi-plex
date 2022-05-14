#!/bin/bash 

if [[ ! -d ~/plex ]]; then
    mkdir -p ~/plex
    mkdir -p ~/plex/library
    mkdir -p ~/plex/tvshow
    mkdir -p ~/plex/movies
fi

docker compose up -d --build --env-file .env