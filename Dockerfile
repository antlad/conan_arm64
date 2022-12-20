FROM conanio/gcc10:1.55.0

RUN apt-get -qq update && \
    apt-get -qq -o Dpkg::Use-Pty=0 install -y --no-install-recommends \
        g++-10-aarch64-linux-gnu \
        gcc-10-aarch64-linux-gnu \
         && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ~/.conan/profiles

COPY linux-aarch64-gcc10 ~/.conan/profiles

