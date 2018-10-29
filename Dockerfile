FROM azul/zulu-openjdk

MAINTAINER Pascal Obstétar "pascal.obstetar@gmail.com"

RUN apt-get update -y && apt-get install -y wget

RUN mkdir -p /opt/shinyproxy/
RUN wget https://www.shinyproxy.io/downloads/shinyproxy-2.0.5.jar -O /opt/shinyproxy/shinyproxy.jar
COPY application.yml /opt/shinyproxy/application.yml
COPY logo_onf.jpg /opt/shinyproxy/logo_onf.jpg

WORKDIR /opt/shinyproxy/
CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
