#!/bin/bash

# Open git bash and run this commands one by one 
# chmod +x create_django_project.sh
# ./create_django_project.sh

read -p "Enter the name of the base directory where everything will be stored: " base_dir
read -p "Enter the name of the virtual environment: " env_name
read -p "Enter the name of the Django project: " project_name
read -p "Enter the GitHub repository URL: " github_repo

mkdir "$base_dir"
cd "$base_dir"

python -m venv "$env_name"
source "$env_name/Scripts/activate"
pip install django
pip freeze > requirements.txt
django-admin startproject $project_name .
git init
git remote add origin "$github_repo"
git pull origin master
echo "$env_name/" >> .gitignore
git add .
git commit -m "Initial commit"
git push -u origin master
code .
python manage.py runserver 
start http://localhost:8000/
