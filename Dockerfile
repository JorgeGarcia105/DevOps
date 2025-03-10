# Usamos la imagen oficial de Node.js
FROM node:18-alpine 

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos los archivos al contenedor
COPY package.json package-lock.json ./
RUN npm install 

# Copiamos el resto del código
COPY . .

# Exponemos el puerto 3000
EXPOSE 3000

# Comando para iniciar el servidor
CMD ["node", "server.js"]
