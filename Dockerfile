FROM jupyter/datascience-notebook
MAINTAINER Michele mastrogiovanni <michele.mastrogiovanni@gmail.com>

USER root

RUN apt-get update && apt-get install -y \
	libgl1-mesa-glx libxmu6 libopenblas-base libopenblas-dev \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install numpy

RUN pip install nipype nibabel nipy nilearn matplotlib seaborn sklearn opentsdb-py

RUN pip install scipy bctpy

USER jovyan

