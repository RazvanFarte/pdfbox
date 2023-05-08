FROM openjdk:19-jdk-alpine3.16

MAINTAINER Richard Lea <https://github.com/chigix>

RUN apk add --no-cache ttf-droid ttf-droid-nonlatin fontconfig-dev freetype-dev && \
    apk add font-noto font-noto-cjk && \
    apk add msttcorefonts-installer ghostscript-fonts && \
    update-ms-fonts && \
    fc-cache -f -v && \
    wget https://dlcdn.apache.org/pdfbox/2.0.28/pdfbox-app-2.0.28.jar && \
    mv ./pdfbox-app-2.0.28.jar /root/pdfbox-app-2.0.28.jar

VOLUME ["/data"]

WORKDIR /data

ENTRYPOINT [ "java", "-jar", "/root/pdfbox-app-2.0.28.jar"]
