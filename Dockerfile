############################################################
# Dockerfile to build cirq
############################################################

FROM frolvlad/alpine-miniconda3
#continuumio/miniconda
#

RUN apk add --no-cache --virtual .build-dependencies gcc musl-dev linux-headers && \
    conda config --add channels conda-forge && \
    conda config --set channel_priority strict && \
    conda install --yes matplotlib jupyter notebook voila && \
    conda install -c quantum-engineering qsharp iqsharp && \
    pip install cirq --compile --no-cache-dir && \
    pip install -U qiskit && \
    apk del --purge .build-dependencies && \
    conda clean -afy && \
    find /opt/conda/ -follow -type f -name '*.a' -delete && \
    find /opt/conda/ -follow -type f -name '*.pyc' -delete && \
    find /opt/conda/ -follow -type f -name '*.js.map' -delete
