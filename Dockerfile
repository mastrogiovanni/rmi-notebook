FROM jupyter/datascience-notebook
MAINTAINER Michele mastrogiovanni <michele.mastrogiovanni@gmail.com>

USER root

RUN apt-get update && apt-get install -y \
	docker.io \
	&& pip install nipype nibabel nipy nilearn matplotlib seaborn sklearn "python-igraph" \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER jovyan

