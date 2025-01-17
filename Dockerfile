FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git \
    python3-yaml

COPY feed.py /user/bin/feed.py

COPY entrypoint.sh /entrypoint.sh
RUN chmod 775 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
