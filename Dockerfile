FROM php:7.2
RUN apt-get update
RUN apt-get install -y git maven
RUN git clone https://github.com/francesco-bianchi/progettoTpsitServer.git
RUN cd progettoTpsitServer
RUN clean install
ENTRYPOINT mvn exec:java -Dexec.mainClass="com.exple.Main"
