FROM alpine:3.2
MAINTAINER Rohith <gambol99@gmail.com>

ENV VAULT_VER=v0.0.9
ADD https://github.com/UKHomeOffice/vault-sidekick/releases/download/${VAULT_VER}/vault-sidekick_${VAULT_VER}_linux_x86_64.gz /vault-sidekick.gz
RUN gunzip /vault-sidekick.gz && \
    chmod +x /vault-sidekick

ENTRYPOINT [ "/vault-sidekick" ]
