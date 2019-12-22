#FROM python:3
FROM python:3.7
RUN apt-get update && apt-get install -y python3-pip


RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs


COPY requirements.txt .
RUN pip install -r requirements.txt
    
ENV JUPYTER_ENABLE_LAB=yes

# Create a new system user
RUN useradd -ms /bin/bash jupy

# Change to this new user
USER jupy

# Set the container working directory to the user home folder
WORKDIR /home/jupy

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0"]

# docker run -p 8888:8888 -v ~/Projects/docker/test:/home/demo/test jupy
