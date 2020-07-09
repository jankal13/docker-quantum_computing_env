# docker-quantum_computing_env
Dockerised Jupyter environment including IBM Qiskit, Microsoft Q# and Google Cirq.

## Pre-requisites
* You need to have Docker (https://www.docker.com/) installed.
* This docker was tested on Mac OS X 10.15.3 with Docker Desktop 2.3.0.3

## Guidelines

1. Download this repository (and extract the zip) or use the ```git clone``` command
2. Switch into the directory by using ```cd```
3. Use ```docker-compose build``` to build the docker image
4. After the build you can use ```docker-compose up``` to start the jupyter notebook.

Note: You can stop the docker through ```docker stop <INSERT_NAME_OF_IMAGE>```
