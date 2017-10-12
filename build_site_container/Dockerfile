FROM nginx:latest
MAINTAINER samuele@nutellino.it

RUN apt-get update
RUN apt-get install -y python python-pip
RUN pip install mkdocs

RUN pip install mkdocs-material

WORKDIR /

COPY site.conf /etc/nginx/conf.d/default.conf
ADD rootfs /source

RUN mkdir /code

RUN mkdocs new code
RUN chmod 777 /code
WORKDIR /code
RUN rm -rf docs
RUN cp -r /source docs

COPY mkdocs.yml /code/mkdocs.yml

RUN mkdocs build



