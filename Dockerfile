FROM ubuntu

RUN apt update -y
RUN apt install -y build-essential mingw-w64
RUN apt install -y unzip curl less lsof net-tools sudo git openssl ca-certificates
RUN update-ca-certificates --fresh
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
