#!/bin/bash

echo "Construyendo imagen Docker..."
docker build -t mi-app .

echo "Deteniendo contenedores existentes..."
docker-compose down

echo "Levantando nueva versión..."
docker-compose up -d --build

echo "¡Aplicación desplegada en http://localhost:5000!"
