docker build --tag devops-backend .
docker run --detach --publish 3000:3000 devops-backend
docker ps --all
docker tag devops-backend 051206567486.dkr.ecr.eu-west-1.amazonaws.com/devops-backend