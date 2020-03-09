FROM neo4j:4.0

ENV APOC_VERSION="4.0.0.4" APOC_SHA="59b3369b30056338f0d6d8e7118e813003f035af615013ee21964d2607c69a8e"
RUN echo "+++ downloading apoc jar" && \
    wget --no-verbose "https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar" --directory-prefix /neo4j/plugins/ && \
    echo "${APOC_SHA}  /neo4j/plugins/apoc-${APOC_VERSION}-all.jar" | sha256sum -c
