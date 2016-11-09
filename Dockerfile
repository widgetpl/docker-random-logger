FROM ubuntu:16.04

MAINTAINER Michal Dziedziela <m.dziedziela@oberthur.com>

COPY run.sh /usr/bin/run.sh

RUN chmod +x /usr/bin/run.sh

ENTRYPOINT ["/usr/bin/run.sh"]
