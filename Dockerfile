FROM continuumio/miniconda3:4.9.2

RUN /bin/bash \
-c "/opt/conda/bin/conda install jupyter -y --quiet && \
mkdir /opt/notebooks"

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh"]