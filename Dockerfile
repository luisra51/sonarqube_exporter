FROM python:3.8-slim

WORKDIR /sonarqube_exporter/
COPY . .
RUN /usr/local/bin/python3 -m pip install --upgrade pip \
    &&  pip3 install -r requirements.txt \
    && mkdir -p /sonarqube_exporter/logs


EXPOSE 8198
ENTRYPOINT [ "/bin/sh",  "entrypoint.sh" ]
