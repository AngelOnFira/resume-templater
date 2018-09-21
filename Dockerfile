FROM ubuntu:bionic
MAINTAINER Forest Anderson

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  texlive-xetex \
  texlive-fonts-recommended \
  biber \
  python2.7

WORKDIR /home/code/
CMD [ "python", "main.py" ]