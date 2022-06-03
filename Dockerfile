FROM ubuntu:22.04

ARG USER=docker
ARG USER_PASS=docker
ARG ROOT_PASS=root

RUN apt update && apt -y install tzdata
ENV TZ=Asia/Tokyo

RUN apt -y install init xrdp xfce4 sudo && \
    echo root:${ROOT_PASS} | chpasswd && \
    useradd -m ${USER} && \
    echo ${USER}:${USER_PASS} | chpasswd && \
    echo "${USER} ALL=(ALL) ALL" >> /etc/sudoers && \
    systemctl enable xrdp && \
    systemctl set-default multi-user.target
