FROM ubuntu
SHELL ["/bin/bash", "-c"]
RUN apt-get update
RUN apt-get install tshark -y
