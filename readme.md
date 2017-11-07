# Nginx Alpine

Docker image based on `nginx:alpine`and configured like nginx debian based.

## Usage

```bash
docker run --rm -p 3000:80 \
    -v $(pwd):/home/nginx/domains/default/public_html \
    ferri/nginx:1.12-alpine
```

Adjust `$(pwd)` with your directory project and access web server at http://localhost:3000

## Shell Access

```bash
docker run --rm ferri/nginx:1.12-alpine /bin/sh
```