FROM resin/rpi-raspbian 

RUN apt-get update && \
    apt-get install -y \
        python3-minimal \
        python3-pip \
        python3-numpy \
        python3-smbus \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /src/

WORKDIR /src

RUN pip3 install -r requirements.txt

COPY . /src/

ENTRYPOINT [ "python3" ]

CMD ["app/__main__.py"]