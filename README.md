# Django-Deployment-Using-Bash 🚀

This project automates the deployment of a Django web application using a Bash script, Docker, and Docker Compose. It makes it easy to set up and run a Django project with minimal manual effort.

> **Note:** The Django app deployed here is taken from an open-source repository:  
> [https://github.com/LondheShubham153/django-notes-app](https://github.com/LondheShubham153/django-notes-app)

---

## How It Works

- Clones the open-source Django project (if not already cloned)
- Installs system requirements:
  - Docker
  - Docker Compose
  - Nginx
- Adjusts Docker permissions for the current user
- Builds a custom Docker image for the Django app
- Spins up services defined in `docker-compose.yml`

---

## Project Structure


---

## Running the Deployment

├── django_deployment.sh # Main bash deployment script
├── docker-compose.yml # Multi-container orchestration
├── Dockerfile # Custom Django app image
└── django-notes-app/ # Cloned open-source Django project

Make the script executable and run it:

```bash
chmod +x django_deployment.sh
./django_deployment.sh


Sample output:

**********DEPLOYMENT STARTED**********
Cloning the Django app..
fatal: destination path 'django-notes-app' already exists and is not an empty directory.
Code directory already exists
Installing dependencies
...
**********DEPLOYMENT ENDED**********


