FROM alpine:latest

RUN apk add --no-cache \
    fetchmail \
    msmtp \
    ca-certificates \
    busybox-suid

COPY fetchmailrc /etc/fetchmailrc
COPY msmtprc /etc/msmtprc
COPY entrypoint.sh /entrypoint.sh

RUN chmod 600 /etc/fetchmailrc /etc/msmtprc && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
