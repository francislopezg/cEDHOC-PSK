# cEDHOC-PSK 

This repository contains a C implementation of EDHOC (RFC 9528), based on uOSCORE-uEDHOC 3.0.5, which includes the EDHOC-PSK authentication method (method 4) as described in https://datatracker.ietf.org/doc/draft-ietf-lake-edhoc-psk/. Additionally, it is also included a Dockerized scenario for testing purposes.

## How to Build and Run
* Execute `up.sh` to build the docker image containing the solution and to run a Docker container which uses the previously built Docker image.
* Execute `docker exec -it edhoc-psk-h1-1 /bin/bash` to get an interactive shell in the container.
* Once into the container, browse until `/home/uedhoc/uoscore-uedhoc-3.0.5-psk-v2/samples/linux_edhoc/initiator/`.
* Execute `make` to build the Initiator.

* Execute `docker exec -it edhoc-psk-h1-1 /bin/bash` to get another terminal in the container.
* Browse until `/home/uedhoc/uoscore-uedhoc-3.0.5-psk-v2/samples/linux_edhoc/responder/` and execute `make` to build the Responder.
* Execute `./build/responder` to run the Responder (which contains a CoAP server that waits for connections).

* Back into the Initiator terminal, execute `./build/initiator` to run the Initiator. 

## How to clean the compilation
* Execute `make clean` in both the Initiator and Responder folders.
* Exit the container's terminal and execute `./down.sh` to stop and remove the Docker container.

## Requirements

- Docker.

## Acknowledgments

- University of Murcia
- Open Source Projects: Docker, uOSCORE-uEDHOC
- Elsa López-Pérez, Göran Selander and John Preuß Mattsson as EDHOC-PSK draft authors

## Authors

- Francisco López-Gómez (University of Murcia).

- Gabriel López-Millán (University of Murcia).

- Rafael Marín-López (University of Murcia).
