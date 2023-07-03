 # Docker

 https://fastapi.tiangolo.com/deployment/docker/


    // Build
    docker build -t fastapi-application .

    // Run
    docker run -p 8001:8000 fastapi-application

    // or
    uvicorn app.main:app --reload

    // Access
    http://localhost:8001/

