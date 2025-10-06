#!/bin/bash
echo "🚀 Déploiement sur Cloudflare Pages..."
echo "====================================="

# Se connecter à Cloudflare
echo "[1/4] Connexion à Cloudflare..."
wrangler login

# Déployer le frontend
echo "[2/4] Déploiement du frontend..."
cd src/frontend
wrangler pages deploy build --project-name langflow-frontend

# Déployer le backend (Workers)
echo "[3/4] Déploiement du backend..."
cd ../..
wrangler deploy

echo "[4/4] ✅ Déploiement terminé !"
echo "🌐 Votre application est maintenant en ligne sur Cloudflare !"
