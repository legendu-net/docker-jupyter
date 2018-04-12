FROM dclong/python

RUN pip3 install jupyter 

RUN mkdir /jupyter && chmod 777 /jupyter
COPY scripts /scripts

EXPOSE 8888

ENTRYPOINT ["/scripts/init.sh"]
