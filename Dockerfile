FROM kalilinux/kali

RUN echo "deb http://kali.download/kali kali-last-snapshot main contrib non-free" > /etc/apt/sources.list && \
   apt-get -y update && apt-get -y dist-upgrade && \
   DEBIAN_FRONTEND=noninteractive apt-get install -y \
   nano curl wget git netcat tmux python python-pip python3 python3-pip p7zip-full p7zip-rar p7zip net-tools build-essential iputils-ping pciutils bash-completion \
   kali-linux-large scrcpy xfce4-terminal && \
   apt-get -y autoremove && \
   apt-get -y clean && \
   rm -rf /var/lib/apt/lists/* && \
   wget https://raw.githubusercontent.com/thirdbyte/ssj/main/.bashrc -O /root/.bashrc

CMD ["/bin/bash"]
