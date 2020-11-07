# set base image (host OS)
FROM ubuntu:18.04

RUN apt update && \
	  apt install -y \
		build-essential \
		python3-setuptools \
		python3-pip \
		python3-numexpr \
		libgl1-mesa-glx \
		libsm6 \
		libxext6 \
		libfontconfig1 \
		libxrender1
RUN pip3 install --upgrade pip && \
  	pip3 install numpy \
  		Pillow \
  		scipy \
  		scikit-build \
  		scikit-image \
  		scikit-learn \
  		matplotlib \
  		opencv-python \
  		openpyxl \
  		seaborn \
  		imutils && \
  	pip3 install numpy --upgrade
ADD /other_module /other_module

# install dpp
RUN pip install /other_module/deepplantphenomics
ADD semantic_segmentation_tool.py .
