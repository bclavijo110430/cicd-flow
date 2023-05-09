# Indica que la imagen base será la versión 3 de Python
FROM python:3.9@sha256:c65dadac8789fed40962578392e99a0528dcb868442c75d144e68ba858984837

# Define una variable de entorno para evitar que Python use un buffer
ENV PYTHONUNBUFFERED 1

# Establece el directorio de trabajo en /code
WORKDIR /code

# Agrega el archivo requirements.txt al directorio /code/
ADD requirements.txt /code/

# Instala los paquetes de Python definidos en requirements.txt
RUN pip install -r requirements.txt

# Copia todo el contenido del directorio actual al directorio /code/ del contenedor
COPY . /code/

# Ejecuta el comando "python /code/manage.py runserver 0.0.0.0:8000" al iniciar el contenedor
CMD ["/bin/bash", "-c", "python /code/manage.py runserver 0.0.0.0:8000"]
