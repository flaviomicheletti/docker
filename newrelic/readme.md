# New Realic

b4aec218556f97b873e3778ca1a354b62db2NRAL

    docker run \
    -d \
    --name newrelic-infra \
    --network=host \
    --cap-add=SYS_PTRACE \
    --privileged \
    --pid=host \
    -v "/:/host:ro" \
    -v "/var/run/docker.sock:/var/run/docker.sock" \
    -e  NRIA_LICENSE_KEY=b4aec218556f97b873e3778ca1a354b62db2NRAL \
    newrelic/infrastructure:latest