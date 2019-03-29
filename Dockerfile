FROM dclong/python

RUN pip3 install jupyter nbdime

COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/sys/init.sh"]
