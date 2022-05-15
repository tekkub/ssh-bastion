FROM alpine

EXPOSE 22

RUN apk --no-cache add openssh

COPY sshd_config keys/ssh_host* /etc/ssh/
COPY keys/authorized_keys /root/.ssh/

CMD  ["/usr/sbin/sshd", "-D", "-e"]
