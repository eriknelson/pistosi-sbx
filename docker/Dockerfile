FROM python:3.10-alpine AS build-stage
RUN python -m ensurepip

# Install dependencies
COPY requirements.txt .
RUN \
  apk add --no-cache postgresql-libs && \
  apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev
RUN pip install --user -r requirements.txt

# runtime stage
FROM python:3.10-alpine

# Ensure logging is up to date despite possible buffering
ENV PYTHONUNBUFFERED 1

WORKDIR /opt/pistosi-sbx

RUN apk add --no-cache postgresql-libs

# Move sourcefiles
# COPY .env .
# COPY src .

# Copy resources from build env
COPY --from=build-stage /root/.local/ /usr/local/
COPY docker/entrypoint.sh /usr/bin/entrypoint.sh

ENTRYPOINT /usr/bin/entrypoint.sh
