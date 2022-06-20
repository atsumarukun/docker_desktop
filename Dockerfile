FROM ubuntu:22.04

ARG USER=docker
ARG USER_PASS=docker
ARG ROOT_PASS=root
ARG VERSION=4.16

RUN apt update && apt -y install tzdata
ENV TZ=Asia/Tokyo
ENV DEBIAN_FRONTEND=noninteractive

RUN apt -y install init xrdp xfce4 sudo && \
    echo root:${ROOT_PASS} | chpasswd && \
    useradd -m ${USER} && \
    echo ${USER}:${USER_PASS} | chpasswd && \
    echo "${USER} ALL=(ALL) ALL" >> /etc/sudoers && \
    systemctl enable xrdp && \
    systemctl set-default multi-user.target
