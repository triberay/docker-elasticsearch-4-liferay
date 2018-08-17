FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.1.3

MAINTAINER Wouter Vernaillen <wouter@triberay.com>

COPY ./resources/ ./config

RUN bin/elasticsearch-plugin install --batch analysis-icu
RUN bin/elasticsearch-plugin install --batch analysis-kuromoji 
RUN bin/elasticsearch-plugin install --batch analysis-smartcn
RUN bin/elasticsearch-plugin install --batch analysis-stempel

USER elasticsearch

CMD ["elasticsearch"]
