FROM ubuntu

RUN apt update -y \
 && apt install -y build-essential mingw-w64 \
 && apt install -y unzip curl less lsof net-tools sudo git openssl ca-certificates

RUN curl -sSf https://sh.rustup.rs | sh -s -- -y 
ENV PATH="${HOME}/.cargo/bin:${PATH}"

RUN rustup target add x86_64-unknown-linux-gnu \
 && rustup target add x86_64-pc-windows-gnu 

