# Django Deployment Using Bash 🚀

This project automates the deployment of a Django web application using *Bash, **Docker, and **Docker Compose*.  
It makes it easy to set up and run a Django project with minimal manual effort.

---

## 📌 Source Project
The Django app deployed here is taken from an open-source repository:  
👉 [Django Notes App](https://github.com/LondheShubham153/django-notes-app)

---

## ⚙ How It Works
The deployment script performs the following steps:

1. *Clones the Django project* (if not already cloned).
2. *Installs system requirements*:
   - Docker  
   - Docker Compose  
   - Nginx  
3. *Adjusts Docker permissions* for the current user.
4. *Builds a custom Docker image* for the Django app.
5. *Spins up containers* using docker-compose.yml.

---

## 📂 Project Structure
