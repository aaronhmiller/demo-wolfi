# demo-wolfi

Little learning things

## Usage

```
docker build --no-cache . -t hellowolfi
docker run --rm hellowolfi

docker build --no-cache -f Dockerfile-alpine . -t helloalpine
docker run --rm helloalpine
```

## Docker Hub

```
docker buildx build --no-cache -f Dockerfile --platform linux/amd64,linux/arm64 \
-t <your_docker_hub_account>/hellowolfi --push .
```

`docker run --rm <your_docker_hub_account>/hellowolfi`

```
docker buildx build --no-cache -f Dockerfile-alpine --platform linux/amd64,linux/arm64 \
-t <your_docker_hub_account>/helloalpine --push .
```

`docker run --rm <your_docker_hub_account>/helloalpine`

## Compare the diffs

Look at Dockerfile & Dockerfile-alpine

trivial: FROMs are different (of course)

suprising (to novice): `nonroot` used by Chainguard while `nobody` used by
Alpine (likely others?) Why? Claude says that this is common, more modern
practice used by container folks. It is more explicit and helps distinguish the
two. `nobody` historical.

also surprising: note the packaging...`python3` in Alpine and `python-3.11` for
Chainguard. Why? Probably because Chainguard builds EVERYTHING from source,
necessitating that all packages be more explicit about their origins.
