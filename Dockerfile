FROM lsiobase/alpine:3.810
# set label
LABEL maintainer="NG6"
ENV TZ=Asia/Shanghai

# ARG

# copy local files
COPY root/ /

# run command
RUN \
command

# volume
VOLUME /

# port
EXPOSE 6800  6881  6881/udp
