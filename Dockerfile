FROM php:7.2
RUN apt-get update
RUN apt-get install -y git
ENTRYPOINT git clone https://github.com/francesco-bianchi/docker_prova.git; php docker_prova/index.php