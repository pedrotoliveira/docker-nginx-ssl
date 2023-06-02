# docker-nginx-ssl
Simple Nginx SSL Configuration for localhost


Generate signed certs for hostnames (should only need to be run once) and add they to MacOS keychain:

```
$ sudo security add-trusted-cert -d -r trustRoot -k \
    /Library/Keychains/System.keychain certs/local-self-signed.crt
```
