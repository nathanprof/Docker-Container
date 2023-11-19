# Docker-Container
Creating Docker Container images using VMware Workstation running Ubuntu Linux 23.04
# Setting up Docker apt Repository in ubuntu Linux
## Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
## Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
# Install the Docker Packages
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
## To verify that you have docker installed in your local machine
sudo docker run hello-world
# ops
- docker pull nginx (download nginx)
- docker run --detach --publish-all nginx (Create and run a new container from an nginx)
- docker ps (to list the containers in the running process)
- ip address show (lists the available ip addresses on the interfaces)
- http://ip-address:32768 (paste it in the browser)
- docker run -d -p 80:80 nginx (to change it's port to 80, e.g to just type "http://ip-address" in the browser)
- docker stop CONTAINER_ID
- vim Dockerfile (to create an ubuntu container)
- docker build -t reggieapp (to build the docker file)
- docker run -d -p 80:80 reggieapp (this will start the Nginx web server in the background and map port 80 on the host machine to port 80 on the container)
- create a repository in docker hub and name it e.g reggieapp ("https://hub.docker.com/")
- give it visibility public
- docker login -u YOUR_DOCKER_HUB_USERNAME (Log in to your Docker Hub "https://hub.docker.com/" using the following command)
- docker tag reggieapp YOUR_DOCKER_HUB_USERNAME/reggieapp (command to tag your image with your Docker Hub username and repository name)
- docker push YOUR_DOCKER_HUB_USERNAME/REPOSITORY_NAME (use the following command to push the image to Docker Hub)
- https://hub.docker.com/r/YOUR_DOCKER_HUB_USERNAME/REPOSITORY_NAME (you can share it with others by providing them with the following URL)
