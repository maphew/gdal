FROM osgeo/gdal:ubuntu-small-latest
RUN uname -a && cat /etc/os-release
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
    # results in "E: Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?"
RUN apt-get update --fix-missing
RUN apt-get install -y sudo libproj-dev
ENV CMAKE_BUILD_TYPE=release
