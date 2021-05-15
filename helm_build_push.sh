
#!/bin/bash -ex

echo 'Building tar file'
tar -czf sample-microservice-0.1.0.tgz sample-microservice
echo 'Pushing Changes to Git Hub'
git add .
git commit -m "Update"
git push
