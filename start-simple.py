#!/usr/bin/env python3
"""
Script de démarrage simple pour Render
"""
import os
import sys
from pathlib import Path

# Ajouter le répertoire backend au PYTHONPATH
backend_path = Path(__file__).parent / "src" / "backend" / "base"
sys.path.insert(0, str(backend_path))

if __name__ == "__main__":
    # Configuration pour Render
    port = int(os.environ.get("PORT", 8000))
    host = "0.0.0.0"
    
    print(f"🚀 Starting Langflow 2.0 on {host}:{port}")
    
    # Importer et démarrer l'application
    try:
        from langflow.main import create_app
        import uvicorn
        
        app = create_app()
        uvicorn.run(app, host=host, port=port, log_level="info")
    except Exception as e:
        print(f"❌ Error starting application: {e}")
        sys.exit(1)
