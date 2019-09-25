FROM wangrui027/jre:8u212

WORKDIR /root

ADD app/docker-zuul-proxy-1.0.0.jar docker-zuul-proxy-1.0.0.jar

ENV proxy.url https://www.google.com

EXPOSE 8080

CMD java -jar docker-zuul-proxy-1.0.0.jar
