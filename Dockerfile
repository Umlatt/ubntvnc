# Base image - Ubuntu 21.10 (default is still xServer)
FROM ubuntu:21.10
# Build information
LABEL "com.umlatt.description"="Ubuntu 21.10 - noVNC"
LABEL "maintainer"="Umlatt <richard@noxnoctua.com>"
# Install packages
RUN apt-get update
RUN unminimize
RUN apt-get install -y xorg openbox gnome-session gdm3 
# 1, 25, 31, 1
# sudo apt install ubuntu-desktop-minimal
RUN apt-get install -y tigervnc-standalone-server

# Start application
CMD ["/bin/bash", "while 1"]