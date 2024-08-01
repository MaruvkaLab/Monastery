
docker build -t abbot_docker .

docker run -it --name abbot_ex -p 8080:8080 abbot_docker