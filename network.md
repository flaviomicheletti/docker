# Cheat Sheet Network

A list of all existing Docker networks

    docker network ls

Create a network

    docker network create your-network-name

Remove a specific network

    docker network rm [networkID]

Remove all resources

    docker network prune


## Talking about Docker, what is the function and importance of network? 

ChatGPTIn Docker, networks allow containers to communicate with each other 
and with other resources on the network. Docker networks provide isolation, 
security, and flexibility to containerized applications. 

A network in Docker can be thought of as a virtual switch that connects 
containers and other resources, such as external systems, to each other. When 
a container is launched on a network, it is assigned an IP address, and can 
communicate with other containers on the same network using this IP address. 

The importance of networks in Docker lies in their ability to provide a 
secure and isolated communication environment for containers. By creating 
separate networks for different applications, it is possible to prevent 
communication between them and avoid conflicts. Additionally, Docker networks 
allow for the configuration of different types of network topologies, such as 
overlay networks, which enable containers to communicate across multiple 
hosts in a cluster. 

In summary, networks in Docker are important for providing a secure and 
isolated communication environment for containerized applications, as well as 
enabling communication across multiple hosts in a cluster.