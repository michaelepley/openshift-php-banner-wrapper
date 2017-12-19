FROM scratch
USER 0
COPY classification-unclassified.php /opt/app-root/src/classification-unclassified.php
RUN cp /usr/libexec/s2i/run /usr/libexec/s2i/run-original \
    && echo $'cp /opt/app-root/src/index.php /opt/app-root/src/index-original.php\ncp /opt/app-root/src/classification-unclassified.php /opt/app-root/src/index.php\n. ./run-original' > /usr/libexec/s2i/run \
    && chmod a+x /usr/libexec/s2i/run
USER root