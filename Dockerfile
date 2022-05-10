FROM tiangolo/meinheld-gunicorn-flask:python3.9

ENV MODULE_NAME=serve

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY . /app

RUN apt update \
    & apt install -y ghostscript

RUN sed -i_bak \
's/rights="none" pattern="PDF"/rights="read | write" pattern="PDF"/' \
/etc/ImageMagick-6/policy.xml
