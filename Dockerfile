# Usa una imagen base de Python 3.9
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia todos los archivos del directorio actual al contenedor
COPY . .

# Instala las dependencias desde requirements.txt
RUN pip install -r requirements.txt

# Expone el puerto 8080
EXPOSE 5000

# Configura el contenedor para usar Gunicorn y escuca en el puerto 8080
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "main:app"]
