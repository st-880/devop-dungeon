FROM ubuntu:latest
RUN echo "Docker image created by Hunter" > /hunter_message.txt
CMD ["cat", "/hunter_message.txt"]
