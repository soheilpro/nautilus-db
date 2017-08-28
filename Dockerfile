FROM mongo:3.4

RUN mkdir -p /usr/app
COPY . /usr/app

WORKDIR /usr/app

ENTRYPOINT ["/usr/app/run.sh"]
CMD ["start"]
