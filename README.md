# Introduction

![Alt text](globtests.PNG?raw=true "Global Tests")

This repo allows the provision of a development environment through docker that gives you everything that you need to develop API endpoints to YottaDB. There is an IDE to write code as well as a YottaDB global viewer web UI, newman to run API tests and a global entry tester.

# sandbox

The sandbox environment is an immutable environment with no persistent code base or database. To provision:

      git clone https://github.com/RamSailopal/YottaDB-APIDev.git
      cd YottaDB-APIDev/sandbox
      export glbviewadd="192.168.240.1"
      
Where glbviewadd is the address of the server/machine running Docker.

Provision the stack:

     docker-compose up
     
# dev

The dev environment is the same as the sandbox one but for the fact that database storage is persistent.. To provision:

      git clone https://github.com/RamSailopal/YottaDB-APIDev.git
      cd YottaDB-APIDev/dev
      export glbviewadd="192.168.240.1"
      
Make a clean persistent storage directory:

      mkdir -p /opt/yottadata
    
Export the yottadata variable to reference this path:

      export yottadata=/opt/yottadata
      
Run the stack:

      docker-compose up


# Beginning development

Navigate to http://ipofdockerserver:3002/#/home/yottadb-settings/Yottadb.theia-workspace

Open a compilation window:

   **Terminal** -> **Run Task** -> **YottaDB Compiler** -> **Continue without scanning the task output**
   
This window will deal automatically with any compilation of code as well as process restarts on each save of relevant code.
   
Two files are primarily required for the development of YottaDB APIs. Both files are in the mapped directory:

**myRestAPIs.m** - Holds the M code to interact with the YOttaDB database

**routes.json** - Holds the API end points and the relevant M routine/label calls

Further more indepth information is available here:

https://github.com/robtweed/mgweb-server/blob/master/TUTORIAL.md

Examples relating to adding, deleting capital cities/coutries are available to view/edit from the outset.

# Running Tests

![Alt text](apitests.PNG?raw=true "Newman API Tests")

The enviroment is integrated with Newman for testing API calls. A sample test runner file is available called **sand_postman.json** (sandbox) or **dev_postman.json** (dev) When new endpoints are added, add to this postman json file and then run the Newman API tests. This can be done by:

Clicking on:

    **Terminal** -> **Run Task** -> **API tests** -> **Continue without scanning the task output**
    
Additional, tests on global entries can be achieved by amending the example tests.json file (for sandbox) or test1.json file (for dev). Further details are available here:

https://github.com/RamSailopal/YottaDB-CI-Testrunner

The global tests can then be run by clicking on:

    
    **Terminal** -> **Run Task** -> **Global tests** -> **Continue without scanning the task output**
        
# Global viewer Web GUI

![Alt text](globview1.PNG?raw=true "GLobal Viewer Web UI")

Data stored in YottaDB globals can be viewed by navigating to http://ipaddressofdockerserver:8001

# SSH Keys

This repo contains ssh keys for demonstation/sandpit purposes only. For a production environment, please set up new, none source controlled keys.

# Credit

Special thanks goes to Rob Tweed for developing the initial mgweb-server implementation:

https://github.com/robtweed/mgweb-server

Also:

Eclipse Theia web IDE:

https://theia-ide.org/

Newman API testing:

https://www.npmjs.com/package/newman

