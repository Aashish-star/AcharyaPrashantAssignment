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
