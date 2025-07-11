#!/bin/bash

code_clone() {
    echo "Cloning the Django app.."
    git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
    echo "Installing dependencies"
    sudo apt-get install docker.io nginx -y docker-compose
}

required_restart() {
    sudo chown $USER /var/run/docker.sock
}

deploy() {
    sudo docker build -t notes-app .
    #sudo docker run -d -p 8000:8000 notes-app:latest
    docker-compose up -d
}

echo "**********DEPLOYMENT STARTED**********"

if ! code_clone; then
    echo "Code directory already exists"
    cd django-notes-app
fi

if ! install_requirements; then
    echo "Installation failed"
    exit 1
fi

if ! required_restart; then
    echo "System fault identified"
    exit 1
fi

deploy
echo "**********DEPLOYMENT ENDED**********"
