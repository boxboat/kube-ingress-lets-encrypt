## Kubernetes Ingress Automatic Let's Encrypt Certificates

Detailed instructions for using this repository can be found in the [BoxBoat Blog post for Kubernetes Ingress Automatic Let's Encrypt Certificates](https://boxboat.com/2018/06/12/kubernetes-ingress-lets-encrypt-certificates/)

Kubernetes resources in this repository should be applied in the following order:

1. Edit `vars.env`
2. Deploy `lego-setup.yml` by running `./lego-setup.sh`
3. Deploy `lego-secret.yml` by running `./lego-secret.sh`
4. Deploy `lego-generate-cert.yml` by running `./lego-generate-cert.sh`
5. Deploy `lego-renew-cert.yml` by running `./lego-renew-cert.sh`
6. Deploy `ingress.yml` by running `./ingress.sh`

## Ingress Cert Reflector

Detailed instructions for reflecting the TLS Secret to every namespace can be found in the [BoxBoat Blog post for Kubernetes NGINX Ingress TLS Secrets in All Namespaces](https://boxboat.com/2018/07/02/kubernetes-nginx-ingress-tls-secrets-all-namespaces/)

1. Deploy `ingress-cert-reflector.yml` by running `./ingress-cert-reflector.sh`

## Additional support for multiple secret replication.
Each secret is attached a label (can be configured via vars.end - REPLICATE_LABEL_NAME and REPLICATE_LABEL_VALUE) and this will be added to the secrets. Cert reflector script will list all secrets containing these labels and sync all those secrets across all namespaces.
