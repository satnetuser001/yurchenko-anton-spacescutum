### yurchenko-anton-spacescutum

System requirements:  
linux kernel version 6.8.0-52-generic  
docker engine version 27.5.1  
docker compose version 2.32.4  
unoccupied ports 8098 8099  


to do:
APP_DEBUG=true->false
change redirect of unauthenticated user from "/login" to "/"

Product filtres:


application web GUI  
[Laravel](http://localhost:8099)  

phpMyAdmin settings  
webGUI:   
[phpMyAdmin](http://localhost:8098)  
Username:  
root  
Password (from secrets):  
1077  

temp:  
docker exec -it php-cli bash
sudo chown -R $USER:$USER

Product filtres:
category
min_price
max_price