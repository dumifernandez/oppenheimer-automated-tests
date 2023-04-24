# THE OPPENHEIMER PROJECT
## **Robot Framework Automation Project**

#### Robot Framework Introduction
Robot Automation Framework (RAF) is an open-source test automation framework that is designed to simplify and accelerate the automation of test cases. It is built on top of the Robot Framework and provides a high-level, easy-to-use interface for creating, running, and managing automated tests.

1. RAF offers a variety of features and capabilities that make it an effective tool for test automation. Some of its key features include:
2. Modular architecture: RAF is built on a modular architecture that allows users to easily create and manage reusable test components. This makes it easy to maintain and update tests as needed.
3. Test data management: RAF provides built-in support for managing test data, making it easy to create and manage test cases that require complex data sets.
4. Cross-platform support: RAF is designed to work on multiple platforms, including Windows, macOS, and Linux.
5. Integration with other tools: RAF can be easily integrated with other tools and systems, such as test management systems and continuous integration/continuous deployment (CI/CD) pipelines.
6. Reporting and analytics: RAF provides detailed reports and analytics on test results, making it easy to identify and resolve issues.

In summary, Robot Automation Framework is a powerful and flexible test automation framework that can help teams to accelerate the testing process and improve the quality of their software.

#### Installing Robot Framework

##### Step 01: Install Python
 Run the installer and complete the installation. Once python is installed, go to terminal and run the below command and it should display the python version.
 *"Python --version"*
 
 ##### Step 02: Install PIP
Pip is a package manager for python. It is installed by default when running Step 1. To check the pip version run the command
*"pip --version"*

##### Step 03: Install Robot Framework
Run the below commands to install the Robot Framework and check the Robot Framework that installed
*To install: "pip install robotframework"
To check the version: "robot --version"*

##### Step 04: Install Selenium Library
Run the below command to install/upgrade the Selenium libraries to your machine.
*"pip install --upgrade robotframework-seleniumlibrary"
"pip install --upgrade robotframework-selenium2library"*

##### Step 05: Install Browser Drivers
Run the below command to install the web drivers for your machine.
*"pip install webdrivermanager"
"webdrivermanager firefox chrome --linkpath /usr/local/bin"*

##### Step 06: Download and Install the VSCode.
To run the Robot script we can user VSCode as IDE.

##### Step 07: Install Extensions in VSCode
To run test cases with VSCode we need to install a plugins for that or we can just use the terminal of the VSCode. As running on the terminal is explained above will focus on installing the plugin and run test cases. Install below extenstions in VSCode.

1. Robot Code
2. Robocorp Code

##### Step 08: Setup the chromedriver

1. Download the chromedriver into your PC.
2. Copy and paste the chromedriver to the Scripts folder inside the Python installation directory.
3. Add new the environemt variable for that path

#### Setup the GovTech OPPENHEIMER PROJECT


##### Step 01: Download the OppenheimerProjectDev.jar file into you PC

##### Step 02: Up and Run the App and API interface in local machine
1. Go To CMD
2. Go to OppenheimerProjectDev.jar file
3. Run "java -jar OppenheimerProjectDev.jar" command in CMD

Example:

1. cd Downloads
2. cd oppenheimer-project-dev-master
3. dir
4. cd oppenheimer-project-dev-master
5. java -jar OppenheimerProjectDev.jar

#### Open the GovTech OPPENHEIMER Robot Automation Project

1. Open VSCode
2. Go to New - Open Folder
3. Select the Robot Automation Project folder
4. Click Ok

#### Project Description
Here, I have developed the test cases for GovTech OPPENHEIMER project using Robot Automation framework

This project is developed to demontrate robot framework with selenium and its covered the 5 user stories as given by Assignment.

- User Story 01: Insert a single record of working class hero into database via an API
		*In this user story we can perform 1 test case to verify the Insert Single Record.*
	
- User Story 02: Insert multi records of working class hero into database via an API
		*In this user story we can perform 1 test case to verify the Insert Multi Records.*
	
- User Story 03: Upload a csv file to the portal
		*In this user story we can perform 1 test case to verify the Upload CSV File.*
	
- User Story 04: Query the amount of tax relief for each person
		*In this user story we can perform 6 test cases to verify the GET tax, Masked NATID, Computation of tax relief, Remove decimal places in tax amount, Verify the final tax relief amount, and Tax amount truncated at the second decimal place.*
	
- User Story 05: Validating the Dispence Now button and Navigation to the Cash Dispensed page
		*In this user story we can perform 3 test cases to verify the Button colour, Button text, and Page validation.*
		
Other than that, I have added the Common.robot file to maintain the all common Settings, Variables and Keywords as of automation code stadards.

Project output, logs, report, Bugs and test cases along with the screenshots have attached with seperated files into GIT.

Thanks :)

















