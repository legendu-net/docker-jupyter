FROM dclong/python

RUN pip3 install jupyter

COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/init.sh"]
