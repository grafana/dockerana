FROM ubuntu:trusty
LABEL MAINTAINER="George Lewis <schvin@schvin.net>"

RUN apt-get update && \
    apt-get install -y sysstat make

RUN perl -MCPAN -e 'install Net::Statsd'

COPY scripts/ingest.pl scripts/loop.pl scripts/periodic-ingest.sh scripts/runner.sh /usr/local/bin/

CMD /usr/local/bin/runner.sh
