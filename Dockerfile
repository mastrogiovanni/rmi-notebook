FROM jupyter/datascience-notebook
MAINTAINER Michele mastrogiovanni <michele.mastrogiovanni@gmail.com>

USER root

RUN apt-get update && apt-get install -y \
	libopenblas-base libopenblas-dev \
	&& pip install nipype nibabel nipy nilearn matplotlib seaborn sklearn "python-igraph" bctpy \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER jovyan

