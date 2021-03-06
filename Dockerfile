# chandao
FROM asiainfoldpone/baseimage-java

ENV TIME_ZONE=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone
WORKDIR /opt/zbox

EXPOSE 80

ENV SERVICE_NAME=zentao
CMD rm -rf /opt/zbox/tmp/apache/httpd.pid && ./zbox stop && ./zbox start && tail -f
