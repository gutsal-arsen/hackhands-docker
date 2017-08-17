FROM ubuntu:latest

RUN apt update
RUN apt upgrade -y
RUN apt install curl sudo pulseaudio -y
# On Ubuntu
# Add the HackHands repository
RUN curl -s https://packagecloud.io/install/repositories/hackhands/desktop/script.deb.sh | sudo bash
# Install HackHands
RUN sudo apt-get install hackhands -y
# Run
CMD ["hackhands"]
