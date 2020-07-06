FROM python:3.6
LABEL MAINTAINER="Mehrdad Gholami | mehrdadgholami.ir"

ENV PYTHONUNBUFFERED 1

RUN mkdir /aivaweb
WORKDIR /aivaweb
COPY . /aivaweb

RUN python manage.py collectstatic --no-input

CMD ["gunicorn", "--chdir", "aivaweb", "--bind", ":8000", "aivaweb.wsgi:application"]
