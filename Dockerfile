FROM python:3.7.4-slim

COPY ./Pipfile /app/Pipfile
COPY ./Pipfile.lock /app/Pipfile.lock

WORKDIR /var/local

ENV PATH="${PATH}:/root/bin"

# This section comes from a post on stackexchange
# https://tex.stackexchange.com/questions/493664/minimal-installation-of-pdflatex-and-xelatex-on-alpine-docker
RUN apt-get update && apt-get install -y --no-install-recommends perl=5.28.1-6 wget=1.20.1-1.1 libfontconfig1=2.13.1-2 && \
    wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | sh  && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*; \
    tlmgr install xetex bibtex; \
    fmtutil-sys --all; \
    tlmgr install geometry hyperref silence parskip cite xcolor fontspec textpos isodate titlesec ms substr

WORKDIR /app/

RUN pip install pipenv==2018.11.26; \
    pipenv install

CMD [ "pipenv", "run", "python", "build.py" ]