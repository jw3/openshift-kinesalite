FROM centos/nodejs-4-centos7

LABEL io.k8s.display-name="Kinesalite" \
      io.k8s.description="An implementation of Amazon's Kinesis, focused on correctness and performance, and built on LevelDB" \
      io.openshift.expose-services="4567:http" \
      io.openshift.tags="messaging,kafka,kinesis" \
      io.openshift.min-memory="512Mi"

USER root

RUN ["/bin/bash", "-l", "-c", "npm install -g kinesalite"]

RUN mkdir -p /kinesalite/data \
 && chgrp -R 0 /kinesalite/data \
 && chmod -R g+rwX /kinesalite/data

VOLUME ["/kinesalite/data"]

EXPOSE 4567

USER 100001

CMD ["kinesalite", "--path", "/kinesalite/data"]
