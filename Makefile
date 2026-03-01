SHELL := /bin/bash

## ===== Commandes pour l'exercice (dans le conteneur 'dev') =====
.PHONY: up down ps logs sh

up:
    @echo "▶ docker compose up -d"
    docker compose up -d

down:
    @echo "■ docker compose down -v"
    docker compose down -v

ps:
    @docker compose ps

logs:
    @docker compose logs -f --tail=100

sh:
    @docker compose exec web sh || true

## ===== Outils =====
doctor:
    @echo "Docker client :"; docker version || true
    @echo "Docker compose :"; docker compose version || true
