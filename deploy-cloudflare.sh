#!/bin/bash
echo "🚀 Déploiement sur Cloudflare Pages..."

# Installer Wrangler CLI
npm install -g wrangler

# Se connecter à Cloudflare
wrangler login

# Déployer
wrangler pages deploy src/frontend/build --project-name langflow-frontend

echo "✅ Déploiement terminé !"
echo "🌐 Votre application est accessible sur :"
echo "   https://langflow-frontend.pages.dev"
