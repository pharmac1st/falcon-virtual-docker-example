# falcon-virtual-docker-example

An example demonstrating `falcon virtual` in docker.

This container starts two falcon servers, managed by `falcon virtual`.

## Running

To build the container:

```
docker build . -t falcon-virtual-test
```

To run the container:

```
docker run --rm \
    -p 443:443 \
    -h hello.localhost \
    -h beer.localhost \
    --name test virtual-test
```

Once running, both https://localhost.beer and https://localhost.hello should be accesible via `curl` or web browser. You may need to use `-k` when using curl.
