#!/usr/bin/env bash
set -euo pipefail

echo "⏳ Attente du daemon Docker (DinD) ..."
# On s'appuie sur DOCKER_HOST (déjà défini dans le service 'dev').
for i in {1..60}; do
  if docker version >/dev/null 2>&1; then
    echo "✅ Docker prêt."
    exit 0
  fi
  sleep 2
done

echo "❌ Docker n'est pas prêt après 120s." >&2
exit 1
``
