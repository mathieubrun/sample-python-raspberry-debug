FROM alpine:3.6

RUN apk add --no-cache python3 && pip3 install --upgrade pip

COPY app/requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

COPY debug.py /src/

COPY app /src/app

WORKDIR /src

ENTRYPOINT [ "python3" ]

CMD ["app/__main__.py"]