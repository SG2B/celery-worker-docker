# Celery worker docker images

Docker images for [Celery](http://www.celeryproject.org/) worker.

## How to use / test

A helper docker-compose file is provided to test functionality.

```
docker-compose up
```

Define your tasks in a python project:

```python
@worker.task(
    name="ping"
)
def ping():
    return 'pong'

```

## Building images

Docker compose provides an easy way to building all the images with the right context

```
docker-compose build
```