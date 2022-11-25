# Copy File


When `WORKDIR /usr/src/app`

    docker create -ti --name dummy2 if2030-in-ui bash
    docker cp dummy2:/usr/src/app/yarn.lock ./yarn.lock
    docker cp dummy2:/usr/src/app/package-lock.json ./package-lock.json
    docker rm -f dummy2



When `WORKDIR /app`

    docker create -ti --name dummy bquestoes-in-ui bash
    docker cp dummy:/app/package-lock.json ./package-lock.json
    docker rm -f dummy