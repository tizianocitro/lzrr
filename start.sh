#! /bin/bash

docker pull provator/progetto_compressione
docker run -d -u 0  -p 6901:6901 -p 5901:5901 --name compressione  cadb0469de21
