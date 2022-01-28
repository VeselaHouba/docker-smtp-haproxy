# haproxy-smtp-haproxy

Very basic (and single-purpose) haproxy installation for terminating ssl and forwarding to backend over TCP.

Tested to be working with SMTP and is listening on 465 and 587 by default.

Feel free to modify as needed for your purposes, and I'm very open to all PRs

## Variables

- `CERTFILE=/opt/cert.pem` - mount your cert to this location
- `KEYFILE=/opt/cert.key` - mount your key to this location
- `BACKEND_HOST=localhost` - hostname for smtp backend
- `BACKEND_PORT=25` - port for smtp backend
