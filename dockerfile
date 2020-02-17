FROM tomcat:8.0-jre8

#作者
MAINTAINER mm841318078: 自动构建docker镜像

#定义工作目录
ENV WORK_PATH /usr/local/tomcat/conf

#定义要替换的server.xml文件名
ENV SERVER_CONF_FILE_NAME server.xml

#删除原文件server.xml
RUN rm $WORK_PATH/$SERVER_CONF_FILE_NAME

#复制文件server.xml
COPY  ./$SERVER_CONF_FILE_NAME $WORK_PATH/
