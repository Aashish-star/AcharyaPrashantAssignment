Refer request_response_API.docx. It has all request and response with screenshot

# Below command is to build and run it.

Build command
--------------------

docker buildx build . -t assignment-image .

Run Command
---------------------
docker run -p 8080:8080 --name assignmentcontainer assignment-image

Dependent API:: From API 2 you will get the accessToken , That you need to pass in API 3 Part 1 and refreshToken you need to pass API 4. Started from Bearer to end
Independent API:: No dependecy to other

# API-1: SIGN-UP API (Success response) (INDEPENDENT API)

curl --location "http://localhost:8080/api/user/sign-up" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"


# API-1: SIGN-UP API (User exist response) (INDEPENDENT API)

curl --location "http://localhost:8080/api/user/sign-up" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"


# API-2: SIGN-IN API  (INDEPENDENT API)

curl --location "http://localhost:8080/api/user/sign-in" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"


# API 3 PART 1:: AUTHORIZE TOKEN PART 1 (DEPENDENT ON API-2)

curl --location "http://localhost:8080/api/user/authorize-token" ^
--header "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhYmN4eXoiLCJpYXQiOjE3NDk5NzkxNzksImV4cCI6MTc0OTk4MDA3OX0.BiuHYVFpGgl5MlvdlYIeEK_phVWsfwSI2Q_NpqB1r8o" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"

# API 3 PART 2:: EXPIRY TOKEN (INDEPENDENT API)

curl --location "http://localhost:8080/api/user/authorize-token" ^
--header "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJKb2huIiwiaWF0IjoxNzQ5NTU1MTEyLCJleHAiOjE3NDk1NTYwMTJ9.WvKZTinLB7FW1F6WoZanJGuQyie2yZhKP0Dr0EyqG5w" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"

# API 3 PART 3:: INVALID TOKEN (INDEPENDENT API)

curl --location "http://localhost:8080/api/user/authorize-token" ^
--header "Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJKb2huIiwiaWF0IjoxNzQ5NTU1MTEyLCJleHAiOjE3NDk1TYwMTJ9.WvKZTinLB7FW1F6WoZanJGuQyie2yZhKP0Dr0EyqG5w" ^
--header "Content-Type: application/json" ^
--data-raw "{\"email\": \"abcxyz@gmail.com\", \"password\": \"abcxyz1123\", \"userName\": \"abcxyz\"}"


# API 4: Refresh token (DEPENDENT ON API-2)

curl --location "http://localhost:8080/api/user/refresh-token" ^
--header "Content-Type: application/json" ^
--data "{\"refreshToken\": \"Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhYmN4eXoiLCJpYXQiOjE3NDk5NzkxNzksImV4cCI6MTc0OTk4Mjc3OX0.6I2XTsYqKQoGkN7eJKO4Es4lsybTO_jzl5o4FTtSUbg\"}"

