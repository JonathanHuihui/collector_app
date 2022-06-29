FROM python:3.9-slim
RUN apt-get update && apt-get install -y cron 

COPY . /src
WORKDIR /src
RUN touch /var/log/cron.log

RUN python -m pip install --upgrade pip \
    && pip install -r requirements.txt
    
COPY coll-crontab /etc/cron.d/coll-crontab
RUN chmod 0644  /etc/cron.d/coll-crontab

RUN cat envfile >> /etc/environment

CMD cron && tail -f /var/log/cron.log

