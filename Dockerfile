FROM shuaicj/spark
MAINTAINER shuaicj <shuaicj@gmail.com>

RUN cd ${SPARK_HOME}/conf && \
    cp spark-env.sh.template spark-env.sh && \
    printf "\n\nSPARK_MASTER_WEBUI_PORT=8080\n" >> spark-env.sh

EXPOSE 4040 6066 7077 7337 8080 9000
