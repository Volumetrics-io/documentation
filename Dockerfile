# IMPORTANT NOTE: this is used for our building with render.com, you can also manually use it locally, up to you.

FROM ubuntu:latest

# Update and install necessary packages
RUN apt-get update && apt-get install -y wget

# Download and install Pandoc
RUN wget https://github.com/jgm/pandoc/releases/download/3.1.3/pandoc-3.1.3-1-amd64.deb && \
    dpkg -i pandoc-3.1.3-1-amd64.deb
