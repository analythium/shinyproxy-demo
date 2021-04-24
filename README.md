# ShinyProxy Develop and Deploy Demo

Test developing a Shiny app in a Docker container and deploying onto a ShinyProxy DigitalOcean droplet.



## Run development environment

    docker-compose up --build

then visit `http://localhost:4000`.  To develop, simply make changes to your Shiny app and then reload the page!



## Production build, test, and deploy
Follow ALL of the steps below to deploy the latest version of your app...

To build the image from the Dockerfile, run

    sudo docker build -f prod.Dockerfile -t mvlancellotti/shinyproxy-test:prod .

then run locally with

    docker run -p 4000:3838 mvlancellotti/shinyproxy-test:prod

and visit `http://localhost:4000` to double check it works.  Finally, deploy with

    docker push mvlancellotti/shinyproxy-test:prod
    cd ~/programming/shinyproxy-1-click/digitalocean
    bash setup.sh -i ~/.ssh/id_rsa -s root@salal -f ~/programming/girihlet-scripts/shiny/application.yml

This should pull your new image onto the ShinyProxy server and restart the webserver so that it now appears in the list of shiny apps, fully updated.


(c) Copyright Analythium Solutions Inc, 2019-2020 (MIT).
