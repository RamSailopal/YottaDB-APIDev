# Introduction

This repo allows the provision of a development environment through docker that gives you everything that you need to develop API endpoints to YottaDB. There is an IDE to write code as well as a YottaDB global viewer web UI, newman to run API tests and a global entry tester.

# sandbox

The sandbox environment is an immutable environment with no persistent code base or database. To provision:

      git clone https://github.com/RamSailopal/YottaDB-APIDev.git
      cd YottaDB-APIDev/sandbox
      export glbviewadd="192.168.240.1"
      
Where glbviewadd is the address of the server/machine running Docker.

Provision the stack:

     docker-compose up

# Beginning development

Navigate to http://ipofdockerserver:3002/#/home/yottadb-settings/Yottadb.theia-workspace

Open a compilation window:

   **Terminal** -> **Run Task** -> **YottaDB Compiler** -> **Continue without scanning the task output**
   
Two primarily required for the development of YottaDB APIs. Both files are in the mapped directory:

**myRestAPIs.m** - Holds the M code to pull global entries out of the YOttaDB database

**routes.json** - Holds the API end points and the relevant M routine/label calls

Further more indepth information is available here:

https://github.com/robtweed/mgweb-server/blob/master/TUTORIAL.md

Examples relating to adding, deleting capital cities/coutries are available to view from then outset.

# Running Tests

The enviroment is integrated with Newman for testing API calls. A sample test runner file is available called **sand_postman.json** When new endpoints are added, add to this postman json file and then run the Newman API tests. THis can be done by:

Clicking on:

    **Terminal** -> **Run Task** -> **API tests** -> **Continue without scanning the task output**
    
Additional, tests on global entries can be achieved by amending the example tests.json file. Further details are available here:

https://github.com/RamSailopal/YottaDB-CI-Testrunner

The global tests can then be run by clicking on:

    
    **Terminal** -> **Run Task** -> **Global tests** -> **Continue without scanning the task output**

# SSH Keys

This repo contains ssh keys for demonstation/sandpit purposes only. For a production environment, please set up new, none source controlled keys.






