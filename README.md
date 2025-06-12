Refer Advait request response API.docx. It has all request and response with screenshot

# Below command is to build and run it.

Build command
--------------------

docker buildx build . -t assignment-image .

Run Command
---------------------
docker run -p 8080:8080 --name assignmentcontainer assignment-image
