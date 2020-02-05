# youtube-dl ** this version include ffmpeg **


Run youtube-dl inside docker.

Docker image generated daily with the latest version of **Alpine Linux** and **youtube-dl**.

[youtube-dl](http://rg3.github.io/youtube-dl/) is a command-line program to download videos from YouTube.com and a few [more sites](http://rg3.github.io/youtube-dl/supportedsites.html).

## Docker setup

Install docker: https://docs.docker.com/engine/installation/

Install docker compose: https://docs.docker.com/compose/install/

Docker documentation: https://docs.docker.com/

## Usage

### Build-in docker image

- build docker image `docker build -t youtube .`

- list youtube options: `docker run --rm youtube --help`

- download a video: `docker run --rm -v $(pwd):/media youtube https://www.youtube.com/watch?v=JYwUUDdYi9I`




### Docker Hub image

# Download best mp4 format available or any other best if no mp4 available

- download best mp4 video: `docker run --rm -v $(pwd):/media moharamiamir/youtube -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' https://www.youtube.com/watch?v=gN3pn_alymA`

# Download best available Format
docker run --rm -v $(pwd):/media moharamiamir/youtube https://www.youtube.com/watch?v=gN3pn_alymA

# Download best webm format available
- download best webm video: `docker run --rm -v $(pwd):/media moharamiamir/youtube -f 'bestvideo[ext=webm]+bestaudio[ext=m4a]/best[ext=wemb]/best' https://www.youtube.com/watch?v=gN3pn_alymA`

# List All Availble Format and size 
`docker run --rm moharamiamir/youtube -F https://www.youtube.com/watch?v=gN3pn_alymA`

```
docker create \
  --name=youtube-dl \
  -v <path to data>:/media \
  moharamiamir/youtube
```

### Docker compose

- create a container using docker-compose: `docker-compose up --no-start`

- download a video using docker compose: `docker-compose run --rm youtube-dl https://www.youtube.com/watch\?v\=JYwUUDdYi9I`

## More info

- _youtube-dl.conf_ configuration file can be updated before build/rebuild the docker image: [youtube-dl configuration file options](https://github.com/rg3/youtube-dl#configuration)

- youtube-dl command-line [options documentation](https://github.com/rg3/youtube-dl#options)
