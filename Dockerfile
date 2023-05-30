FROM python:3.9-slim
RUN  apt update && \
     apt install -y zip && \
     apt install -y curl && \
     apt install ffmpeg && \
     curl \
        --location \
        --output /opt/DouyinLiveRecorder.zip \
        https://github.com/LyzenX/DouyinLiveRecorder/archive/refs/heads/main.zip && \
     cd /opt/ && \
     unzip DouyinLiveRecorder.zip && \
     cd ./DouyinLiveRecorder-main/ && \
     python -m pip install -r requirements.txt  && \
     rm -rf /DouyinLiveRecorder
WORKDIR /opt/DouyinLiveRecorder-main/
CMD python main.pyw