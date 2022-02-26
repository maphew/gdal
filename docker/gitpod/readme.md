# Gitpod configuration files

www.gitpod.io - a clould environment for spinning up fresh automated dev environments straight from a git repository.

This directory contains Gitpod configuration files for running gdal docker images in that environment.

Generally what the files do is:

- Load a published OSGeo GDAL docker image
- install or update dependencies with apt-get
- Install `sudo` and add the *gitpod* user to it's list
- install python development libraries and modules

## Files

`/.gitpod.yml` - Pointer to the Dockerfile containing our settings.

`./docker/gitpod/osgeo-gdal.Dockerfile` - a [custom Gitpod dockerfile](https://www.gitpod.io/docs/config-docker#configure-a-custom-dockerfile) that uses the **osgeo-gdal** image on Docker Hub as a starting point.

`./docker/gitpod/ubuntu-small-latest.Dockerfile` - as above but using the slim downed ubuntu image

`test-$IMAGE-NAME.sh` - run this from a default gitpod image to test the associated .Dockerfile contents without having to commit every change to repo first (see [Trying out changes to your Dockerfile](https://www.gitpod.io/docs/config-docker#trying-out-changes-to-your-dockerfile)).

## Notes

Alpine images aren't used due to an upstream incompatibilty in Gitpod ([Issue #3356](https://github.com/gitpod-io/gitpod/issues/3356)).
