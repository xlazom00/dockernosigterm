# dockernosigterm

docker build -t dockernosigterm --no-cache=true .

docker run -it --stop-timeout=180 --name dockernosigterm dockernosigterm:latest

docker run -it --isolation=process --stop-timeout=180 --name dockernosigterm dockernosigterm:latest

docker start -i  dockernosigterm 

docker stop  dockernosigterm 

docker rm  dockernosigterm 



