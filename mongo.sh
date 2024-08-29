#Crear carpeta para volumen de mongo:
mkdir monguitodata && cd monguitodata 
cd monguitodata || mkdir log
cd 

# Comando para iniciar MongoDB
docker-compose up -d

#Mostrar mensaje:
echo "Monguito está iniciandose ......."

#entrar en el contenedor
sudo docker exec -it monguito bash