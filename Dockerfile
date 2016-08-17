FROM sameersbn/gitlab:8.10.2-1

COPY app/models/ci /home/git/gitlab/app/models/ci
COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh
