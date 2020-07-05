docker volume create mongodata
docker run -it --name mongodb_container -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=root -v mongodata:/data/db -d -p 27017:27017 mongo
docker ps -a
