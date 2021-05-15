
#!/bin/bash -ex

echo 'Building the docker file'
docker build -t sample-microservice-with-spinnaker .
echo 'Pushing docker image to ECR'
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 000474600478.dkr.ecr.us-east-1.amazonaws.com
docker tag sample-microservice-with-spinnaker:latest 000474600478.dkr.ecr.us-east-1.amazonaws.com/sample-microservice-with-spinnaker:latest
docker push 000474600478.dkr.ecr.us-east-1.amazonaws.com/sample-microservice-with-spinnaker:latest