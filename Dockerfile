FROM python:3.7.4-slim

COPY ./Pipfile /app/Pipfile
COPY ./Pipfile.lock /app/Pipfile.lock

WORKDIR /var/local

ENV PATH="${PATH}:/root/bin"

# This section comes from a post on stackexchange
# https://tex.stackexchange.com/questions/493664/minimal-installation-of-pdflatex-and-xelatex-on-alpine-docker
RUN apt-get update && apt-get install -y --no-install-recommends perl wget libfontconfig1 && \
    wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | sh  && \
    apt-get clean; \
    tlmgr install xetex bibtex; \
    fmtutil-sys --all; \
    tlmgr install geometry hyperref silence parskip cite xcolor fontspec textpos isodate titlesec ms substr

WORKDIR /app/

RUN pip install pipenv; \
    pipenv install

CMD [ "pipenv", "run", "python", "build.py" ]