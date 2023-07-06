 # Docker

 https://fastapi.tiangolo.com/deployment/docker/


    // Build
    docker build -t python-fast-api .

    // Run
    docker run -p 8001:8000 python-fast-api

    // Access
    http://localhost:8001/

    // or
    uvicorn app.main:app --reload
