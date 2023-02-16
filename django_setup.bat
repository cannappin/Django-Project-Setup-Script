@echo off

set /p base_dir="Enter the name of the base directory where everything will be stored: "
set /p env_name="Enter the name of the virtual environment: "
set /p project_name="Enter the name of the Django project: "
set /p github_repo="Enter the GitHub repository URL: "

if not exist %base_dir% mkdir %base_dir%
cd %base_dir%

python -m venv %env_name%
call %env_name%\Scripts\activate.bat
pip install django
django-admin startproject %project_name%
cd %project_name%
git init
git remote add origin %github_repo%
git pull origin master
git add .
git commit -m "Initial commit"
git push -u origin master

start "" "C:\Program Files\Git\git-bash.exe" -c "python manage.py runserver"
