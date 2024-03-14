# Usa una imagen base de Node.js
FROM node:20-alpine

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo package.json y package-lock.json (si existe)
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el código de la aplicación
COPY . .

# Compila la aplicación Next.js para producción
RUN npm run build

# Expone el puerto 3000 para que la aplicación esté disponible desde el exterior
EXPOSE 3000

# Ejecuta el comando para iniciar la aplicación cuando se inicie el contenedor
CMD ["npm", "start"]