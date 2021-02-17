FROM docker.pkg.github.com/nixmark/neomutt/neomutt-base

ENV NEOMUTT_TEST_DIR="/neomutt/neomutt-test-files"

COPY * neomutt/

WORKDIR neomutt

RUN git clone --depth 1 https://github.com/neomutt/neomutt-test-files.git
RUN ./configure
RUN make
RUN make test 
