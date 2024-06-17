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
- docker build --progress=plain --no-cache -t goals-react .
- docker run --name mongodb -v data:/data/db --rm -d --network goals-net mongo
- docker run --name mongodb -v data:/data/db --rm -d --network goals-net -e MONGO_INITDB_ROOT_USERNAME=ng1n3 -e MONGO_INITDB_ROOT_PASSWORD=123456 mong
o
- docker run -it --name goals-backend -v C:/Users/X/Desktop/DOCKER/DOCKER-TEMPLATE/multi-01-starting-setup/backend:/app -v logs:/app/logs -v /app/node_modules --network goals-net goals-node npm start
- docker run -it --name goals-backend -v C:/Users/X/Desktop/DOCKER/DOCKER-TEMPLATE/multi-01-starting-setup/backend:/app -v logs:/app/logs -v /app/node_modules --network goals-net -p 80:80 -e MONGODB_USERNAME=ng1n3 goals-node
- docker run -v C:/Users/X/Desktop/DOCKER\DOCKER-TEMPLATE/multi-01-starting-setup/frontend2/src/:/app/src --name goals-frontend --rm -p 3030:3030 -it
goals-react



### NETWORK COMMANDS 
- sudo docker ls (list network)
- sudo docker run -d --name mongodb --network favourites-net mongo

### DOCKER COMPOSE
- sudo docker-compose up
- sudo docker-compose up -d
- sudo docker-compose down
- sudo docker-compose down -v
- sudo docker-compose build

### UTILITES
- docker exec happy_moore npm init
- docker exec -it happy_more npm init
- docker run -it node npm init (overwrite container)
- docker run -it -v C:/Users/X/Desktop/DOCKER/DOCKER-TEMPLATE/utilities-docker:/app node-util npm init
-  docker run -it -v C:/Users/X/Desktop/DOCKER/DOCKER-TEMPLATE/utilities-docker:/app mynpm install express
- docker-compose run npm init
- docker-compose run --rm npm init

----------------------------------------------------------------------------------------------------
**Feature	  | Bind Mounts	  | Named Volumes	  | Anonymous Volumes   |**
\
Definition  |	Host directory mounted in container	Docker-managed named storage	Docker-managed anonymous storage
Syntax	-v /host/path:/container/path	-v myvolume:/container/path	-v /container/path
Use Cases	Development, Config files, Persistent data	Persistent storage, Data sharing, Backup/Restore	Temporary storage, Ephemeral data
Pros	Direct access, Immediate changes	Portable, Managed by Docker, Persistent	Easy for temporary storage
Cons	Less portable, Security risks	Less visibility, Requires Docker CLI	Hard to manage, Not easily accessible