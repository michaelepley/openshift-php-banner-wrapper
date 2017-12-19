FROM scratch
RUN cp /usr/libexec/s2i/run /usr/libexec/s2i/run-original \
    && echo $'cp index.php index-original.php\n. run-original' > /usr/libexec/s2i/run \
    && chmod a+x /usr/libexec/s2i/run
COPY classification-unclassified.php index.php
