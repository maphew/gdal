# Gitpod configuration files

www.gitpod.io - a clould environment for spinning up fresh automated dev environments straight from a git repository.

This directory contains Gitpod configuration files for running gdal docker images in that environment.

## Structure

`/.gitpod.yml` - As configured here it's just a pointer to the Dockerfile where we have all our actual settings. ([Reference docs](https://www.gitpod.io/docs/config-gitpod-file#gitpodyml))

`./docker/gitpod/osgeo-gdal.Dockerfile` - a [custom Gitpod dockerfile](https://www.gitpod.io/docs/config-docker#configure-a-custom-dockerfile) that uses the osgeo-gdal image as a starting point.

