FROM dclong/python

RUN pip3 install --no-cache-dir tornado jupyter

COPY scripts /scripts

EXPOSE 8888
