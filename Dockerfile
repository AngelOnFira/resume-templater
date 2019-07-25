FROM python:3.7-alpine

COPY ./Pipfile /app/Pipfile
COPY ./Pipfile.lock /app/Pipfile.lock

WORKDIR /app/

RUN apk add texlive-full
RUN apk add biber

RUN pip install pipenv; \
    pipenv install
    #addgroup -S -g 1001 app; \
    #adduser -S -D -h /app -u 1001 -G app app

# RUN chown -R app.app /app/

# USER app

CMD [ "pipenv", "run", "python", "main.py" ]