# flower
Dockerfile and basic config for Celery Flower

Set `$CELERY_BROKER_URL` environment variable, then:

```
docker build -t flower .
docker run flower
```
