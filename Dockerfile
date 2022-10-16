FROM ubuntu
WORKDIR /tmp
RUN echo "change" > /tmp/f1
COPY change_file /tmp

