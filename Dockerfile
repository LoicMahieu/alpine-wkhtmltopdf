
FROM gliderlabs/alpine:3.2

RUN apk-install bash xvfb

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk-install wkhtmltopdf@testing

ADD wkhtmltopdf-wrapper /usr/bin/wkhtmltopdf-wrapper
RUN chmod +x /usr/bin/wkhtmltopdf-wrapper
