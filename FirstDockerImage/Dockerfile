FROM ubuntu:latest
WORKDIR /workspace

RUN apt -y update
RUN apt -y install build-essential cmake libboost-all-dev libcurl4-openssl-dev git

ADD git@github.com:nguyenchiemminhvu/LinuxNetworkProgramming.git /workspace/

RUN mkdir -p 01_networking_libraries/my_http_server/build && \
    cd 01_networking_libraries/my_http_server/build && \
    cmake .. && \
    make

EXPOSE 8080

CMD [ "echo", "Hello! Your docker container is fully configured and ready to use" ]

ENTRYPOINT ["/workspace/01_networking_libraries/my_http_server/build/HTTPServer", "8080"]
