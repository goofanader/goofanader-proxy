# Utilise une image node.js de base
FROM node:latest

# Crée un répertoire de travail
WORKDIR /app

# Clone le repo depuis GitHub
RUN git clone https://github.com/gnuns/AllOrigins .

# Installe les dépendances
RUN npm install

# Expose le port par défaut
EXPOSE 1458

# Lance l'application lorsque le conteneur démarre
CMD ["npm", "start"]
