
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


To build the image from the Dockerfile, run
```bash
sudo docker build -t analythium/shinyproxy-demo .
```

Test locally
```bash
docker run -p 4000:3838 analythium/shinyproxy-demo
```
then visit `127.0.0.1:4000`.

(c) Copyright Analythium Solutions Inc, 2017-2020.
