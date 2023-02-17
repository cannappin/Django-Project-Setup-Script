
# Django Project Setup Script

This script automates the setup of a new Django project on your local machine, including the creation of a virtual environment, installation of Django, creation of a new project, and setup of a Git repository linked to a remote repository on GitHub.

## Description

This script prompts the user to enter the name of a virtual environment, the name of a Django project, and a GitHub repository URL. It then performs the following actions:

- Creates a new virtual environment with the given name.
- Activates the virtual environment.
- Installs Django in the virtual environment.
- Creates a new Django project with the given name.
- Initializes a new Git repository in the project directory.
- Adds the remote GitHub repository as the origin.
- Pulls the latest changes from the master branch of the remote repository.
- Adds all the files in the project directory to the staging area.
- Commits the changes with the given message.
- Pushes the changes to the master branch of the remote repository.
- Starts the Django development server.




## Requirements
- Python 3.x
- Git
- A GitHub account

## Usage

    1.Download or clone this repository to your computer.
    2.Open a terminal and navigate to the directory containing the mon_code.bat file.
    3.Run the script by typing mon_code.bat and pressing enter.
    4.Follow the prompts to enter the necessary information:
        Base directory name
        Virtual environment name
        Django project name
        GitHub repository URL
    5.Once the script has finished, you can choose to start the Django development server by typing "y" when prompted.


## Example

Enter the name of the base directory where everything will be stored: Projects   
Enter the name of the virtual environment: venv  
Enter the name of the Django project: my_project   
Enter the GitHub repository URL: https://github.com/username/repository_name.git

## Notes
The script assumes that you have already installed Python and Git on your system.
The virtual environment will be created in the base directory.
The .gitignore file will exclude the virtual environment directory.
The script will initialize a Git repository, make an initial commit, and push the commit to the remote repository.
    
## Authors

- [@cannappin](https://github.com/cannappin)

