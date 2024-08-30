# Reto-Transformacion-M4

Se te hace entrega de un archivo en formato parquet, deberás crear un script que permita transformar los datos y exportarlo en formato Json, La transformación deberá ser coherente con los datos recibidos. 

Crea un repositorio propio, mostrando el paso a paso y tu criterio para la transformación y exportación de la data, y unas conclusiones al respecto. 

# Extra

Las colecciones de datos que forman tu json, subirlas a la base de datos creada en el reto anterior. 


# PASOS PARA GENERAR json:
1. Instalé la extensión "Parquet Viewer" en VS.
2. Instalé la bibioteca "pyarrow" (pandas ya estaba instalada).
3. Levanto el archivo parquet con pandas en un DF. 
4. Estructuro el DF en varios DF y los convierto a diccionarios.
5. Armo un json con la estructura de los diccionarios.
6. Escribo el json.

# PASOS PARA LEVANTAR MONGODB:
1. Modifiqué el yml de mongo con la versión "latest" y la url adecuada.
2. Creo el .sh para ejecutar el docker-compose desde terminal.
3. Levanto todo al repo.
    git add .
    git commit -m "29/08/204 - HomeWork 4 junto a HomeWork 2"
    git push origin main
4. Abro el Docker
5. Clono el repo en el docker
    Si tengo cambios del repo ya bajado, primero (git reset --hard)
    Luego git pull
6. Ingreso a cd Reto-Transformacion-M4
7. Asigno permisos al .sh
    > chmod u+x mongo.sh
    > ./mongo.sh 
7. Corro el .sh
8. Debo salir de mongo
9. Copio el json en el contenedor "monguito"
    sudo docker cp  data.json monguito:/data.json
10. Ejecuto mongo:
    docker exec -it monguito bash
11. Importo la base
    mongoimport --db data_base_json --collection json_coleccion --file /data.json --jsonArray