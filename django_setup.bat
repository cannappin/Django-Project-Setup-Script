@echo off

set /p base_dir_name="Enter the name of the base directory: "
set /p env_name="Enter the name of the virtual environment: "
set /p project_name="Enter the name of the Django project: "
set /p repo_url="Enter the URL of your GitHub repository: "

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


