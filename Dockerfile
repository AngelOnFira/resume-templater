FROM alpine:3.8
MAINTAINER Forest Anderson

COPY ./ ./

RUN ls

RUN apk add --no-cache texlive-xetex biber