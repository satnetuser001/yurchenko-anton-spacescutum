### This is a test task for "Trainee Backend Dev"

Block-diagram of project.
<pre>
+-----------------+
| API and Web     |
| requests        |
+-----------------+
         |
         V
+-------------------+   +----------------------+
| php-cli container |   | phpmyadmin container |
| with Laravel app  |   | port 8098            |
| port 8099         |   +----------------------+
+-------------------+     |
                 |        |
                 V        V
            +-----------------+
            | mariadb         |
            | container       |
            +-----------------+
                 |
                 V
+------------------------------+
| "laravel" database           |
| yurchenko-anton-mariadb-data |
| volume                       |
+------------------------------+
</pre>

System requirements:  
linux kernel version 6.8.0-52-generic  
docker engine version 27.5.1  
docker compose version 2.32.4  
unoccupied ports 8098 8099  

### Installation

1. Pull this GitHub repository:
```bash
git clone https://github.com/satnetuser001/yurchenko-anton-spacescutum.git
```
2. Navigate to yurchenko-anton-spacescutum directory:
```bash
cd yurchenko-anton-spacescutum
```
3. Up docker containers:
```bash
docker compose up -d
```
4. Open in your browser [phpMyAdmin](http://localhost:8098), log in as "root" with password (from secrets) "1077", select "laravel" database, and import from "db_dump" directory "laravel.sql" database dump. This dump contains data for testing the application.  

4a. If you need to start with empty database, enter the "php-cli" container and run the database migrations:
```bash
docker exec -it php-cli bash
php artisan migrate
exit
```



### Web GUI testing
Open in your browser [php-cli](http://localhost:8099) container with Laravel.  

Password for all existing users:  
password123
  
Emails:  
user1@example.com  
user2@example.com  
user3@example.com  
user4@example.com  
user5@example.com  
user6@example.com  
user7@example.com  
user8@example.com  

### cURL API testing
Emails and current tokens for all existing users:  
user1@example.com
```bash
1|vOuzBzfRtZO6h8TE5O2P2rpsBT1ba32hEhHuZHtS2dfbcba4
```
user2@example.com
```bash
2|5Hn9zcD7XEDyqQbuEs54y3JWvRuYL2itm4Vw750cd284d4d5
```
user3@example.com
```bash
3|082NqCMIUvxAQC3fmskxh3xDdM0BcqWeOXZOJa3vca77a329
```
user4@example.com
```bash
4|8ytSP59Ez9q8aRZhphbJE6HlyvDiq7upsibad9Kzb64afe6a
```
user5@example.com
```bash
5|lzfyhrISeMEnowvWWlSKB17p8fROAnLJQixQrMuw101f3435
```
user6@example.com
```bash
6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae
```
user7@example.com
```bash
7|edi8fyjroTnIqXMPU7qGMuHf3jHtX4vef33TtCcL4fe71af6
```
user8@example.com
```bash
9|ZVLLrP3sa4iBgQ3QS05NHVkOwfOZ31KTVpTSRdfO081efed7
```
## User  
Create new user
```bash
curl -X POST -i "http://localhost:8099/api/users" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -d '{
          "name": "User20",
          "email": "User20@example.com",
          "password": "password123"
     }'
```
Read all users
```bash
curl -X GET -i "http://localhost:8099/api/users" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 5|lzfyhrISeMEnowvWWlSKB17p8fROAnLJQixQrMuw101f3435"
```
Read one user by ID
```bash
curl -X GET -i "http://localhost:8099/api/users/5" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 5|lzfyhrISeMEnowvWWlSKB17p8fROAnLJQixQrMuw101f3435"
```
Update user
```bash
curl -X PUT -i "http://localhost:8099/api/users/5" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer 5|lzfyhrISeMEnowvWWlSKB17p8fROAnLJQixQrMuw101f3435" \
     -d '{
          "name": "Alice Johnson",
          "email": "alice.johnson@example.com"
     }'
```
Delete user
```bash
curl -X DELETE -i "http://localhost:8099/api/users/5" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 5|lzfyhrISeMEnowvWWlSKB17p8fROAnLJQixQrMuw101f3435"
```
 ## Product  
Create new product
```bash
curl -X POST -i "http://localhost:8099/api/products" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae" \
     -d '{
          "name": "Product20",
          "description": "Description of Product20",
          "price": 99.99,
          "category": "Category3",
          "image_url": "http://example.com/product20.jpg"
     }'
```
Read all products
```bash
curl -X GET -i "http://localhost:8099/api/products" \
     -H "Accept: application/json"
```
Read one product by ID
```bash
curl -X GET -i "http://localhost:8099/api/products/1" \
     -H "Accept: application/json"
```
Update product
```bash
curl -X PUT -i "http://localhost:8099/api/products/1" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae" \
     -d '{
          "name": "Updated Product1",
          "description": "Updated description of Product1",
          "price": 89.89,
          "category": "Updated Category5",
          "image_url": "http://example.com/updated_product1.jpg"
     }'
```
Delete product
```bash
curl -X DELETE -i "http://localhost:8099/api/products/1" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae"
```
## Product Filters  
Filter products by category
```bash
curl -X GET -i "http://localhost:8099/api/products?category=Category1" \
     -H "Accept: application/json"
```
Filter products by minimum price
```bash
curl -X GET -i "http://localhost:8099/api/products?min_price=8" \
     -H "Accept: application/json"
```
Filter products by maximum price
```bash
curl -X GET -i "http://localhost:8099/api/products?max_price=14" \
     -H "Accept: application/json"
```
Filter products by price range (min and max price)
```bash
curl -X GET -i "http://localhost:8099/api/products?min_price=7&max_price=10" \
     -H "Accept: application/json"
```
Filter products by popularity in ascending order
```bash
curl -X GET -i "http://localhost:8099/api/products?popular=asc" \
     -H "Accept: application/json"
```
Filter products by popularity in descending order
```bash
curl -X GET -i "http://localhost:8099/api/products?popular=desc" \
     -H "Accept: application/json"
```
## Order  
Create new order
```bash
curl -X POST -i "http://localhost:8099/api/orders" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae" \
     -d '{
          "product_id": 1
     }'
```
Read all orders
```bash
curl -X GET -i "http://localhost:8099/api/orders" \
     -H "Accept: application/json" \
     -H "Authorization: 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae"
```
Read one order by ID
```bash
curl -X GET -i "http://localhost:8099/api/orders/5" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae"
```
## Order Filter  
Read orders purchased by the current user
```bash
curl -X GET -i "http://localhost:8099/api/orders?purchased_by_user=true" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae"
```
## Comment
Create new comment
```bash
curl -X POST -i "http://localhost:8099/api/comments" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae" \
     -d '{
          "product_id": 5,
          "content": "This is a comment on Product5"
     }'
```
Read all comments
```bash
curl -X GET -i "http://localhost:8099/api/comments" \
     -H "Accept: application/json"
```
Read one comment by ID
```bash
curl -X GET -i "http://localhost:8099/api/comments/2" \
     -H "Accept: application/json"
```
Update comment
```bash
curl -X PUT -i "http://localhost:8099/api/comments/5" \
     -H "Accept: application/json" \
     -H "Content-Type: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae" \
     -d '{
          "content": "Updated comment on Product5"
     }'
```
Delete comment
```bash
curl -X DELETE -i "http://localhost:8099/api/comments/16" \
     -H "Accept: application/json" \
     -H "Authorization: Bearer 6|1MnqzoxRtVhy6rSbiBtGUsvwxbImUA6mzwMnIfra341d63ae"
```