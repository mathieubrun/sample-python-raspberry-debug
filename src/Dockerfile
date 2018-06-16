FROM resin/rpi-raspbian 

RUN apt-get update && \
    apt-get install -y \
        python3-minimal \
        python3-pip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /src

RUN pip3 install ptvsd==3.0.0

COPY . /src/

ENTRYPOINT [ "python3", "app/__main__.py" ]