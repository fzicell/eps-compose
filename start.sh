#Creating the necessary images for the environment
#Step-1: icell/rest-service based on Ubuntu
#Step-2: icell/rest-db based on mysql/mysql-server

#Dockerize the entire  environment
docker-compose up -d

#Start eps-backend-service in background
docker-compose exec -d eps-backend java -jar eps-backend-service.jar

