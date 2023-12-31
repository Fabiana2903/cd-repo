# Overview
This project will consist of building a CI/CD Pipeline for the Agile Development in Azure course with Udacity. The project will be separated into two parts which will be Continuous Integration and Continuous Delivery. The first part will focus on CI development having subjects such as creating a Makefile, requirements, and application code, and setting up GitHub Actions. The second part will be focused on CD Development which integrates the CI part of the project with a Flask application and an Azure Pipeline. 

## Project Plan
The following links represent the first stage of the project focused on planning: 

* https://trello.com/invite/b/6dpE7Ttd/ATTI736305158d6306c7d13d79d4b517cebbA10946C3/ci-cd-pipeline-planning
* https://docs.google.com/spreadsheets/d/1lo2eFxE5gpWsrHYt9ATi22nN4PdBqAgl8SbiTO4eqoA/edit?usp=sharing

## Instructions

### Architectural Diagram 
![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/40898ff9-058a-47f0-8a20-19de762d694c)

### Continuous Integration 
This section will focus on describing the steps to complete the first part of the project which focuses on CI development. 

1. Create the following elements :
- A Makefile to build and test the application.
- A requirements file with the packages needed.
- A file with some functions.
- A file to test the functions of the previous file.
- A GitHub repository.

2. Create an SSH Key to access Azure DevOps.

In order to do this, the user must first run the following command ```ssh-keygen -t rsa```.
Then follow the path given to open the SSH key using ```cat     /home/odl_user/.ssh/id_rsa.pub```.

Make sure to copy and paste the ssh key that was recently created into a GitHub so Azure can access the repository using this following command ```git clone git@github.com:Fabiana2903/cd-repo.git´´´

![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/7ff69f6e-a069-4512-aa7c-024eca953812)

3. Create a virtual environment running the ```python3 -m venv ~/.myrepo``` command and activate it using ```source ~/.myrepo/bin/activate```.

4. Run ```make all``` command to install all of the project's dependencies and libraries and also run the tests
![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/67827b32-f008-4cf7-a04e-feb71030e628)

5. Configure GitHub actions by going to the Actions section on your repo and create a yml file to run tests. Make sure to use a supported Python version, or else the project is not going to be build.

![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/a401ded4-4e35-4f26-9fe1-203b72302055)

Status Badge 


[![Python application test with Github Actions](https://github.com/Fabiana2903/ci-repo/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/Fabiana2903/ci-repo/actions/workflows/pythonapp.yml)

<img width="938" alt="image" src="https://github.com/Fabiana2903/ci-repo/assets/149669704/d9bb3cb8-4ce9-427c-bce2-c7b02839a40a">

This link leads to the repo of the CI Section of the project https://github.com/Fabiana2903/ci-repo


### Continuous Delivery 

1. Create a new repository in GitHub, add the flask code given by the Udacity team, and clone the repo into Azure following steps 2 and 3 from the CI section.

2. Create the webapp with the following the command ```az webapp up -n mywebapp2903 -l westeurope --resource-group Azuredevops```. Change the name and the configurations as needed. 

This is a picture of the output after creating a web app.
![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/c8344fff-f9db-425b-81e7-d8ec66cb5250)

3. Give permissions with the ```chmod +x make_predict_azure_app.sh``` command and run the prediction file like this ```./make_predict_azure_app.sh```.
![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/748330b2-c3f5-41f3-b41b-786000912553)

4. Stream logs of the web app using the following command ```az webapp log tail```
   ![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/2f0edddb-08ea-4a83-857e-d026b7f5d1b3)

5. Create tests via locust and run them in your local terminal ```./loadtesting.sh``` which will run the locust file. Check the final results of your tests at the following port localhost 8089.

![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/47583fa4-e5db-4c38-90c4-12d854b692ef)


6. Create a Devops organization from the Azure DevOps organizations service in the azure portal using the set credentials that appear in Udacity. 

7. Go to settings and allow Azure to create public projects. The create a project and set it in public so it can be accessed more easily.
![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/ad913cbd-b13f-4a62-b7ce-8e716d0214e5)

8. Create an access token and save it to use it later.

9. Create a service connection from the project settings.

10. Download an agent with the following command ```curl -O https://vstsagentpackage.azureedge.net/agent//vsts-agent-linux-x64-3.227.2.tar.gz```. This one works for a Linux system.

11. Create a new directory and change paths to it using the following command ```mkdir myagent && cd myagent```.

12. Extract the contents of the zip folder using this command ```tar zxvf ../vsts-agent-linux-x64-...tar.gz```. Make sure you access the new agent and configure it using the following command ´´´./config.sh´´´

![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/286cfc36-61f6-40ae-b053-2b55e83663fa)


![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/2e94d88f-dfcb-41b2-b95a-21350d1b6a3d)

13. Switch the agent to online mode.
![image](https://github.com/Fabiana2903/cd-repo/assets/149669704/0f368c23-146b-4171-857d-d6b8b0c1852d)

## Enhancements

Having access to updated versions of the project in order to avoid unnecessary challenges when coding and creating the pipeline.

## Demo 

https://www.youtube.com/watch?v=Vzu7OHegpLw


