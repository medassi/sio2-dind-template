# SIO2 – Template Docker-in-Docker (DinD)

## Démarrer
1. **Cloner** ce dépôt.
2. Ouvrir dans **VS Code** avec l’extension **Dev Containers** (ou **GitHub Codespaces**).
3. Commande : **“Reopen in Container”** (ou **“Create Codespace”**).
4. Attendre l'initialisation (le daemon DinD démarre en arrière-plan).
5. Copier `.env.sample` → `.env`, ajuster les variables.
6. Dans le terminal du conteneur :
   ```bash
   make up
