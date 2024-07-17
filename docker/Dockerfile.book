# CAS Computer Vision with Deep Learning
FROM quay.io/jupyter/minimal-notebook:2024-06-03

LABEL maintainer="Marco Willi <marco.willi@fhnw.ch>"
LABEL description="CAS DL - Computer Vision with Deep Learning  HS2024"

USER root

RUN apt-get update && \
    apt-get install -y  \
        ghostscript \
        graphviz \
        texlive-full \
        texlive-lang-german \
        texlive-lang-cyrillic \
        make && \
    apt-get clean

USER $NB_UID

COPY environment.yaml requirements.txt /tmp/

RUN mamba env update -n base --file /tmp/environment.yaml && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
