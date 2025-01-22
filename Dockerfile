FROM ubuntu:24.04
RUN apt-get update
RUN apt-get install -y git maven
RUN git clone https://github.com/francesco-bianchi/progettoTpsitServer.git
WORKDIR progettoTpsitServer
RUN mvn clean install
ENTRYPOINT mvn exec:java -Dexec.mainClass="com.example.Main"

#WORKDIR è come un cd per rifarla partire dalla cartella selezionata e non dall'inizio dell'immagine