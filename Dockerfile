FROM quay.io/vektorcloud/base:latest

RUN apk --no-cache add sniproxy
COPY sniproxy.conf /etc/sniproxy.conf

EXPOSE 80 443
ENTRYPOINT ["sniproxy", "-f"]
