#!/bin/bash

function generate_certs() {
  local ERROR=-1;
  [[ -f certs ]] && rm -rf certs;
  mkdir certs && cd certs || exit "${ERROR}";
  openssl req -x509 -nodes -days 365 -newkey rsa:2048 -config ../config/openssl.cnf -out local-self-signed.crt -keyout local-self-signed.key
}

generate_certs
