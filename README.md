
# ShinyProxy Demo Image

The demo Shiny app displays some sliders and base graphics, and file uploader to test if uploading different file sizes (up to 200MB) works. Both Shiny and ShinyProxy (Spring) has 5MB limit.

To pull the image made in this repository from
[Docker Hub](https://hub.docker.com/r/analythium/shinyproxy-demo), use

```bash
sudo docker pull analythium/shinyproxy-demo
```

The relevant Docker Hub repository can be found at
https://hub.docker.com/r/analythium/shinyproxy-demo.

To build the image from the `Dockerfile`, run

```bash
sudo docker build -t analythium/shinyproxy-demo .
```

## Develop and test locally

```bash
docker-compose up --build
```
then visit `http://localhost:4000`.  To develop, simply make changes to your Shiny app and then reload the page!

## Production build, test, and deploy

Follow ALL of the steps below to deploy the latest version of your app...

To build the image from the Dockerfile, run
```bash
sudo docker build -f prod.Dockerfile -t yourregistryusername/shinyproxy-test:prod .
```

then run locally with
```bash
docker run -p 4000:3838 yourregistryusername/shinyproxy-test:prod
```
and visit `http://localhost:4000` to double check it works.  Finally, deploy with

```bash
docker push yourregistryusername/shinyproxy-test:prod
```

This should pull your new image onto the ShinyProxy server, add the app to the configuration yaml file, and restart the webserver so that it now appears in the list of shiny apps, fully updated.

(c) Copyright Analythium Solutions Inc, 2019-2020 (MIT).
