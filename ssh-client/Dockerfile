FROM alpine

RUN apk --no-cache add openssh-client

COPY config/* /root/.ssh/
RUN chmod 600 /root/.ssh/config

CMD ["ssh", "-NT", "remote"]
