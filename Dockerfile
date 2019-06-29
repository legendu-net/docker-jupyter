FROM dclong/python

RUN pip3 install --no-cache-dir tornado jupyter nbdime

COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/sys/init.sh"]
