##################### 镜像更新时需要修改的部分 #####################
FROM wangrui027/jre:8u212

LABEL image.name=zuul-proxy
LABEL image.tag=1.0.0

##################### 镜像更新时需要修改的部分 #####################

WORKDIR /root

ADD app/docker-zuul-proxy-1.0.0.jar docker-zuul-proxy-1.0.0.jar

ENV proxy.url https://www.google.com

EXPOSE 8080

CMD java -jar docker-zuul-proxy-1.0.0.jar
