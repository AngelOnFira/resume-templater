FROM alpine:3.8
MAINTAINER Forest Anderson

RUN apk add --no-cache texlive-xetex biber python2

ENTRYPOINT [ "/home/main.py" ]