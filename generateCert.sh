#!/bin/sh

openssl req -nodes -x509 -newkey rsa:4096 -keyout localhost.key -out localhost.crt -sha256 -days 365 -subj "/C=PL/ST=DOL/O=Company/CN=localhost" -addext "subjectAltName=DNS:localhost"
cat localhost.crt localhost.key > ./haproxy/cert.pem
