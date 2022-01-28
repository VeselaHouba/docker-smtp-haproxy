FROM alpine:3

RUN apk add \
  haproxy \
  gettext

COPY docker/haproxy.cfg /root/haproxy_template.cfg
COPY docker/run /root
RUN chmod 755 /root/run

ENV \
  CERTFILE=/opt/cert.pem \
  KEYFILE=/opt/cert.key \
  BACKEND_HOST=localhost \
  BACKEND_PORT=25

CMD [ "/root/run" ]
