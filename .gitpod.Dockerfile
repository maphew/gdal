FROM osgeo/gdal:ubuntu-small-latest
RUN uname -a && cat /etc/os-release
# RUN apt-get install -y software-properties-common
# RUN add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable
    # results in "E: Unable to fetch some archives, maybe run apt-get update or try with --fix-missing?"
RUN apt-get update --fix-missing
RUN apt-get install -y sudo libproj-dev

### Gitpod user ###
# https://community.gitpod.io/t/how-to-resolve-password-issue-in-sudo-mode-for-custom-image/2395/3
# '-l': see https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#user
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    # passwordless sudo for users in the 'sudo' group
    && sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers

ENV CMAKE_BUILD_TYPE=release
