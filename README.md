# Sysbench

A Docker image for running sysbench, based on Alpine Linux.

## Build image

When building the image, it downloads all neccessery tools for compiling it. When it's done, it purges all those packages and adds back dependencies

```bash
docker build -t tjakobsson/sysbench:1.0 .
```

## Example usage

```bash
docker run tjakobsson/sysbench:1.0 sysbench --test=cpu --cpu-max-prime=20000 run
```
