### yurchenko-anton-spacescutum

System requirements:  
linux kernel version 6.8.0-52-generic  
docker engine version 27.5.1  
docker compose version 2.32.4  
unoccupied ports 8098 8099  


to do:
APP_DEBUG=true->false

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

API User cURL test:

Create new user
curl -X POST -i "http://localhost:8099/api/users" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -d '{
          "name": "User30",
          "email": "User30@example.com",
          "password": "password123"
     }'

Read all users
curl -X GET -i "http://localhost:8099/api/users" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 9|bx8y8GrKH1iW9WsQmGhcO6xvWWNkuxIRD6PhD2txa13d0403"

Read one user by ID
curl -X GET -i "http://localhost:8099/api/users/10" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 9|bx8y8GrKH1iW9WsQmGhcO6xvWWNkuxIRD6PhD2txa13d0403"

Update user
curl -X PUT -i "http://localhost:8099/api/users/10" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer 9|bx8y8GrKH1iW9WsQmGhcO6xvWWNkuxIRD6PhD2txa13d0403" \
     -d '{
          "name": "Alice Johnson",
          "email": "alice.johnson@example.com"
     }'

Delete user
curl -X DELETE -i "http://localhost:8099/api/users/11" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 9|bx8y8GrKH1iW9WsQmGhcO6xvWWNkuxIRD6PhD2txa13d0403"
