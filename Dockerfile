FROM mrlsd/haskell:8.2.1
RUN apt update && apt upgrade -y
RUN apt install -y git make
RUN mkdir idris && cd idris &&\
    git clone https://github.com/idris-lang/Idris-dev.git . &&\
    cabal update &&\
    make && cabal install idris &&\
    rm -rf /var/lib/apt/lists/*
CMD ["idris"]
