FROM mongo:latest

RUN mkdir -p /usr/app
COPY . /usr/app

WORKDIR /usr/app

ENTRYPOINT ["/usr/app/run.sh"]
CMD ["start"]
