FROM ubuntu

CMD echo "Europe/Paris" > /etc/timezone

RUN apt update -y \
 && apt install -y build-essential mingw-w64 \
 && apt install -y unzip curl less lsof net-tools sudo git openssl ca-certificates vim \
 && apt install -y osslsigncode

ENV PATH="/root/.cargo/bin:${PATH}"

RUN curl -sSf https://sh.rustup.rs | sh -s -- -y \
 && rustup target add x86_64-unknown-linux-gnu \
 && rustup target add x86_64-pc-windows-gnu 


