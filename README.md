
# ShinyProxy Demo Image

The demo Shiny app displays some sliders and base graphics,
and file uploader to test if uploading different file
sizes (up to 200MB) works. Both Shiny and ShinyProxy (Spring)
has 5MB limit.

To pull the image made in this repository from
[Docker Hub](https://hub.docker.com/r/analythium/shinyproxy-demo), use
```bash
sudo docker pull analythium/shinyproxy-demo
```

The relevant Docker Hub repository can be found at
https://hub.docker.com/r/analythium/shinyproxy-demo.

## Run development environment
```bash
sudo docker build -f dev.Dockerfile -t mvlancellotti/shinyproxy-test:dev . && docker run --rm -p 4000:3838 -v ./app:/root/app mvlancellotti/shinyproxy-test:dev
```

or

    docker-compose up --build

## Production build, test, and deploy
To build the image from the Dockerfile, run
```bash
sudo docker build -f prod.Dockerfile -t mvlancellotti/shinyproxy-test .
```

Test locally
```bash
docker run -p 4000:3838 mvlancellotti/shinyproxy-test
```
then visit `127.0.0.1:4000`.

(c) Copyright Analythium Solutions Inc, 2019-2020 (MIT).
