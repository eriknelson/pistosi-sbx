FROM python:3.10-alpine AS builder
RUN python -m ensurepip
ADD docker/entrypoint.sh /usr/bin/entrypoint.sh
ENTRYPOINT /usr/bin/entrypoint.sh
