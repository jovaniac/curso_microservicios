#!/usr/bin/env bash

cd discovery-server
./generaImagen.sh

cd ../

cd monitor-server
./generaImagen.sh
cd ../

cd gateway
./generaImagen.sh
cd ../

cd api-adm-autorizaciones
./generaImagen.sh
cd ../

cd api-empleados
./generaImagen.sh
cd ../

cd api-clientes
./generaImagen.sh
cd ../

cd api-creditos
./generaImagen.sh
cd ../


docker-compose up --build

docker-compose stop
docker-compose kill
docker-compose rm -f
