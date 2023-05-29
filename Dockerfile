FROM python:3.12.0b1-slim-buster
RUN  apt update && \
     apt install -y zip && \
     apt install -y curl && \
     curl \
        --location \
        --output /opt/DouyinLiveRecorder.zip \
        https://github.com/LyzenX/DouyinLiveRecorder/archive/refs/heads/main.zip && \
     cd /opt/ && \
     unzip DouyinLiveRecorder.zip && \
     cd ./DouyinLiveRecorder-main/ && \
     python -m pip install -r requirements.txt  && \
     rm -rf /DouyinLiveRecorder-main
WORKDIR /opt/DouyinLiveRecorder-main/
CMD /bin/bash