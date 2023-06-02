#!/bin/bash
docker run --name nginx-ssl -d -p 443:443 \
  -v ${PWD}/nginx.conf:/etc/nginx/nginx.conf \
  -v ${PWD}/certs:/usr/local/etc/nginx/certs nginx