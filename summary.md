## DOCKER COMMANDS

### Basic Commands
- docker build .
- docker run -p 3000:3000 328796570361
- docker ps
- docker stop name
- docker build -t feedback-node
- docker run -p 3000:80 -d  --name feedback-app --rm feedback-node
- docker stop feedback-new-app (container)
- docker rmi feedback-app-2(image)
- docker volume ls
- docker run -d -p 3000:80 --rm --name feedback-app -v feedback:/app/feedback feedback-node:volumes (using named volumes)