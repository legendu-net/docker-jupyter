# NAME: dclong/jupyter
FROM dclong/python
# GIT: https://github.com/dclong/docker-python.git

RUN pip3 install --no-cache-dir tornado jupyter "nbconvert==5.6.1" nbdime

# Python 3.7 Kernel
RUN /opt/pyenv/versions/3.7.*/bin/python -m pip install ipykernel \
    && /opt/pyenv/versions/3.7.*/bin/python -m ipykernel install --name python3.7 --display-name "Python 3.7"

COPY scripts /scripts

EXPOSE 8888
