FROM ubuntu:20.04

RUN set -xe \
    && echo "****** Install system dependencies ******" \
    && apt update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt install -y --no-install-recommends \
        ca-certificates libarchive-tools curl unzip git sudo software-properties-common \
    \
    && apt autoremove -y \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && rm -rf /tmp/* \
    && apt-get clean