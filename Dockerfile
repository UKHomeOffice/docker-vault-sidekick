FROM alpine:3.2
MAINTAINER Rohith <gambol99@gmail.com>

ADD https://github.com/UKHomeOffice/vault-sidekick/releases/download/v0.0.3/vault-sidekick_v0.0.3_linux_x86_64.gz /vault-sidekick.gz
RUN gunzip /vault-sidekick.gz && \
    chmod +x /vault-sidekick

ENTRYPOINT [ "/vault-sidekick" ]
