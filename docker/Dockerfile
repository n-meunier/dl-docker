FROM ubuntu:18.04

LABEL Description="Ubuntu 18.04 with DL packages" Version="1.0" Maintainer="Nicolas Meunier <nm.nicolasmeunier@gmail.com>"
SHELL ["/bin/bash", "-c"]

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -y python3-pip git && apt-get clean

ADD requirements.txt /
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN python3 -m pip install --upgrade yt-dlp

#RUN apt-get update && apt-get install -y ffmpeg==1.4 ffprobe==0.5 && apt-get clean
#RUN git clone https://github.com/FFmpeg/FFmpeg /root/ffmpeg && \
#    cd /root/ffmpeg && \
#    ./configure --enable-nonfree --disable-shared --extra-cflags=-I/usr/local/include && \
#    make -j8 && make install -j8

RUN echo 'alias ydl="yt-dlp -i"' >> ~/.bashrc
RUN echo 'alias ydlm="yt-dlp -i -x --audio-format mp3 --embed-thumbnail --embed-metadata "' >> ~/.bashrc

CMD ["/bin/bash"]
