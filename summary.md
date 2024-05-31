## DOCKER COMMANDS

### Basic Commands
- docker build .
- docker run -p 3000:3000 328796570361
- docker ps
- docker ps -a
- docker stop name
- docker build -t feedback-node
- docker run -p 3000:80 -d  --name feedback-app --rm feedback-node
- docker stop feedback-new-app (container)
- docker rmi feedback-app-2(image)
- docker volume ls
- docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback feedback-node:volumes (using non-named volumes)
- docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "C:\Users\X\Desktop\DOCKER\DOCKER-TEMPLATE\data-volumes-01-starting-setup:/app" feedback-node:volumes (named volumes)
- docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "C:\Users\X\Desktop\DOCKER\DOCKER-TEMPLATE\data-volumes-01-starting-setup:/app" -v /app/node_modules feedback-node:volumes (named and binding volumes)
- docker run -d -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "C:\Users\X\Desktop\DOCKER\DOCKER-TEMPLATE\data-volumes-01-starting-setup:/app:ro" -v /app/node_modules feedback-node:volumes (named and READ ONLY binding volumes)
- docker logs feedback-app(container)
- docker volume ls
- docker volume rm feedback (volume)
- docker volume inspect feedback (volume)
- docker volume create feedback2 (volume)
- docker volume prune (delete unused volumes)
- sudo docker run -d --rm -p 3000:8000 --env PORT=8000 --name feedback-app -v feedback:/app/feedback -v /home/muyiwa_3n61n3/DOCKER_TUT/volumes-docker:/app/volumes-docker:ro -v /app/temp feedback-app:env (without an env file)
- sudo docker run -d --rm -p 3000:8000 --env-file ./.env --name feedback-app -v feedback:/app/feedback -v /home/muyiwa_3n61n3/DOCKER_TUT/volumes-docker:/app/volumes-docker:ro -v /app/temp feedback-app:env (with an env file)
- sudo docker container inspect mongodb (container)
- sudo docker container prune (remove all unsused containers)

### NETWORK COMMANDS 
- sudo docker ls (list network)
- sudo docker run -d --name mongodb --network favourites-net mongo