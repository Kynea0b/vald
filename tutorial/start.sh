#!/opt/homebrew/bin/bash

docker run -v $(pwd):/etc/server -u "$(id -u $USER):$(id -g $USER)" -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -p 5005:5005 --rm -it vdaas/vald-agent-ngt
