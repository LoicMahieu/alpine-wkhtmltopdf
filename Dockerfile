
FROM gliderlabs/alpine:3.2

RUN apk-install bash xvfb

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk-install wkhtmltopdf@testing

RUN mv /usr/bin/wkhtmltopdf /usr/bin/wkhtmltopdf-origin
RUN echo $'#!/usr/bin/env bash\n\
Xvfb -screen 0 800x600x16 & \n\
DISPLAY=:0.0 wkhtmltopdf-origin $@ \n\
killall Xvfb\
' > /usr/bin/wkhtmltopdf
RUN chmod +x /usr/bin/wkhtmltopdf
