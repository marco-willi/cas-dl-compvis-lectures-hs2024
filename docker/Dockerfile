# CAS Computer Vision with Deep Learning
FROM quay.io/jupyter/minimal-notebook:2024-07-22

LABEL maintainer="Marco Willi <marco.willi@fhnw.ch>"
LABEL description="CAS DL - Computer Vision with Deep Learning  HS2024"

USER root

RUN apt-get update && \
    apt-get install -y  \
        ghostscript \
        gdebi-core \
        graphviz \
        texlive-full \
        texlive-lang-german \
        texlive-lang-cyrillic \
        make && \
    apt-get clean

# Download and install Quarto
RUN curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb
RUN gdebi --non-interactive quarto-linux-amd64.deb
RUN rm quarto-linux-amd64.deb

USER $NB_UID

COPY environment.yaml requirements.txt /tmp/

RUN mamba env update -n base --file /tmp/environment.yaml && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

ENV QUARTO_PYTHON=/opt/conda/bin/python3

EXPOSE 6006
