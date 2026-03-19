#!/usr/bin/env bash
# Esci subito in caso di errore
set -o errexit

# 1. Installa le dipendenze di Node
npm install

# 2. Assicurati che la cartella della cache esista
PUPPETEER_CACHE_DIR=/opt/render/.cache/puppeteer
mkdir -p $PUPPETEER_CACHE_DIR

# 3. Installa Chrome nel percorso specifico
echo "Installazione di Chrome..."
npx puppeteer browsers install chrome
