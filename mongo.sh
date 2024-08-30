#Crear carpeta para volumen de mongo:
mkdir -p monguitodata/log

# Comando para iniciar MongoDB
sudo docker-compose up -d

#Mostrar mensaje:
sudo echo "Monguito está iniciandose ......."

#Copio el json en monguito
sudo docker cp  data.json monguito:/data.json

#entrar en el contenedor
sudo docker exec -it monguito bash

#Cargo el json en una base
mongoimport --uri "mongodb://root:example@localhost:27017/db_json?authSource=admin" --collection json_coleccion --file /data.json --jsonArray
