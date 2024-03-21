# Utilisez une image de base Python
FROM python:3.9-slim

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers requis dans le conteneur
COPY app.py requirements.txt /app/

# Installez les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Exposez le port 5000
EXPOSE 5000

# Démarrez l'application Flask
CMD ["python", "app.py"]
