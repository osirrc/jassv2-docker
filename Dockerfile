FROM        gcc:8

RUN         apt-get update -y \
&&          apt-get install -y cmake=3.7.2-1 vim=2:8.0.0197-4+deb9u1 vim-common=2:8.0.0197-4+deb9u1 vim-runtime=2:8.0.0197-4+deb9u1 time=1.7-25.1+b1 --no-install-recommends \
&&          apt-get clean -y  \
&&          rm -rf /var/lib/apt/lists/*

# Copy scripts into place

COPY init init
COPY index index
COPY search search
COPY index_robust04 index_robust04
COPY search_robust04 search_robust04
COPY index_core17 index_core17
COPY search_core17 search_core17

# Set working directory

WORKDIR /work

