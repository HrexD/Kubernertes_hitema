# Utiliser une image Python officielle comme base
FROM python:3.9-slim

# Copier les fichiers locaux dans le conteneur
WORKDIR /app
COPY . .

# Installer les dépendances Python
RUN pip install --no-cache-dir Flask

# Définir la commande par défaut pour exécuter l'application Flask
CMD ["python", "app.py"]
