FROM cgr.dev/chainguard/wolfi-base

ARG version=3.11
WORKDIR /app

RUN apk add python-${version} && chown -R nonroot:nonroot /app/

USER nonroot

COPY  hello_wolfi.py /app/
ENTRYPOINT [ "python", "hello_wolfi.py" ]
