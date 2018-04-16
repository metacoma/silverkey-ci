FROM oldfrostdragon/qt-5.7-xenial-docker:latest
#FROM vookimedlo/ubuntu-qt:5.10_gcc_xenial
WORKDIR /tmp/
# XXX possible bug
RUN apt-get update && apt-get install build-essential libxtst-dev libx11-dev libxinerama-dev -y
RUN git clone https://github.com/Robot/robot
WORKDIR /tmp/robot
RUN git checkout -b a19be1863405fa4dd5c970946d0f3f59d06b74f1
RUN make build
RUN make install

