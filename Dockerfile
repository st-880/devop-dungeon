FROM ubuntu:latest
RUN apt-get update && apt-get install -y netcat-openbsd
RUN echo "Docker image created by Hunter" > /hunter_message.txt
CMD ["sh", "-c", "while true; do echo 'HTTP/1.1 200 OK\n\n$(cat /hunter_message.txt)' | nc -l 80; done"]

