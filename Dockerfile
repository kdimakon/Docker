FROM alpine:latest

RUN apk update \
    && apk upgrade \
    && apk add --update --no-cache python3 \
    && ln -sf python3 /usr/bin/python \
    && python3 -m ensurepip \
    && pip3 install --no-cache --upgrade pip setuptools

RUN mkdir /etc/listen 

WORKDIR /etc/listen

COPY listen.py /etc/listen

CMD [ "python", "./listen.py" ]

EXPOSE 9090