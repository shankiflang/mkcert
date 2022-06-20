# mkcert
Docker image for Mkcert

## Create CA
```bash
docker run -v $PWD:/root/.local/share/mkcert mkcert /bin/sh -c "mkcert -install && mkcert -cert-file /root/.local/share/mkcert/cert.pem -key-file /root/.local/share/mkcert/cert.key <domain(s)>"  
```

> The default domain is "localhost"

## Import CA
```bash
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ~/Documents/root-ca/mkcert/rootCA.pem
```