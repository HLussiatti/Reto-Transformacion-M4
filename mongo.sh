#Crear carpeta para volumen de mongo:
mkdir monguitodata && cd monguitodata; cd monguitodata || mkdir log
cd ..

# Comando para iniciar MongoDB
sudo docker-compose up -d

#Mostrar mensaje:
sudo echo "Monguito está iniciandose ......."

#entrar en el contenedor
sudo docker exec -it monguito bash