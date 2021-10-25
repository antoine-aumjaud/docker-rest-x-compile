FROM ubuntu

RUN echo "Europe/Paris" > /etc/timezone \
 && ln -nfs /usr/share/zoneinfo/Europe/Paris /etc/localtime

RUN apt update -y \
 && apt install -y build-essential mingw-w64 \
 && apt install -y unzip zip curl less lsof net-tools sudo git openssl ca-certificates vim \
 && apt install -y osslsigncode

ENV PATH="/root/.cargo/bin:${PATH}"

RUN curl -sSf https://sh.rustup.rs | sh -s -- -y \
 && rustup target add x86_64-unknown-linux-gnu \
 && rustup target add x86_64-pc-windows-gnu 
