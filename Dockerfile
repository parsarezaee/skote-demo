FROM python:3.10

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /skote_src
COPY ./skote_src /skote_src
WORKDIR /skote_src

ADD /skote_src/requirements.txt /skote_src/requirements.txt

RUN pip install -r requirements.txt