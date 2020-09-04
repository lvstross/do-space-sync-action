FROM python:3.7-alpine

LABEL "com.github.actions.name"="DigitalOcean Upload Content"
LABEL "com.github.actions.description"="Upload a directory or files to an DigitalOcean Space"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.1.0"
LABEL repository="https://github.com/kodertroop/do-space-sync-action"
LABEL homepage="https://kodertroop.com"
LABEL maintainer="Kt. Team <hello@kodertroop.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.16.232'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
