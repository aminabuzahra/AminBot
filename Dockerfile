FROM alpine

RUN apk add --no-cache docker-cli

COPY init-mongo-replica.sh /init-mongo-replica.sh
RUN chmod +x /init-mongo-replica.sh

CMD ["/init-mongo-replica.sh"]