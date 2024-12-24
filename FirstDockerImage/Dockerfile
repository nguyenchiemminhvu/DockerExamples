FROM ubuntu
WORKDIR /workspace

RUN apt -y update && apt -y install build-essential cmake git net-tools curl

COPY my_http_server /workspace/my_http_server

# Ensure CMake finds the CMakeLists.txt
RUN mkdir -p my_http_server/build && cd my_http_server/build && cmake .. && make

EXPOSE 8080

CMD ["/workspace/my_http_server/build/HTTPServer", "8080"]
