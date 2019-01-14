FROM ubuntu:18.04
EXPOSE 5000
WORKDIR /portero
COPY . .
COPY _docker/portero/portero_config.py .
RUN apt-get update && apt install python-pip -y
RUN pip install -r requirements.txt
ENTRYPOINT python portero.py