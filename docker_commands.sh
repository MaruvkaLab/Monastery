
# build
docker build -t abbot_docker .

# run (debug)
docker run -it --name abbot_ex -p 8080:8080 abbot_docker

# see current containers
docker ps -a

# remove container
docker rm abbot_ex


# restart container
docker restart abbot_ex
# stop container
docker stop abbot_ex

#delete container
docker rm abbot_ex

# remove dangling images
docker rmi $(docker images -f "dangling=true" -q)
