FROM texlive/texlive:latest-full

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim \
    latex-cjk-all \
    fonts-noto-cjk \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV LANG=C.UTF-8

WORKDIR /workspace

CMD ["/bin/bash"]
