# NAME: dclong/jupyter
FROM dclong/python
# GIT: https://github.com/dclong/docker-python.git

RUN pip3 install --no-cache-dir tornado jupyter nbdime

COPY scripts /scripts

EXPOSE 8888
