FROM openshift/php
RUN cp index.php index-original.php
COPY classification-unclassified.php index.php