FROM continuumio/miniconda3:4.5.4
MAINTAINER Julien Deruere <julien@sg2b.com>

RUN conda update conda
RUN pip install --upgrade pip

ENV CELERY_VERSION 4.2.1

RUN pip install celery=="$CELERY_VERSION"

COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

VOLUME /usr/src/app

EXPOSE 6900

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["celery", "worker"]