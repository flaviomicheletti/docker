 # Docker

 https://fastapi.tiangolo.com/deployment/docker/


    // Build
    docker-compose up -- build

    // Run
    docker run -p 8001:8000 fastapi-ap

    // or
    uvicorn app.main:app --reload

   // or
   ./run.sh

    // Access
    http://localhost:8001/


## See also

- https://github.com/docker/awesome-compose/tree/master/fastapi
- https://github.com/tiangolo/uvicorn-gunicorn-fastapi-docker/

