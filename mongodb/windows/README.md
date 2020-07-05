
# Run MongoDB with Docker on WINDOWS

```bash
    # criar um volume
    docker volume create --name=mongodata 

    # rodar
    docker run -it --name mongodb_container -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=root -v mongodata:/data/db -d -p 27017:27017 mongo

    # Comandos para gerenciar volumes

    # listar volumes
    docker volume ls

    # remover volumes
    docker volume rm [NAME]

    # Accessando o Container
    docker exec -it mongodb_container /bin/bash

    # Acessando o MongoDB dentor do Container
    mongo -u root -p

    # Criando um banco de dados
    use mydb;

    # Criando uma coleção
    db.users.insert({name: "John doe"});
    
    # Listando coleções
    show collections;

    # Listando dados de uma coleção
    db.users.find().pretty();

    # Excluindo uma coleção
    db.users.drop();
```