FROM node:6

RUN adduser --shell /bin/false --gecos "" --disabled-password logio
RUN export USER=logio; export HOME=/home/logio; npm install -g log.io-ng --user "logio"

# Configure Docker and add config files
USER logio
ENV HOME /home/logio
ENV USER logio
WORKDIR /home/logio
EXPOSE 28777 28778

CMD log.io-server
