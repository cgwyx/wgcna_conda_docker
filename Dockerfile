#################################################################
# Dockerfile
#
# Version:          1.0
# Software:         wgcna
# Software Version: 1.51
# Description:      Microbial pan-genome analysis and exploration toolkit
# Code:             https://github.com/neherlab/pan-genome-analysis
# Base Image:       continuumio/miniconda
# Build Cmd:        sudo docker build -t wgcna_conda:latest .
# Pull Cmd:         docker pull cgwyx/r-wgcna_docker
# Run Cmd:          sudo docker run -it --rm -v /home:/home --name=r-wgcna cgwyx/r-wgcna_docker
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM continuumio/miniconda

RUN conda update --all -y&&\
         conda config --add channels r &&\
         conda config --add channels bioconda &&\
         conda config --set show_channel_urls yes &&\
         conda install r-wgcna=1.51  -y

CMD ["/bin/bash"]


