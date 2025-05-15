# demo-wolfi
Little learning things

## Usage
```
docker build . -t hellowolfi
docker run --rm hellowolfi

docker build -f Dockerfile-alpine . -t helloalpine
docker run --rm helloalpine
```

## Compare the diffs
Look at Dockerfile & Dockerfile-alpine

trivial: FROMs are different (of course)

suprising (to novice): `nonroot` used by Chainguard while `nobody` used by Alpine (likely others?) Why? Claude says that this is common, more modern practice used by container folks. It is more explicit and helps distinguish the two. `nobody` historical.

also surprising: note the packaging...`python3` in Alpine and `python-3.11` for Chainguard. Why? Probably because Chainguard builds EVERYTHING from source, necessitating that all packages be more explicit about their origins.
