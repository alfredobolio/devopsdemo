# Imagen base oficial de Node.js
FROM node:18

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el resto del código de la aplicación
COPY ./src .

# Instala las dependencias
RUN npm install

# Expone el puerto en el que la app se ejecutará
EXPOSE 80

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
