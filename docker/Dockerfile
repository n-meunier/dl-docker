FROM ubuntu:focal

LABEL Description="Ubuntu 20.04 with DL packages" Version="1.0" Maintainer="Nicolas Meunier <nm.nicolasmeunier@gmail.com>"
SHELL ["/bin/bash", "-c"]

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV TZ=Asia/Tokyo

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y python3-pip git && apt-get clean

ADD requirements.txt /
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN apt-get update && apt-get install -y curl
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp  # Make executable

RUN apt update && apt install -y ffmpeg

RUN echo 'alias ydl="yt-dlp -i"' >> ~/.bashrc
RUN echo 'alias ydlm="yt-dlp -i -x --audio-format mp3 --embed-thumbnail --embed-metadata "' >> ~/.bashrc
RUN echo 'alias ydlv="yt-dlp -i -f mp4 "' >> ~/.bashrc

CMD ["/bin/bash"]
