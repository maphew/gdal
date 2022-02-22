FROM osgeo/ubuntu-small-latest
RUN apt install sudo \
  && add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable \
  && apt install -y libproj-dev
ENV CMAKE_BUILD_TYPE=release
