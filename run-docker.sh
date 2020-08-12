#!/bin/sh

docker build -t davidealberani/diffido .
docker run --restart unless-stopped -d -it -v $(pwd)/conf:/diffido/conf -v $(pwd)/storage:/diffido/storage -p 3210:3210 davidealberani/diffido --debug
