FROM tiangolo/meinheld-gunicorn-flask:python3.9

ENV MODULE_NAME=serve

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY . /app
