#################################################################
# Dockerfile
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM cgwyx/conda_debian_git

MAINTAINER cheng gong <512543469@qq.com>

RUN conda config --add channels defaults &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda config --add channels bioconda &&\
    conda update --all -y &&\
    conda install -y -c mittner r-mice &&\
    conda install -y r-wgcna=1.51

CMD ["/bin/bash"]


