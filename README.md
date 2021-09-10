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


# SSH Keys

This repo contains ssh keys for demonstation/sandpit purposes only. For a production environment, please set up new, none source controlled keys.






