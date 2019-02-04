FROM ubuntu:18.04

RUN apt update
RUN apt install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
RUN apt install -y openjdk-8-jdk
RUN apt install -y python
RUN apt install -y tmux vim

RUN mkdir -p ~/bin
RUN mkdir -p ~/android/lineage

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
RUN chmod a+x ~/bin/repo

#RUN echo "cd /home/android" >> ~/.profile
#RUN /bin/bash -c "source ~/.profile"

ADD startup.sh /root/startup.sh

VOLUME /home/android/

ADD download.sh /bin/download.sh
ADD buildAndroid.sh /bin/buildAndroid.sh

#CMD ["/bin/bash" "/root/.startup.sh"]
ENTRYPOINT ["/root/startup.sh"]
#CMD ["/bin/bash" "/home/android/"]


