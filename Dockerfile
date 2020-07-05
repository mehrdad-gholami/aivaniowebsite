FROM python:3.6
LABEL MAINTAINER="Mehrdad Gholami | mehrdadgholami.ir"

ENV PYTHONUNBUFFERED 1

RUN mkdir /aivaniowebsite
WORKDIR /aivaniowebsite
COPY . /aivaniowebsite

RUN python manage.py collectstatic --no-input

CMD ["gunicorn", "--chdir", "aivaniowebsite", "--bind", ":8000", "aivaniowebsite.wsgi:application"]
