FROM python:3.9-slim
RUN apt-get update

COPY . /src
WORKDIR /src

RUN python -m pip install --upgrade pip \
    && pip install -r requirements.txt
    
CMD cron && tail -f /var/log/cron.log

