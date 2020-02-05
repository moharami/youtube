FROM python:alpine

LABEL maintainer="Amir Moharami Fard <a.moharami@gmail.com>"

RUN apk add  --no-cache ffmpeg

RUN pip install --upgrade pip
RUN pip install youtube_dl

COPY ./youtube-dl.conf /etc/youtube-dl.conf

WORKDIR /media

ENTRYPOINT ["youtube-dl"]
