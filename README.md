# home-server

### Set up notes
* Decrypt the repository's encrypted content using [transcrypt](https://github.com/elasticdog/transcrypt).
* SSL certs generated with [cerbot](https://certbot.eff.org/)

### Renewing SSL certs:
```
sudo docker run -it --rm --name certbot \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    certbot/certbot certonly \
    -d muru.io -d *.muru.io \
    --manual --preferred-c hallenges dns-01 --server https://acme-v02.api.letsencrypt.org/directory
```
