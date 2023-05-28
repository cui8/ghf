FROM python:3.12.0b1-slim-buster
RUN  apt update && \
     apt install -y zip && \
     apt install -y curl && \
     curl \
        --location \
        --output /opt/DouyinLiveRecorder.zip \
        https://github.com/LyzenX/DouyinLiveRecorder/archive/refs/heads/main.zip && \
     unzip /opt/DouyinLiveRecorder.zip && \
     cd DouyinLiveRecorder-main/ && \
     python -m pip install -r requirements.txt
CMD python DouyinLiveRecorder-main/main.pyw
