@echo off

set /p base_dir_name="Entrez le nom du répertoire de base où tout sera stocké: "
set /p env_name="Entrez le nom de l'environnement virtuel: "
set /p project_name="Entrez le nom du projet Django: "
set /p repo_url="Entrez l'URL du dépôt GitHub: "

if not exist %base_dir% mkdir %base_dir%
cd %base_dir_name%

python -m venv %env_name%
call %env_name%\Scripts\activate.bat
pip install django
django-admin startproject %project_name% .
echo Django project '%project_name%'has been created in directory '%cd%'.
git init
echo /%env_name%/* > .gitignore
git remote add origin %repo_url%
git pull origin master
git add .
git commit -m "Initial commit"
git push -u origin master

set /p run_server="Do you want to run the development server now? (y/n): "

if /i "%run_server%"=="y" (
    python manage.py runserver
)


