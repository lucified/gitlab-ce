FROM sameersbn/gitlab:8.10.2-1

COPY app/models/ci /home/git/gitlab/app/models/ci
COPY entrypoint.sh /sbin/entrypoint.sh
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs && \
  apt-get clean && \
  rm -rf /tmp/* /var/tmp/* && \
  rm -rf /var/lib/apt/lists/*
RUN npm install -g route53-updater
RUN chmod 755 /sbin/entrypoint.sh
