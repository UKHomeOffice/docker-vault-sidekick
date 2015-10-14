FROM alpine:3.1
MAINTAINER Rohith <gambol99@gmail.com>

ADD https://github.com/UKHomeOffice/vault-sidekick/releases/download/v0.0.2/vault-sidekick_0.0.2_linux_x86_64.gz /vault-sidekick.gz
RUN gunzip /vault-sidekick.gz && \
    chmod +x /vault-sidekick

ENTRYPOINT [ "/vault-sidekick" ]
