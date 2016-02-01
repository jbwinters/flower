# flower
Dockerfile and basic config for Celery Flower

```
export CELERY_BROKER_URL=$your_url
docker build -t flower .
docker run flower
open $your_docker_host:5555
```

