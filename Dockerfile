FROM dclong/python

RUN pip3 install tornado==5.1.1 jupyter nbdime

COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/sys/init.sh"]
