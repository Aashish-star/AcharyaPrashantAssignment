Refer request_response_API.docx. It has all request and response with screenshot

# Below command is to build and run it.

Build command
--------------------

docker buildx build . -t assignment-image .

Run Command
---------------------
docker run -p 8080:8080 --name assignmentcontainer assignment-image

# Without docker
Directly run the jar by using below command*

Install java 17

java -jar assignment-0.0.1-SNAPSHOT.jar



###############################################################################################################################

API-1: sign-up API (Success response)
curl:: 

curl --location "https://bookish-lamp-j7pxx7g7qr42j5xr-8080.app.github.dev/api/user/sign-up" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"


API-1: sign-up API (User exist response)

curl --location "https://bookish-lamp-j7pxx7g7qr42j5xr-8080.app.github.dev/api/user/sign-up" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"

###############################################################################################################################

API-2: sing-in API 

curl --location "https://bookish-lamp-j7pxx7g7qr42j5xr-8080.app.github.dev/api/user/sign-in" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"

###############################################################################################################################

API 3 Part 1:: Authorize token Part 1

curl --location "https://bookish-lamp-j7pxx7g7qr42j5xr-8080.app.github.dev/api/user/authorize-token" ^
--header "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhYmN4eXoiLCJpYXQiOjE3NDk5NzkxNzksImV4cCI6MTc0OTk4MDA3OX0.BiuHYVFpGgl5MlvdlYIeEK_phVWsfwSI2Q_NpqB1r8o" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"

API 3 Part 2:: Expiry token

curl --location "https://bookish-lamp-j7pxx7g7qr42j5xr-8080.app.github.dev/api/user/authorize-token" ^
--header "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJKb2huIiwiaWF0IjoxNzQ5NTU1MTEyLCJleHAiOjE3NDk1NTYwMTJ9.WvKZTinLB7FW1F6WoZanJGuQyie2yZhKP0Dr0EyqG5w" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"

API 3 Part 3:: Invalid token

curl --location "https://bookish-lamp-j7pxx7g7qr42j5xr-8080.app.github.dev/api/user/authorize-token" ^
--header "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJKb2huIiwiaWF0IjoxNzQ5NTU1MTEyLCJleHAiOjE3NDk1TYwMTJ9.WvKZTinLB7FW1F6WoZanJGuQyie2yZhKP0Dr0EyqG5w" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"

###############################################################################################################################

API 4: Refresh token 

curl --location "https://bookish-lamp-j7pxx7g7qr42j5xr-8080.app.github.dev/api/user/refresh-token" ^
--header "Content-Type: application/json" ^
--data "{\"refreshToken\": \"Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhYmN4eXoiLCJpYXQiOjE3NDk5NzkxNzksImV4cCI6MTc0OTk4Mjc3OX0.6I2XTsYqKQoGkN7eJKO4Es4lsybTO_jzl5o4FTtSUbg\"}"

