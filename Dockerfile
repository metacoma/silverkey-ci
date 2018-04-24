FROM oldfrostdragon/qt-5.7-xenial-docker:latest
#FROM vookimedlo/ubuntu-qt:5.10_gcc_xenial
WORKDIR /tmp/
# XXX possible bug
USER root
RUN apt-get purge -y libcurl3 libcurl3-gnutls
RUN apt-get update && apt-get install --upgrade git build-essential libxtst-dev libx11-dev libxinerama-dev libcurlpp-dev libcurl4-openssl-dev rapidjson-dev -y
RUN apt-get install -y libcurl4-nss-dev
RUN apt-get install -y libcurl4-openssl-dev
USER jenkins
RUN git clone https://github.com/Robot/robot
WORKDIR /tmp/robot
RUN git checkout -b a19be1863405fa4dd5c970946d0f3f59d06b74f1
RUN make build
USER root
RUN make install
USER jenkins

