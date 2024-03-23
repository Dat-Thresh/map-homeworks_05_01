FROM ubuntu:16.04
LABEL hw_05_01 v1
RUN apt-get update
RUN apt -y install nano g++
WORKDIR /root/hw_05_01
COPY docker_hello.cpp .
RUN g++ docker_hello.cpp -o docker_hello
CMD ["./docker_hello"]


