docker rmi $(docker images -a | grep "^<none>" | awk '{print $3}')
docker rm $(docker ps -a -q)