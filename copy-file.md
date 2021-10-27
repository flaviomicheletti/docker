# Copy File


Quando `WORKDIR /usr/src/app`

    docker create -ti --name dummy pmais-agenda.ui bash
    docker cp dummy:/usr/src/app/yarn.lock ./yarn.lock
    docker rm -f dummy



Quando `WORKDIR /app`

    docker create -ti --name dummy bquestoes-in-ui bash
    docker cp dummy:/app/package-lock.json ./package-lock.json
    docker rm -f dummy