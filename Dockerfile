FROM nginx:mainline

RUN apt-get update && \
    apt-get install -y jekyll && \
    apt-get clean

ADD . /app

RUN cd /app && \
    jekyll build && \
    cp -r _site/ /usr/share/nginx/html
