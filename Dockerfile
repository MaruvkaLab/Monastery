FROM ubuntu:20.04

# Set non-interactive mode for apt-get to avoid prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install necessary packages
RUN apt-get update && apt-get install -y \
    software-properties-common \
    python3.8 \
    python3.8-venv \
    python3.8-dev \
    python3-pip \
    git

RUN python3.8 -m pip install --upgrade pip

# Install Flask
RUN git clone https://github.com/MaruvkaLab/Abbot
RUN cd /Abbot
RUN python3.8 -m pip install -r requirements.txt

# Set the default command to run when starting the container
CMD ["/bin/bash"]