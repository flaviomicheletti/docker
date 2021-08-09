# Manage Docker as a non-root user

Run docker without sudo.

1) Create the docker group.

    sudo groupadd docker
    # groupadd: group 'docker' already exists

2) Add your user to the docker group.

    sudo usermod -aG docker $USER

3) Log out and log back in so that your group membership is re-evaluated

    newgrp docker
