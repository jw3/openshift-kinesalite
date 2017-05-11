FROM centos/nodejs-4-centos7

ARG DATADIR=/kinesalite/data

LABEL io.k8s.display-name="Kinesalite" \
      io.k8s.description="An implementation of Amazon's Kinesis, focused on correctness and performance, and built on LevelDB" \
      io.openshift.expose-services="4567:http" \
      io.openshift.tags="messaging,kafka,kinesis" \
      io.openshift.min-memory="512Mi"

RUN ["/bin/bash", "-l", "-c", "npm install -g kinesalite"]

RUN mkdir -p $DATADIR \
 && chgrp -R 0 $DATADIR \
 && chmod -R g+rwX $DATADIR

VOLUME [$DATADIR]

EXPOSE 4567

USER 100001

CMD ["kinesalite", "--path", $DATADIR]
