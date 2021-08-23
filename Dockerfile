FROM python:3.9

RUN pip install --upgrade pip

ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
COPY . /app
RUN pip install -r requirements.txt

COPY ./entrypoint.sh /
ENTRYPOINT ["sh","/entrypoint.sh"]