#

https://stackoverflow.com/a/32618288/4026574

    docker-compose up --force-recreate


    docker-compose rm -f
    docker-compose pull
    docker-compose up --build -d

    docker-compose down -v --remove-orphans # Remove possibly previous broken stacks left hanging after an error    